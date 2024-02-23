function dataset = mk_hist(list)
    dataset= [];
    for i=1:size(list,2)
        I = imread(list{i});
        RED  =I(:,:,1);
        GREEN=I(:,:,2);
        BLUE =I(:,:,3);
        X64= floor(double(RED)/64) *4*4 +  floor(double(GREEN)/64) *4 +  floor(double(BLUE)/64);
        X64_vec = reshape(X64, 1, numel(X64));
        hist=histc(X64_vec,[0:63]);
        hist=hist/sum(hist);
        dataset=cat(1,dataset,hist);
    end
end