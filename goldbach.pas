program Gold01;

uses 
	SysUtils;

var
	myoption,
	myvalue,
	mymod      : Integer;

function Si(i: Integer) : Integer;
begin
    Si := 3 + (2 * i);
end;


function Gn(n: Integer) : Integer;
begin
    Gn := (n - 6) div 2;
end;


function MaxIndex(gn: Integer): Integer;
begin
	MaxIndex := (gn - 1) div 2;
	if ((gn mod 2) = 0) then MaxIndex := gn div 2;
end;


function IsPrime(n: Integer) : Boolean;
begin
	IsPrime := True;
end;


procedure Table(n: Integer);
var
	g, k, j, d, s1, s2: Integer;
begin
	g := Gn(n);
	k := MaxIndex(g);
	for j := 0 to k do
	begin
		s1 := Si(j);
		d  :=  g - j;
		s2 := Si(d);
		WriteLn('s(', j:2, ') = ', s1:4, '  <=>  s(', d:2, ') = ', s2:4);
	end
end;


procedure Tables(n: Integer);
var
	i, g: Integer;
begin
	i := 6;
	while (i <= n) do
    begin
        g := Gn(i);
        WriteLn;
        WriteLn('n = ',i);
        WriteLn('G(', i, ') = ', g);
        WriteLn;
        Table(i);
        WriteLn;
        WriteLn('=========================================');
        i := i + 2;
    end	
end;

begin
    myoption := StrToInt(ParamStr(1));

    case myoption of
    1,2 :
        begin
			if ((myoption = 1) and (ParamStr(2) = '')) then 
			    myvalue := 20
			else
			    myvalue := StrToInt(ParamStr(2));

			mymod := myvalue mod 2;

			if (mymod = 1) then myvalue := myvalue + 1;        	
        end
    end;

    case myoption of 
    1 : Tables(myvalue);
    2 : Table(myvalue);
    else
        WriteLn('Command not found!');
    end;
end.

