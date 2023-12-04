program MinArrayCheck;
const
  SIZE = 8;
type
  TwoDimensionalArray = array[1..SIZE, 1..SIZE] of Integer;
  OneDimensionalArray = array[1..SIZE] of Integer;
var
  twoDimArray: TwoDimensionalArray;
  oneDimArray: OneDimensionalArray;
  i, j, sum: Integer;
  average: Real;
  containsAverage: Boolean;
begin
  Randomize;
  for i := 1 to SIZE do
  begin
    for j := 1 to SIZE do
    begin
      twoDimArray[i, j] := Random(100);
      Write(twoDimArray[i, j]:3);
    end;
    Writeln;
  end;
  for i := 1 to SIZE do
  begin
    oneDimArray[i] := twoDimArray[i, 1];
    for j := 2 to SIZE do
    begin
      if twoDimArray[i, j] < oneDimArray[i] then
        oneDimArray[i] := twoDimArray[i, j];
    end;
  end;
  Writeln('Одномерный массив:');
  for i := 1 to SIZE do
    Write(oneDimArray[i]:3);
  sum := 0;
  for i := 1 to SIZE do
    sum := sum + oneDimArray[i];
  average := sum / SIZE;
  containsAverage := False;
  for i := 1 to SIZE do
  begin
    if oneDimArray[i] = Round(average) then
    begin
      containsAverage := True;
      Break;
    end;
  end;
  if containsAverage then
    Writeln(' Одномерный массив содержит среднее арифметическое.')
  else
    Writeln(' Одномерный массив не содержит среднее арифметическое.');

end.