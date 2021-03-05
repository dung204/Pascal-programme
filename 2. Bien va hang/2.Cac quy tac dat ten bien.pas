program naming_conventions;

(*
Sau khi học về biến, mình sẽ nói về cái rất là quan trọng: đó chính là quy tắc
đặt tên biến

Lí do phải làm cái phần này: Tưởng tượng khi các bạn làm bài, làm xong để đấy. Và rồi một ngày
đẹp trời bạn gửi cho giáo viên để kiểm tra xem mình làm đúng k. Khi giáo viên nhìn đoạn code đó,
họ thắc mắc: "Nó để cái biến này để làm gì ý nhỉ?". Và thế là, họ phải nhìn vào phần body (begin-end)
để xem cái biến đó thực sự có tác dụng gì. Và thế là mất nguyên một ngày họ mới biết được là cái biến
đó được dùng để làm biến trung gian gì gì đó (chẳng hạn)

Hoặc một hôm bạn mở lại cái file code ra để ôn, nhưng thật sự, bạn chỉ mới học, copy paste rất nhiều
nên bạn nhìn vào mấy cái hàm, phép toán thì cũng chẳng hiểu gì cả. Nhìn vào phần biến thì càng cảm thấy
lú -> bất lực

Thấy đó nếu bạn không thể biết hàm này, phép toán này dùng để làm cái quái gì cả? Lúc đó tên biến dễ đọc
sẽ phần nào mô tả được phép toán (đoạn code có liên quan) sắp tới sẽ dùng để làm gì
*)

(*
Ok, vào việc thôi. Một số quy tắc là bắt buộc, không theo thì sẽ gặp lỗi biên dịch, một số thì là nên
làm vì nó sẽ giúp cho con người có thể đọc code dễ hơn. Quy tắc này đều áp dụng cho các loại đặt tên trong code
*)

(*
QUY TẮC 1: KHÔNG ĐƯỢC để dấu cách ở tên biến
	Giải thích: Các câu lệnh ở bất cứ đâu đều có dấu cách để phân biệt giữa các cú pháp. 
				VD: câu lệnh program: program <tên chương trình>;. Dấu cách trong câu lệnh này là
				ngăn ra giữa câu lệnh program và phần tên chương trình, giúp xác định đâu là câu lệnh,
				đâu là tên chương trình. Khi bạn đang gõ phần tên mà lại space một phát thì, phần tên chương
				trình sẽ kết thúc, và nếu gõ thêm cái gì nữa thì nó sẽ là một đích danh (cụm từ) không xác
				định trong ngôn ngữ lập trình. Lúc này sẽ phát sinh ra lỗi: undefined modifier (đích danh k xác định)
*)

var ket qua: Integer; {Sai}
var ketqua: Integer; {Đúng}

(*
QUY TẮC 2: KHÔNG ĐƯỢC đặt tên trùng với keyword của Pascal (các ngôn ngữ khác cũng tương tự)
	Giải thích: Các keyword là do ngôn ngữ lập trình quy định sẵn cho một mục đích nhất định. Đó
				có thể là câu lệnh, kiểu dữ liệu, ... Một số keyword điển hình: begin, end, var, if,
				else, then, uses, program, ... Có thể search google: pascal keyword để tìm hiểu thêm
*)

var if: Integer; {Sai}
var: number: Real; {Đúng}

(*
QUY TẮC 3: Các kí tự được sử dụng để đặt tên biến:
	Chữ cái: a-z và A-Z
	Chữ số: 0-9
	Các dấu gạch ngang: - _

	Còn lại là không được dùng
*)

var result#2: Real; {Sai}
var result_2: Real;	{Đúng}

(*
QUY TẮC 4: KHÔNG đặt tên tiếng Việt có dấu, k dấu thôi (đã là code thì chỉ có tiếng Anh thôi, trừ comment ra)
Mà nếu có thể thì đặt tên bằng tiếng Anh luôn cho ngầu :)))
*)

(*
QUY TẮC 5: Các cách đặt tên biến có nhiều từ (cái này chỉ là nên làm):
Với biến (VD với biến tên "kết quả cuộc thi"):
	PascalCase: KetQuaCuocThi (Viết hoa chữ đầu tiên ở mỗi từ)
	camelCase: ketQuaCuocThi (Khá giống PascalCase, nhưng chữ từ đầu tiên viết thường toàn bộ) (mình hay dùng kiểu này)
	_case: ket_qua_cuoc_thi (dùng dấu _ thay cho dấu cách)
Với hằng: nên viết hoa toàn bộ và cách các từ bằng dấu _ 
	VD: KET_QUA_CUOC_THI, MONITOR_WIDTH, PI, FARADAY_NUMBER, ...

Chọn lấy một kiểu đặt tên và tự thống nhất cho tất cả các biến, hằng
Chưa nhìn quen thì tập nhìn đi, r sẽ quen thôi :)
*)

var thoitiethomnay: Integer; {Đặt kiểu này thì cho thêm tiền mình cx k hiểu đâu, mà nếu có hiểu thì mình rất muốn chửi tác giả :) } 
	thoiTietHomNay: Integer; {Thế này là ổn r đó}

(*
QUY TẮC 6: NÊN đặt tên có nghĩa.

Mình từng gặp nhiều ng đặt tên biến ... kiểu đánh đố và k tôn trọng người đọc chút nào :(

VD: var clr: string; (thực chất là "color")
		cmptr: string; (thực chất là "computer", thà đặt là comp cho nó ok hơn)
		kqsx: real; (thực chất là "ketQuaSoXo")

Hãy viết hẳn ra, đừng cố gắng viết tắt hay sợ thiếu dòng :)
	var resultA: string; (not rstA)
	var colorOfButton: string; (not clrOfBttn)

Hãy cố gắng đặt tên biến thuận ngôn ngữ nói, sẽ tự nhiên hơn và k quá chú trọng vào ngữ pháp
	VD: resultOfTheTwoTests: string; (Không tự nhiên lắm)
		testResults: string; (OK)			
*)

(*
Vậy là hết, chịu khó luyện tập đi nhé. Good luck :))
*)

begin
  
end.