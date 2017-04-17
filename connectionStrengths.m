function [PresW]=connectionStrengths(Target,W,Areas,AreasLookup,P,pCutoff)

PresW=WhosPreSynaptic(Target,W,Areas,AreasLookup,P);
Pvals=cell2mat(PresW(:,3));
PresW=PresW(Pvals<pCutoff,:);

ptot=0;
for xx=1:size(PresW,1),
    Abbrv=FindAbbrevArea(PresW(xx,1),AreasLookup);
    pvox=LookupVoxels(Abbrv,AreasLookup);
    PresW{xx,2}=PresW{xx,2}*pvox;
    ptot=ptot+PresW{xx,2};
end
for xx=1:size(PresW,1),
    PresW{xx,2}=PresW{xx,2}/ptot;
end

Wvals=cell2mat(PresW(:,2));
[bogus,sis]=sort(Wvals,'descend');
PresW=PresW(sis,:);


disp(['Inputs to ' Target]);
dispConns(PresW);
