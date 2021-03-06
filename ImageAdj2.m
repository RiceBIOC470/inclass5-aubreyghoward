%(c) Redo part (b) but make the option to specify the fraction
% of black/white pixels optional with a default value of 1% if not
% specified. 



function [adjimg] = ImageAdj2(imgin,low,high)
%will fix an image for you so that the bottom and top % of the pixals are 
%adjusted white/black as defined by the user.
if nargin == 3
    img = imread(imgin);
    filter = stretchlim(img,[low high]);
    filter = filter([1 2]);
    adjimg = imshow(img,filter);
elseif nargin == 2
    img = imread(imgin);
    filter = stretchlim(img,[low 1]);
    filter = filter([1 2]);
    adjimg = imshow(img,filter);
    disp('Check the adjustmant bounds')
elseif nargin == 1
    adjimg = ImageRead(imgin)
elseif nargin == 0
    adjimg = ('please select an image to adjust');
end
end

function [adjimg] = ImageRead(inputs)
%will fix an image for you so that the bottom and top 1% of the pixals are 
%adjusted white/black.
    img = imread(inputs);
    filter = stretchlim(img);
    filter = filter([1 2]);
    adjimg = imshow(img,filter);
end
    