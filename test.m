correct=0;
incorrect=0;

i=60;

    num=mat2str(i);
    f='genres/blues/blues.000';
 
    subject='.au';
    filename=[f num subject];
    style=extractFeature(filename,tempo_range,pulseclarity_range,brightness_range,rolloff_range,zerocross_range,lowenergy_range);
    if (strcmp('blues',style)==1)
        correct=correct+1;
    else
        incorrect=incorrect+1;
    end

