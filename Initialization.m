
function [TrainSet38,TestSet38,TrainLabel38,TestLabel38] = Initialization(TrainSet38,TestSet38,TrainLabel38,TestLabel38,train3,test3,train8,test8)

for i=1:11982
    if (i<=6131)
        
        TrainLabel38(i)=3;
        x=train3(i,:);
        img=reshape(x,[28,28]);
    level=graythresh(img);
    image=im2bw(img,level);
    TrainSet38(i,:,:)=image;
end

for i=1:5851
    x=train8(i,:);
    TrainLabel38(i+6131)=8;
    img=reshape(x,[28,28]);
    level=graythresh(img);
    image=im2bw(img,level);
    TrainSet38(i+6131,:,:)=image;
end

for i=1:1010
    TestLabel38(i)=3;
    x=test3(i,:);
    img=reshape(x,[28,28]);
    level=graythresh(img);
    image=im2bw(img,level);
    TestSet38(i,:,:)=image;
end

for i=1:974
    TestLabel38(i+1010)=8;
    x=test8(i,:);
    img=reshape(x,[28,28]);
    level=graythresh(img);
    image=im2bw(img,level);
    TestSet38(i+1010,:,:)=image;
end

end
