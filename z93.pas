program FindNegativeNumber;
const
  SIZE = 10;
type
  IntegerArray = array[1..SIZE] of Integer;
function FindLastNegativeElement(arr: IntegerArray): Integer;
var
  i: Integer;
begin
  FindLastNegativeElement := 0; 
  for i := SIZE downto 1 do
  begin
    if arr[i] < 0 then
    begin
      FindLastNegativeElement := i; 
      Break;
    end;
  end;
end;
var
  numbers: IntegerArray;
  i: Integer;
  lastNegative: Integer;
begin
  Randomize;
  for i := 1 to SIZE do
  begin
    numbers[i] := Random(21) - 10; 
    Write(numbers[i]:4);
  end;
  Writeln;
  lastNegative := FindLastNegativeElement(numbers);
  if lastNegative > 0 then
    Writeln('Номер последнего отрицательного элемента: ', lastNegative)
  else
    Writeln('В массиве нет отрицательных элементов.');
end.