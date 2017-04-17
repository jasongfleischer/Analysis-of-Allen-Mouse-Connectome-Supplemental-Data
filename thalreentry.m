pval=exp(-3);
[numt,textt,rawt]=xlsread('nature13186-s2.xlsx','Voxel Count_295 Structures');
RegionLookup=textt(2:end,[3 4 5]);

% a subset of these areas are in the figure 4 connectivity data
OKs=strmatch('Yes',textt(2:end,end));

Thali=strmatch('Thalamus',RegionLookup(:,end),'exact');
Hippi=strmatch('Hippocampal Formation',RegionLookup(:,end),'exact');
Crtxi=strmatch('Isocortex',RegionLookup(:,end),'exact');

Thali=intersect(Thali,OKs);
Hippi=intersect(Hippi,OKs);
Crtxi=intersect(Crtxi,OKs);
Reent=union(Hippi,Crtxi); % maybe add basal ganglia?

n_re=[];
w_re=[];
w_reav=[];
reData={};

for testi=Thali',
    [Pres Posts]=whosConnected(RegionLookup(testi,1),Wipsi,Areas,AreasLookup,Pipsi,pval);
    [common, ipre, ipost]=intersect(Pres(:,1),Posts(:,1));
    reW=cell2mat(Pres(ipre,2)).*cell2mat(Posts(ipost,2));
    [reAreas, ia, ib]=intersect(common,RegionLookup(Reent,2));
    rs=size(reData,1)+1;
    reData{rs,1}=common;
    reData{rs,2}=reAreas;
    reData{rs,3}=reW(ia);
    n_re(rs)=length(reAreas);
    w_reav(rs)=mean(reW(ia));
    w_re=[w_re; reW(ia)];    
end
w_reav(isnan(w_reav))=0;


n_re_pc=prctile(n_re,[2.5 25 50 75 97.5])

top_n=find(n_re>n_re_pc(4));
bot_n=find(n_re<n_re_pc(2));

figure(98);
figure(99);

for xx=1:4,
end
    