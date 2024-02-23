
fid = fopen("reranking_wolf_url.txt");

for i = 1:300
    line_ex = fgetl(fid);
    fname=strcat("./reranking_wolf/reranking_wolf",int2str(i),".jpg");
    websave(fname,line_ex);
    fprintf("%s\n", line_ex);
end