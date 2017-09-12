
function [adjimg] = ImageRead(inputs)
%will fix an image for you so that the bottom and top 1% of the pixals are 
%adjusted white/black.
    img = imread(inputs);
    adjimg = imshow(img,stretchlim(img))
    end