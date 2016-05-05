function [lowerbound upperbound]=loadbound()
     lowerbound=zeros(10,7);
	 upperbound=zeros(10,7);
%blues
	 base='TrainingData/TrainingPitch_blues.txt';
     fidin=fopen('TrainingData/TrainingPitch_blues.txt');
	 num=0;
     parsed='';
	while (~feof(fidin)) 
        tline=fgetl(fidin); 
        [chopped, hz] = strtok(tline);  
        i=1;
        if(num==1)
            while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowerbound(1,1)=fr;
                elseif(i==2)
                    lowerbound(1,2)=fr;
                elseif(i==3)
                    lowerbound(1,3)=fr;
                elseif(i==4)
                    lowerbound(1,4)=fr;     
                elseif(i==5)
                    lowerbound(1,5)=fr;     
                elseif(i==6)
                    lowerbound(1,6)=fr; 
                elseif(i==7)
					lowerbound(1,7)=fr;
                end
                i=i+1;
            end
		
		elseif(num==2)
			while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    upperbound(1,1)=fr;
                elseif(i==2)
                    upperbound(1,2)=fr;
                elseif(i==3)
                    upperbound(1,3)=fr;
                elseif(i==4)
                    upperbound(1,4)=fr;     
                elseif(i==5)
                    upperbound(1,5)=fr;     
                elseif(i==6)
                    upperbound(1,6)=fr; 
                else
					upperbound(1,7)=fr;
                end
                i=i+1;
            end
		
        end

             num=num+1;
    
	end	
	
	
	
	
	fclose(fidin);
	
	
	fidin1=fopen('TrainingData/TrainingPitch_classical.txt');

	%f2=[base style(b) obj];
	% fidin1=fopen(f2);
	 num=0;
     parsed='';
	while (~feof(fidin1) )
        tline=fgetl(fidin1); 
        [chopped hz] = strtok(tline);  
        i=1;
        if(num==1)
            while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowerbound(2,1)=fr;
                elseif(i==2)
                    lowerbound(2,2)=fr;
                elseif(i==3)
                    lowerbound(2,3)=fr;
                elseif(i==4)
                    lowerbound(2,4)=fr;     
                elseif(i==5)
                    lowerbound(2,5)=fr;     
                elseif(i==6)
                    lowerbound(2,6)=fr; 
                elseif(i==7)
					lowerbound(2,7)=fr;
                end
                i=i+1;
            end
		
		elseif(num==2)
			while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    upperbound(2,1)=fr;
                elseif(i==2)
                    upperbound(2,2)=fr;
                elseif(i==3)
                    upperbound(2,3)=fr;
                elseif(i==4)
                    upperbound(2,4)=fr;     
                elseif(i==5)
                    upperbound(2,5)=fr;     
                elseif(i==6)
                    upperbound(2,6)=fr; 
				else
					upperbound(2,7)=fr;
                end
                i=i+1;
            end
		
		end		

             num=num+1;
    end
    fclose(fidin1);
	
	
	
	
	
	
	
	%country
     fidin=fopen('TrainingData/TrainingPitch_country.txt');
	 num=0;
     parsed='';
	while (~feof(fidin)) 
        tline=fgetl(fidin); 
        [chopped, hz] = strtok(tline);  
        i=1;
        if(num==1)
            while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowerbound(3,1)=fr;
                elseif(i==2)
                    lowerbound(3,2)=fr;
                elseif(i==3)
                    lowerbound(3,3)=fr;
                elseif(i==4)
                    lowerbound(3,4)=fr;     
                elseif(i==5)
                    lowerbound(3,5)=fr;     
                elseif(i==6)
                    lowerbound(3,6)=fr; 
                elseif(i==7)
					lowerbound(3,7)=fr;
                end
                i=i+1;
            end
		
		elseif(num==2)
			while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    upperbound(3,1)=fr;
                elseif(i==2)
                    upperbound(3,2)=fr;
                elseif(i==3)
                    upperbound(3,3)=fr;
                elseif(i==4)
                    upperbound(3,4)=fr;     
                elseif(i==5)
                    upperbound(3,5)=fr;     
                elseif(i==6)
                    upperbound(3,6)=fr; 
                else
					upperbound(3,7)=fr;
                end
                i=i+1;
            end
		
        end

             num=num+1;
    
	end	
	
	
	
	
	fclose(fidin);
	
	%disco
	fidin1=fopen('TrainingData/TrainingPitch_disco.txt');

	%f2=[base style(b) obj];
	% fidin1=fopen(f2);
	 num=0;
     parsed='';
	while (~feof(fidin1) )
        tline=fgetl(fidin1); 
        [chopped hz] = strtok(tline);  
        i=1;
        if(num==1)
            while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowerbound(4,1)=fr;
                elseif(i==2)
                    lowerbound(4,2)=fr;
                elseif(i==3)
                    lowerbound(4,3)=fr;
                elseif(i==4)
                    lowerbound(4,4)=fr;     
                elseif(i==5)
                    lowerbound(4,5)=fr;     
                elseif(i==6)
                    lowerbound(4,6)=fr; 
                elseif(i==7)
					lowerbound(4,7)=fr;
                end
                i=i+1;
            end
		
		elseif(num==2)
			while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    upperbound(5,1)=fr;
                elseif(i==2)
                    upperbound(5,2)=fr;
                elseif(i==3)
                    upperbound(5,3)=fr;
                elseif(i==4)
                    upperbound(5,4)=fr;     
                elseif(i==5)
                    upperbound(5,5)=fr;     
                elseif(i==6)
                    upperbound(5,6)=fr; 
				else
					upperbound(5,7)=fr;
                end
                i=i+1;
            end
		
		end		

             num=num+1;
    end
    fclose(fidin1);
	
	
	%hiphop
	fidin1=fopen('TrainingData/TrainingPitch_hiphop.txt');

	%f2=[base style(b) obj];
	% fidin1=fopen(f2);
	 num=0;
     parsed='';
	while (~feof(fidin1) )
        tline=fgetl(fidin1); 
        [chopped hz] = strtok(tline);  
        i=1;
        if(num==1)
            while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowerbound(6,1)=fr;
                elseif(i==2)
                    lowerbound(6,2)=fr;
                elseif(i==3)
                    lowerbound(6,3)=fr;
                elseif(i==4)
                    lowerbound(6,4)=fr;     
                elseif(i==5)
                    lowerbound(6,5)=fr;     
                elseif(i==6)
                    lowerbound(6,6)=fr; 
                elseif(i==7)
					lowerbound(6,7)=fr;
                end
                i=i+1;
            end
		
		elseif(num==2)
			while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    upperbound(6,1)=fr;
                elseif(i==2)
                    upperbound(6,2)=fr;
                elseif(i==3)
                    upperbound(6,3)=fr;
                elseif(i==4)
                    upperbound(6,4)=fr;     
                elseif(i==5)
                    upperbound(6,5)=fr;     
                elseif(i==6)
                    upperbound(6,6)=fr; 
				else
					upperbound(6,7)=fr;
                end
                i=i+1;
            end
		
		end		

             num=num+1;
    end
    fclose(fidin1);
	
	
		%jazz
	fidin1=fopen('TrainingData/TrainingPitch_jazz.txt');

	%f2=[base style(b) obj];
	% fidin1=fopen(f2);
	 num=0;
     parsed='';
	while (~feof(fidin1) )
        tline=fgetl(fidin1); 
        [chopped hz] = strtok(tline);  
        i=1;
        if(num==1)
            while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowerbound(7,1)=fr;
                elseif(i==2)
                    lowerbound(7,2)=fr;
                elseif(i==3)
                    lowerbound(7,3)=fr;
                elseif(i==4)
                    lowerbound(7,4)=fr;     
                elseif(i==5)
                    lowerbound(7,5)=fr;     
                elseif(i==6)
                    lowerbound(7,6)=fr; 
                elseif(i==7)
					lowerbound(7,7)=fr;
                end
                i=i+1;
            end
		
		elseif(num==2)
			while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    upperbound(7,1)=fr;
                elseif(i==2)
                    upperbound(7,2)=fr;
                elseif(i==3)
                    upperbound(7,3)=fr;
                elseif(i==4)
                    upperbound(7,4)=fr;     
                elseif(i==5)
                    upperbound(7,5)=fr;     
                elseif(i==6)
                    upperbound(7,6)=fr; 
				else
					upperbound(7,7)=fr;
                end
                i=i+1;
            end
		
		end		

             num=num+1;
    end
    fclose(fidin1);
	
	
		%metal
	fidin1=fopen('TrainingData/TrainingPitch_metal.txt');

	%f2=[base style(b) obj];
	% fidin1=fopen(f2);
	 num=0;
     parsed='';
	while (~feof(fidin1) )
        tline=fgetl(fidin1); 
        [chopped hz] = strtok(tline);  
        i=1;
        if(num==1)
            while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowerbound(8,1)=fr;
                elseif(i==2)
                    lowerbound(8,2)=fr;
                elseif(i==3)
                    lowerbound(8,3)=fr;
                elseif(i==4)
                    lowerbound(8,4)=fr;     
                elseif(i==5)
                    lowerbound(8,5)=fr;     
                elseif(i==6)
                    lowerbound(8,6)=fr; 
                elseif(i==7)
					lowerbound(8,7)=fr;
                end
                i=i+1;
            end
		
		elseif(num==2)
			while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    upperbound(8,1)=fr;
                elseif(i==2)
                    upperbound(8,2)=fr;
                elseif(i==3)
                    upperbound(8,3)=fr;
                elseif(i==4)
                    upperbound(8,4)=fr;     
                elseif(i==5)
                    upperbound(8,5)=fr;     
                elseif(i==6)
                    upperbound(8,6)=fr; 
				else
					upperbound(8,7)=fr;
                end
                i=i+1;
            end
		
		end		

             num=num+1;
    end
    fclose(fidin1);
	
	
		%pop
	fidin1=fopen('TrainingData/TrainingPitch_pop.txt');

	%f2=[base style(b) obj];
	% fidin1=fopen(f2);
	 num=0;
     parsed='';
	while (~feof(fidin1) )
        tline=fgetl(fidin1); 
        [chopped hz] = strtok(tline);  
        i=1;
        if(num==1)
            while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowerbound(9,1)=fr;
                elseif(i==2)
                    lowerbound(9,2)=fr;
                elseif(i==3)
                    lowerbound(9,3)=fr;
                elseif(i==4)
                    lowerbound(9,4)=fr;     
                elseif(i==5)
                    lowerbound(9,5)=fr;     
                elseif(i==6)
                    lowerbound(9,6)=fr; 
                elseif(i==7)
					lowerbound(9,7)=fr;
                end
                i=i+1;
            end
		
		elseif(num==2)
			while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    upperbound(9,1)=fr;
                elseif(i==2)
                    upperbound(9,2)=fr;
                elseif(i==3)
                    upperbound(9,3)=fr;
                elseif(i==4)
                    upperbound(9,4)=fr;     
                elseif(i==5)
                    upperbound(9,5)=fr;     
                elseif(i==6)
                    upperbound(9,6)=fr; 
				else
					upperbound(9,7)=fr;
                end
                i=i+1;
            end
		
		end		

             num=num+1;
    end
    fclose(fidin1);
	
	
		%reggae
	fidin1=fopen('TrainingData/TrainingPitch_reggae.txt');

	%f2=[base style(b) obj];
	% fidin1=fopen(f2);
	 num=0;
     parsed='';
	while (~feof(fidin1) )
        tline=fgetl(fidin1); 
        [chopped hz] = strtok(tline);  
        i=1;
        if(num==1)
            while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    lowerbound(10,1)=fr;
                elseif(i==2)
                    lowerbound(10,2)=fr;
                elseif(i==3)
                    lowerbound(10,3)=fr;
                elseif(i==4)
                    lowerbound(10,4)=fr;     
                elseif(i==5)
                    lowerbound(10,5)=fr;     
                elseif(i==6)
                    lowerbound(10,6)=fr; 
                elseif(i==7)
					lowerbound(10,7)=fr;
                end
                i=i+1;
            end
		
		elseif(num==2)
			while (any(hz))  
                [chopped, hz] = strtok(hz);
                fr=str2double(chopped);
                parsed(1,i) = fr;
                if(i==1)
                    upperbound(10,1)=fr;
                elseif(i==2)
                    upperbound(10,2)=fr;
                elseif(i==3)
                    upperbound(10,3)=fr;
                elseif(i==4)
                    upperbound(10,4)=fr;     
                elseif(i==5)
                    upperbound(10,5)=fr;     
                elseif(i==6)
                    upperbound(10,6)=fr; 
				else
					upperbound(10,7)=fr;
                end
                i=i+1;
            end
		
		end		

             num=num+1;
    end
    fclose(fidin1);
	
	
	
	
end