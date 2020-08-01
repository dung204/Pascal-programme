(* Phần từ đầu đến trước chữ "begin" là phần
khai báo, nơi để khai báo tên chương trình,
thư viện (là nơi cho phép sử dụng các câu lệnh
đặc biệt), biến (thay thế cho giá trị cụ thể)
hằng (gần giống biến, chỉ khác là cố định giá trị),
chương trình con (hay còn dc gọi là hàm, mình sẽ nói về nó sau) *)
program first_program;

(*Phần từ "begin" cho đến "end." là phần chương
trình chính (hay còn dc gọi là hàm chính), mọi công đoạn 
nhập xuất, tính toán, ... sẽ dc diễn ra ở đây. Cho phép mình dc gọi là
hàm main. Kết thúc mỗi lệnh phải có dấu chấm phẩy (;) *)
begin
	(*In ra dòng chữ "Hello World in Pascal"*)
	writeln('Hello World in Pascal');
end.	
