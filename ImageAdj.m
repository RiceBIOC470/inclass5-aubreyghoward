% (b) Write a second function where the fraction of pixels to display as
% black or white are equal and can be specified as a second input to this
% function. 


function [adjimg]=ImageAdj(imgin,low,high)
%will fix an image for you so that the bottom and top 1% of the pixals are 
%adjusted white/black as defined by the user.
    img = imread(imgin);
    adjimg = imshow(img,stretchlim(img,[low,high]))
end
