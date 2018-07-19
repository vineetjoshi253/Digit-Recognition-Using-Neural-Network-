function [NewW1,NewW2,NewB1,NewB2] =WrapFeedForward(img,Out,weight1,weight2,bias1,bias2,alpha)
  
    HiddenOut= FeedForward(img,weight1,bias1);
    OutputOut= FeedForward(HiddenOut,weight2,bias2);
    
    DeltaOutput = (OutputOut-Out).*OutputOut.*(1-OutputOut);
    DeltaHidden= (DeltaOutput'*weight2)';

    deltaW2 = -alpha*(HiddenOut*DeltaOutput')';
    deltaW1 = -alpha*(img*DeltaHidden')';

    NewW1 = weight1+deltaW1;
    NewW2 = weight2+deltaW2;
    NewB1 = bias1 -alpha * DeltaHidden;
    NewB2 = bias2 -alpha * DeltaOutput;
end

