% Adam's comparison of bhat in ecm.m and ecmf.m. This code specifies some
% endogenous data and then asks for forecasts up to 8 periods ahead using
% ecmf_comp.m - this program returns the bmat generated by ecmf.m and also
% the bmat generated from ecm.m - the latter is the same as the estimate
% produced by Eviews. Furthermore, on line 147 of ecmf_comp I noticed that
% the forecasts call the wrong element of the endogenous data (I think).
% See also my code - ecmftest where I have used the bmat from ecm.m and
% also rewritten the forecasting code. ecmftest produces the same forecasts
% as Eviews.

%%% Step 0: Clear Everything

clear

format long

%%% Step 1: Set-Up Global Options

addpath M:\p_var\Bayes\var_bvar
addpath M:\p_var\Bayes\util
addpath M:\p_var\Bayes\coint
addpath M:\p_var\Bayes\data
addpath M:\p_var\Bayes\diagn
addpath M:\p_var\Bayes\distrib
addpath M:\p_var\Bayes\geoxp
addpath M:\p_var\Bayes\gibbs
addpath M:\p_var\Bayes\graphs
addpath M:\p_var\Bayes\optimize
addpath M:\p_var\Bayes\regress
addpath M:\p_var\Bayes\results
addpath M:\p_var\Bayes\spatial
addpath M:\p_var\Bayes\ts_aggregation
addpath M:\p_var\Bayes\ucsd_garch

tic

noceps = 6;
nlag = 2;

%%% Step 2: Load in Data

   modeldata = [10.845227254038733  10.213617314400269   1.762874446182229
  10.851482319713920  10.239462964397218   1.782143877496014
  10.859593360450312  10.227198883122309   1.791702032813964
  10.865828841029950  10.247980118776503   1.798011908497956
  10.869567098442285  10.262899093375621   1.807461412370984
  10.872697504285991  10.278894653151143   1.816894014054924
  10.878569622667730  10.290868243684777   1.833203202718622
  10.894449711810505  10.286449132366151   1.837193492280568
  10.876478844462506  10.287888259853496   1.849140911229428
  10.899265595855107  10.295927730229842   1.857302252915506
  10.908296698310320  10.308200441764205   1.871294702769319
  10.918900848374934  10.312826370284361   1.881955191294815
  10.921520058772689  10.300381603348951   1.904917163131775
  10.905550929642606  10.291869869484103   1.921151750529738
  10.902680625288969  10.276973633014395   1.939515410654007
  10.921602054886119  10.288908321145618   1.946854036336714
  10.908670537854436  10.260406811013404   1.969412174047835
  10.911722481274436  10.247770888501728   1.983417518640227
  10.903373924124351  10.241765058373069   2.003962008593094
  10.907232567720902  10.235706648645660   2.016183770004174
  10.913517776760006  10.242072683429127   2.036721936855429
  10.890186033105389  10.232034284333375   2.046492902540595
  10.898896610727730  10.225653186099992   2.058881049737279
  10.881296481334195  10.238423665830139   2.060446970732007
  10.885215582572759  10.241586916393441   2.068121582185661
  10.911962592223407  10.245805206728056   2.072144991858579
  10.927096843768934  10.246595166223257   2.083242136215962
  10.927047916499312  10.244578727537419   2.088183628064325
  10.938125711418808  10.255754898848673   2.103757738589361
  10.940268678716787  10.248108854112921   2.108805850597101
  10.950158451221968  10.257860498605716   2.112003219344527
  10.952760743820837  10.258943473707580   2.117367518919837
  10.966212799459170  10.269787935774048   2.126817153876634
  10.974778179037791  10.277208101436480   2.133505186714646
  10.967889482214682  10.285674550988638   2.134870705063600
  10.993601176917901  10.301648324618395   2.134961115624713
  10.999155394130350  10.296817028049873   2.136281875607952
  11.008076235086831  10.313926787197110   2.136492884646705
  11.010307196790064  10.319680447921172   2.128441892802026
  10.993631695194537  10.320339327849172   2.131602987121956
  11.008076235086831  10.328405270420163   2.124094771207969
  11.008316847446444  10.335935170268485   2.124873881209178
  11.021439895467628  10.342852767158288   2.128317473431397
  11.029591080317470  10.351276999337395   2.127805411880380
  11.028943192556083  10.348981220816047   2.127830589843704
  11.037077522797487  10.333869724430787   2.132052328362688
  11.045211434503186  10.354537233918979   2.137014103186874
  11.059634951690876  10.351929897138559   2.137579001433971
  11.073874509259618  10.363939412537151   2.136258265963370
  11.084241506466022  10.373651480548100   2.142473761817643
  11.091718605043496  10.385979379739471   2.148275796541756
  11.104064355999121  10.396771302774798   2.150492702077843
  11.113935205207856  10.404631273481128   2.158652672934991
  11.122972425463798  10.420208911941094   2.164802485684334
  11.134688810290967  10.432019463129288   2.172682900220126
  11.143429576873963  10.444036135444099   2.178289867653365
  11.143771057590188  10.455112427007080   2.186160786494118
  11.148506910492808  10.451416437269103   2.192351267511001
  11.151280348623468  10.456145383642838   2.206145686433226
  11.161375713830935  10.458364589817046   2.213382173035156
  11.173673263145469  10.480749061711750   2.221823135374465
  11.168920930736741  10.466364944189566   2.230155402940310
  11.170852692822496  10.465847379320666   2.234060681764539
  11.171791639036211  10.477620167999817   2.237202523386385
  11.172308641074247  10.474712388607326   2.246450670605730
  11.177552885392316  10.486166303271816   2.253093048925734
  11.183968842204330  10.473736966595828   2.261647159448340
  11.181708340648219  10.474327467254836   2.264073261662242
  11.197444252297975  10.486876251450065   2.275561490448145
  11.209480890583160  10.503478888758808   2.281386014844360
  11.214729988951092  10.501732337752189   2.288198010078892
  11.220669356741038  10.508055328124527   2.290666761761741
  11.220936833946279  10.506826224284344   2.299084167238752
  11.228165999931502  10.510591913927932   2.302585092994046
  11.237018963775405  10.529222683761637   2.304200773303924
  11.244364731901687  10.534185953722572   2.306197066251204
  11.252505119434044  10.550510940343244   2.316736176029619
  11.259440261084453  10.551021650419491   2.323551404205205
  11.267018415752585  10.567520196430568   2.322734875449671
  11.271285999930335  10.568745808368536   2.328885142167590
  11.282416091929827  10.575222386921432   2.336109840400428
  11.295399785206396  10.587261217397812   2.341862993596775
  11.306243815815295  10.589594567040454   2.346301138991004
  11.316645774614804  10.603796902044559   2.352938416981090
  11.327852942308876  10.608998371977577   2.357007966110884
  11.335018506588627  10.626371374934127   2.363174172882210
  11.344337665219157  10.643934740166483   2.364756204683658
  11.353331272087621  10.647488331247063   2.370847019720359
  11.360100456883472  10.662926994130832   2.378043606617774
  11.370917285413743  10.671384598198198   2.384644687430694
  11.384548028015473  10.677262645982388   2.388110000942218
  11.396237708498408  10.689443520672437   2.392459261391102
  11.403938728991765  10.701058888810039   2.398891554589552
  11.410460409001113  10.703671695081152   2.410291077267480
  11.417489126308137  10.714992895809136   2.416137406167800
  11.429813522952738  10.732416610252436   2.420433066879999];

%%% Step 3: Estimate VECM for 3 variable test model

            [m1,n1] = size(modeldata);
            begf = m1+1;
            [ylevf, bmat_ecmf, bmat_ecm] = ecmf_comp(modeldata,nlag,8,begf,1);

toc











