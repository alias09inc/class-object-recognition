
fid = fopen("pheasant_url.txt");

for i = 1:200
    line_ex = fgetl(fid);
    fname=strcat("./pheasant/pheasant",int2str(i),".jpg");
    websave(fname,line_ex);
    fprintf("%s\n", line_ex);
end