function ans = Test(TestSet38,TestLabel38,weight1,weight2,bias1,bias2)


ans=0;
for i=1:1984
    img=TestSet38(i,:)';
    
    HiddenOut =FeedForward(img,weight1,bias1);
    OutputOut =FeedForward(HiddenOut,weight2,bias2);
    
    [value,index]= max(OutputOut);
    
    if (index==TestLabel38(i)+1)
        ans=ans+1;
    end
end

end
