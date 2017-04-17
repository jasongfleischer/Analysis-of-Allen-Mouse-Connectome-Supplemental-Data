function [Posts]=WhosPostSynaptic(Target,W,Areas,AreasLookup,P)
TargID=strmatch(Target,Areas,'exact');
Idxs=find(W(TargID,:));
Posts=LookupAreas(Idxs,Areas,AreasLookup);
for xx=1:length(Idxs),
    Posts{xx,2}=W(TargID,Idxs(xx));
    if (exist('P'))
        Posts{xx,3}=P(TargID,Idxs(xx));
    end
end
