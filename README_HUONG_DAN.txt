HƯỚNG DẪN CHẠY PROJECT BIKESHARE ASP.NET CORE MVC

1. Yêu cầu cài đặt
- Visual Studio 2022 hoặc Visual Studio Code
- .NET SDK 8.0
- SQL Server + SQL Server Management Studio

2. Tạo database
- Mở SQL Server Management Studio.
- Mở file: Database/BikeShareDB_SQLServer.sql
- Bấm Execute để tạo database BikeShareDB và dữ liệu mẫu.

3. Sửa chuỗi kết nối
Mở file appsettings.json.

Mặc định:
"Server=.;Database=BikeShareDB;Trusted_Connection=True;TrustServerCertificate=True;"

Nếu máy dùng SQL Express, đổi thành:
"Server=.\SQLEXPRESS;Database=BikeShareDB;Trusted_Connection=True;TrustServerCertificate=True;"

Nếu máy dùng LocalDB, đổi thành:
"Server=(localdb)\MSSQLLocalDB;Database=BikeShareDB;Trusted_Connection=True;TrustServerCertificate=True;"

4. Chạy project
Cách 1: Mở BikeShareWebApp.csproj bằng Visual Studio rồi bấm Ctrl + F5.
Cách 2: Mở Terminal tại thư mục project và chạy:
dotnet restore
dotnet run

5. Các trang có sẵn
- /Home/Index
- /Bike/Map
- /Bike/Trip
- /Bike/History
- /Account/Login
- /Account/Register
- /Admin/Dashboard
- /Admin/Bikes
- /Admin/Stations

6. Nếu bị lỗi Cannot open database BikeShareDB
- Kiểm tra đã chạy file SQL chưa.
- Kiểm tra Server name trong appsettings.json có đúng với SQL Server trong SSMS không.
- Nếu SSMS dùng DVTDU\SQLEXPRESS thì appsettings.json cũng phải dùng Server=DVTDU\SQLEXPRESS.


LƯU Ý GIAO DIỆN:
Nếu trang chỉ hiện chữ đen trắng không có Bootstrap/CSS, kiểm tra file:
Views/_ViewStart.cshtml
Nội dung phải là:
@{
    Layout = "_Layout";
}
Không đặt _ViewStart.cshtml trong Views/Shared.
