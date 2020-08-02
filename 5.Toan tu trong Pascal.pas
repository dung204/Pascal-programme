(*Bài này mình sẽ nói về các toán tử (hay còn gọi
là phép toán) *)

program mathematics_operator;

(*Toán tử tính toán: 
  "+": Phép cộng (cho cả số nguyên và số thực)
  "-": Phép trừ (nguyên và thực)
  "*": Phép nhân (nguyên và thực)
  "div": Phép chia lấy phần nguyên (chỉ áp dụng với số nguyên)
  "mod": Phép chia lấy phần dư (chỉ áp dụng với số nguyên)
  (div và mod thì nhớ lại phép chia học ở tiểu học là rõ ngay)
  "/": Phép chia kết quả là số thực *)

(*Toán tử quan hệ: (Dùng trong điều kiện, cấu trúc rẽ nhánh)
   "<": nhỏ hơn
   "<=": nhỏ hơn hoặc bằng
   ">": lớn hơn
   "<": lớn hơn hoặc bằng
   "=": bằng nhau
   "<>": khác nhau *)

(*Toán tử logic: (Dùng trong điều kiện, cấu trúc rẽ nhánh)
	"not": Phủ định
	"and": Và (trong toán học là giao của tập hợp)
	"or": Hoặc (trong toán học là hợp của tập hợp) *)

(* Toán tử gán: ":=" *)

var a, b:integer;
begin	
	(*Phép gán số cho biến*)
	a:= 10; b:= 55;

	(*In kết quả tính toán*)
	writeln('Ket qua phep cong la: ', a+b);
	writeln('Ket qua phep tru la: ', a-b);
	writeln('Ket qua phep nhan la: ', a*b);
	writeln('Ket qua phep chia la: ', a/b :0: 2); (*Làm tròn đến 2 chữ số sau dấu phẩy*)
	writeln('Ket qua phep chia nguyen la: ', a div b);
	writeln('Ket qua phep chia du la: ', a mod b);


	(*Một ví dụ về toán tử quan logic và quan hệ
	trong cấu trúc điều kiện (sẽ nói về cái này sau) *)
	if (a>b) or (b<a) then writeln(a, ' lon hon ', b) else writeln(a, ' nho hon ', b);
	readln;
end.