Program Program3;
var N, i, j, min, max, res, step: integer;
    A, S: array of integer;
    stri, b: string;
begin
    res:=0; step:=0;
    readln(N);
    SetLength(A,N+1);
    SetLength(S,N+1);
    for i:=1 to N do begin
       readln(A[i]);
    end;
    min:=A[1]; max:=A[1];
    for i:=1 to N do begin
       res:=res+A[i];
       if A[i]>max then
       begin
         res:=0;
         max:=A[i];
       end;
       if A[i]<min then
         min:=A[i];
       if A[i]=0 then begin
         writeln('i - ',i);
         step:=step+1;
       end;
    end;
    for i:=1 to step do
      S[i]:=0;
    j:=1;
    for i:=1 to N do begin
      if (A[i]>0) or (A[i]<0) then
       begin
        //writeln(step+j);
        S[step+j]:=A[i];
        j:=j+1;
       end;
    end;
    writeln('Минимальный элемент - ', min);
    writeln('Сумма элментов после максимального - ', res);
    stri:='';
    for i:=1 to N do begin
      str(S[i],b);
      stri:=stri+' '+ b;
     end;
    writeln('Новый массив - ', stri);
end.