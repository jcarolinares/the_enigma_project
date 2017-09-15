/*Enigma disc

Created by Julián Caro Linares

jcarolinares@gmail.com

"Cada rotor es un disco circular plano con 26 contactos eléctricos en cada cara,uno por cada letra del alfabeto"

"A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z."

*/

/* Disc 6 */

reg [7:0] alphabet [0:25];

reg [7:0] in_letter [0:25]; // Input contacts, it changes depending of the mode
reg [7:0] crypt [0:25]; // Encryption disc- To make a new disc, change the values of this memory
reg [7:0] out_crypt [0:25]; // Output Encryption related to the Encryption disc position
reg [7:0] out_letter [0:25]; // Output contacs, it changes depending of the mode

reg [7:0] index;

reg [7:0] _out;
integer i=0; //For loop integer counter


always @(*) begin

//Overflow operation
if (pos>25)
    index<=pos-26;
else
    index<=pos;


//Alphabet/Symbols declaration-SAME NATURAL ORDER IN ALL THE DISCS
alphabet[0]="a";
alphabet[1]="b";
alphabet[2]="c";
alphabet[3]="d";
alphabet[4]="e";
alphabet[5]="f";
alphabet[6]="g";
alphabet[7]="h";
alphabet[8]="i";
alphabet[9]="j";
alphabet[10]="k";
alphabet[11]="l";
alphabet[12]="m";
alphabet[13]="n";
alphabet[14]="o";
alphabet[15]="p";
alphabet[16]="q";
alphabet[17]="r";
alphabet[18]="s";
alphabet[19]="t";
alphabet[20]="u";
alphabet[21]="v";
alphabet[22]="w";
alphabet[23]="x";
alphabet[24]="y";
alphabet[25]="z";


//Disc contacts encryption A-Z
crypt[0]="n";
crypt[1]="e";
crypt[2]="q";
crypt[3]="s";
crypt[4]="f";
crypt[5]="p";
crypt[6]="t";
crypt[7]="u";
crypt[8]="c";
crypt[9]="r";
crypt[10]="j";
crypt[11]="z";
crypt[12]="d";
crypt[13]="w";
crypt[14]="b";
crypt[15]="i";
crypt[16]="m";
crypt[17]="h";
crypt[18]="a";
crypt[19]="l";
crypt[20]="v";
crypt[21]="g";
crypt[22]="x";
crypt[19]="l";
crypt[24]="o";
crypt[25]="y";



//Position between Encrypted disc and external positions contacts: out_crypt
for (i=0; i<26;i=i+1)
    begin

        if(index+i>25)
            out_crypt[i]=crypt[index+i-26];
        else
            out_crypt[i]=crypt[index+i];


        if (mode==0)
            begin
                in_letter[i]<=alphabet[i];
                out_letter[i]<=out_crypt[i];
            end
        else
            begin
                in_letter[i]<=out_crypt[i];
                out_letter[i]<=alphabet[i];
            end
    end



    case(letter)
        in_letter[0]: _out = out_letter[0];
        in_letter[1]: _out = out_letter[1];
        in_letter[2]: _out = out_letter[2];
        in_letter[3]: _out = out_letter[3];
        in_letter[4]: _out = out_letter[4];
        in_letter[5]: _out = out_letter[5];
        in_letter[6]: _out = out_letter[6];
        in_letter[7]: _out = out_letter[7];
        in_letter[8]: _out = out_letter[8];
        in_letter[9]: _out = out_letter[9];
        in_letter[10]: _out = out_letter[10];
        in_letter[11]: _out = out_letter[11];
        in_letter[12]: _out = out_letter[12];
        in_letter[13]: _out = out_letter[13];
        in_letter[14]: _out = out_letter[14];
        in_letter[15]: _out = out_letter[15];
        in_letter[16]: _out = out_letter[16];
        in_letter[17]: _out = out_letter[17];
        in_letter[18]: _out = out_letter[18];
        in_letter[19]: _out = out_letter[19];
        in_letter[20]: _out = out_letter[20];
        in_letter[21]: _out = out_letter[21];
        in_letter[22]: _out = out_letter[22];
        in_letter[23]: _out = out_letter[23];
        in_letter[24]: _out = out_letter[24];
        in_letter[25]: _out = out_letter[25];

        " ": _out = " ";

        default: _out = 8'b0000_0000;
    endcase
end

assign letter_out = _out;
