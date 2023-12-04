program Main;
type
  TwoDimensionalArray = array[1..8, 1..6] of Integer;
  OneDimensionalArray = array[1..8] of Integer;
procedure GenerateArrays(var twoDimArray: TwoDimensionalArray; var oneDimArray: OneDimensionalArray);
var
  i, j: Integer;
begin
  for i := 1 to 8 do
  begin
    oneDimArray[i] := 1;
    for j := 1 to 6 do
    begin
      twoDimArray[i, j] := Random(21) - 10;
      if twoDimArray[i, j] < 0 then
      begin
        oneDimArray[i] := -1;
        Break;
      end;
    end;
  end;
end;
procedure PrintArrays(twoDimArray: TwoDimensionalArray; oneDimArray: OneDimensionalArray);
var
  i, j: Integer;
begin
  for i := 1 to 8 do
  begin
    for j := 1 to 6 do
      Write(twoDimArray[i, j]:3);
    Writeln;
  end;
  Writeln;
  for i := 1 to 8 do
    Write(oneDimArray[i]:3);
  Writeln;
end;
var
  twoDimArray: TwoDimensionalArray;
  oneDimArray: OneDimensionalArray;
begin
  Randomize;
  GenerateArrays(twoDimArray, oneDimArray);
  PrintArrays(twoDimArray, oneDimArray);
  Readln;
end.