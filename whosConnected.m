function [PresP PostsP]=whosConnected(Target,W,Areas,AreasLookup,P,pCutoff)

Pres=WhosPreSynaptic(Target,W,Areas,AreasLookup,P);
% Wvals=cell2mat(Pres(:,2));
% [swv, sis]=sort(Wvals,'descend');
% PresW=Pres(sis,:);
Pvals=cell2mat(Pres(:,3));
[swv, sis]=sort(Pvals,'ascend');
PresP=Pres(sis(swv<pCutoff),:);
% 
% outlier_value=prctile(Wvals,75)+1.5*iqr(Wvals); % Tukey's nonparametric outlier; 75th percentile plus 1.5*interquartile range
% outliers=find(Wvals>outlier_value);
% Pres(outliers,:)

Posts=WhosPostSynaptic(Target,W,Areas,AreasLookup,P);
% Wvals=cell2mat(Posts(:,2));
% [swv, sis]=sort(Wvals,'descend');
% PostsW=Posts(sis,:)

Pvals=cell2mat(Posts(:,3));
[swv, sis]=sort(Pvals,'ascend');
PostsP=Posts(sis(swv<pCutoff),:);


disp(['Inputs to ' Target]);
dispConns(PresP);
disp([Target ' projects to']);
dispConns(PostsP);