//Lệnh nuget cập nhật ánh xạ cơ sở dữ liệu từ SQL Server
// Dùng -Force cho những lần cập nhật về sau, lần đầu không cần dùng
Scaffold-DbContext "Server = KTEE\\SQLEXPRESS;Database = FoodOrderDB;Integrated Security=true;" Microsoft.EntityFrameWorkCore.SqlServer -OutputDir Models -Force
//Work-flow
-Go to Admin
- Quản lý hệ thống> Quản lý quyền truy cập> Hoàn thành hết chức năng

***Lưu ý
Chỗ chuỗi kết nối ở trong appsetting.js thì \\
Còn chạy ở trong Scaffold-DbContext thì \ giống lệnh phía trên


//Mẫu để gọi partialView
@await Html.PartialAsync("_MenuPartialView")

//Đơn vị tiền tệ : ₫


//Menu, details dùng model Product
//ProductController trong vid là MenuController của mình

//Không làm detail(chi tiết sản phẩm)
Làm theo hướng show hết sản phẩm ra menu rồi bấm nút để thêm vào giỏ hàng 


** Nhớ lưu thêm 1 cái project FoodOrder backup ở ngoài phòng lỗi không quay lại sửa được
** T có làm sẵn 1 cái trong file "backup" ở ngoài á, xong tới đâu back up tới đó 
//Những  cái dư(rảnh thì xử lý)
model detail
=======
Scaffold-DbContext "Server = KTEE\\SQLEXPRESS;Database = FoodOrderDB;Integrated Security=true;" Microsoft.EntityFrameWorkCore.SqlServer -OutputDir Models -Force
//Work-flow
-Go to Admin
- Quản lý hệ thống> Quản lý quyền truy cập> Hoàn thành hết chức năng
>>>>>>> 6ee05be52f1b41810ba073d0820d38ffdc2f16f8
======
//Code bên Admin: 
Vào Areas/Admin có mấy cái view, trong share có mấy cái partial view, cú pháp gọi dùng lại để ở trên