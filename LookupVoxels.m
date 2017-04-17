function [voxels]=LookupVoxels(Target,AreasLookup)
% take an index or list of indices from the abbreviated Areas array and
% turn it into the full name of (each) area

J=strmatch(Target,AreasLookup(:,1),'exact');
voxels=AreasLookup{J,3};
