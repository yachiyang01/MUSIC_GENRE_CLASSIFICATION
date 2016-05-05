function freq=fundamental_f(filename)
    %filename='genres/genres/blues/blues.00000.au';
    %t = mirpitch(f, 'Frame');

    %fundamental frequency
    a = mirpitch(filename, 'Mono');
    mirexport('myresults.txt', a);
    fidin=fopen('myresults.txt');
    fidout=fopen('mkmatlab.txt','w'); % 創建MKMATLAB.txt文件
    num=0;
    while ~feof(fidin) % 判斷是否為文件末尾 
        tline=fgetl(fidin); % 從文件讀行 
        [chopped hz] = strtok(tline);  
        parsed='';
        if(num==1)
            parsed = strvcat(parsed, hz);  
            freq=str2double(parsed);
            freq
        end
             num=num+1;
    end
    fclose(fidout);
    fclose(fidin);
    
end