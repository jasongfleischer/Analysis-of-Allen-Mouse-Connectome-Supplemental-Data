[Presl Postsl]=whosConnected('ENTl',Wipsi,Areas,AreasLookup,Pipsi,exp(-3));
[Presm Postsm]=whosConnected('ENTm',Wipsi,Areas,AreasLookup,Pipsi,exp(-3));

disp('Inputs common to both MEC and LEC')
intersect(Presl(:,1),Presm(:,1))

disp('Inputs only to LEC')
setdiff(Presl(:,1),Presm(:,1))

disp('Inputs only to MEC')
setdiff(Presm(:,1),Presl(:,1))




disp('Common projections originating from both MEC and LEC')
intersect(Postsl(:,1),Postsm(:,1))

disp('Projections only from LEC')
setdiff(Postsl(:,1),Postsm(:,1))

disp('Projections only from MEC')
setdiff(Postsm(:,1),Postsl(:,1))
