//Lệnh nuget cập nhật ánh xạ cơ sở dữ liệu từ SQL Server
// Dùng -Force cho những lần cập nhật về sau, lần đầu không cần dùng
Scaffold-DbContext "Server = KTEE\\SQLEXPRESS;Database = FoodOrderDB;Integrated Security=true;" Microsoft.EntityFrameWorkCore.SqlServer -OutputDir Models -Force