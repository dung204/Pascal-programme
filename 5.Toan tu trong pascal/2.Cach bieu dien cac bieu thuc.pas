(*Sau khi học toán tử, chúng ta 
hãy bàn về cách biểu diễn biểu thức*)

program perform_expression;
var a, b, c: integer; 
begin
	(*Đối với biểu thức gán thì cú pháp như sau: <tên biến cần gán> := <thứ gán vào biến>
	 Thứ gán vào biến có thê là một số, một biến khác, một biểu thức. VD *)
	
	 a := 6;(*Gán số vào biến*)
	 b := a + 9; (*Gán biểu thức vào biến*)
	 c := b (*Gán giá trị của biến khác ào biến*)

	 (*Các biểu thức tính toán thì không cần phải nói nhiều vì quá dễ tưởng tượng
	 nó dc biểu diễn ntn. Tuy nhiên, nó không thể đứng riêng lẻ thành một câu lệnh
	 được vì nó là một giá trị nên chỉ có thể in nó ra hay gán vào biến, ...*)

	 writeln('Ket qua cua phep tinh la: ', (a+b)/b+c); 
	 (*Trình tự luôn thực hiện phép toán luôn là ngoặc trước
	 rôi nhân chia rồi mới đến cộng trừ*)

	 (*Đối với biểu thức quan hệ thì cú pháp là:
	 	<biểu thức 1> <toán tử quan hệ> <biểu thức 2>

	 	VD: a < 1; b > -a; (a+16/b) < (c*55/3); ... *)

	 (*Còn biểu thức logic thì cú pháp là: 
	 	<biểu thức quan hệ 1> <toán tử logic> <biểu thức quan hệ 2> ... <toán tử logic> <bt quan hệ n>

	 	VD: "not (x>1)" tương đương với x <= 1
	 		"(x > 15) or (x <3)" tương đương x>15 hay x<13 đều dc (giống ngoặc vuông)
	 		"(x <> 0) and (x > -3)" tương đương x khác 0 và x> -3 phải cùng xảy ra (giống ngoặc nhọn) *)	
end.	