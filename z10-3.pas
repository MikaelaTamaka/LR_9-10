program OneDimensionalArray;
const
  SIZE = 8;
type
  TwoDimensionalArray = array[1..SIZE, 1..SIZE] of Integer;
var
  twoDArray: TwoDimensionalArray;
  oneDArray: array[1..SIZE] of Integer;
  i, j: Integer;
  pairExists: Boolean;
begin
  (* Заполняем двумерный массив случайными числами от 1 до 6 *)
  Randomize;
  for i := 1 to SIZE do
  begin
    for j := 1 to SIZE do
    begin
      twoDArray[i, j] := Random(6) + 1;
      Write(twoDArray[i, j], ' ');
    end;
    Writeln;
  end;
  for i := 1 to SIZE do
  begin
    pairExists := False;
    for j := 1 to SIZE - 1 do
    begin
      if (twoDArray[i, j] + twoDArray[i, j + 1] = 7) then
      begin
        pairExists := True;
        Break;
      end;
    end;
    if pairExists then
      oneDArray[i] := 1
    else
      oneDArray[i] := -1;
  end;
  for i := 1 to SIZE do
  begin
    Write(oneDArray[i], ' ');
  end;
  Readln;
end.