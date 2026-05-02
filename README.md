# 📦 Inventa - Warehouse & Inventory Management System

**Inventa** is a powerful, modern Warehouse Management System (WMS) built using **ASP.NET Core 9.0**. It is designed to streamline inventory operations, sales, and purchasing with a clean, responsive interface.

![Inventa Login Page](file:///C:/Users/aishani%20billore/.gemini/antigravity/brain/1b55f224-4af5-4a7b-9a0f-c7bff938b059/inventa_login_page_1777737703033.png)

## 🚀 Key Features
*   **Inventory Tracking**: Manage products, warehouses, and unit measures.
*   **Sales & Purchase**: Complete lifecycle from orders to returns and reporting.
*   **Warehouse Operations**: Handles transfers, adjustments, scrapping, and stock counts.
*   **Secure Authentication**: Role-based access control with ASP.NET Identity.
*   **Interactive Dashboard**: Beautiful analytics powered by AdminLTE and Vue.js.

## 🛠️ Tech Stack
*   **Back End**: ASP.NET Core 9.0 (C#)
    *   Clean Architecture & CQRS (MediatR)
    *   Entity Framework Core (SQLite)
    *   FluentValidation & AutoMapper
*   **Front End**: Razor Pages + Vue.js (v3)
    *   AdminLTE (Bootstrap)
    *   Axios for API communication
*   **Security**: ASP.NET Identity + JWT

## ⚙️ Setup & Running
### Prerequisites
*   [.NET 9.0 SDK](https://dotnet.microsoft.com/download/dotnet/9.0)

### Run Locally
1.  **Clone the repository**:
    ```bash
    git clone https://github.com/YOUR_USERNAME/Inventa.git
    ```
2.  **Navigate to the project**:
    ```bash
    cd Inventa
    ```
3.  **Run the application**:
    ```bash
    dotnet run --project Presentation/ASPNET/ASPNET.csproj
    ```
4.  **Access the app**:
    Open [http://localhost:5000](http://localhost:5000) in your browser.

### Default Credentials
*   **Email**: `admin@root.com`
*   **Password**: `123456`

## 🤝 Acknowledgments
This project is a rebranded and enhanced version of the [INDOTALENT WHMS](https://github.com/go2ismail/Asp.Net-Core-Inventory-Order-Management-System) open-source project. 
*   Customized with **Inventa** branding.
*   Upgraded to **.NET 9.0**.
*   Resolved registration and SMTP configuration bugs.
*   Optimized for local SQLite development.

## 📜 License
This project is licensed under the [Creative Commons Attribution 4.0 International License (CC BY 4.0)](http://creativecommons.org/licenses/by/4.0/).
