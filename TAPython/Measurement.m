clear; % make sure previously defined variables are erased.

[num, txt] = xlsread('IGE_11262001_11142007'); % read a spreadsheet named "IGE.xls" into MATLAB. 

tday=txt(2:end, 1); % the first column (starting from the second row) contains the trading days in format mm/dd/yyyy.

tday=datestr(datenum(tday, 'mm/dd/yyyy'), 'yyyymmdd'); % convert the format into yyyymmdd.

%tday=str2double(cellstr(tday)); % convert the date strings first into cell arrays and then into numeric format.

%cls=num(:, end); % the last column contains the adjusted close prices.

%[tday sortIndex]=sort(tday, 'ascend'); % sort tday into ascending order.

%cls=cls(sortIndex); % sort cls into ascending order of dates.

%dailyret=(cls(2:end)-cls(1:end-1))./cls(1:end-1); % daily returns

%excessRet=dailyret - 0.04/252; % excess daily returns = strategy returns - financing cost, assuming risk-free rate of 4% per annum and 252 trading days in a year

%sharpeRatio=sqrt(252)*mean(excessRet)/std(excessRet) % the output should be 0.7618
