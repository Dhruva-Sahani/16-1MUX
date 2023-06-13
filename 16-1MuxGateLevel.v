module mux_16 (D,s,out);
input [15:0] D;
input [3:0]s;
output out;

wire n1,n2,n3,a,b,c,d,e,f,g,h;
wire yy1,yy2,all;
wire y1,y2;

not not1(n1,s[0]);
not not2(n2,s[1]);
not not3(n3,s[2]);

and and1 (a,D[0],n1,n2,n3);
and and2 (b,D[1],s[0],n2,n3);
and and3 (c,D[2],n1,s[1],n3);
and and4 (d,D[3],s[0],s[1],n3);
and and5 (e,D[4],n1,n2,s[2]);
and and6 (f,D[5],s[0],n2,s[2]);
and and7 (g,D[6],n1,s[1],s[2]);
and and8 (h,D[7],s[0],s[1],s[2]);

or or1 (y1,a,b,c,d,e,f,g,h);

not not4 (n1,s[0]);
not not5 (n2,s[1]);
not not6 (n3,s[2]);

and and9 (i,D[8],n1,n2,n3);
and and10 (j,D[9],s[0],n2,n3);
and and11 (k,D[10],n1,s[1],n3);
and and12 (l,D[11],s[0],s[1],n3);
and and13 (m,D[12],n1,n2,s[2]);
and and14 (n,D[13],s[0],n2,s[2]);
and and15 (o,D[14],n1,s[1],s[2]);
and and16 (p,D[15],s[0],s[1],s[2]);

or or2 (y2,i,j,k,l,m,n,o,p);

and A1 (yy1,y1,s[3]);
not not22 (all,s[3]);
and A2 (yy2,y2,all);

or OR1(out,yy1,yy2);

endmodule 
