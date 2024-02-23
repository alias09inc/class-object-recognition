function code=mk_BoFvec(tlist)
 
  load('codebook.mat','codebook');
  k=size(codebook,1);
  dim=size(codebook,2);
 
  code=[];
 
  for i=1:length(tlist)
    c=zeros(k,1);
    I=rgb2gray(imread(tlist{i}));
    % fprintf('reading [%d] %s\n',i,tlist{i});
    pnt=createRandomPoints(I, 1000);
    % pnt=createRandomPoints(I,500); dense samplingの場合
    [fea,vpnt] = extractFeatures(I,pnt);
 
    for j=1:size(fea,1)
      s=zeros(1,k);
      for t=1:dim
        s=s+(codebook(:,t)-fea(j,t)).^2;
      end
      [dist,sidx]=min(s);
      c(sidx,1)=c(sidx,1)+1.0;
    end
    c=c/sum(c); % BoFベクトルのL1正規化．
                % (5-1のNaive Bayesを実行する場合は，この正規化は不要．)
    code=[code c];
  end
end