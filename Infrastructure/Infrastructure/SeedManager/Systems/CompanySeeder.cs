using Application.Common.Repositories;
using Domain.Entities;

namespace Infrastructure.SeedManager.Systems;

public class CompanySeeder
{
    private readonly ICommandRepository<Company> _repository;
    private readonly IUnitOfWork _unitOfWork;
    public CompanySeeder(
        ICommandRepository<Company> repository,
        IUnitOfWork unitOfWork
        )
    {
        _repository = repository;
        _unitOfWork = unitOfWork;
    }
    public async Task GenerateDataAsync()
    {
        var entity = new Company
        {
            CreatedAtUtc = DateTime.UtcNow,
            IsDeleted = false,
            Name = "Inventa",
            Currency = "USD",
            Street = "123 Main St",
            City = "Metropolis",
            State = "New York",
            ZipCode = "10001",
            Country = "USA",
            PhoneNumber = "+1-212-555-1234",
            FaxNumber = "+1-212-555-5678",
            EmailAddress = "info@inventa.com",
            Website = "https://www.inventa.com"
        };

        await _repository.CreateAsync(entity);
        await _unitOfWork.SaveAsync();
    }

}
