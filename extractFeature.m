function Style=extractFeature(filename,tempo_range,pulseclarity_range,brightness_range,rolloff_range,zerocross_range,lowenergy_range)

style={'blues' ,'classical', 'country' ,'disco', 'hiphop' ,'jazz' ,'metal', 'pop'};

%style(i) , style(j)

vote=zeros(1,8);
for i=1:8
    for j=i:8
        if(i~=j)
			score=zeros(1,8);
            freq=fundamental_f(filename);
            [Pitch_Mean Pitch_Std Pitch_Slope Freq Pitch_PeriodAmp Pitch_PeriodEntropy]=extractpitch(filename);
			tempo1=ExtractTempo(filename);
			pulseclarity1=ExtractPulseClarity(filename);
			brightness1=ExtractBrightness(filename);
			rolloff1=ExtractRollOff(filename);
			zerocross1=ExtractZerocross(filename);
			lowenergy1=ExtractLowEnergy(filename);
			[lowerbound upperbound]=loadbound;
			
			%freq
			if(freq<=upperbound(i,1)&&freq>=lowerbound(i,1))
				score(i)=score(i)+1;
			end
			if(freq<=upperbound(j,1) && freq>=lowerbound(j,1))
				score(j)=score(j)+1;
			end
						
			%Pitch_Mean
			if(Pitch_Mean<=upperbound(i,2)&&Pitch_Mean>=lowerbound(i,2))
				score(i)=score(i)+1;
			end
			if(Pitch_Mean<=upperbound(j,2) && Pitch_Mean>=lowerbound(j,2))
				score(j)=score(j)+1;
			end
			
			%Pitch_Std
			if(Pitch_Std<=upperbound(i,3)&&Pitch_Std>=lowerbound(i,3))
				score(i)=score(i)+1;
			end
			if(Pitch_Std<=upperbound(j,3) && Pitch_Std>=lowerbound(j,3))
				score(j)=score(j)+1;
			end
			%Pitch_Slope
			if(Pitch_Slope<=upperbound(i,4)&&Pitch_Slope>=lowerbound(i,4))
				score(i)=score(i)+1;
			end
			if(Pitch_Slope<=upperbound(j,4) && Pitch_Slope>=lowerbound(j,4))
				score(j)=score(j)+1;
			end
			%Freq
			if(Freq<=upperbound(i,5)&&Freq>=lowerbound(i,5))
				score(i)=score(i)+1;
			end
			if(Freq<=upperbound(j,5) && Freq>=lowerbound(j,5))
				score(j)=score(j)+1;
			end
			%Pitch_PeriodAmp
			if(Pitch_PeriodAmp<=upperbound(i,6)&&Pitch_PeriodAmp>=lowerbound(i,6))
				score(i)=score(i)+1;
			end
			if(Pitch_PeriodAmp<=upperbound(j,6) && Pitch_PeriodAmp>=lowerbound(j,6))
				score(j)=score(j)+1;
			end
			

			%tempo
			if(tempo1<= tempo_range(i,2) && tempo1>=tempo_range(i,1))
				score(i)=score(i)+1;
			end
			if(tempo1<=tempo_range(j,2) && tempo1>=tempo_range(j,1))
				score(j)=score(j)+1;
			end
			
			%pulseclarity
			if(pulseclarity1<=pulseclarity_range(i,2) && pulseclarity1>=pulseclarity_range(i,1))
				score(i)=score(i)+1;
			end
			if(pulseclarity1<=pulseclarity_range(j,2) && pulseclarity1>=pulseclarity_range(j,1))
				score(j)=score(j)+1;
			end
		
			
			%brightness
			if(brightness1<=brightness_range(i,2) && brightness1>=brightness_range(i,1))
				score(i)=score(i)+1;
			end
			if(brightness1<=brightness_range(j,2) && brightness1>=brightness_range(j,1))
				score(j)=score(j)+1;
			end
			
			
			
			%rolloff
			if(rolloff1<=rolloff_range(i,2) && rolloff1>=rolloff_range(i,1))
				score(i)=score(i)+1;
			end
			if(rolloff1<=rolloff_range(j,2) && rolloff1>=rolloff_range(j,1))
				score(j)=score(j)+1;
			end
						
			
			%zerocross
			if(zerocross1<=zerocross_range(i,2) && zerocross1>=zerocross_range(i,1))
				score(i)=score(i)+1;
			end
			if(zerocross1<=zerocross_range(j,2) && zerocross1>=zerocross_range(j,1))
				score(j)=score(j)+1;
			end
			
			%lowenergy
			if(lowenergy1<=lowenergy_range(i,2) && lowenergy1>=lowenergy_range(i,1))
				score(i)=score(i)+1;
			end
			if(lowenergy1<=lowenergy_range(j,2) && lowenergy1>=lowenergy_range(j,1))
				score(j)=score(j)+1;
			end
			
			if(score(i)>score(j))
			    vote(i)=vote(i)+1;
				 
				
			else
				vote(j)=vote(j)+1;
				
				
			end
			
			
			
			
        end
		
    end
    
    
    
end

[p,index]=max(vote(:));
Style=style(index);
end