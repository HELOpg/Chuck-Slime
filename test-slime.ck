while(1)
{
Std.rand2f(100, 500) => float f;
Slime.s.send("/slime/app/chuck/test", f);
Std.rand2(0,100) => int i;
"/test" => string mystring;
mystring + i => string mystringa;
Slime.s.send(mystringa, f);
Std.rand2f(249,250) * 1::ms => now;
<<< "sent" >>>;
}
