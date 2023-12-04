program TwoArrays
const
  SIZE = 10;
var
  array1, array2: array[1..SIZE] of integer;
  i, max1, min2, max2: integer;
begin
  randomize;
  for i := 1 to SIZE do
  begin
    array1[i] := random(100);
    array2[i] := random(100);
  end;
  writeln('Исходный массив 1:');
  for i := 1 to SIZE do
    write(array1[i], ' ');
  writeln;
  writeln('Исходный массив 2:');
  for i := 1 to SIZE do
    write(array2[i], ' ');
  writeln;
  i := 1;
  while (i <= SIZE) and (array1[i] mod 5 <> 0) do
    i := i + 1;
  if i <= SIZE then
  begin
    max1 := 1;
    for i := 2 to SIZE do
    begin
      if array1[i] > array1[max1] then
        max1 := i;
    end;
    array1[max1] := 0;
  end;
  min2 := 1;
  for i := 2 to SIZE do
  begin
    if array2[i] < array2[min2] then
      min2 := i;
  end;
  for i := min2 + 1 to SIZE do
    array2[i] := array2[i] * 2;
  writeln('Результат:');
  writeln('Массив 1:');
  for i := 1 to SIZE do
    write(array1[i], ' ');
  writeln;
  writeln('Массив 2:');
  for i := 1 to SIZE do
    write(array2[i], ' ');
  writeln;
end.