
fid = fopen("chicken_url.txt");

for i = 1:50
    line_ex = fgetl(fid);
    fname=strcat("./chicken/chicken",int2str(i),".jpg");
    websave(fname,line_ex);
    fprintf("%s\n", line_ex);
end