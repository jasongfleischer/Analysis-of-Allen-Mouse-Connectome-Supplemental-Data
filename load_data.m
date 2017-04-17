Wipsi=xlsread('nature13186-s4.xlsx','W_ipsi','B2:HF214');
Wcontra=xlsread('nature13186-s4.xlsx','W_contra','B2:HF214');
Pcontra=xlsread('nature13186-s4.xlsx','PValue_contra','B2:HF214');
Pipsi=xlsread('nature13186-s4.xlsx','PValue_ipsi','B2:HF214');
[bogus,Areas]=xlsread('nature13186-s4.xlsx','W_ipsi','A2:A214');
[numt,textt,rawt]=xlsread('nature13186-s2.xlsx','voxel_count_all ARA');
AreasLookup=rawt(3:end,end-2:end);
