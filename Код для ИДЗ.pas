program IDZ;
var a,x,y,b,c,v1,v2,k1,k2: real;
begin;
writeln('Введите x и y');
readln(x,y);
writeln('Введите коэффициент угла наклона не равный 0 модуля, отклонение по y модуля, отклонение по x модуля');
readln(a,b,c);
if a <> 0 then begin
    if (x > abs(a * y + b) + c) then begin
    writeln('Введите коэффициент угла наклона прямых меньше нуля');
    readln(v1,v2);
        if v1 > 0 or v2 > 0 then begin
            if v1 = v2 then begin 
            writeln('Введите отклонение прямых по x');
            readln(k1,k2);
                if k1 = k2 then begin
                    if (abs(a * y + b) + c) <= (x * v1 + k1) or (x * v2 + k2) then begin
                            if x = abs(a * y + b) + c or y = x * v1 + k1 or y = x * v2 + k2 then begin
                                if x = abs(a * y + b) + c and (y = x * v1 + k1 or y = x * v2 + k2) then begin
                                writeln('Точка лежит на пересечении графиков')
                                else 
                                begin;
                                writeln('Точка лежит на границе графика')
                                end;
                            else begin;
                                if k1 < k2 then begin
                                    if (y < x + k1) and (y > x + k2) then begin
                                    writeln('Точка принадлежит области D')
                                    end;
                                    else
                                    begin;
                                    writeln('Точка принадлежит области между прямыми')
                                    end;
                                        else begin;
                                        if (y > x + k1) and (y < x + k2) then begin
                                        writeln('Точка принадлежит области D')
                                        end;
                                        else
                                        begin;
                                        writeln('Точка принадлежит области между прямыми')
                                        end;
                    begin;
                    writeln('Графики не образуют область D')
                    end;
                else
                begin;
                writeln('Прямые совпадают')
                end;
            else
            begin;
            writeln('Прямые не параллельны');
            end;
        else
        begin;
        writeln('Данные прям(ой/ых) введены некорректно')
    else
    begin;
    writeln('Точка не принадлежит модулю');
    end;
else
begin;
writeln('Данные модуля введены некорректно');
end;
end.
  


