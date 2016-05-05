brightness = zeros(10,60);
for j=1:10
    if j==1
        str1_0 = './genres/blues/';
        str1_1 = 'blues.0000';
        str1_2 ='blues.000';
        titlename = 'bluesBrightness';
    elseif j==2
        str1_0 = './genres/classical/';
        str1_1 = 'classical.0000';
        str1_2 ='classical.000';
        titlename = 'classicalBrightness';
    elseif j==3
        str1_0 = './genres/country/';
        str1_1 = 'country.0000';
        str1_2 ='country.000';
        titlename = 'countryBrightness';
    elseif j==4
        str1_0 = './genres/disco/';
        str1_1 = 'disco.0000';
        str1_2 ='disco.000';
        titlename = 'discoBrightness';
    elseif j==5
        str1_0 = './genres/hiphop/';
        str1_1 = 'hiphop.0000';
        str1_2 ='hiphop.000';
        titlename = 'hiphopBrightness';
    elseif j==6
        str1_0 = './genres/jazz/';
        str1_1 = 'jazz.0000';
        str1_2 ='jazz.000';
        titlename = 'jazzBrightness';
    elseif j==7
        str1_0 = './genres/metal/';
        str1_1 = 'metal.0000';
        str1_2 ='metal.000';
        titlename = 'metalBrightness';
    elseif j==8
        str1_0 = './genres/pop/';
        str1_1 = 'pop.0000';
        str1_2 ='pop.000';
        titlename = 'popBrightness';
    elseif j==9
        str1_0 = './genres/reggae/';
        str1_1 = 'reggae.0000';
        str1_2 ='reggae.000';
        titlename = 'reggaeBrightness';
    elseif j==10
        str1_0 = './genres/rock/';
        str1_1 = 'rock.0000';
        str1_2 ='rock.000';
        titlename = 'rockBrightness';
    end
    for i=1:60
        str2= num2str(i);
        str3 ='.au' ;
        strA=[str1_0 str1_1 str2 str3];
        strB=[str1_0 str1_2 str2 str3];
        if i>=0 && i<=9
            filename = miraudio(strA);
        else
            filename = miraudio(strB);
        end
        brightness(j,i) = ExtractBrightness(filename);
    end
    plot(brightness(j,:));
    title(titlename);
    figure;
end
%% range
for i = 1:10
    brightness_sorted = sort(brightness(i,:));
    brightness_range(i,1) =  brightness_sorted(6);
    brightness_range(i,2) =  brightness_sorted(55);
end


