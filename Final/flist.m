function list=makelist(target)
    n=0; list={}
    DIR = strcat(target, '/');
    W=dir(DIR);

    for i=1:size(W)
        if(strfind(W(i).name,'.jpg'))
            fn=strcat(DIR,W(i).name);
            n=n+1;
            list = {list{:} fn};
        end
    end
end
