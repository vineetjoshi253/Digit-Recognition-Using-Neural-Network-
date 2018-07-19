
function [weight1,weight2,bias1,bias2]= BackPropagation(TrainSet38,TrainLabel38,momentum,neurons,EpochCount,alpha)

weight1=randn(neurons,784);
weight2=randn(10,neurons);
bias1=randn(neurons,1);
bias2=randn(10,1);
PrevWeight1=zeros(neurons,784);
PrevWeight2=zeros(10,neurons);
PrevBias1=zeros(neurons,1);
PrevBias2=zeros(10,1);
DelWeight1=zeros(neurons,784);
DelWeight2=zeros(10,neurons);
DelBias1=zeros(neurons,1);
DelBias2=zeros(10,1);
%%

for j=1:EpochCount
    
    for i= 1:11982
        Out=zeros(1,10);
        temp=TrainLabel38(i)+1;
        Out(temp)=1;
        img=TrainSet38(i,:)';
    
        
        PrevWeight1 = weight1; 
        PrevWeight2 = weight2; 
        PrevBias1 = bias1; 
        PrevBias2 = bias2;
        
        [weight1,weight2,bias1,bias2]= WrapFeedForward(img,Out',weight1,weight2,bias1,bias2,alpha);
    
        
        
        weight1 = weight1 + momentum*DelWeight1;
        weight2 = weight2 + momentum*DelWeight2;
        bias1 = bias1 + momentum*DelBias1;
        bias2 = bias2 + momentum*DelBias2;
        DelWeight1 = weight1 - PrevWeight1;
        DelWeight2 = weight2 - PrevWeight2;
        DelBias1 = bias1 - PrevBias1;
        DelBias2 = bias2 - PrevBias2;
    end

end