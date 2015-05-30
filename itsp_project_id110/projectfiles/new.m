
 k = audioread('sound6.wav');
 k2=k(44100*15:44100*18);
 w = new2(k2)*7016;
 fprintf('w is %d',w);


