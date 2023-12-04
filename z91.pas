program z91;
const
  iwi = 5;
type
  ArrayType = array[1..iwi] of Integer;
function CalculateProduct(arr: ArrayType): Integer;
var
  i, p: Integer;
begin
  p := 1;  
  for i := 1 to iwi do
  begin
    p := p * arr[i];
  end;  
  CalculateProduct := p;
end;
function CalculateEvenProduct(arr: ArrayType): Integer;
var
  i, p: Integer;
begin
  p := 1;
  for i := 1 to iwi do
  begin
    if arr[i] mod 2 = 0 then
    begin
      p := p * arr[i];
    end;
  end; 
  CalculateEvenProduct := p;
end;
var
  arr: ArrayType;
  i, p, evenProduct: Integer; 
begin
  for i := 1 to iwi do
  begin
    arr[i] := Random(10) + 1; 
    Write(arr[i]:3);
  end;
  Writeln;
  p := CalculateProduct(arr);
  Writeln('Произведение всех элементов массива: ', p);
  evenProduct := CalculateEvenProduct(arr);
  Writeln('Произведение четных элементов массива: ', evenProduct);
end.
