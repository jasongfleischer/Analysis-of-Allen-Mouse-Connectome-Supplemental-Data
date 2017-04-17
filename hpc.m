pval=exp(-3);
[Presdg Postsdg]=whosConnected('DG',Wipsi,Areas,AreasLookup,Pipsi,pval);
[Pres3 Posts3]=whosConnected('CA3',Wipsi,Areas,AreasLookup,Pipsi,pval);
[Pres2 Posts2]=whosConnected('CA2',Wipsi,Areas,AreasLookup,Pipsi,pval);
[Pres1 Posts1]=whosConnected('CA1',Wipsi,Areas,AreasLookup,Pipsi,pval);
[Pressd Postssd]=whosConnected('SUBd',Wipsi,Areas,AreasLookup,Pipsi,pval);
[Pressv Postssv]=whosConnected('SUBv',Wipsi,Areas,AreasLookup,Pipsi,pval);
[Presprs Postsprs]=whosConnected('PRE',Wipsi,Areas,AreasLookup,Pipsi,pval);
[Prespas Postspas]=whosConnected('PAR',Wipsi,Areas,AreasLookup,Pipsi,pval);
[Prespos Postspos]=whosConnected('POST',Wipsi,Areas,AreasLookup,Pipsi,pval);



connectionStrengths('DG',Wipsi,Areas,AreasLookup,Pipsi,pval);
connectionStrengths('CA3',Wipsi,Areas,AreasLookup,Pipsi,pval);
connectionStrengths('CA2',Wipsi,Areas,AreasLookup,Pipsi,pval);
connectionStrengths('CA1',Wipsi,Areas,AreasLookup,Pipsi,pval);
connectionStrengths('SUBd',Wipsi,Areas,AreasLookup,Pipsi,pval);
connectionStrengths('SUBv',Wipsi,Areas,AreasLookup,Pipsi,pval);
connectionStrengths('PRE',Wipsi,Areas,AreasLookup,Pipsi,pval);
connectionStrengths('PAR',Wipsi,Areas,AreasLookup,Pipsi,pval);
connectionStrengths('POST',Wipsi,Areas,AreasLookup,Pipsi,pval);


