
fid = fopen("wolf_url.txt");

for i = 1:50
    line_ex = fgetl(fid);
    fname=strcat("./wolf/wolf",int2str(i),".jpg");
    websave(fname,line_ex);
    fprintf("%s\n", line_ex);
end