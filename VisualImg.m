promt = 'Enter the class label that you want to project eg. 0,1,2,....9\n';
cl= input(promt,'s');

if cl =='0'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train0(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
elseif cl =='1'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train1(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
elseif cl =='2'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train2(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
elseif cl =='3'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train3(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
elseif cl =='4'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train4(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
elseif cl =='5'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train5(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
elseif cl =='6'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train6(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
elseif cl =='7'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train7(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
elseif cl =='8'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train8(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
elseif cl =='9'
    promt = 'Enter the image number\n';
    img =input(promt);
    x=train9(img,:);
    image=reshape(x,[28,28]);
    imshow(image');
 end
        
        
        
    



