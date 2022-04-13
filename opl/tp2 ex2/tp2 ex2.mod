/*********************************************
 * OPL 12.6.0.0 Model
 * Author: Lenovo
 * Creation Date: 13 avr. 2022 at 03:26:26
 *********************************************/
range I=1..6;
range J=1..6;
dvar boolean X[I][J];
int P[I][J]=[[13,24,31,19,40,29],[18,25,30,15,43,22],[20,20,27,25,34,33],[23,26,28,18,37,30],[28,33,34,17,38,20],[19,36,25,27,45,24]];
maximize sum(i in I)sum(j in J)P[i][j]*X[i][j];
subject to{
sum(i in I)X[i][1]==1;
sum(i in I)X[i][2]==1;
sum(i in I)X[i][3]==1;
sum(i in I)X[i][4]==1;
sum(i in I)X[i][5]==1;
sum(i in I)X[i][6]==1;
sum(j in J)X[1][j]==1;
sum(j in J)X[2][j]==1;
sum(j in J)X[3][j]==1;
sum(j in J)X[4][j]==1;
sum(j in J)X[5][j]==1;
sum(j in J)X[6][j]==1;
}
