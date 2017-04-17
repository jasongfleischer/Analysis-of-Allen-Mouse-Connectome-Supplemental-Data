% Examples on usage
load_data

disp('Areas you can ask about the connectivity between')
LookupAreas(1:length(Areas),Areas,AreasLookup)

fprintf('\n\n\n')


disp('All ipsilateral areas postsynaptic to the secondary motor area')
Abbrv=FindAbbrevArea('Secondary motor area',AreasLookup)
Posts=WhosPostSynaptic(Abbrv,Wipsi,Areas,AreasLookup)

fprintf('\n\n\n')


disp('Find the strongest sources of contralateral connections arriving in the secondary motor area ')
Pres=WhosPreSynaptic(Abbrv,Wcontra,Areas,AreasLookup);
Wvals=cell2mat(Pres(:,2));
outlier_value=prctile(Wvals,75)+1.5*iqr(Wvals); % Tukey's nonparametric outlier; 75th percentile plus 1.5*interquartile range
outliers=find(Wvals>outlier_value);
Pres(outliers,:)

fprintf('\n\n\n')


disp('figure out the proper abbreviations for the various subdivisions of Entorhinal cortex');
aa=strmatch('Entorhinal',AreasLookup(:,2));
AreasLookup(aa,:)

disp('Here''s another way to display the strongest pre and posts');
% last arg is pvalue of connection actually existing, low values are more
% likely so 0.95 includes a lot of BS that probably isn't actually there
[Pres Posts]=whosConnected('ENTm',Wipsi,Areas,AreasLookup,Pipsi,0.95);
disp('Inputs to ENTm');
dispConns(Pres);
disp('Targets of ENTm afferents');
dispConns(Posts);
