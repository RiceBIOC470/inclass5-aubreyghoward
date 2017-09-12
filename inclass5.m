%Inclass assignment 5. 

% 1. (a) Write a function that reads in an image and displays it so that 1%
% of the pixels are black and 1% of the pixels are white. Hint: your
% function can call the stretchlim function, see the help for that function.
clear all
img = ImageRead('Rosalind_Franklin.jpg');

% (b) Write a second function where the fraction of pixels to display as
% black or white are equal and can be specified as a second input to this
% function. 
clear all
img = ImageAdj('Rosalind_Franklin.jpg',0.2,0.8);

%(c) Redo part (b) but make the option to specify the fraction
% of black/white pixels optional with a default value of 1% if not
% specified. 

%%
img = ImageAdj2('Rosalind_Franklin.jpg',0.01,0.95)
%%
clear all
img = ImageAdj2 ('Rosalind_Franklin.jpg')
%%
img = ImageAdj2 ('Rosalind_Franklin.jpg',0.2)
%%
img = ImageAdj2 ()

%%
%2. Write a function to take the reverse complement of a DNA sequence, that
%is, returns the complementary base pair for each base, read from end
%to beginning. (e.g. the reverse compliment of ATGC is GCAT). Do not use the
%builtin MATLAB function for this. 
clear all

cdna = hwcdna('GcTaatatattat')