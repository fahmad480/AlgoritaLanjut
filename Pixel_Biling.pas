unit Pixel_Biling;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, jpeg, frxClass, Menus, ComCtrls,
  Mask, XPMan;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    RadioGroup6: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Label22: TLabel;
    Label23: TLabel;
    frxReport1: TfrxReport;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit5: TMenuItem;
    Help1: TMenuItem;
    Save1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Reset1: TMenuItem;
    About1: TMenuItem;
    Save2: TMenuItem;
    Label24: TLabel;
    Label25: TLabel;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    ProgressBar1: TProgressBar;
    XPManifest1: TXPManifest;
    Label20: TLabel;
    GroupBox7: TGroupBox;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
    procedure WMSyscommand(Var msg: TWmSysCommand); message WM_SYSCOMMAND;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  time1,time2,time3: TDateTime;
  int1: Double;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  xbiaya,xlama,biaya:real;
  sbiaya,slama:string;
begin
  if (BitBtn1.Caption = 'Start') then
  begin
    Label9.Caption := TimeToStr(Time);
    BitBtn1.Kind := bkHelp;
    BitBtn1.Caption := 'Check'
  end
  else if (BitBtn1.Caption = 'Check') then
  begin
    time1 := StrToTime(Label9.Caption);
    time2 := (time - time1);

    if (RadioButton1.Checked = True) then
      Begin
      biaya := 45;
      RadioButton13.Checked := True;
      End
    else
	  Begin
      biaya := 50;
      RadioButton14.Checked := True;
	  End;

    xlama := (time - time1)*24*60;
    str(xlama:6:2,slama);
    xbiaya := xlama*biaya;
    str(xbiaya:8:0,sbiaya);
    Edit3.Text := stringreplace(sbiaya, ' ', '',[rfReplaceAll, rfIgnoreCase]);

    Edit1.Text := 'Client 1';
    Edit2.Text := Label9.Caption;
    Edit4.Text := TimeToStr(time2);
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  xbiaya,xlama,biaya:real;
  sbiaya,slama:string;
begin
  if (BitBtn3.Caption = 'Start') then
  begin
    Label11.Caption := TimeToStr(Time);
    BitBtn3.Kind := bkHelp;
    BitBtn3.Caption := 'Check'
  end
  else if (BitBtn3.Caption = 'Check') then
  begin
    time1 := StrToTime(Label11.Caption);
    time2 := (time - time1);

    if (RadioButton3.Checked = True) then
      Begin
      biaya := 45;
      RadioButton13.Checked := True;
      End
    else
	  Begin
      biaya := 50;
      RadioButton14.Checked := True;
	  End;

    xlama := (time - time1)*24*60;
    str(xlama:6:2,slama);
    xbiaya := xlama*biaya;
    str(xbiaya:8:0,sbiaya);
    Edit3.Text := stringreplace(sbiaya, ' ', '',[rfReplaceAll, rfIgnoreCase]);

    Edit1.Text := 'Client 2';
    Edit2.Text := Label11.Caption;
    Edit4.Text := TimeToStr(time2);
  end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var
  xbiaya,xlama,biaya:real;
  sbiaya,slama:string;
begin
  if (BitBtn5.Caption = 'Start') then
  begin
    Label13.Caption := TimeToStr(Time);
    BitBtn5.Kind := bkHelp;
    BitBtn5.Caption := 'Check'
  end
  else if (BitBtn5.Caption = 'Check') then
  begin
    time1 := StrToTime(Label13.Caption);
    time2 := (time - time1);

    if (RadioButton5.Checked = True) then
      Begin
      biaya := 45;
      RadioButton13.Checked := True;
      End
    else
	  Begin
      biaya := 50;
      RadioButton14.Checked := True;
	  End;

    xlama := (time - time1)*24*60;
    str(xlama:6:2,slama);
    xbiaya := xlama*biaya;
    str(xbiaya:8:0,sbiaya);
    Edit3.Text := stringreplace(sbiaya, ' ', '',[rfReplaceAll, rfIgnoreCase]);

    Edit1.Text := 'Client 3';
    Edit2.Text := Label13.Caption;
    Edit4.Text := TimeToStr(time2);
  end;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var
  xbiaya,xlama,biaya:real;
  sbiaya,slama:string;
begin
  if (BitBtn7.Caption = 'Start') then
  begin
    Label15.Caption := TimeToStr(Time);
    BitBtn7.Kind := bkHelp;
    BitBtn7.Caption := 'Check'
  end
  else if (BitBtn7.Caption = 'Check') then
  begin
    time1 := StrToTime(Label15.Caption);
    time2 := (time - time1);

    if (RadioButton7.Checked = True) then
      Begin
      biaya := 45;
      RadioButton13.Checked := True;
      End
    else
	  Begin
      biaya := 50;
      RadioButton14.Checked := True;
	  End;

    xlama := (time - time1)*24*60;
    str(xlama:6:2,slama);
    xbiaya := xlama*biaya;
    str(xbiaya:8:0,sbiaya);
    Edit3.Text := stringreplace(sbiaya, ' ', '',[rfReplaceAll, rfIgnoreCase]);

    Edit1.Text := 'Client 4';
    Edit2.Text := Label15.Caption;
    Edit4.Text := TimeToStr(time2);
  end;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
var
  xbiaya,xlama,biaya:real;
  sbiaya,slama:string;
begin
  if (BitBtn9.Caption = 'Start') then
  begin
    Label17.Caption := TimeToStr(Time);
    BitBtn9.Kind := bkHelp;
    BitBtn9.Caption := 'Check'
  end
  else if (BitBtn9.Caption = 'Check') then
  begin
    time1 := StrToTime(Label17.Caption);
    time2 := (time - time1);

    if (RadioButton9.Checked = True) then
      Begin
      biaya := 45;
      RadioButton13.Checked := True;
      End
    else
	  Begin
      biaya := 50;
      RadioButton14.Checked := True;
	  End;

    xlama := (time - time1)*24*60;
    str(xlama:6:2,slama);
    xbiaya := xlama*biaya;
    str(xbiaya:8:0,sbiaya);
    Edit3.Text := stringreplace(sbiaya, ' ', '',[rfReplaceAll, rfIgnoreCase]);

    Edit1.Text := 'Client 5';
    Edit2.Text := Label17.Caption;
    Edit4.Text := TimeToStr(time2);
  end;
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
var
  xbiaya,xlama,biaya:real;
  sbiaya,slama:string;
begin
  if (BitBtn11.Caption = 'Start') then
  begin
    Label19.Caption := TimeToStr(Time);
    BitBtn11.Kind := bkHelp;
    BitBtn11.Caption := 'Check'
  end
  else if (BitBtn11.Caption = 'Check') then
  begin
    time1 := StrToTime(Label19.Caption);
    time2 := (time - time1);

    if (RadioButton11.Checked = True) then
      Begin
      biaya := 45;
      RadioButton13.Checked := True;
      End
    else
	  Begin
      biaya := 50;
      RadioButton14.Checked := True;
	  End;

    xlama := (time - time1)*24*60;
    str(xlama:6:2,slama);
    xbiaya := xlama*biaya;
    str(xbiaya:8:0,sbiaya);
    Edit3.Text := stringreplace(sbiaya, ' ', '',[rfReplaceAll, rfIgnoreCase]);

    Edit1.Text := 'Client 6';
    Edit2.Text := Label19.Caption;
    Edit4.Text := TimeToStr(time2);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if (application.messagebox('Yakin ingin keluar?','informasi',MB_YESNO)=IDYES) then
    close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
application.minimize;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label3.Caption := TimeToStr(time);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
if Edit1.Text = 'Client 1' then
  Begin
    Label9.Caption := '';
    RadioButton1.Checked := False;
    RadioButton2.Checked := True;
    BitBtn1.Kind := bkOK;
    BitBtn1.Caption := 'Start';
    if (Edit1.Text = 'Client 1') then
    Begin
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      RadioButton13.Checked := False;
      RadioButton14.Checked := False;
    end;
    Label23.Caption := IntToStr(StrToInt(Label23.Caption) + 1);
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Label23.Caption);
  end
  else If (Edit1.Text <> 'Client 1') and (BitBtn1.Caption = 'Check') then
  Application.MessageBox('Klik Tombol Check Terlebih Dahulu', 'Pixel Billing', MB_OK or MB_ICONERROR);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  RadioButton2.Checked := True;
  RadioButton4.Checked := True;
  RadioButton6.Checked := True;
  RadioButton8.Checked := True;
  RadioButton10.Checked := True;
  RadioButton12.Checked := True;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
  Begin
    Tfrxmemoview(frxReport1.FindObject('Memo9')).Memo.Text:=form1.Edit1.Text;
    Tfrxmemoview(frxReport1.FindObject('Memo10')).Memo.Text:=form1.Edit2.Text;
    Tfrxmemoview(frxReport1.FindObject('Memo11')).Memo.Text:='Rp '+form1.Edit3.Text+',-';
    Tfrxmemoview(frxReport1.FindObject('Memo12')).Memo.Text:=form1.Edit4.Text;
    if RadioButton13.Checked = True then
      Tfrxmemoview(frxReport1.FindObject('Memo14')).Memo.Text:='Ya'
    else
      Tfrxmemoview(frxReport1.FindObject('Memo14')).Memo.Text:='Tidak';
    frxReport1.ShowReport(True);
    frxReport1.Print;
  end;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
if (application.messagebox('Yakin ingin keluar?','informasi',MB_YESNO)=IDYES) then
    close;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
Application.MessageBox('Dibuat Oleh:' + #13#10 + 'Faraaz (152018070)' + #13#10 + 'M Rauf (152018057)' + #13#10 + 'Fauzan Fathur (152018039)' + #13#10 + 'Tirtafajar (152018049)', 'Pixel Billing', MB_OK);
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
if SaveDialog1.Execute = True then
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.Save2Click(Sender: TObject);
begin
if OpenDialog1.Execute = True then
  begin
  Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
  Label23.Caption := stringreplace(Memo1.Lines.GetText, #13#10, '',[rfReplaceAll, rfIgnoreCase]);;
  end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
if Edit1.Text = 'Client 2' then
  Begin
    Label11.Caption := '';
    RadioButton3.Checked := False;
    RadioButton4.Checked := True;
    BitBtn3.Kind := bkOK;
    BitBtn3.Caption := 'Start';
    if (Edit1.Text = 'Client 2') then
    Begin
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      RadioButton13.Checked := False;
      RadioButton14.Checked := False;
    end;
    Label23.Caption := IntToStr(StrToInt(Label23.Caption) + 1);
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Label23.Caption);
  end
  else If (Edit1.Text <> 'Client 2') and (BitBtn3.Caption = 'Check') then
  Application.MessageBox('Klik Tombol Check Terlebih Dahulu', 'Pixel Billing', MB_OK or MB_ICONERROR);
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
if Edit1.Text = 'Client 3' then
  Begin
    Label13.Caption := '';
    RadioButton5.Checked := False;
    RadioButton6.Checked := True;
    BitBtn5.Kind := bkOK;
    BitBtn5.Caption := 'Start';
    if (Edit1.Text = 'Client 3') then
    Begin
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      RadioButton13.Checked := False;
      RadioButton14.Checked := False;
    end;
    Label23.Caption := IntToStr(StrToInt(Label23.Caption) + 1);
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Label23.Caption);
  end
  else If (Edit1.Text <> 'Client 3') and (BitBtn5.Caption = 'Check') then
  Application.MessageBox('Klik Tombol Check Terlebih Dahulu', 'Pixel Billing', MB_OK or MB_ICONERROR);
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
if Edit1.Text = 'Client 4' then
  Begin
    Label15.Caption := '';
    RadioButton7.Checked := False;
    RadioButton8.Checked := True;
    BitBtn7.Kind := bkOK;
    BitBtn7.Caption := 'Start';
    if (Edit1.Text = 'Client 4') then
    Begin
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      RadioButton13.Checked := False;
      RadioButton14.Checked := False;
    end;
    Label23.Caption := IntToStr(StrToInt(Label23.Caption) + 1);
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Label23.Caption);
  end
  else If (Edit1.Text <> 'Client 4') and (BitBtn7.Caption = 'Check') then
  Application.MessageBox('Klik Tombol Check Terlebih Dahulu', 'Pixel Billing', MB_OK or MB_ICONERROR);
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
if Edit1.Text = 'Client 5' then
  Begin
    Label17.Caption := '';
    RadioButton9.Checked := False;
    RadioButton10.Checked := True;
    BitBtn9.Kind := bkOK;
    BitBtn9.Caption := 'Start';
    if (Edit1.Text = 'Client 5') then
    Begin
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      RadioButton13.Checked := False;
      RadioButton14.Checked := False;
    end;
    Label23.Caption := IntToStr(StrToInt(Label23.Caption) + 1);
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Label23.Caption);
  end
  else If (Edit1.Text <> 'Client 5') and (BitBtn9.Caption = 'Check') then
  Application.MessageBox('Klik Tombol Check Terlebih Dahulu', 'Pixel Billing', MB_OK or MB_ICONERROR);
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
begin
if Edit1.Text = 'Client 6' then
  Begin
    Label19.Caption := '';
    RadioButton11.Checked := False;
    RadioButton12.Checked := True;
    BitBtn11.Kind := bkOK;
    BitBtn11.Caption := 'Start';
    if (Edit1.Text = 'Client 6') then
    Begin
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      RadioButton13.Checked := False;
      RadioButton14.Checked := False;
    end;
    Label23.Caption := IntToStr(StrToInt(Label23.Caption) + 1);
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Label23.Caption);
  end
  else If (Edit1.Text <> 'Client 6') and (BitBtn11.Caption = 'Check') then
  Application.MessageBox('Klik Tombol Check Terlebih Dahulu', 'Pixel Billing', MB_OK or MB_ICONERROR);
end;

procedure TForm1.Reset1Click(Sender: TObject);
var
  i: integer;
begin
for i := 0 to 500 do begin
  progressbar1.Position := i;
  Sleep(1);
end;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
RadioButton13.Checked := False;
RadioButton14.Checked := False;
if (BitBtn1.Caption = 'Check') then begin
  BitBtn1.Click;
  BitBtn2.Click;
end;
if (BitBtn3.Caption = 'Check') then begin
  BitBtn3.Click;
  BitBtn4.Click;
end;
if (BitBtn5.Caption = 'Check') then begin
  BitBtn5.Click;
  BitBtn6.Click;
end;
if (BitBtn7.Caption = 'Check') then begin
  BitBtn7.Click;
  BitBtn8.Click;
end;
if (BitBtn9.Caption = 'Check') then begin
  BitBtn9.Click;
  BitBtn10.Click;
end;
if (BitBtn11.Caption = 'Check') then begin
  BitBtn11.Click;
  BitBtn12.Click;
end;
Label23.Caption := '0';
Memo1.Clear;
Application.MessageBox('Berhasil Direset', 'Pixel Billing', MB_OK);
end;

procedure TForm1.WMSyscommand(Var msg: TWmSysCommand); //message WM_SYSCOMMAND;
begin
   if (msg.cmdtype and $FFF0) = SC_CLOSE then
   begin
     if (application.messagebox('Yakin ingin keluar?','informasi',MB_YESNO)=IDYES) then
       Application.Terminate;
   end
   else
   inherited;
end;


end.
