function output = FeedForward(input,weight,bias)
    output = weight*input + bias;
    output = sigmf(output,[1,0]);
end
