program z92;
var
  arr: array of Integer;
  i, maxIndex, minModulusIndex, maxNegativeIndex: Integer;
procedure FindMaxElement(arr: array of Integer; var maxIndex: Integer);
var
  i: Integer;
begin
  maxIndex := 0;
  for i := 1 to Length(arr) - 1 do
  begin
    if arr[i] > arr[maxIndex] then
      maxIndex := i;
  end;
end;
procedure FindMinMaxNegativeElements(arr: array of Integer; var minModulusIndex, maxNegativeIndex: Integer);
var
  i: Integer;
begin
  minModulusIndex := -1;
  maxNegativeIndex := -1;
  for i := 0 to Length(arr) - 1 do
  begin
    if (arr[i] < 0) and ((maxNegativeIndex = -1) or (arr[i] > arr[maxNegativeIndex])) then
      maxNegativeIndex := i;

    if (minModulusIndex = -1) or (abs(arr[i]) < abs(arr[minModulusIndex])) then
      minModulusIndex := i;
  end;
end;
begin 
  SetLength(arr, 5);
  arr[0] := -3;
  arr[1] := 7;
  arr[2] := -2;
  arr[3] := -5;
  arr[4] := 4;
  writeln(arr);
  FindMaxElement(arr, maxIndex);
  writeln('Максимальный элемент массива: ', arr[maxIndex]);
  writeln('Номер максимального элемента: ', maxIndex);
  FindMinMaxNegativeElements(arr, minModulusIndex, maxNegativeIndex);
  writeln('Минимальный по модулю элемент: ', arr[minModulusIndex]);
  writeln('Номер минимального по модулю элемента: ', minModulusIndex);
  writeln('Максимальный отрицательный элемент: ', arr[maxNegativeIndex]);
  writeln('Номер максимального отрицательного элемента: ', maxNegativeIndex);
end.