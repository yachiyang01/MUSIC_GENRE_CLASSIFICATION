function zerocross = ExtractZerocross(filename)
    %fundamental frequency
    a = mirzerocross(filename);
    mirexport('myresults.txt', a);
    fidin=fopen('myresults.txt');
    fidout=fopen('mkmatlab.txt','w'); % 創建MKMATLAB.txt文件
    num=0;
    while ~feof(fidin) % 判斷是否為文件末尾
        tline=fgetl(fidin); % 從文件讀行
        [chopped hz] = strtok(tline);
        parsed=double(1*6);
        i=1;
        if(num==1)
            while (any(hz))
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    zerocross=fr;
                end
                i=i+1;
            end
        end
        num=num+1;
    end
    %   Pitch_Std=parsed(1,2);

    fclose(fidout);
    fclose(fidin);
end