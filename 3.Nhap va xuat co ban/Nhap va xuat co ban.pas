(*Bài này mình sẽ nói về công đoạn 
cơ bản nhất của mọi ngôn ngữ lập trình.
Đó là nhập và xuất*)
program input_and_output;
var a, b: integer;
begin
	(*Lệnh read hoặc readln cho phếp
	nhập một số từ bàn phím và gán vào biến*)
	
	(*Cú pháp: read(<biến cần gán giá trị>) hoặc readln(<biến cần gán giá trị>)*)
	read(a);
	readln(b);
	(*Lệnh write hoặc writeln cho phép 
	xuất ra, in ra kết quả trên màn hình console*)
	
	(*Cú pháp: write(<thứ cần được in ra>) hoặc write(<thứ cần dc in ra>)*)
	
	(*Giải thích thêm: thứ cần dc in ra ở đây có thể là biến,
	biểu thức (giữa các biến, các sô) (VD: a+b, 5+4, b-8, ...)
	, dòng chữ (hay còn dc gọi là xâu kí tự - string) nhưng phải
	để trong dấu nháy đơn ('') *)
	writeln(a);
	writeln(a);
	writeln(a+b);
	writeln('Day la ket qua cua phep tinh.');

	(*Nếu cần in nhiều thứ trong cùng 1 câu lệnh write
	(writeln) thì mỗi phần phải cách nhau bởi dấu phẩy (,) *)
	write('Toi co ', a+b, ' qua tao.');
	readln;

	(*Note: các câu lệnh có từ "ln" ở cuối từ có nghĩa là
	sau khi thực hiện nhập (xuất) sẽ xuống dòng và thực hiện câu
	lệnh tiếp theo*)
end.	