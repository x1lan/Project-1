unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
count,i,j,sum: integer;

begin
i:=0;
sum:=0;
count:=1;
while i <= SpinEdit1.Value do
begin
for j:=1 to i do
if i mod j=0 then inc(count);
if count=4 then sum:=sum+1;
Inc(i);count:=0
end;
Label2.Caption := 'Сумма чисел = ' + sum.ToString;
end;


end.

