% PURPOSE: An example of using recm_g function
%          to produce Gibbs estimates for an ecm model                                                 
%          (based on random-walk averaging prior) 
%              
% References: LeSage and Krivelyova (1998) 
% ``A Spatial Prior for Bayesian Vector Autoregressive Models'',
% forthcoming Journal of Regional Science, (on http://www.econ.utoledo.edu)
% and
% LeSage and Krivelova (1997) (on http://www.econ.utoledo.edu)
% ``A Random Walk Averaging Prior for Bayesian Vector Autoregressive Models''            
%---------------------------------------------------
% USAGE: recm_gd
%---------------------------------------------------

load test.dat; % a test data set containing
               % monthly mining employment for
               % il,in,ky,mi,oh,pa,tn,wv
% data covers 1982,1 to 1996,5

vnames =  ['  il',
           '  in',    
           '  ky',    
           '  mi',    
           '  oh',    
           '  pa',    
           '  tn',    
           '  wv'];    
     
y = test;
[nobs neqs] = size(y);

nlag = 2;  % number of lags in var-model

% prior hyperparameters
% priors for contiguous variables:  N(w(i,j),sig) for 1st own lag
%                                  N(  0 ,tau*sig/k) for lag k=2,...,nlag
%               
% priors for non-contiguous variables are:  N(w(i,j) ,theta*sig/k) for lag k 
%  
% e.g., if y1, y3, y4 are contiguous variables in eq#1, y2 non-contiguous
%  w(1,1) = 1/3, w(1,3) = 1/3, w(1,4) = 1/3, w(1,2) = 0
%                                              
% typical values would be: sig = .1-.3, tau = 4-8, theta = .5-1  
sig = 0.1;
tau = 6;
theta = 0.5;
freq = 12;   % monthly data

% this is an example of using 1st-order contiguity
% of the states as weights to produce prior means

W=[0      0.5    0.5    0     0     0    0     0
   0.25   0      0.25   0.25  0.25  0    0     0
   0.20   0.20   0      0     0.20  0    0.20  0.20
   0      0.50   0      0     0.50  0    0     0
   0      0.20   0.20   0.20  0     0.20 0.20  0.20
   0      0      0      0     0.50  0    0     0.50
   0      0      1      0     0     0    0     0
   0      0      0.33   0     0.33  0.33 0     0];

% estimate the model
prior.w = W;
prior.sig = sig;
prior.tau = tau;
prior .theta = theta;
prior.freq = 12;
ndraw = 400;
nomit = 50;

res1 = recm(y,nlag,W,freq,sig,tau,theta);
% use default where Johansen ml estimates 
% for the co-integrating relations are determined
results = recm_g(y,nlag,prior,ndraw,nomit);

% print results to a file
fid = fopen('recmg.out','wr');
prt(res1,vnames,fid);
prt_varg(results,vnames,fid);
plt_varg(results,vnames);

