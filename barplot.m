clc
% clear all
names = {"06-0501.mat","06-0559.mat","06-0662.mat","06-2004.mat","06-2053.mat","06-3013.mat","06-3021.mat","06-3024.mat","06-3030.mat","06-3042.mat","06-7455.mat","06-7491.mat","06-7493.mat","06-8149.mat","06-8151.mat","06-8534.mat","06-8535.mat","06-9048.mat","06-9107.mat","06-B443.mat"};
list_of_total_GHG = cell(length(names),1);
Design_1_total_GHG_50 = zeros(length(names),1);
for i = 1:length(names)
    load(names{i});
    list_of_total_GHG{i} = sum(Design_1_CO2eq_median,2);
    Design_1_total_GHG_50(i) = list_of_total_GHG{i}(end)./Median_AADTT;
end
boxchart(Design_1_total_GHG_50);
ylabel("Road Efficiency")
hold on
scatter(ones(size(Design_1_total_GHG_50)).*(1+(rand(size(Design_1_total_GHG_50))-0.5)/10),Design_1_total_GHG_50,'r','x')
hold off