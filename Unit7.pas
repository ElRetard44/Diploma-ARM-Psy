unit Unit7;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, DBCtrls, ExtCtrls;

type
  TForm7 = class(TForm)
    DataSource1: TDataSource;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    ADOQuery1: TADOQuery;
    ADOQuery1test1: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Select(Sender: TObject);
    procedure Select_dop(Sender: TObject);
    procedure Test_Ruk(Sender: TObject);
    procedure Test_Ruk_Result(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    button_select : Integer;
    Id: Integer;
  end;

var
  Form7: TForm7;

implementation

uses Unit35, Unit24, Unit11, Unit14, Unit16, Unit18, Unit25, Unit5,
  Unit22, Unit26, Unit2, Unit17, Unit10, Unit53, Unit1, Unit39, Unit8,
  Unit62, Test, Unit38, Balls, Unit27;

{$R *.dfm}



procedure TForm7.Button1Click(Sender: TObject);
var squery:string;
begin
  try
    with MyModule.ADOQuery2 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=1';
        SQL.Text:= squery;
        open;
        first;
    Form24.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;
    Form24.Label5.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
    Form24.s:= MyModule.ADOQuery2.Fields[2].AsString;
    Form7.hide;
    Form24.show;
      end;


except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
end;
exit;
 end;
procedure TForm7.Button2Click(Sender: TObject);
var i:integer;
  e:TEdit;
  squery:string;
begin
try
       with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=2';
    SQL.Text:= squery;
    open;
    first;
   Form11.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form11.Label5.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form11.s:= MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=21';
   SQL.Text:= squery;
   open;
   first;
   Form11.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=22';
   SQL.Text:= squery;
   open;
   first;
   Form11.Edit2.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=23';
   SQL.Text:= squery;
   open;
   first;
   Form11.Edit3.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=24';
   SQL.Text:= squery;
   open;
   first;
   Form11.Edit4.Text:=MyModule.ADOQuery2.Fields[0].AsString;

 Form11.Memo2.Clear;
 Form11.Memo2.Lines.Add('Время прохождения: ' + Form11.label5.caption);
 Form11.Memo2.Lines.Add('Пользователь: ' + Form2.label3.caption);
 Form11.Memo2.Lines.Add(Form11.label6.caption);
 Form11.Memo2.Lines.Add('Описание: ' + Form18.label1.caption);
 Form11.Memo2.Lines.Add('Шкала психотизма: ' + Form11.Edit1.Text);
 Form11.Memo2.Lines.Add('Шкала экстраверсии\интроверсии: ' + Form11.Edit2.Text);
 Form11.Memo2.Lines.Add('Шкала нейротизма: ' + Form11.Edit3.Text);
 Form11.Memo2.Lines.Add('Шкала искренности: ' + Form11.Edit4.Text);
 Form11.Memo2.Lines.AddStrings(Form11.Memo1.Lines);
    Form7.hide;
   Form11.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
 end;
procedure TForm7.Button4Click(Sender: TObject);
var i:integer;
    e:TEdit;
    squery:string;
begin
try
with MyModule.ADOQuery2 do
   begin
   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=3';
   SQL.Text:= squery;
   open;
   first;
   Form14.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form14.Label8.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form14.sM:= MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=31';
   SQL.Text:= squery;
   open;
   first;
   Form14.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form14.sL:= MyModule.ADOQuery2.Fields[1].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=32';
   SQL.Text:= squery;
   open;
   first;
   Form14.Edit2.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=33';
   SQL.Text:= squery;
   open;
   first;
   Form14.Edit3.Text:=MyModule.ADOQuery2.Fields[0].AsString;


  Form7.hide;
  Form14.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
   end;

procedure TForm7.Button5Click(Sender: TObject);
var squery:string;
begin
try
   with MyModule.ADOQuery2 do
   begin
   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=4';
   SQL.Text:= squery;
   open;
   first;
   Form16.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form16.Label4.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form16.s:=MyModule.ADOQuery2.Fields[2].AsString;
   Form7.hide;
   Form16.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
end;
exit;
end;

procedure TForm7.Button6Click(Sender: TObject);
var squery:string;
begin
try
   with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=5';
    SQL.Text:= squery;
    open;
    first;
   Form18.Memo2.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form18.Label8.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form18.s:=MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=51';
   SQL.Text:= squery;
   open;
   first;
   Form18.Memo3.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Form18.Memo1.Clear;
   Form18.Memo1.Lines.Add('Время прохождения: ' + Form18.label8.caption);
   Form18.Memo1.Lines.Add(Form18.label6.caption);
   Form18.Memo1.Lines.Add('Пользователь: ' + Form2.label3.caption);
   Form18.Memo1.Lines.Add(Form2.label3.caption);
   Form18.Memo1.Lines.Add('Описание: ' + Form18.label1.caption);
   Form18.Memo1.Lines.AddStrings(Form18.Memo2.Lines);
   Form18.Memo1.Lines.AddStrings(Form18.Memo3.Lines);
   Form7.hide;
   Form18.show;
  end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
end;
procedure TForm7.Button7Click(Sender: TObject);
var squery:string;
begin
try
   with MyModule.ADOQuery2 do
   begin
   Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=6';
    SQL.Text:= squery;
    open;
    first;
   Form25.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form25.Label3.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form25.s:=MyModule.ADOQuery2.Fields[2].AsString;
     Form7.hide;
   Form25.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
 end;
procedure TForm7.Button8Click(Sender: TObject);
var squery:string;
begin
try
with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=7';
    SQL.Text:= squery;
    open;
    first;
   Form5.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form5.Label3.caption:=MyModule.ADOQuery2.Fields[1].AsString;

   Form7.hide;
   Form5.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
end;
procedure TForm7.Button9Click(Sender: TObject);
var i:integer;
  e:TEdit;
  squery:string;
begin
try
   with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=8';
   SQL.Text:= squery;
    open;
    first;
   Form22.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form22.Label11.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form22.s:=MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=81';
   SQL.Text:= squery;
   open;
   first;
   Form22.Edit2.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=82';
   SQL.Text:= squery;
   open;
   first;
   Form22.Edit3.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Form7.hide;
   Form22.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
end;

procedure TForm7.Button10Click(Sender: TObject);
var squery:string;
begin
try
     with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=9';
    SQL.Text:= squery;
    open;
    first;
   Form26.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form26.Label8.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form26.s:=MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=91';
   SQL.Text:= squery;
   open;
   first;
   Form26.Edit2.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Form7.hide;
   Form26.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
end;

procedure TForm7.FormCreate(Sender: TObject);

begin
button_select:=0;
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
  end;
  try
    MyModule.ADOQuery2.SQL.Clear;
    MyModule.ADOQuery2.SQL.Add('SELECT * FROM Result');
    MyModule.ADOQuery2.Active:=True;
   except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
   exit;
 end;
procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if button_select = 0 then
Form2.show
else
begin
Form62.show;
button_select:=0;
end;
end;

procedure TForm7.FormShow(Sender: TObject);
var k,k1,k2,nomber: Integer;
    b,b1,b2: TButton;
    top,top1:integer;
    s,squery:string;
begin
   try
    MyModule.ADOQuery2.SQL.Clear;
    squery:= 'SELECT * FROM Result WHERE (N_testa BETWEEN 0 AND 10) AND N_vlast=' + inttostr(Form8.id_vlast);
    MyModule.ADOQuery2.SQL.Text:= squery;
    MyModule.ADOQuery2.Active:=True;
    k:=0;
    top:=0;
    MyModule.ADOQuery2.First;
    while not MyModule.ADOQuery2.Eof do
    begin

      k := k + 1;
      b:=TButton.Create(Self);
      b.Parent:=ScrollBox1;
      b.Font.Size:=12;
      b.Font.Style:=[fsBold];
      b.Font.Name:='Times New Roman';
      b.Left:= 5;
      b.Height:= 50;
      b.Width := 95;
      b.Top:=top;
      b.Font.Size:=14;

      top:=b.top + b.height +10;
      b.Width := 415;
      b.Caption:=MyModule.ADOQuery2.FieldByName('Name_Test').AsString;
      b.OnClick:=Select;
      b.Tag := MyModule.ADOQuery2.FieldByName('N_testa').AsInteger;
      b.WordWrap:=True;
      b.Visible := true;
      MyModule.ADOQuery2.Next;
end;

    MyModule.ADOQuery2.SQL.Clear;
    squery:= 'SELECT * FROM Intermediate_result WHERE Intermediate_result.N_vlast=' + inttostr(Form8.id_vlast) +  ' AND Result_Data IS NOT NUll';
    MyModule.ADOQuery2.SQL.Text:= squery;
    MyModule.ADOQuery2.Active:=True;
    MyModule.ADOQuery2.First;

    k2:=0;
    while not MyModule.ADOQuery2.Eof do
    begin
      nomber:=MyModule.ADOQuery2.FieldByName('N_testa').AsInteger;
      k2 := k2 + 1;
      b2:=TButton.Create(Self);
      b2.Parent:=ScrollBox2;
      b2.Font.Size:=12;
      b2.Font.Style:=[fsBold];
      b2.Font.Name:='Times New Roman';
      b2.Left:= 5;
      b2.Height:= 50;
      b2.Width := 95;
      b2.Top:=top1;
      b2.Font.Size:=14;

      top1:=b2.top + b2.height +10;
      b2.Width := 415;
      MyModule.ADOQuery1.SQL.Clear;
      squery:= 'SELECT * FROM Test WHERE N_testa=' +intTostr(nomber);
      MyModule.ADOQuery1.SQL.Text:= squery;
      MyModule.ADOQuery1.Active:=True;
      b2.Caption:=MyModule.ADOQuery1.FieldByName('Nazv').AsString;
      if button_select = 0 then
      b2.OnClick:=Test_Ruk_Result
      else
      begin
      b2.OnClick:=Test_Ruk;
      end;
      b2.Tag := MyModule.ADOQuery1.FieldByName('N_testa').AsInteger;
      b2.WordWrap:=True;
      b2.Visible := true;
      MyModule.ADOQuery2.Next;
end;

   { MyModule.ADOQuery2.SQL.Clear;
    squery:= 'SELECT * FROM Result WHERE ((Result.N_testa) BETWEEN 0 AND 10 ) AND N_vlast=' + inttostr(Form8.id_vlast);
    MyModule.ADOQuery2.SQL.Text:= squery;
    MyModule.ADOQuery2.Active:=True;
    MyModule.ADOQuery2.First;
    while not MyModule.ADOQuery2.Eof do
    begin

      k := k + 1;
      b:=TButton.Create(Self);
      b.Parent:=ScrollBox1;
      b.Font.Size:=12;
      b.Font.Style:=[fsBold];
      b.Font.Name:='Times New Roman';
      b.Left:= 5;
      b.Height:= 50;
      b.Width := 95;
      b.Top:=top;
      b.Font.Size:=14;

      top:=b.top + b.height +10;
      b.Width := 415;
      b.Caption:=MyModule.ADOQuery2.FieldByName('Name_Test').AsString;
      b.OnClick:=Select;
      b.Tag := MyModule.ADOQuery2.FieldByName('N_testa').AsInteger;
      b.WordWrap:=True;
      b.Visible := true;
      MyModule.ADOQuery2.Next;
end;  }

    MyModule.ADOQuery2.SQL.Clear;
    squery:= 'SELECT * FROM Result WHERE Result.N_testa >= 100 AND N_vlast=' + inttostr(Form8.id_vlast);
    MyModule.ADOQuery2.SQL.Text:= squery;
    MyModule.ADOQuery2.Active:=True;
    MyModule.ADOQuery2.First;

    k1:=0;
    top1:=0;

    while not MyModule.ADOQuery2.Eof do
    begin
      nomber:=MyModule.ADOQuery2.FieldByName('N_testa').AsInteger;
      k1 := k1 + 1;
      b1:=TButton.Create(Self);
      b1.Parent:=ScrollBox2;
      b1.Font.Size:=12;
      b1.Font.Style:=[fsBold];
      b1.Font.Name:='Times New Roman';
      b1.Left:= 5;
      b1.Height:= 50;
      b1.Width := 95;
      b1.Top:=top1;
      b1.Font.Size:=14;

      top1:=b1.top + b1.height +10;
      b1.Width := 415;
      MyModule.ADOQuery1.SQL.Clear;
      squery:= 'SELECT * FROM Test WHERE N_testa=' +intTostr(nomber);
      MyModule.ADOQuery1.SQL.Text:= squery;
      MyModule.ADOQuery1.Active:=True;
      b1.Caption:=MyModule.ADOQuery1.FieldByName('Nazv').AsString;
      b1.OnClick:=Select_dop;
      b1.Tag := MyModule.ADOQuery1.FieldByName('N_testa').AsInteger;
      b1.WordWrap:=True;
      b1.Visible := true;
      MyModule.ADOQuery2.Next;
end;


except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
end;
exit;
end;
procedure TForm7.Select(Sender: TObject);
var
button : TButton;
begin
button := (Sender as TButton);
if button <> nil then
  case button.Tag of
   1:begin
    Button1Click(Sender);
   end;
   2:begin
    Button2Click(Sender);
   end;
   3:begin
    Button4Click(Sender);
   end;
   4:begin
    Button5Click(Sender);
   end;
   5:begin
    Button6Click(Sender);
   end;
   6:begin
    Button7Click(Sender);
   end;
   7:begin
    Button8Click(Sender);
   end;
   8:begin
    Button9Click(Sender);
   end;
   9:begin
    Button10Click(Sender);
   end;


end;
end;
procedure TForm7.Select_dop(Sender: TObject);
var
squery:string;
button : TButton;
begin
button := (Sender as TButton);
if button <> nil then
   MyModule.ADOQuery2.SQL.Clear;
   squery:= 'SELECT * FROM Test WHERE N_testa=' +intTostr(button.Tag);
   MyModule.ADOQuery2.SQL.Text:= squery;
   MyModule.ADOQuery2.Active:=True;
   Form39.Label2.Caption:=MyModule.ADOQuery2.FieldByName('Nazv').AsString;
   Form39.Label1.Caption:=MyModule.ADOQuery2.FieldByName('Opis').AsString;


   MyModule.ADOQuery2.SQL.Clear;
   squery:= 'SELECT * FROM Result WHERE  N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=' + intTostr(button.Tag);
   MyModule.ADOQuery2.SQL.Text:= squery;
   MyModule.ADOQuery2.Active:=True;
   Form39.Memo1.Text:=MyModule.ADOQuery2.FieldByName('Resultat').AsString;
   Form39.Label5.Caption:=MyModule.ADOQuery2.FieldByName('Result_Data').AsString;
   Form39.s:=MyModule.ADOQuery2.FieldByName('Choice').AsString;
   Form39.numeretic:=button.Tag;
   Form39.Show;
   Form7.Hide;
end;

procedure TForm7.Test_Ruk(Sender: TObject);
var
squery:string;
bal1,bal2,i:integer;
button : TButton;
begin
TestRuk.RadioGroup1.Items.Clear;
TestRuk.RadioGroup1.Visible:=True;
TestRuk.RadioGroup1.Enabled:=True;
button := (Sender as TButton);
if button <> nil then
     with MyModule.ADOQuery2 do
   begin
     Close;
   MyModule.ADOQuery2.SQL.Clear;
   squery:= 'SELECT * FROM Test WHERE N_testa=' + IntToStr(button.Tag);
   SQL.Text:= squery;
   //MyModule.ADOQuery2.SQL.Add('SELECT * FROM Test WHERE N_testa=' + IntToStr(button.Tag));
   open;
   nazv:=MyModule.ADOQuery2.Fields[1].AsString;
   opisan:=MyModule.ADOQuery2.Fields[2].AsString;
   ExecSQL;
   Close;
   MyModule.ADOQuery2.SQL.Clear;
   squery:= 'SELECT * FROM Test_Information WHERE N_testa=' + IntToStr(button.Tag);
   MyModule.ADOQuery2.SQL.Text:= squery;
   open;
   first;
   nomer:=MyModule.ADOQuery2.Fields[0].AsInteger;
   kolvo:=MyModule.ADOQuery2.Fields[2].AsInteger;
   question:=MyModule.ADOQuery2.Fields[3].AsString;
   bal1:=MyModule.ADOQuery2.Fields[10].AsInteger;
   bal2:=MyModule.ADOQuery2.Fields[11].AsInteger;
   Type_otvet:=MyModule.ADOQuery2.Fields[21].AsInteger;
     TestRuk.Label1.Caption:=nazv;
     TestRuk.N:=kolvo;
     TestRuk.metka:= nomer;
     TestRuk.numeretic:=button.Tag;
     TestRuk.type_obr:=type_obr;
     TestRuk.opis:=opisan;
     TestRuk.Caption:='Вопрос '+ '1' + ' из ' +IntToStr(kolvo);
     TestRuk.Question.Caption:=question;
     //TestRuk.LAbel6.Caption:=Form2.Label3.Caption;
     for i:=bal1 to bal2 do
     begin
     TestRuk.RadioGroup1.Items.Add(intTostr(i));
     end;
     TestRuk.RadioGroup1.ItemIndex:=0;
   Close;
   MyModule.ADOQuery2.SQL.Clear;
   squery:= 'SELECT * FROM Intermediate_result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=' + intTostr(button.Tag);
   MyModule.ADOQuery2.SQL.Text:= squery;
   open;
   first;
   TestRuk.metka_ot:=MyModule.ADOQuery2.Fields[0].AsInteger;
   TestRuk.Memo1.Text:=MyModule.ADOQuery2.Fields[3].AsString;
     Form7.Hide;
     TestRuk.show;
end;

end;

procedure TForm7.Test_Ruk_Result(Sender: TObject);
var
button : TButton;
begin
button := (Sender as TButton);
if button <> nil then
   begin

   end
end;
end.
