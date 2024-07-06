% Function that returns the list of .CSV files with maximun 5 elements
% input (path): address of the folder where the data is .CSV
% output (filenames): Complete list of .CSV file in folder
% Example: 
%   path = fullfile('./Data/');
%   filenames=FindMAT(path)
% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/
function [filenames] = FindCSV_max5(path)
    filenames = dir(fullfile(path ,'*.csv'));
    [~, reindex] = sort( str2double( regexp( {filenames.name}, '\d+', 'match', 'once' )));
    if length(reindex) > 5
        filenames = filenames(reindex(1,1:5));
    else
        filenames = filenames(reindex);
    end
    
end