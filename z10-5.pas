program TwoDimensionalArray;
var
  arr: array[1..8, 1..8] of Integer;
  result: array[1..8] of Integer;
  row, col, max, count: Integer;
begin
  Randomize;
  for row := 1 to 8 do
  begin
    for col := 1 to 8 do
    begin
      arr[row, col] := Random(10);
    end;
  end;
  for row := 1 to 8 do
  begin
    max := arr[row, 1];
    count := 1;
    for col := 2 to 8 do
    begin
      if arr[row, col] > max then
      begin
        max := arr[row, col];
        count := 1;
      end
      else if arr[row, col] = max then
      begin
        count := count + 1;
      end;
    end;
    if count = 1 then
      result[row] := 1
    else
      result[row] := -1;
  end;
  writeln('Исходный двумерный массив:');
  for row := 1 to 8 do
  begin
    for col := 1 to 8 do
    begin
      write(arr[row, col]:4);
    end;
    writeln;
  end;
  writeln('Одномерный массив:');
  for row := 1 to 8 do
  begin
    write(result[row]:4);
  end;
  readln;
end.