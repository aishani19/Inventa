# Build Stage
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

# Copy all projects and restore dependencies
COPY ["Presentation/ASPNET/ASPNET.csproj", "Presentation/ASPNET/"]
COPY ["Core/Application/Application.csproj", "Core/Application/"]
COPY ["Core/Domain/Domain.csproj", "Core/Domain/"]
COPY ["Infrastructure/Infrastructure/Infrastructure.csproj", "Infrastructure/Infrastructure/"]

RUN dotnet restore "Presentation/ASPNET/ASPNET.csproj"

# Copy everything else and build
COPY . .
WORKDIR "/src/Presentation/ASPNET"
RUN dotnet build "ASPNET.csproj" -c Release -o /app/build

# Publish Stage
FROM build AS publish
RUN dotnet publish "ASPNET.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Final Stage
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app
COPY --from=publish /app/publish .

# Create directory for SQLite database if needed
# The app uses whms.db in the root of the project
# Ensure the app can write to the volume
RUN mkdir -p /app/data
ENV ConnectionStrings__DefaultConnection="Data Source=/app/data/whms.db"

EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080

ENTRYPOINT ["dotnet", "ASPNET.dll"]
