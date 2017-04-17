function [AbbrvName]=FindAbbrevArea(FullName,AreasLookup)
% take a full Area name array and
% turns it into the abbreviated name 
J=strmatch(FullName,AreasLookup(:,2),'exact'); 
AbbrvName=AreasLookup(J,1);
