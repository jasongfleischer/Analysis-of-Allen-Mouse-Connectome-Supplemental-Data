function [FullNames]=LookupAreas(Idxs,Areas,AreasLookup)
% take an index or list of indices from the abbreviated Areas array and
% turn it into the full name of (each) area

FullNames=cell(length(Idxs),1);

for xx=1:length(Idxs),
    J=strmatch(Areas(Idxs(xx)),AreasLookup(:,1),'exact');
    FullNames(xx)=AreasLookup(J,2);
end