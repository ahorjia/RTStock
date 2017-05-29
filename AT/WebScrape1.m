clear;

historicalPriceFile = urlread(['https://finance.yahoo.com/quote/IBM/history?ltr=1']);

dateField = regexp(historicalPriceFile, '<td class="yfnc_tabledata1" nowrap aligh="right">([\d\w-]+)</td)', 'tokens');

numField = regexp(historicalPriceFile, '<td class="yfnc_tabledata1" aligh="right">([\d\.,]+</td>', 'tokens');

dates=[dateField{:}]';

op = str2double(numField (1:6:end));
hi = str2double(numField (2:6:end));
lo = str2double(numField (3:6:end));
cl = str2double(numField (4:6:end));
vol= str2double(numField (5:6:end));
adjCl=str2double(numField (6:6:end));