filename='sound2.wav';
audio_array=audioread(filename);
initial=15;
final=17;
audio_array=audio_array(44100*initial:44100*final);
time=1/44100;
Fs=44100;
tot_time=length(audio_array)/Fs;frequency_array=[];compiled_array=[];
amp=2;
duration=0.1;
values=0:1/Fs:duration;
mode_values=0:1/Fs:(final-initial);
fi=0;
while(time<tot_time)
    freq=frequency(audio_array,time,0.1);
    fprintf('frequency at %d is %d \n',time,freq);
    frequency_array(end+1)=freq;
    compiled_array=[compiled_array,sin((2*pi*freq*values)+fi)];
    fi=(2*pi*freq*duration)+fi;
    time=time+0.1;
end
array6=(round(frequency_array/10))*10;
var=mode(array6);ind4=1;sum=0;ind3=0;
while(ind4<=length(array6))
    if(var==array6(ind4))
        sum=sum+frequency_array(ind4);
        ind3=ind3+1;
    end
    ind4=ind4+1;
end
mode_freq=sum/ind3;
fprintf('mode frequency is %d',mode_freq);
compiled_array=amp*compiled_array;
mode_compiled_array=amp*sin(2*pi*mode_freq*mode_values);
sound(mode_compiled_array,44100);






    