function createfigure1(X1, Y1)
%CREATEFIGURE1(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 14-Apr-2022 08:42:42

% Create figure
figure1 = figure('NumberTitle','off','Name','Figure','Color',[1 1 1]);

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1,'DisplayName','Asp','MarkerSize',30,'Marker','.','LineWidth',1);

% Create ylabel
ylabel({'Asp Concentration (mM)'});

% Create xlabel
xlabel({'Age (years)'});

% Create title
title({'Figure 3'});

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0.876291390133966 5.00312065842665]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0.967189007813449 1.96411208473652]);
box(axes1,'on');
grid(axes1,'on');
hold(axes1,'off');
% Set the remaining axes properties
set(axes1,'FontName','Times New Roman','FontSize',15,'XTick',[0 1 2 3 4 5],...
    'XTickLabel',{'','36-44','45-54','55-64','65-74','75-89'});
% Create legend
legend(axes1,'show');

