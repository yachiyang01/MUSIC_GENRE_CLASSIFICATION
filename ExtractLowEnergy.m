function lowenergy = ExtractLowEnergy(filename)
    %fundamental frequency
    a = mirlowenergy(filename, 'Threshold', 1);
    mirexport('myresults.txt', a);
    fidin=fopen('myresults.txt');
    fidout=fopen('mkmatlab.txt','w'); % �Ы�MKMATLAB.txt���
    num=0;
    while ~feof(fidin) % �P�_�O�_����󥽧�
        tline=fgetl(fidin); % �q���Ū��
        [chopped hz] = strtok(tline);
        parsed=double(1*6);
        i=1;
        if(num==1)
            while (any(hz))
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowenergy=fr;
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