program conditional_statement;

(*
Hôm nay mình sẽ nói về cấu trúc rẽ nhánh nha :)

- If - else là hai câu lệnh trứ danh khi nói đến ngôn ngữ lập trình
- Bất cứ ngôn ngữ nào đều có và đều gọi là if và else
- Bản chất của câu lệnh này là thực hiện một hoặc một số câu lệnh nhất định
    dựa trên điều kiện. Đây là điều rất dễ thấy trong đời sống thực tế:
        VD: Nếu trời tối, tôi ở nhà, đắp chăn, đi ngủ; còn không, tôi đi học rồi trốn học :))
Ở pascal, cấu trúc là:
        if (<điều kiện>) then <câu lệnh thực hiện> else <câu lệnh thực hiện>;

        VD: if a = b then writeln('a is greater than b') else writeln('b is greater than a');

    (Vế else có thể có hoặc không tùy vào chúng ta, dấu ngoặc trên có thể có hoặc k)

* CHÚ Ý:
    1. Điều kiện là câu lệnh quan hệ (Xem lại phần toán tử trong Pascal)

    2. Nếu có nhiều hơn một câu lệnh thì phải cho vào một vế begin-end (còn đc gọi là một scope,
tí mình sẽ giải thích)
        VD: 
            if age < 18 then
                begin
                    writeln('Hello');
                    writeln('Looks like you are not old enough to watch this');
                    writeln('I am so sorry about that');
                    readln;
                end;

    3. Giải thích về chú ý số 2:
        Hãy thử dự đoán kết quả của 2 trường hợp sau:
        
        Với biến age = 20

        TH1:
            if age < 18 then
                begin
                    writeln('Hello');
                    writeln('Looks like you are not old enough to watch this');
                    writeln('I am so sorry about that');
                    readln;
                end;
        TH2:
            if age < 18 then
                    writeln('Hello');
                    writeln('Looks like you are not old enough to watch this');
                    writeln('I am so sorry about that');
                    readln;
        (Việc xuống dòng không làm gián đoạn hay kết thúc câu lệnh, dấu chấm phẩy mới làm điều đó (,))

        Và đây là kết quả:
        TH1:
            
        TH2:
            Looks like you are not old enough to watch this
            I am so sorry about that

        (K tin thì tự viết code r chạy thử để kiểm chứng)    

        Rõ ràng chúng ta để điều kiện là nếu age < 18 thì in ra 3 dòng, hay nếu age >= 18 thì k làm gì cả
        Vậy mà ở trường hợp thứ 2 thì lại bị in ra hay dòng chữ kia, vậy là thế nào?
        Hãy cùng phân tích lại cách thực hiện câu lệnh của từng trường hợp nha:
            TH1:
                - Nếu age < 18 thì:
                    + In ra dòng chữ "Hello"
                    + In ra dòng chữ "Looks like ..."
                    + In ra dòng chữ "I'm sorry..."
                    + Tạm dừng chương trình (Sau câu lệnh này kết thúc if)
            TH2:
                - Nếu age < 18 thì:
                    + In ra dòng chữ "Hello" (Sau câu lệnh này kết thúc if)
                - In ra dòng chữ "Looks like ..." 
                - In ra dòng chữ "I'm sorry..."
        Như vậy, nếu k dùng begin-end thì sẽ chỉ thực hiện đúng 1 câu lệnh ngay sau then
        Cho nên nếu có nhiều câu lệnh cần thực hiện trong 1 vế if thì nhớ cho begin-end vào nha :)

    4. Có thật sự là để hai câu lệnh if thay cho if-else được k?

    Bài 1: Cho một số n, kiểm tra xem số a có lớn hơn 10 hay k? Có thì in ra "YES", k thì in ra "NO"

        Bài làm 1:                                  |       Bài làm 2:
            if n > 10 then writeln('YES')           |           if n > 10 then writeln('YES'); 
            else writeln('NO');                     |           if n <= 10 then writeln('NO');    
                                                    |
        Kết quả:                                    |       Kết quả:
            Với n = 20: YES                         |           Với n = 20: YES
            Với n = 5: NO                           |           Với n = 5: NO

        => Kết quả giống nhau, thay thế được
    
    Nhưng ...
    Bài 2: Cho một số n, nếu n chia hết cho 3 in ra dòng chữ 'n chia het cho 3', còn nếu n chia hết cho 5 thì cx làm gần giống thế
        
        Bài làm 1:                                                  |       Bài làm 2:        
            if n mod 3 = 0 then writeln('n chia het cho 3')         |           if n mod 3 = 0 then writeln('n chia het cho 3');
            else if n mod 5 = 0 then writeln('n chia het cho 5');   |           if n mod 5 = 0 then writeln('n chia het cho 5');
                                                                    |
        Kết quả:                                                            Kết quả:        
            Với n = 6:                                                          Với n = 6:
                n chia het cho 3                                                    n chia het cho 3
            Với n = 20:                                                         Với n = 20:        
                n chia het cho 5                                                    n chia het cho 5
            Với n = 15:                                                         Với n = 15:
                n chia het cho 3                                                    n chia het cho 3
                                                                                    n chia het cho 5
        => Kết quả không hoàn toàn giống nhau, không thực sự thay thế hoàn toàn    

    Giải thích:
        - Hai câu lệnh if thực hiện tuần tự nhau: thực hiện câu lệnh if đầu tiên nếu đúng, thực hiện câu lệnh if tiếp theo
            => Có nhiều nhất HAI điều kiện được thực hiện
        - Còn if-else là xung khắc với nhau: nếu câu if đúng thì thực hiện câu lệnh, và BỎ QUA câu else; nếu if sai, không
            thực hiện if, nhảy sang câu else để xét (thường là sẽ thực hiện được câu lệnh)
            => Có nhiều nhât MỘT điều kiện được thực hiện
    => Sau cùng đây chỉ là vấn đề về logic thôi, hãy phân tích tình huống thật kỹ và đưa ra sự lựa chọn cho hợp lý :)    

    5. Điều kiện với biến kiểu boolean
    VD với biến "isDigit" kiểu boolean:
        if isDigit = true then ... <=> if isDigit then ...
        if isDigit = false then ... <=> if not isDigit then ...
    Bản chất của điều này là phần điều kiên luôn cho kết quả có kiểu boolean (true hoặc false)
    Vì thế thay vì viết hẳn cả một biểu thức quan hệ (so sánh) với biến boolean thì coi điều kiện chính là biến đó
    => Điều này còn được gọi là "viết tắt" :)))

    -------------------------------------------------

    Vậy là hết hôm nay mình vừa tìm hiểu câu lệnh điều kiện, đây là phần rất quan trọng của lập trình
        nên các bạn sẽ cần luyện tập thật nhiều để thành thạo nha. I'm out. Peace <3    
*)  

(*VÍ DỤ CỤ THỂ:*)

var n: Integer;
    isMale: Integer;    

begin
    write('Moi ban nhap mot so: ');
    readln(n);
    
    {Kiểm tra xem n có là số chẵn hay k}
    if n mod 2 = 0 then
    begin
        writeln(n, ' la so chan');
        readln;  
    end 
    else begin
        writeln(n, ' la so le');
        readln;      
    end;

    {Kiểm tra xem có là con trai hay k}
    isMale := true;

    if isMale then
    begin
        writeln('Welcome, sir');
        readln;
    end
    else begin
        writeln('Welcome, miss');
        readln;
    end;

end.