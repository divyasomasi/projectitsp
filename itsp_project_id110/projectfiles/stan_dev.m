function s=stan_dev(data,start,N)
 % s = stan_dev(data,N) is used to estimate standard deviation of data with
 % N elements
 s=std(data(start:start+N-1));