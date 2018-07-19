TrainSet38 =zeros(11982,28,28);
TestSet38 =zeros(1984,28,28);
TrainLabel38=zeros(1,11982);
TestLabel38 =zeros(1,1984);
[TrainSet38,TestSet38,TrainLabel38,TestLabel38]=Initialization(TrainSet38,TestSet38,TrainLabel38,TestLabel38,train3,test3,train8,test8);
%%
result=0;

for i =1:2   
    neurons=100;
    alpha=0.5;
    EpochCount = 13;
    momentum=0.7;
    [weight1,weight2,bias1,bias2]= BackPropagation(TrainSet38,TrainLabel38,momentum,neurons,EpochCount,alpha);

    ans=Test(TestSet38,TestLabel38,weight1,weight2,bias1,bias2);
    disp(ans);
    result=result+ans;
end
x=result/(2 *1984);
disp(x*100);
