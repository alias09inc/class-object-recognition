
fid = fopen("reranking_url.txt");

for i = 1:300
    line_ex = fgetl(fid);
    fname=strcat("./reranking/reranking",int2str(i),".jpg");
    websave(fname,line_ex);
    fprintf("%s\n", line_ex);
end