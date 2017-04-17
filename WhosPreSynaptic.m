function [Pres]=WhosPreSynaptic(Target,W,Areas,AreasLookup,P)
TargID=strmatch(Target,Areas,'exact');
Idxs=find(W(:,TargID));
Pres=LookupAreas(Idxs,Areas,AreasLookup);
for xx=1:length(Idxs),
    Pres{xx,2}=W(Idxs(xx),TargID);
    if (exist('P'))
        Pres{xx,3}=P(Idxs(xx),TargID);
    end
end
