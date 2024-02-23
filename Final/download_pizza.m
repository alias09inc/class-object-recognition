
fid = fopen("pizza_url.txt");

for i = 1:100
    line_ex = fgetl(fid);
    fname=strcat("./pizza/pizza",int2str(i),".jpg");
    websave(fname,line_ex);
    fprintf("%s\n", line_ex);
end