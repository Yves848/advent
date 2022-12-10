program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  System.Generics.Collections,
  System.Types,
  System.StrUtils,
  System.IOUtils,
  System.DateUtils,
  System.Diagnostics,
  System.Classes,
  System.Console in 'C:\Users\yvesg\git\DelphiConsole\Console\System.Console.pas';

type
  tInstruction = class
  private
    fName : String;
    fCycles : Integer;
    fAdd : Integer;
  published
    property Name: string read fName write fName;
    property Cycles : Integer read fCycles write fCycles;
    property _Add: integer read fAdd write fAdd;
  public
    constructor create(pName : String; pCycles : Integer; pAdd : Integer);
  end;

var
  fichier : tStringDynarray;

  tlInstructions : TStrings;

{ tInstruction }

procedure loadFile(sFile : String);
begin
     fichier := TFile.ReadAllLines('data\Example2.txt', TEncoding.UTF8);
end;

constructor tInstruction.create(pName: String; pCycles, pAdd: Integer);
begin
  fName := pName;
  fCycles := pCycles;
  fAdd := pAdd;
end;

begin
  Console.Clear;
  Console.SetCursorPosition(0, 0);

  Console.ReadKey;

end.
