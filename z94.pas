program MultiplyArray;
const
  SIZE = 5; 
var
  arr1, arr2: array[1..SIZE] of Integer;
  sum1, sum2: Integer;
  i: Integer;
begin
  Randomize;
  for i := 1 to SIZE do
  begin
    arr1[i] := Random(21) - 10; // Генерируем числа от -10 до 10
    arr2[i] := Random(21) - 10;
  end;
  sum1 := 0;
  sum2 := 0;
  for i := 1 to SIZE do
  begin
    if arr1[i] > 0 then
      sum1 := sum1 + arr1[i];
    if arr2[i] > 0 then
      sum2 := sum2 + arr2[i];
  end;
  if sum1 < sum2 then
  begin
    for i := 1 to SIZE do
    begin
      arr1[i] := arr1[i] * 10;
    end;
  end
  else
  begin
    for i := 1 to SIZE do
    begin
      arr2[i] := arr2[i] * 10;
    end;
  end;
  writeln('Исходные массивы:');
  writeln('Массив 1:');
  for i := 1 to SIZE do
  begin
    write(arr1[i]:4);
  end;
  writeln;
  writeln('Массив 2:');
  for i := 1 to SIZE do
  begin
    write(arr2[i]:4);
  end;
  writeln;
  readln;
end.