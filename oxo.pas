Program naughts_n_crosses;
Uses crt;

var
   Cell : array [1..9] of string;
   Choice : integer;
   Counter : integer;
   Name1 : string;
   Name2 : string;
   P1 : string;
   P2 : string;
   Reset : integer;
   Label Instructions;
   Label Quit;
   Label Draw;

Procedure Wincheck;
  Begin
  clrscr;
    Counter:=0;
    If Cell[1]='X' then Counter:=Counter+1;
    If Cell[2]='X' then Counter:=Counter+1;
    If Cell[3]='X' then Counter:=Counter+1;
    If Counter=3 then writeln (Name1,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[1]='O' then Counter:=Counter+1;
    If Cell[2]='O' then Counter:=Counter+1;
    If Cell[3]='O' then Counter:=Counter+1;
    If Counter=3 then writeln (Name2,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[4]='X' then Counter:=Counter+1;
    If Cell[5]='X' then Counter:=Counter+1;
    If Cell[6]='X' then Counter:=Counter+1;
    If Counter=3 then writeln (Name1,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[4]='O' then Counter:=Counter+1;
    If Cell[5]='O' then Counter:=Counter+1;
    If Cell[6]='O' then Counter:=Counter+1;
    If Counter=3 then writeln (Name2,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[7]='X' then Counter:=Counter+1;
    If Cell[8]='X' then Counter:=Counter+1;
    If Cell[9]='X' then Counter:=Counter+1;
    If Counter=3 then writeln (Name1,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[7]='O' then Counter:=Counter+1;
    If Cell[8]='O' then Counter:=Counter+1;
    If Cell[9]='O' then Counter:=Counter+1;
    If Counter=3 then writeln (Name2,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[1]='X' then Counter:=Counter+1;
    If Cell[4]='X' then Counter:=Counter+1;
    If Cell[7]='X' then Counter:=Counter+1;
    If Counter=3 then writeln (Name1,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[1]='O' then Counter:=Counter+1;
    If Cell[4]='O' then Counter:=Counter+1;
    If Cell[7]='O' then Counter:=Counter+1;
    If Counter=3 then writeln (Name2,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[2]='X' then Counter:=Counter+1;
    If Cell[5]='X' then Counter:=Counter+1;
    If Cell[8]='X' then Counter:=Counter+1;
    If Counter=3 then writeln (Name1,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[2]='O' then Counter:=Counter+1;
    If Cell[5]='O' then Counter:=Counter+1;
    If Cell[8]='O' then Counter:=Counter+1;
    If Counter=3 then writeln (Name2,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[3]='X' then Counter:=Counter+1;
    If Cell[6]='X' then Counter:=Counter+1;
    If Cell[9]='X' then Counter:=Counter+1;
    If Counter=3 then writeln (Name1,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[3]='O' then Counter:=Counter+1;
    If Cell[6]='O' then Counter:=Counter+1;
    If Cell[9]='O' then Counter:=Counter+1;
    If Counter=3 then writeln (Name2,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[1]='X' then Counter:=Counter+1;
    If Cell[5]='X' then Counter:=Counter+1;
    If Cell[9]='X' then Counter:=Counter+1;
    If Counter=3 then writeln (Name1,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[1]='O' then Counter:=Counter+1;
    If Cell[5]='O' then Counter:=Counter+1;
    If Cell[9]='O' then Counter:=Counter+1;
    If Counter=3 then writeln (Name2,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[3]='X' then Counter:=Counter+1;
    If Cell[5]='X' then Counter:=Counter+1;
    If Cell[7]='X' then Counter:=Counter+1;
    If Counter=3 then writeln (Name1,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;

    Counter:=0;
    If Cell[3]='O' then Counter:=Counter+1;
    If Cell[5]='O' then Counter:=Counter+1;
    If Cell[7]='O' then Counter:=Counter+1;
    If Counter=3 then writeln (Name2,' wins! The program will now close.');
    If Counter=3 then readln;
    If Counter=3 then goto Quit;
   End;

Procedure Oxo;
  Begin
  clrscr;
  Counter:=0;
    writeln ('Welcome to the game. Player 1, please insert your name.');
    readln (Name1);
    writeln ('Player 2, please insert your name.');
    readln (Name2);
    clrscr;

    writeln (' 1 I 2 I 3 ');
    writeln ('-----------');
    writeln (' 4 I 5 I 6 ');
    writeln ('-----------');
    writeln (' 7 I 8 I 9 ');
    writeln;

    writeln ('Who is going to start? (This person will have X)');
    writeln ('1. ',Name1,'.');
    writeln ('2. ',Name2,'.');
    readln (Choice);
    If Choice=1 then P1:=Name1;
    If Choice=1 then P2:=Name2;
    If Choice=2 then P1:=Name2;
    If Choice=2 then P2:=Name1;
    clrscr;

    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    writeln (P1,', Choose from cell 1 to 9 to place your piece in. (Insert the number of the cell.)');
    readln (Choice);

    Counter:=0;
    Repeat
      Counter:=Counter+1;
      If choice=Counter then Cell[Counter]:='X';
    Until Counter=9;

    clrscr;
    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    Wincheck;

    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    writeln (P2,', Choose from cell 1 to 9 to place your piece in. (Insert the number of the cell.)');
    readln (Choice);

    Counter:=0;
    Repeat
      Counter:=Counter+1;
      If choice=Counter then Cell[Counter]:='O';
    Until Counter=9;

    clrscr;
    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    Wincheck;

    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    writeln (P1,', Choose from cell 1 to 9 to place your piece in. (Insert the number of the cell.)');
    readln (Choice);

    Counter:=0;
    Repeat
      Counter:=Counter+1;
      If choice=Counter then Cell[Counter]:='X';
    Until Counter=9;

    clrscr;
    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    Wincheck;

    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    writeln (P2,', Choose from cell 1 to 9 to place your piece in. (Insert the number of the cell.)');
    readln (Choice);

    Counter:=0;
    Repeat
      Counter:=Counter+1;
      If choice=Counter then Cell[Counter]:='O';
    Until Counter=9;

    clrscr;
    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    Wincheck;

    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    writeln (P1,', Choose from cell 1 to 9 to place your piece in. (Insert the number of the cell.)');
    readln (Choice);

    Counter:=0;
    Repeat
      Counter:=Counter+1;
      If choice=Counter then Cell[Counter]:='X';
    Until Counter=9;

    clrscr;
    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    Wincheck;

    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    writeln (P2,', Choose from cell 1 to 9 to place your piece in. (Insert the number of the cell.)');
    readln (Choice);

    Counter:=0;
    Repeat
      Counter:=Counter+1;
      If choice=Counter then Cell[Counter]:='O';
    Until Counter=9;

    clrscr;
    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    Wincheck;

    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    writeln (P1,', Choose from cell 1 to 9 to place your piece in. (Insert the number of the cell.)');
    readln (Choice);

    Counter:=0;
    Repeat
      Counter:=Counter+1;
      If choice=Counter then Cell[Counter]:='X';
    Until Counter=9;

    clrscr;
    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    Wincheck;

    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    writeln (P2,', Choose from cell 1 to 9 to place your piece in. (Insert the number of the cell.)');
    readln (Choice);

    Counter:=0;
    Repeat
      Counter:=Counter+1;
      If choice=Counter then Cell[Counter]:='O';
    Until Counter=9;

    clrscr;
    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    Wincheck;

    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    writeln (P1,', Choose from cell 1 to 9 to place your piece in. (Insert the number of the cell.)');
    readln (Choice);

    Counter:=0;
    Repeat
      Counter:=Counter+1;
      If choice=Counter then Cell[Counter]:='X';
    Until Counter=9;

    clrscr;
    writeln (' ',Cell[1],' I ',Cell[2],' I ',Cell[3],' ');
    writeln ('--------');
    writeln (' ',Cell[4],' I ',Cell[5],' I ',Cell[6],' ');
    writeln ('--------');
    writeln (' ',Cell[7],' I ',Cell[8],' I ',Cell[9],' ');
    writeln;

    Wincheck;
    Goto Draw;
  End;


Procedure Menu;
  Begin
  clrscr;
    writeln ('    {____}     {__}      {__}    {____}');
    writeln ('  {__}    {__}   {__}   {__}   {__}    {__}');
    writeln ('{__}       {__}  {__} {__}   {__}       {__}');
    writeln ('{__}       {__}    {__}      {__}       {__}');
    writeln ('{__}       {__}  {__} {__}   {__}       {__}');
    writeln ('  {__}    {__}  {__}   {__}    {__}    {__}');
    writeln ('     {____}   {__}     {__}      {____}');
    writeln ('                             By Francesco BB');
    writeln;
    writeln;
    writeln ('Welcome to the program. Please choose what you want to do:');
    writeln;
    writeln ('1. Start the game.');
    writeln ('2. Read the instructions');
    writeln ('3. Quit game.');
    readln (Choice);
    If Choice=1 then Oxo;
    If Choice=2 then goto Instructions;
    If Choice=3 then goto Quit;
    If Choice < 1 then writeln ('Invalid option. Please choose a number from 1 to 4.');
    If Choice > 3 then writeln ('Invalid option. Please choose a number from 1 to 4.');
    Menu;
  End;

Begin
clrscr;

Menu;

Instructions:
  clrscr;
    writeln ('In Oxo the aim of the game is to get 3 of your marks (O or X) in a row, be it horizontal, vertical or diagonal.');
    writeln ('Two players take turns choosing cells or boxes to put their mark in.');
    writeln ('The grid in this program will follow a simple layout.');
    readln;
    writeln ('Grid and Cell Numbers:');
    writeln;
    writeln (' 1 I 2 I 3 ');
    writeln ('-----------');
    writeln (' 4 I 5 I 6 ');
    writeln ('-----------');
    writeln (' 7 I 8 I 9 ');
    readln;
    writeln ('When prompted players type in the number of the cell they wish to put their mark in. The winner is the first person to get 3 in a row.');
    writeln ('You cannot put your mark in a cell that is already taken.');
    writeln;
    writeln ('Press Enter to go back to Menu.');
    readln;
    Menu;

Draw:
  clrscr;
    writeln ('Nobody wins! The program will now close.');
    readln;
    goto Quit;


Quit:
  writeln ('The program is now closing.');
End.
