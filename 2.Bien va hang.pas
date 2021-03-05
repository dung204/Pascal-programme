(*Không cần dịch và chạy bài này*)

(* Bài này mình sẽ nói về hai thứ cơ
bản tiếp theo - biến và hằng *)
program variable_and_constant;

(*Biến là một đơn vị trong bộ nhớ (theo
cách nói của khoa học máy tính). Biên luôn chứa một
giá trị nào đó, dù mình không có tự gán nhưng nó luôn có 
một giá trị mà mình không thể biết rõ (không mặc định là 0).
Biến phải được khai báo trước khi sử dụng. Biến có thể bị thay 
đổi giá trị*)

(*Cú pháp: var <tên_biến> : <kiểu dữ liệu biến>;*)

(*Kiểu dữ liệu sẽ dc nói trong bài kiểu dữ liệu*)
var a: integer;

(*Nếu có nhiều biến cùng kiểu dữ liệu biến thì có thể 
khai báo kiểu như sau: *)
var a, b, c, d: byte;

(*Cách khai báo nhiều biến với nhiều kiểu dữ liệu 
khác nhau*)
var 
	a, b : integer;
	c, d : real;
	x1, x2 : string;
	x3 : char;
	x4 : boolean;

(*Hằng (const) là một đơn vị trong bộ nhớ. Hằng giống biến ở chỗ 
cùng chứa một giá trị nào đó. Nhưng hằng không thay đổi giá trị suốt
quá trình thực hiện các câu lệnh - là một giá trị chỉ đọc (read-only).
Hằng không giới hạn kiểu dữ liệu*)

(*Cú pháp: const <tên hằng> = <giá trị cần gán>; *)

(*Tên hằng viết hoa hay không là tùy nhưng người ta 
thường hay viết hoa hoàn toàn cho tên biến đễ dễ phân biệt
và nhấn mạnh*)
const MAX = 10;

begin
	a := 12; { Giá trị (các bạn hay gọi là số, chữ, ...) biến kiểu nguyên }
	c := 3.14; { Giá trị biến kiểu thực, dấu thập phân là dấu chấm (.), không phải là dấu phẩy }
	x1 := 'Hello everyone'; { Xâu kí tự, phải có dấu nháy đơn ('') }
	x3 := 'b'; { Giá trị biển kiểu kí tự, phải có dấu nháy đơn }
	x4 := true; { Giá trị biến kiểu logic, chỉ có true hoặc false }
end.	
