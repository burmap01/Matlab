% write a script to change the words in string such that the words appear in reverse order

% first clear away any previous commands
clear all

% input a string
input = "HELLO MAN HOW ARE YOU AND HOW ARE YOU DOING";

% split the string into individual words
output = split(input);

% rearrange the strings such that the last word becomes the first
output = output(end:-1:1);

% join the individual words to form the new string
output = join(output);

% print out the original string
fprintf('The input string was \n"%s"\n \n \n', input);

% print out the reversed string
fprintf('The corresponding output is \n "%s" \n', output);



% now we'll import a data file, parse it and save it in a folder

% import the data
X = csvread('data.csv');

% select those rows from second column where values are greater than or
% equal to 3
Y = X(:,2) > 3.0;
Z = X(Y,:);

% the present working directory is Desktop. Check to see if 'Results'
% folder exists in Desktop. If not, then create one to save the output
if exist('Results')
    csvwrite('Results\reduced_data.csv',Z);
else
    mkdir Results
    csvwrite('Results\reduced_data.csv',Z);
end





