function [desc codebook]=mk_codebook()
    k=500;

    chicken_list=flist('chicken');
    pizza_list=flist('pheasant');
    list={chicken_list{:} pizza_list{:}};
    features=[];
    size(list)
    for i=1:length(list)
        I=rgb2gray(imread(list{i}));
        %pnt=detectSURFFeatures(I);
        pnt=createRandomPoints(I,3000); 
        [fea, vpnt] = extractFeatures(I, pnt);
        features=[features; fea];
    end

    size(features)
    [index, codebook]=kmeans(features,k);
    size(codebook)
    save('codebook.mat','codebook');
    save('tlist.mat','list');
end