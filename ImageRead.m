
function [adjimg] = ImageRead(inputs)
%will fix an image for you so that the bottom and top 1% of the pixals are 
%adjusted white/black.
    img = imread(inputs);
    filter = stretchlim(img);
    filter = filter([1 2]);
    adjimg = imshow(img,filter);
end
    
% 1. (a) Write a function that reads in an image and displays it so that 1%
% of the pixels are black and 1% of the pixels are white. Hint: your
% function can call the stretchlim function, see the help for that function.