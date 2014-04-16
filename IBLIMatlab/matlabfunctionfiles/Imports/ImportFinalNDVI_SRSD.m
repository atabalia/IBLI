%% Import data from text file.
% Script for importing data from the following text file:
%
%    \finalNDVI\finalNDVI_LRLD.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2014/04/11 13:32:28

%% Initialize variables.
filename = strcat(filepathMain,'/finalNDVI/finalNDVI_SRSD.csv');
delimiter = ',';
startRow = 2;

%% Format string for each line of text:
%   column2: double (%f)
%	column3: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%*s%f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
preFINAL = dataArray{:, 1};
postFINAL = dataArray{:, 2};

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans;
