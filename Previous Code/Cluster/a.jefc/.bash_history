mv send_job1.sh send_job.sh
#1573137799
vi send_job.sh 
#1573137812
vi Equilibrium_T_5_0.py 
#1573137837
sbatch send_job.sh 
#1573137844
squeue -u a.jefc
#1573168326
ls
#1573168330
cd Little_system/
#1573168331
l
#1573168332
ls
#1573168336
cd Pure_system/
#1573168337
ls
#1573168346
vi send_job1.sh 
#1573170916
ls
#1573170931
cd ..
#1573170935
ls
#1573170951
cd NP_and_mesogens/
#1573170952
ls
#1573170968
mkdir P_1_4
#1573170973
mkdir P_1_8
#1573170978
mkdir P_2_3
#1573170981
mkdir P_2_8
#1573170986
mkdir P_3_3
#1573170988
ls
#1573171002
mv *.py P_1_4
#1573171011
mv *.sh P_1_4
#1573171016
mv *.log P_1_4
#1573171021
mv *.gsd P_1_4
#1573171030
mv *.out P_1_4
#1573171033
ls
#1573171062
cd P_1_4
#1573171071
mkdir Ramps
#1573171079
mkdir Equilibriums
#1573171093
mv *.py Equilibrium
#1573171102
mv *.py Equilibriums
#1573171107
mv *.sh Equilibriums
#1573171112
mv *.log Equilibriums
#1573171117
mv *.gsd Equilibriums
#1573171122
mv *.out Equilibriums
#1573171124
ls
#1573171137
cd ..
#1573171142
ls -l
#1573171146
cd NP_and_mesogens/
#1573171149
ls -l
#1573171157
cd P_1_8
#1573171158
ls
#1573171162
mkdir Ramps
#1573171169
mkdir Equilibriums
#1573171172
cd ..
#1573171178
cd P_2_3
#1573171185
mkdir Equilibriums
#1573171190
mkdir Ramps
#1573171192
cd ..
#1573171199
cd P_2_8
#1573171205
mkdir Ramps
#1573171216
mkdir Equilibriums
#1573171219
ls
#1573171221
cd ..
#1573171230
cd P_2_3
#1573171231
ls
#1573171233
cd ..
#1573171241
cd P_1_8
#1573171242
ls
#1573171245
cd ..
#1573171247
ls
#1573178198
cd --
#1573178200
ls
#1573178236
mv Temperature_ramps/ Little_system/NP_and_mesogens/P_2_3/
#1573178239
ls
#1573178258
cd Little_system/NP_and_mesogens/P_2_3/
#1573178260
ls
#1573178271
mv Temperature_ramps/ Ramps/
#1573178272
ls
#1573178276
cd --
#1573178311
ls
#1573178341
mv Temperature_ramps/ Little_system/NP_and_mesogens/P_2_8/Ramps/
#1573178343
ls
#1573178394
mv Temperature_ramps/ Little_system/NP_and_mesogens/P_3_3/Ramps/
#1573178408
cd Little_system/NP_and_mesogens/P_2_8/Ramps/
#1573178409
ls
#1573178413
cd --
#1573178419
cd Little_system/NP_and_mesogens/P_3_3/Ramps/
#1573178421
ls
#1573178443
pwd
#1573178455
cd ..
#1573178456
ls
#1573178460
cd Ramps/
#1573178461
ls
#1573178482
mkdir Temperature_ramps
#1573178493
mv *.py Temperature_ramps/
#1573178499
mv *.gsd Temperature_ramps/
#1573178505
mv *.sh Temperature_ramps/
#1573178506
ls
#1573178508
cd ..
#1573178511
pwd
#1573178515
cd --
#1573178549
cd Little_system/NP_and_mesogens/P_2_3/Ramps/Temperature_ramps/
#1573178551
ls
#1573178587
sbatch ramps_P_2_3.sh 
#1573178591
cd --
#1573178600
cd Little_system/NP_and_mesogens/P_2_8/Ramps/Temperature_ramps/
#1573178602
ls
#1573178609
sbatch ramps_P_2_8.sh 
#1573178613
cd --
#1573178622
cd Little_system/NP_and_mesogens/P_3_3/Ramps/Temperature_ramps/
#1573178624
ls
#1573178630
sbatch ramps_P_3_3.sh 
#1573178633
cd --
#1573178637
squeue -u a.jefc
#1573178780
exit
#1573182940
ls
#1573182958
cd Little_system/
#1573182962
cd NP_and_mesogens/
#1573182964
ls
#1573182967
clear
#1573182969
ls
#1573182975
cd P_1_8
#1573182976
ls
#1573182980
cd Ramps/
#1573182981
ls
#1573182984
cd
#1573182985
ls
#1573182996
cd Little_system/
#1573182997
ls
#1573183014
cd NP_and_mesogens/
#1573183015
ls
#1573183024
cd P_1_8/
#1573183025
ls
#1573183027
cd Ramps/
#1573183028
ls
#1573183043
cd --
#1573183046
ls
#1573183048
cd Little_system/
#1573183049
ls
#1573183053
cd NP_and_mesogens/
#1573183054
ls
#1573183063
cd P_2_3
#1573183065
ls
#1573183067
cd Ramps/
#1573183068
ls
#1573183070
cd Temperature_ramps/
#1573183071
ls
#1573183074
vi slurm-623016.out 
#1573183104
rm *.out
#1573183114
vi Ramp_5_2.py 
#1573183137
vi Ramp_5_4.py 
#1573183160
vi Ramp_5_6.py 
#1573183177
vi Ramp_5_8.py 
#1573183197
vi Ramp_6_0.py 
#1573183213
vi Ramp_6_2.py 
#1573183231
vi Ramp_6_4.py 
#1573183246
vi Ramp_6_6.py 
#1573183262
vi Ramp_6_8.py 
#1573183284
vi Ramp_7_0.py 
#1573183302
ls -la
#1573183311
ls -l
#1573183326
sbatch ramps_P_2_3.sh 
#1573183344
squeue -u a.jefc
#1573184108
cd Little_system/NP_and_mesogens/P_2_8/Ramps/Temperature_ramps/
#1573184110
ls
#1573184119
rm *.out
#1573184123
clear
#1573184144
vi Ramp_5_2.py 
#1573184166
vi Ramp_5_4.py 
#1573184191
vi Ramp_5_6.py 
#1573184214
vi Ramp_5_8.py 
#1573184238
vi Ramp_6_0.py 
#1573184257
vi Ramp_6_2.py 
#1573184274
vi Ramp_6_4.py 
#1573184313
vi Ramp_6_6.py 
#1573184330
vi Ramp_6_8.py 
#1573184350
vi Ramp_7_0.py 
#1573184367
ls
#1573184384
sbatch ramps_P_2_8.sh 
#1573184422
squeue -u a.jefc
#1573184458
vi ramps_P_2_8.sh 
#1573184470
cd --
#1573184487
cd Little_system/NP_and_mesogens/P_3_3/Ramps/Temperature_ramps/
#1573184489
ls
#1573184500
rm *.out
#1573184507
vi ramps_P_3_3.sh 
#1573184534
vi Ramp_5_2.py 
#1573184550
vi Ramp_5_4.py 
#1573184574
vi Ramp_5_6.py 
#1573184593
vi Ramp_5_8.py 
#1573184618
vi Ramp_6_0.py 
#1573184640
vi Ramp_6_2.py 
#1573184665
vi Ramp_6_4.py 
#1573184686
vi Ramp_6_6.py 
#1573184706
vi Ramp_6_8.py 
#1573184730
vi Ramp_7_0.py 
#1573184752
sbatch ramps_P_3_3.sh 
#1573184767
squeue -u a.jefc
#1573184813
cd ..
#1573184814
ls
#1573184816
cd ..
#1573184817
ls
#1573184819
cd ..
#1573184821
ls
#1573184827
cd P_2_3/
#1573184828
ls
#1573184831
cd Ramps/
#1573184831
ls
#1573184835
cd Temperature_ramps/
#1573184836
ls
#1573184839
vi slurm-623019.out 
#1573185074
exit
#1573221591
ls
#1573221607
cd Little_system/NP_and_mesogens/P_2_8/Ramps/Temperature_ramps/
#1573221608
ls
#1573221613
vi slurm-623020.out 
#1573222414
cd Little_system/NP_and_mesogens/P_3_3/Ramps/Temperature_ramps/
#1573222418
cd --
#1573222421
cd Little_system/NP_and_mesogens/P_3_3/Ramps/Temperature_ramps/
#1573222424
vi slurm-623022.out 
#1573223757
cd --
#1573223767
cd Little_system/NP_and_mesogens/P_2_8/Ramps/Temperature_ramps/
#1573223771
vi slurm-623020.out 
#1573224062
cd --
#1573224069
cd Little_system/NP_and_mesogens/P_2_3/Ramps/Temperature_ramps/
#1573224241
vi slurm-623019.out 
#1573224789
cd ..
#1573224790
pwd
#1573224794
cd ..
#1573224796
pwd
#1573224801
cd ..
#1573224803
ls
#1573224840
pwd
#1573225987
cd P_2_3/
#1573225989
ls
#1573226000
cd Ramps/
#1573226001
ls
#1573228822
cd Little_system/NP_and_mesogens/
#1573228823
ls
#1573228840
cd P_2_8
#1573228841
ls
#1573228843
cd Ramps/
#1573228844
ls
#1573228849
cd Temperature_ramps/
#1573228850
ls
#1573228863
vi Ramp_5_4.py 
#1573228990
vi Ramp_5_6.py 
#1573229009
vi Ramp_5_8.py 
#1573229026
vi Ramp_6_0.py 
#1573229039
vi Ramp_6_2.py 
#1573229053
vi Ramp_6_4.py 
#1573229068
vi Ramp_6_6.py 
#1573229085
vi Ramp_6_8.py 
#1573229106
vi Ramp_7_0.py 
#1573229125
vi ramps_P_2_8.sh 
#1573229163
sbatch ramps_P_2_8.sh 
#1573229174
squeue -u a.jefc
#1573229239
cd ..
#1573229240
ls
#1573229241
cd ..
#1573229256
cd P_3_3/
#1573229261
cd Ramps/Temperature_ramps/
#1573229263
ls
#1573229278
vi Ramp_5_8.py 
#1573229306
vi Ramp_6wq_0.py 
#1573229316
rm Ramp_6wq_0.py 
#1573229322
vi Ramp_6_0.py 
#1573229338
vi Ramp_6_2.py 
#1573229352
vi Ramp_6_4.py 
#1573229369
vi Ramp_6_6.py 
#1573229383
vi Ramp_6_8.py 
#1573229399
vi Ramp_7_0.py 
#1573229416
vi ramps_P_3_3.sh 
#1573229437
sbatch ramps_P_3_3.sh 
#1573229635
vi ramps_P_3_3.sh 
#1573229657
vi slurm-623155.out 
#1573229678
vi ramps_P_3_3.sh 
#1573229778
rm *.out
#1573229785
sbatch ramps_P_3_3.sh 
#1573229849
squeue -u a.jefc
#1573229864
cd ..
#1573229876
cd P_2_3/
#1573229882
cd Ramps/Temperature_ramps/
#1573229905
vi Ramp_5_4.py 
#1573229931
vi Ramp_5_6.py 
#1573229949
vi Ramp_5_8.py 
#1573229965
vi Ramp_5_6.py 
#1573229972
vi Ramp_6_0.py 
#1573229989
vi Ramp_6_2.py 
#1573230010
vi Ramp_6_4.py 
#1573230024
vi Ramp_6_6.py 
#1573230047
vi Ramp_6_8.py 
#1573230065
vi Ramp_7_0.py 
#1573230085
vi ramps_P_2_3.sh 
#1573230096
vi slurm-623019.out 
#1573230100
rm slurm-623019.out 
#1573230117
squeue -u a.jefc
#1573230504
pwd
#1573230633
squeue -u a.jefc
#1573230957
cd --
#1573230985
cd Little_system/NP_and_mesogens/
#1573230987
ls
#1573230999
cd P_2_8/Ramps/Temperature_ramps/
#1573231007
vi slurm-623154.out 
#1573231104
cd ..
#1573231116
cd P_2_3/
#1573231129
cd Ramps/Temperature_ramps/
#1573231133
ls
#1573231137
vi ramps_P_2_3.sh 
#1573231166
sbatch ramps_P_2_3.sh 
#1573231172
squeue -u a.jefc
#1573231438
exit
#1573231814
cd --
#1573231818
squeue -u a.jefc
#1573232290
cd Little_system/NP_and_mesogens/P_2_8/Ramps/Temperature_ramps/
#1573232294
ls
#1573232301
vi Ramp_6_6.py 
#1573232317
vi Ramp_6_8.py 
#1573232334
vi Ramp_7wq_0.py 
#1573232341
rm Ramp_7wq_0.py 
#1573232348
vi Ramp_7_0.py 
#1573232367
vi ramps_P_2_8.sh 
#1573232748
squeue -u a.jefc
#1573232945
ls
#1573232957
sbatch ramps_P_2_8.sh 
#1573232969
squeue -u a.jefc
#1573233189
cd ....
#1573233191
cd ..
#1573233193
cd..
#1573233196
cd ..
#1573233202
cd P_2_3
#1573233213
ls
#1573233215
cd ..
#1573233223
cd P_2_3/
#1573233233
cd Ramps/Temperature_ramps/
#1573233240
ls
#1573233249
vi Ramp_6_4.py 
#1573233265
vi Ramp_6_6.py 
#1573233280
vi Ramp_6_8.py 
#1573233299
vi Ramp_7_0.py 
#1573233312
ci ramps_P_2_3.sh 
#1573233322
vi ramps_P_2_3.sh 
#1573233349
squeue -u a.jefc
#1573233488
clear
#1573233492
cd ..
#1573233500
cd P_3_3/
#1573233505
cd Ramps/Temperature_ramps/
#1573233508
ls
#1573233518
vi slurm-623156.out 
#1573233553
cd ..
#1573233569
cd P_2_8/
#1573233573
cd Ramps/Temperature_ramps/
#1573233578
vi slurm-623173
#1573233596
vi slurm-623173.out 
#1573233645
vi Ramp_7_0.py 
#1573233664
vi ramps_P_2_8.sh 
#1573233673
sbatch ramps_P_2_8.sh 
#1573233727
squeue -u a.jefc
#1573234222
ls
#1573234227
cd ..
#1573234242
cd P_2_3/Ramps/Temperature_ramps/
#1573234248
ls
#1573234256
vi ramps_P_2_3.sh 
#1573234273
sbatch ramps_P_2_3.sh 
#1573234285
squeue -u a.jefc
#1573235284
cd ..
#1573235294
vi Ramps/Temperature_ramps/
#1573235332
cd Ramps/Temperature_ramps/
#1573235333
ls
#1573235354
vi slurm-623179.out 
#1573235422
vi Ramp_6_6.py 
#1573235451
vi Ramp_6_8.py 
#1573235474
vi Ramp_7_0.py 
#1573235492
vi ramps_P_2_3.sh 
#1573235536
sbatch ramps_P_2_3.sh 
#1573235544
squeue -u a.jefc
#1573235698
cd --
#1573235709
cd Little_system/NP_and_mesogens/P_3_3/Ramps/Temperature_ramps/
#1573235710
ls
#1573235711
clear
#1573235724
vi ramps_P_3_3.sh 
#1573235753
vi Ramp_5_8.py 
#1573236139
squeue -u a.jefc
#1573236502
ls
#1573236511
sbatch ramps_P_3_3.sh 
#1573236525
squeue -u a.jefc
#1573236569
clear
#1573238867
ls
#1573238883
vi slurm-623156.out 
#1573238902
vi ramps_P_3_3.sh 
#1573238989
vi slurm-623156.out 
#1573239009
vi ramps_P_3_3.sh 
#1573239057
cd --
#1573239084
alias_yoltla2 
#1573239087
cd --
#1573239102
which hoomd.python3
#1573241036
pwd
#1573241053
cd Little_system/NP_and_mesogens/P_3_3/Ramps/Temperature_ramps/
#1573241055
ls
#1573241286
vi Ramp_6_2.py 
#1573241365
vi Ramp_6_4.py 
#1573241393
vi Ramp_6_6.py 
#1573241420
vi Ramp_6_8.py 
#1573241443
vi Ramp_7_0.py 
#1573241468
vi ramps_P_3_3.sh 
#1573241490
sbatch ramps_P_3_3.sh 
#1573243892
ls
#1573243915
vi Ramp_6_4.py 
#1573243937
vi Ramp_6_6.py 
#1573243949
vi Ramp_6_8.py 
#1573243963
vi Ramp_7_0.py 
#1573243975
vi ramps_P_3_3.sh 
#1573243986
sbatch ramps_P_3_3.sh 
#1573244012
squeue -u a.jefc
#1573244045
sbatch ramps_P_3_3.sh 
#1573244066
vi slurm-623228.out 
#1573244081
squeue -u a.jefc
#1573244087
vi ramps_P_3_3.sh 
#1573244339
sbatch ramps_P_3_3.sh 
#1573244348
squeue -u a.jefc
#1573244393
clear
#1573244444
vi slurm-623231.out 
#1573244498
vi ramps_P_3_3.sh 
#1573257368
ls
#1573257395
cd Little_system/NP_and_mesogens/
#1573257396
ls
#1573257405
cd P_3_3/Ramps/Temperature_ramps/
#1573257407
ls
#1573257418
sbatch ramps_P_3_3.sh 
#1573257433
squeue -u a.jefc
#1573258844
exit
#1573487617
ls
#1573487621
cd Little_system/
#1573487622
ls
#1573487635
cd NP_and_mesogens/P_3_3/Ramps/Temperature_ramps/
#1573487636
ls
#1573487642
vi ramps_P_3_3.sh 
#1573487653
sbatch ramps_P_3_3.sh 
#1573487658
squeue -u a.jefc
#1573487747
vi ramps_P_3_3.sh 
#1573487909
sbatch ramps_P_3_3.sh 
#1573487918
squeue -u a.jefc
#1573487935
vi slurm-624011.out 
#1573487946
vi ramps_P_3_3.sh 
#1573488133
mv ramps_P_3_3.sh rampsP_3_3.sh 
#1573488138
vi rampsP_3_3.sh 
#1573488145
sbatch rampsP_3_3.sh 
#1573488152
squeue -u a.jefc
#1573488157
sbatch rampsP_3_3.sh 
#1573488158
squeue -u a.jefc
#1573488197
vi rampsP_3_3.sh 
#1573488220
cd ..
#1573488233
vi P_2_8/Ramps/Temperature_ramps/
#1573488252
cd P_2_8/Ramps/Temperature_ramps/
#1573488258
vi ramps_P_2_8.sh 
#1573488542
cd ..
#1573488546
ls
#1573488548
cd ..
#1573488549
ls
#1573488552
cd ..
#1573488554
ls
#1573488558
cd P_3_3/
#1573488563
cd Ramps/Temperature_ramps/
#1573488564
ls
#1573488566
pwd
#1573488629
ls
#1573488636
vi ramps_P_3_3.sh 
#1573488671
vi rampsP_3_3.sh 
#1573488697
sbatch ramps_P_3_3.sh 
#1573488704
squeue -u a.jefc
#1573488823
vi ramps_P_3_3.sh 
ls
cd Little_system/
ls
cd NP_and_mesogens/
ls
cd P_3_3/
ls
cd Ramps/
ls
cd Temperature_ramps/
ls
less slurm-624015.out 
less slurm-624015.out 
ls
cat ramps_P_3_3.sh 
cat ramps_P_3_3.sh |nl
cat rampsP_3_3.sh |nl
#1573494781
ls
#1573494785
cd Little_system/
#1573494786
ls
#1573494790
cd Pure_system/
#1573494791
ls
#1573494812
vi Equilibrium_T_5_6.py 
module avail 
module load singularity/hoomd/2.3.5-CUDA
hoomd.python3 Ramp_7_0.py 
nvidia-smi 
env 
env |less
env |sort |less
unset PMI_RANK
hoomd.python3 Ramp_7_0.py 
ls
cat Ramp_7_0.py
less Ramp_7_0.py
module load singularity/hoomd/2.3.5-CUDA 
ls
cd Little_system/NP_and_mesogens/P_3_3/
cd Ramps/Temperature_ramps/
ls
cat rampsP_3_3.sh
hoomd.python3 Ramp_7_0.py
ls
salloc --reservation=a.jefc_44 -p gpus -n 20 -N 1 srun --pty bash 
env|less 
cd Little_system/NP_and_mesogens/P_3_3/Ramps/Temperature_ramps/
ls
mkdir lsvp 
cp rampsP_3_3.sh lsvp/
cp Ramp_7_0.py lsvp/
cd lsvp/
ls
vim rampsP_3_3.sh 
vim rampsP_3_3.sh 
sbatch rampsP_3_3.sh 
ls
cat slurm-624093.out 
cp ../T_CM\&NP_6.8_P_3.3_ramp.gsd . 
sbatch rampsP_3_3.sh 
ls
ls
less slurm-624094.out
vim rampsP_3_3.sh 
sbatch rampsP_3_3.sh 
ls
cat slurm-624095.out
cat slurm-624094.out 
LS
ls
ls
cat rampsP_3_3.sh
vim rampsP_3_3.sh 
ls
mkdir a 
cp * a/
ls
mv * a 
ls
cp ../* .
ls
sbatch rampsP_3_3.sh 
env
#1573509545
ls
#1573509548
pwd
#1573509554
cd ..
#1573509555
ls
#1573509573
cd NP_and_mesogens/
#1573509574
ls
#1573509580
cd P_1_4/
#1573509582
ls
#1573509586
cd Equilibriums/
#1573509587
l
#1573509588
ls
#1573509614
cd ..
#1573509616
ls
#1573509629
rm -r Equilibriums/
#1573509634
cd Ramps/
#1573509635
ls
#1573509638
cd ..
#1573510804
ls
#1573510807
cd ..
#1573510811
ls
#1573510818
cd P_3_3/
#1573510823
cd ..
#1573510829
cd P_2_3/
#1573510832
cd Ramps/Temperature_ramps/
#1573510833
ls
#1573510840
vi ramps_P_2_3.sh 
#1573510883
pwd
#1573510886
cd ..
#1573510895
cd P_1_4
#1573510896
ls
#1573510901
pwd
#1573511082
ls
#1573511087
cd Equilibriums/
#1573511088
ls
#1573511099
vi eq_P14.sh 
#1573511158
sbatch eq_P14.sh 
#1573511178
squeue -u a.jefc
#1573512664
cd ..
#1573512674
cd P_2_3/
#1573512677
ls
#1573512687
cd Equilibriums/
#1573512688
ls
#1573512691
cd ..
#1573512693
ls
#1573512698
rm -r Equilibriums/
#1573512701
pwd
#1573512965
ls
#1573512968
cd Equilibriums/
#1573512969
ls
#1573512977
vi eq_P23.sh 
#1573512993
sbatch eq_P23.sh 
#1573513004
squeue -u a.jefc
#1573514095
ls
#1573514099
cd ..
#1573514108
ls P_1_8/
#1573514121
cd P_1_8/
#1573514125
cd Equilibriums/
#1573514125
ls
#1573514128
cd ..
#1573514130
rm Equilibriums/
#1573514131
ls
#1573514136
rm -r Equilibriums/
#1573514138
ls
#1573514140
cd ..
#1573514141
ls
#1573514148
cd P_1_8/
#1573514150
pwd
#1573514251
squeue -u a.jefc
#1573514279
ls
#1573514282
cd Equilibriums/
#1573514283
ls
#1573514288
vi eq_P18.sh 
#1573514298
sbatch eq_P18.sh 
#1573514583
vi slurm-624136.out 
#1573515321
vi eq_P18.sh 
#1573515330
vi Equilibrium_50.py 
#1573515455
vi Equilibrium_52.py 
#1573515489
vi Equilibrium_54.py 
#1573515533
vi Equilibrium_56.py 
#1573515562
vi Equilibrium_58.py 
#1573515604
vi Equilibrium_60.py 
#1573515635
vi Equilibrium_62.py 
#1573515685
vi Equilibrium_64.py 
#1573515710
vi Equilibrium_66.py 
#1573515818
vi Equilibrium_68.py 
#1573515853
vi Equilibrium_70.py 
#1573515907
sbatch eq_P18.sh 
#1573515932
squeue -u a.jefc
#1573519168
exit
#1573522508
ls
#1573522522
cd Little_system/NP_and_mesogens/
#1573522523
ls
#1573522556
cd P_2_3/
#1573522559
ls
#1573522562
cd Equilibriums/
#1573522563
ls
#1573522587
vi Equilibrium_52.py 
#1573522624
vi Equilibrium_54.py 
#1573522671
vi Equilibrium_56.py 
#1573522708
vi Equilibrium_58.py 
#1573522740
vi Equilibrium_60.py 
#1573522770
vi Equilibrium_62.py 
#1573522796
vi Equilibrium_64.py 
#1573522819
vi Equilibrium_66.py 
#1573522849
vi Equilibrium_68.py 
#1573522874
vi Equilibrium_70.py 
#1573522939
sbatch eq_P23.sh 
#1573522953
squeue -u a.jefc
#1573522962
cd ..
#1573522971
cd P_1_4/Equilibriums/
#1573522972
ls
#1573522996
vi Equilibrium_52.py 
#1573523014
vi Equilibrium_54.py 
#1573523038
vi Equilibrium_56.py 
#1573523059
vi Equilibrium_58.py 
#1573523083
vi Equilibrium_62.py 
#1573523102
vi Equilibrium_64.py 
#1573523130
vi Equilibrium_66.py 
#1573523152
vi Equilibrium_68.py 
#1573523179
vi Equilibrium_70.py 
#1573523229
sbatch eq_P14.sh 
#1573523233
cd ..
#1573523253
cd P_1_8/
#1573523257
cd Equilibriums/
#1573523258
ls
#1573523270
vi Equilibrium_50.py 
#1573523298
vi Equilibrium_52.py 
#1573523322
vi Equilibrium_54.py 
#1573523345
vi Equilibrium_56.py 
#1573523363
vi Equilibrium_58.py 
#1573523380
vi Equilibrium_60.py 
#1573523405
vi Equilibrium_62.py 
#1573523428
vi Equilibrium_64.py 
#1573523449
vi Equilibrium_66.py 
#1573523468
vi Equilibrium_68.py 
#1573523486
vi Equilibrium_70.py 
#1573523526
sbatch eq_P18.sh 
#1573523529
cd ..
#1573523543
vi P_3_3/
#1573523549
ls
#1573523560
squeue -u a.jefc
#1573523575
cd P_2_8/Equilibriums/
#1573523575
ls
#1573523589
cd ..
#1573523589
ls
#1573523591
cd Equilibriums/
#1573523592
ls
#1573523594
cd ..
#1573523599
cd P_3_3/
#1573523605
ls
#1573526214
squeue -u a.jefc
#1573569259
ls
#1573569263
cd Little_system/
#1573569281
cd NP_and_mesogens/P_1_8/Equilibriums/
#1573569282
ls
#1573569305
vi Equilibrium_60.py 
#1573569326
vi Equilibrium_62.py 
#1573569353
vi eq_P18.sh 
#1573569387
sbatch eq_P18.sh 
#1573569394
squeue -u a.jefc
#1573570521
pwd
#1573570561
ls -l
#1573570998
vi Equilibrium_60.py 
#1573571035
sbatch eq_P18.sh 
#1573571375
squeue -u a.jefc
#1573571392
scancel 624340
#1573571397
scancel 624339
#1573571399
squeue -u a.jefc
#1573574878
ls
#1573576023
pwd
#1573576185
cd ..
#1573576195
cd P_1_4/Equilibriums/
#1573576196
ls
#1573576235
clear
#1573576238
ls
#1573576265
cp Equilibrium_52.py Equilibrium_50.py
#1573576289
vi Equilibrium_50.py 
#1573576342
cp Equilibrium_62.py Equilibrium_60.py
#1573576346
vi Equilibrium_60.py 
#1573576383
vi eq_P14.sh 
#1573576415
sbatch eq_P14.sh 
#1573576422
squeue -u a.jefc
#1573577147
vi eq_P14.sh 
#1573577335
squeue -u a.jefc
#1573578897
clear
#1573578898
pwd
#1573578919
cp Equilibrium_58.py Equilibrium_57.py
#1573578937
cp Equilibrium_60.py Equilibrium_59.py
#1573578951
cp Equilibrium_62.py Equilibrium_61.py
#1573578958
cp Equilibrium_64.py Equilibrium_63.py
#1573578969
cp Equilibrium_66.py Equilibrium_65.py
#1573578975
cp Equilibrium_68.py Equilibrium_67.py
#1573578983
cp Equilibrium_70.py Equilibrium_69.py
#1573578994
vi Equilibrium_57.py 
#1573579038
vi Equilibrium_59.py 
#1573579174
vi Equilibrium_57.py 
#1573579203
vi Equilibrium_61.py 
#1573579238
vi Equilibrium_63.py 
#1573579271
vi Equilibrium_61.py 
#1573579293
vi Equilibrium_65.py 
#1573579324
vi Equilibrium_67.py 
#1573579362
vi Equilibrium_69.py 
#1573579397
vi Equilibrium_57.py 
#1573579409
vi Equilibrium_59.py 
#1573579418
vi Equilibrium_61.py 
#1573579428
vi Equilibrium_63.py 
#1573579437
vi Equilibrium_64.py 
#1573579442
vi Equilibrium_65.py 
#1573579452
vi Equilibrium_67.py 
#1573579459
vi Equilibrium_69.py 
#1573579471
vi eq_P14.sh 
#1573579571
clear
#1573579576
ls -l
#1573579597
sbatch eq_P14.sh 
#1573579605
squeue -u a.jefc
#1573584455
clear
#1573584457
ls -l
#1573584466
vi Equilibrium_67.py 
#1573584495
vi Equilibrium_65.py 
#1573584527
vi eq_P14.sh 
#1573584546
sbatch eq_P14.sh 
#1573584662
squeue -u a.jefc
#1573585123
vi slurm-624463.out 
#1573585173
clear
#1573585178
ls
#1573585507
vi Equilibrium_67.py 
#1573585527
vi eq_P14.sh 
#1573585535
sbatch eq_P14.sh 
#1573585715
squeue -u a.jefc
#1573592924
pwd
#1573592927
cd --
#1573592928
ls
#1573592933
cd Big_system/
#1573592934
ls
#1573592937
cd NP_and_Mesogens/
#1573592939
ls
#1573592950
vi Equilibrium_T_5_0.py 
#1573601790
cd --
#1573601800
ls
#1573607621
cd Little_system/NP_and_mesogens/P_exit
#1573607624
exit
#1573679540
cd Little_system/NP_and_mesogens/P_1_8/Ramps/
#1573679541
ls
#1573679642
cd ..
#1573679643
ls
#1573679646
cd ..
#1573679647
ls
#1573679651
cd P_1_4/
#1573679652
ls
#1573679654
cd Ramps/
#1573679655
ls
#1573679661
cd ..
#1573679667
cd P_3_3/
#1573679668
ls
#1573679670
cd Ramps/
#1573679671
ls
#1573679675
cd Temperature_ramps/
#1573679678
ls
#1573679691
vi Ramp_5_2.py 
#1573679728
vi Ramp_5_4.py 
#1573679735
vi Ramp_5_6.py 
#1573679743
vi Ramp_5_8.py 
#1573679762
vi Ramp_6_0.py 
#1573679777
vi Ramp_6_2.py 
#1573679797
vi Ramp_6_4.py 
#1573681419
ls
#1573681453
cd Little_system/NP_and_mesogens/P_1_8/Ramps/
#1573681453
ls
#1573681548
cd ..
#1573681559
cd P_1_4/Ramps/
#1573681560
ls
#1573681571
cd ..
#1573681583
cd P_1_8/Ramps/
#1573681584
ls
#1573681589
pwd
#1573681732
ls
#1573681755
mv Temperature\ Ramps/ Temperature
#1573681757
ls
#1573681760
cd Temperature/
#1573681761
pwd
#1573681764
ls
#1573681773
vi r_P18.sh 
#1573681792
sbatch r_P18.sh 
#1573681801
squeue -u a.jefc
#1573683096
pwd
#1573683684
ls
#1573683694
cd Vi Ramp_66.py 
#1573683703
vi Ramp_66.py 
#1573683745
vi Ramp_68.py 
#1573683781
vi Ramp_70.py 
#1573683819
vi Ramp_72.py 
#1573683906
vi Ramp_74.py 
#1573683933
vi Ramp_76.py 
#1573683960
vi Ramp_78.py 
#1573683987
vi Ramp_80.py 
#1573684017
vi r_P18.sh 
#1573684030
sbatch r_P18.sh 
#1573684174
squeue -u a.jefc
#1573686422
vi Ramp_74.py 
#1573686453
vi Ramp_76.py 
#1573686472
vi Ramp_78.py 
#1573686488
vi r_P18.sh 
#1573686506
sbatch r_P18.sh 
#1573686639
squeue -u a.jefc
#1573686834
vi r_P18.sh 
#1573686973
vi slurm-624976.out 
#1573688512
vi Ramp_74.py 
#1573688535
sbatch r_P18.sh 
#1573688734
squeue -u a.jefc
#1573689787
cd Little_system/NP_and_mesogens/P_1_8/Ramps/Temperature/
#1573689788
ls
#1573689798
vi Ramp_76.py 
#1573689819
vi Ramp_78.py 
#1573689839
vi Ramp_80.py 
#1573689859
vi r_P18.sh 
#1573689867
sbatch r_P18.sh 
#1573690126
squeue -u a.jefc
#1573690777
vi Ramp_76.py 
#1573690799
vi Ramp_78.py 
#1573690818
vi Ramp_80.py 
#1573690839
sbatch r_P18.sh 
#1573691004
squeue -u a.jefc
#1573691282
cd Little_system/NP_and_mesogens/P_1_8/Ramps/Temperature/
#1573691290
vi slurm-625048.out 
#1573691665
vi Ramp_80.py 
#1573691696
vi r_P18.sh 
#1573691708
sbatch r_P18.sh 
#1573693038
exit
#1573746932
cd Little_system/NP_and_mesogens/P_1_8/Ramps/Temperature/
#1573746933
ls
#1573746951
cd Ramp_80.py 
#1573746959
vi Ramp_80.py 
#1573746982
vi r_P18.sh 
#1573746989
sbatch r_P18.sh 
#1573756513
clear
#1573756516
pwd
#1573756533
cd Little_system/NP_and_mesogens/P_1_8/Ramps/Temperature/
#1573756534
ls
#1573756542
vi Ramp_80.py 
#1573756596
sbatch r_P18.sh 
#1573756723
vi slurm-625228.out 
#1573756739
vi Ramp_80.py 
#1573756763
sbatch r_P18.sh 
#1573757059
vi slurm-625230.out 
#1573757071
vi Ramp_80.py 
#1573757092
sbatch r_P18.sh 
#1573757215
squeue -u a.jefc
#1573757312
ls
#1573757708
vi Ramp_80.py 
#1573757736
sbatch r_P18.sh 
#1573757840
squeue -u a.jefc
#1573758396
vi Ramp_80.py 
#1573758419
sbatch r_P18.sh 
#1573758964
squeue -u a.jefc
#1573762596
ls
#1573762600
cd ..
#1573762616
cd P_1_4/Equilibriums/
#1573762617
ls
#1573762634
vi Equilibrium_70.py 
#1573762664
vi Equilibrium_68.py 
#1573762686
vi Equilibrium_66.py 
#1573762711
vi Equilibrium_64.py 
#1573762732
vi Equilibrium_62.py 
#1573762753
vi Equilibrium_60.py 
#1573764288
cd ..
#1573764295
cd P_1_8/
#1573764296
ls
#1573764298
cd Equilibriums/
#1573764299
ls
#1573764351
vi eq_P18.sh 
#1573764368
sbatch eq_P18.sh 
#1573764373
cd --
#1573764377
squeue -u a.jefc
#1573767210
cd Little_system/NP_and_mesogens/P_1_8/Equilibriums/
#1573767218
vi slurm-625333.out 
#1573774742
ls
#1573774750
rm Equilibrium_50.py 
#1573774753
rm Equilibrium_52.py 
#1573774756
rm Equilibrium_54.py 
#1573774758
rm Equilibrium_56.py 
#1573774761
rm Equilibrium_58.py 
#1573774767
rm Equilibrium_60.py 
#1573774790
rm T_5.0_P_1.8_equilibrium.gsd
#1573774794
rm T_5.0_P_1.8_equilibrium.log
#1573774801
rm T_5.2_P_1.8_equilibrium.log
#1573774806
rm T_5.2_P_1.8_equilibrium.gsd
#1573774822
rm T_5.4_P_1.8_equilibrium.gsd
#1573774827
rm T_5.4_P_1.8_equilibrium.log
#1573774835
rm T_5.6_P_1.8_equilibrium.log
#1573774839
rm T_5.6_P_1.8_equilibrium.gsd
#1573774843
rm T_5.8_P_1.8_equilibrium.gsd
#1573774847
rm T_5.8_P_1.8_equilibrium.log
#1573774855
rm T_6.0_P_1.8_equilibrium.log
#1573774858
rm T_6.0_P_1.8_equilibrium.gsd
#1573774873
rm T_CM_5.0_P_1.8_equilibrium.gsd 
#1573774878
rm T_CM_5.2_P_1.8_equilibrium.gsd 
#1573774883
rm T_CM_5.4_P_1.8_equilibrium.gsd 
#1573774889
rm T_CM_5.6_P_1.8_equilibrium.gsd 
#1573774894
rm T_CM_5.8_P_1.8_equilibrium.gsd 
#1573774903
rm T_CM_6.0_P_1.8_equilibrium.gsd 
#1573774904
ls
#1573774915
rm *.out
#1573774916
ls
#1573774936
vi Equilibrium_70.py 
#1573774944
vi Equilibrium_68.py 
#1573774954
vi Equilibrium_70.py 
#1573775008
vi eq_P18.sh 
#1573775024
vi Equilibrium_72.py 
#1573775052
vi Equilibrium_74.py 
#1573775078
vi Equilibrium_76.py 
#1573775104
sbatch eq_P18.sh 
#1573775254
squeue -u a.jefc
#1573776120
vi slurm-625410.out 
#1573777013
vi Equilibrium_70.py 
#1573777041
vi Equilibrium_72.py 
#1573777062
vi Equilibrium_74.py 
#1573777081
vi Equilibrium_76.py 
#1573777103
vi Equilibrium_78.py 
#1573777138
vi Equilibrium_80.py 
#1573777169
sbatch eq_P18.sh 
#1573777515
squeue -u a.jefc
#1573782085
exit
#1573834723
cd Little_system/NP_and_mesogens/P_1_8/Equilibriums/
#1573834724
ls
#1573834734
vi Equilibrium_70.py 
#1573834816
vi Equilibrium_72.py 
#1573834828
vi eq_P18.sh 
#1573834885
sbatch eq_P18.sh 
#1573834912
squeue -u a.jefc
#1573834990
vi Equilibrium_70.py 
#1573835011
sbatch eq_P18.sh 
#1573835026
vi slurm-625514.out 
#1573835042
squeue -u a.jefc
#1573835246
vi slurm-625515.out 
#1573835276
clear
#1573835278
ls
#1573835429
vi Equilibrium_70.py 
#1573835460
sbatch eq_P18.sh 
#1573835802
squeue -u .jefc
#1573835812
squeue -u a.jefc
#1573836160
vi Equilibrium_72.py 
#1573836192
vi eq_P18.sh 
#1573836215
sbatch eq_P18.sh 
#1573836346
squeue -u a.jefc
#1573836434
vi slurm-625518.out 
#1573836516
vi Equilibrium_72.py 
#1573836537
sbatch eq_P18.sh 
#1574097384
ls
#1574097393
cd Little_system/
#1574097397
ls -la
#1574097496
exit
#1574202175
ls
#1574202177
cd Little_system/
#1574202183
ls
#1574202186
cd Pure_system/
#1574202187
ls
#1574202254
pwd
#1574790757
ls
#1574790760
exit
#1575319559
ls
#1575319562
cd Little_system/
#1575319564
ls
#1575321898
cd NP_and_mesogens/
#1575321899
ls
#1575321904
cd P_1_8/
#1575321905
ls
#1575321908
cd Ramps/
#1575321910
ls
#1575321912
cd Temperature/
#1575321913
ls
#1575321922
vi r_P18.sh 
#1575322219
pwd
#1575322490
ls
#1575322512
cd NP-with-LC/
#1575322513
ls
#1575322525
sbatch r_P18.sh 
#1575322531
squeue -u a.jefc
#1575322942
ls
#1575322951
vi slurm-630475.out 
#1575322974
vi Ramp08
#1575322978
ls
#1575322985
rm Ramp08
#1575322992
vi Ramp08.py 
#1575323026
vi Ramp10.py 
#1575323054
vi Ramp12.py 
#1575323087
vi Ramp14.py 
#1575323117
vi Ramp16.py 
#1575323141
vi Ramp18.py 
#1575323168
vi r_P18.sh 
#1575323181
sbatch r_P18.sh 
#1575323189
squeue -u a.jefc
#1575325625
vi slurm-630477.out 
#1575325719
pwd
#1575326120
clear
#1575326124
vi Ramp14.py 
#1575326144
vi Ramp16.py 
#1575326168
vi Ramp18.py 
#1575326186
vi r_P18.sh 
#1575326195
sbatch r_P18.sh 
#1575326251
squeue -u a.jefc
#1575327146
clear
#1575327151
vi Ramp14.py 
#1575327167
vi Ramp16.py 
#1575327194
sbatch r_P18.sh 
#1575327386
squeue -u a.jefc
#1575328327
clear
#1575328541
vi Ramp18.py 
#1575328564
vi r_P18.sh 
#1575328572
sbatch r_P18.sh 
#1575329231
vi slurm-630497.out 
#1575329244
vi Ramp18.py 
#1575329264
sbatch r_P18.sh 
#1575329448
squeue -u a.jefc
#1575329834
vi Ramp18.py 
#1575329858
sbatch r_P18.sh 
#1575330128
vi slurm-630500.out 
#1575330478
vi Ramp18.py 
#1575330498
sbatch r_P18.sh 
#1575330892
squeue -u a.jefc
#1575331005
vi slurm-630501.out 
#1575332212
vi Ramp16.py 
#1575332229
si r_P18.sh 
#1575332235
vi r_P18.sh 
#1575332251
sbatch r_P18.sh 
#1575332325
squeue -u a.jefc
#1575332879
vi slurm-630512.out 
#1575333077
vi Ramp16.py 
#1575333097
sbatch r_P18.sh 
#1575333164
squeue -u a.jefc
#1575333406
exit
#1575381626
ls
#1575381633
cd Little_system/NP_and_mesogens/
#1575381634
ls
#1575381641
cd P_1_8/
#1575381642
ls
#1575381644
cd Ramps/
#1575381645
ls
#1575381686
cd --
#1575388888
 ls
#1575388893
cd Little_system/
#1575388912
ls
#1575388916
cd NP_and_mesogens/
#1575388918
ls
#1575388923
cd P_1_8/
#1575388924
ls
#1575388926
cd Ramps/
#1575388926
ls
#1575388928
cd Temperature/
#1575388929
ls
#1575388931
cd NP-with-LC/
#1575388932
ls
#1575388957
vi slurm-630516.out 
#1575389468
vi Ramp18.py 
#1575389500
si r_P18.sh 
#1575389505
vi r_P18.sh 
#1575389514
sbatch r_P18.sh 
#1575389537
squeue -u a.jefc
#1575389824
cd ..
#1575389825
ls
#1575389827
cd ..
#1575389833
ls
#1575389835
cd ..
#1575389837
ls
#1575389839
cd ..
#1575389841
ls
#1575389846
cd Big_system/
#1575389847
ls
#1575389850
cd NP_and_Mesogens/
#1575389851
ls
#1575389859
vi Equilibrium_T_5_0.py 
#1575393146
cd --
#1575393163
cd Little_system/NP_and_mesogens/P_1_8/Ramps/
#1575393164
ls
#1575393166
cd Temperature/
#1575393167
ls
#1575393169
cd NP-with-LC/
#1575393169
ls
#1575393177
vi Ramp18.py 
#1575393201
sbatch r_P18.sh 
#1575393207
squeue -u a.jefc
#1575393808
vi slurm-630745.out 
#1575393817
vi Ramp18.py 
#1575393836
sbatch r_P18.sh 
#1575393932
squeue -u a.jefc
#1575394382
vi slurm-630770.out 
#1575394699
vi Ramp18.py 
#1575394716
sbatch r_P18.sh 
#1575394760
squeue -u a.jefc
#1575395123
vi Ramp18.py 
#1575395160
sbatch r_P18.sh 
#1575395305
squeue -u a.jefc
#1575408044
cd --
#1575408045
ls
#1575408052
cd Big-System/
#1575408053
ls
#1575408060
cd --
#1575408064
cd Big_system/
#1575408065
ls
#1575408068
cd NP_and_Mesogens/
#1575408069
ls
#1575408087
mkdir P_1_4
#1575408089
ls
#1575408101
mv *.py P_1_4/
#1575408108
mv *.gsd P_1_4/
#1575408114
mv *.log P_1_4/
#1575408115
ls
#1575408122
mv *.out P_1_4/
#1575408123
ls
#1575408136
mv *.sh P_1_4/
#1575408138
ls
#1575408144
pwd
#1575408148
cd --
#1575408153
cd Big-System/
#1575408174
cd --
#1575408194
mv Big-System/Equilibrium_P_64.py Big_system/NP_and_Mesogens/
#1575408205
mv Big-System/T_CM\&NP_6.4_P_1.8_ramp.gsd Big_system/NP_and_Mesogens/
#1575408212
cd Big_system/NP_and_Mesogens/
#1575408213
ls
#1575408221
mkdir P_1_8
#1575408237
mv *.py P_1_8/
#1575408243
mv *.gsd P_1_8/
#1575408245
ls
#1575408256
cd P_1_4/
#1575408257
ls
#1575408265
cd ..
#1575408299
cp P_1_4/send_job_5_0.sh P_1_8/
#1575408300
ls
#1575408303
cd P_1_8/
#1575408305
ls
#1575408312
vi send_job_5_0.sh 
#1575408345
mv Equilibrium_P_64.py Equilibrium_P_64.py Equilibrium_T_64.py 
#1575408360
mv Equilibrium_P_64.py Equilibrium_T_64.py
#1575408362
ls
#1575408365
vi send_job_5_0.sh 
#1575408388
mv send_job_5_0.sh eq_P18.sh
#1575408391
vi eq_P18.sh 
#1575408414
sbatch eq_P18.sh 
#1575408420
squeue -u a.jefc
#1575408873
vi slurm-630966.out 
#1575408897
vi Equilibrium_T_64.py 
#1575408924
sbatch eq_P18.sh 
#1575408995
squeue -u a.jefc
#1575413629
clear
#1575413846
squeue -u a.jefc
#1575421138
exit
#1575470940
ls
#1575470946
cd Big_system/
#1575470947
ls
#1575470949
cd NP_and_Mesogens/
#1575470950
ls
#1575470954
cd P_1_8/
#1575470956
ls
#1575470973
vi slurm-630974.out 
#1575471234
pwd
#1575506400
exit
#1576021110
ls
#1576021127
cd Big
#1576021131
cd Big_system/
#1576021132
ls
#1576021135
cd NP_and_Mesogens/
#1576021136
ls
#1576021140
cd P_1_8/
#1576021141
ls
#1576021155
cd ..
#1576021156
pwd
#1576022018
cd P_1_8/
#1576022019
s
#1576022020
ls
#1576022024
cd eq_P18.sh 
#1576022027
vi eq_P18.sh 
#1576022431
clear
#1576023359
pwd
#1576023635
ls
#1576023684
clear
#1576023688
ls
#1576023707
rm -r P_1_8/
#1576023715
vi eq_P18.sh 
#1576023734
rm eq_P18.sh 
#1576023744
m eq_18.sh eq_P18.sh
#1576023750
mv eq_18.sh eq_P18.sh
#1576023751
ls
#1576023755
vi eq_P18.sh 
#1576023766
rm *.out
#1576023767
ls
#1576023771
ls -l
#1576023793
rm T_6.4_P_1.8_equilibrium.gsd
#1576023797
rm T_6.4_P_1.8_equilibrium.log
#1576023811
rm T_CM_6.4_P_1.8_equilibrium.log 
#1576023814
ls -l
#1576023839
rm Equilibrium_T_64.py 
#1576023843
ls -l
#1576023853
sbatch eq_P18.sh 
#1576023861
vi eq_P18.sh 
#1576023891
wq
#1576023911
cd --
#1576023913
ls
#1576023915
cd Little_system/
#1576023916
ls
#1576023917
cd NP_and_mesogens/
#1576023918
ls
#1576023923
cd P_1_4/
#1576023923
l
#1576023925
ls
#1576023930
cd Equilibriums/
#1576023932
Ls
#1576023935
ls
#1576023942
vi eq_P14.sh 
#1576023998
cd --
#1576024006
cd Big_system/NP_and_Mesogens/P_1_8/
#1576024007
ls
#1576024011
vi eq_P18.sh 
#1576024045
sbatch eq_P18.sh 
#1576024062
cd --
#1576024074
cd Little_system/NP_and_mesogens/P_1_4/Equilibriums/
#1576024076
ls
#1576024082
vi eq_P14.sh 
#1576024103
cd --
#1576024114
cd Big_system/NP_and_Mesogens/P_1_8/
#1576024116
ls
#1576024122
vi eq_P18.sh 
#1576024134
sbatch eq_P18.sh 
#1576024142
squeue -u a.jefc
#1576025411
exit
#1576077978
squeue -u a.jefc
#1576594597
ls
#1576594617
cd Big_system/
#1576594618
ls
#1576594621
cd NP_and_Mesogens/
#1576594621
ls
#1576594626
cd P_1_4/
#1576594627
ls
#1576594638
cd ..
#1576594642
cd P_1_8/
#1576594643
ls
#1576594650
vi slurm-632329.out 
#1576594670
cd ..
#1576594678
cd P_1_8/
#1576594679
ls
#1576594685
cd ..
#1576594689
cd P_1_4/
#1576594690
ls
#1576594698
vi send_job.sh 
#1576594726
cp pwd
#1576594730
pwd
#1576594753
cp send_job.sh NP_and_Mesogens/P_1_4
#1576594759
cp send_job.sh NP_and_Mesogens/P_1_8
#1576594763
cd ..
#1576594766
pwd
#1576594810
cd --
#1576594811
ls
#1576594851
cp Big_system/NP_and_Mesogens/P_1_4/send_job.sh Big_system/NP_and_Mesogens/P_1_8/
#1576594863
cd Big_system/NP_and_Mesogens/P_1_8/
#1576594863
ls
#1576594874
vi send_job.sh 
#1576594942
vi eq_P18.sh 
#1576594966
sbatch eq_P18.sh 
#1576594972
squeue -u a.jefc
#1576602118
clear
#1576602120
squeue -u a.jefc
#1576602144
vi slurm-633759.out 
#1576602310
squeue -u a.jefc
#1576606819
clear
#1576607678
squeue -u a.jefc
#1576608011
clear
#1576608366
squeue -u a.jefc
#1576617995
clear
#1576617998
squeue -u a.jefc
#1576618658
clear
#1576618778
squeue -u a.jefc
#1576622038
cd ..
#1576622041
cd --
#1576622042
ls
#1576622046
cd Little_system/
#1576622047
ls
#1576622051
cd NP_and_mesogens/
#1576622052
ls
#1576622059
pwd
#1576622147
ls
#1576622153
cd P_2_3/
#1576622154
ls
#1576622159
cd Equilibriums/
#1576622160
ls
#1576622177
cd ..
#1576622183
cd P_23/
#1576622184
ls
#1576622235
cd --
#1576622268
cp Little_system/NP_and_mesogens/P_2_3/Equilibriums/eq_P23.sh Little_system/NP_and_mesogens/P_23/
#1576622276
cd Little_system/NP_and_mesogens/P_23/
#1576622277
ls
#1576622281
vi eq_P23.sh 
#1576622351
sbatch eq_P23.sh 
#1576622358
squeue -u a.jefc
#1576622711
cd --
#1576622943
squeue -u a.jefc
#1576623007
pwd
#1576623022
squeue -u a.jefc
