clc
clear
load('F:\OneDrive - University of Tasmania\Structuring_thesis\Chapter1\ONLY GHD-SVD transmission results_withoutzscore\GHDtransmissionwithoutzscore.mat');
load('F:\OneDrive - University of Tasmania\Structuring_thesis\Chapter1\ONLY GHD-SVD transmission results_withoutzscore\GHDvulnerabilitywithoutzscore.mat');
load('F:\OneDrive - University of Tasmania\Structuring_thesis\Chapter1\NEW_SVD_experimenting\SVD_revised_corrected\SVDtransmissionwithoutzscore.mat');
load('F:\OneDrive - University of Tasmania\Structuring_thesis\Chapter1\NEW_SVD_experimenting\SVD_revised_corrected\SVDvulnerabilitywithoutzscore.mat');
ghdtoraw=movmean(GHDtransmissionraw,250);
ghdfromraw=movmean(GHDvulnerabilityraw,250);
svdtoraw=movmean(SVDtransmissionraw,250);
svdfromraw=movmean(SVDvulnerabilityraw,250);
ghdto=zscore(ghdtoraw);
ghdfrom=zscore(ghdfromraw);
svdto=zscore(svdtoraw);
svdfrom=zscore(svdfromraw);

%% Transmission

%% AC

YMatrix1= [ghdto(:,1) svdto(:,1)];
YMatrix2= [ghdto(:,2) svdto(:,2)];
YMatrix3= [ghdto(:,3) svdto(:,3)];
YMatrix4= [ghdto(:,4) svdto(:,4)];
YMatrix5= [ghdto(:,5) svdto(:,5)];
YMatrix6= [ghdto(:,6) svdto(:,6)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('India');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Malaysia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Kuwait');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('South Korea');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('The Phillipines');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Thailand');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('AC_TRANSMISSION.fig');


%% EC

YMatrix1= [ghdto(:,7) svdto(:,7)];
YMatrix2= [ghdto(:,8) svdto(:,8)];
YMatrix3= [ghdto(:,9) svdto(:,9)];
YMatrix4= [ghdto(:,10) svdto(:,10)];
YMatrix5= [ghdto(:,11) svdto(:,11)];
YMatrix6= [ghdto(:,12) svdto(:,12)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Germany');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Chile');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('France');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('China');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('UK');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Australia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('EC_TRANSMISSION.fig');

%% GC

YMatrix1= [ghdto(:,13) svdto(:,13)];
YMatrix2= [ghdto(:,14) svdto(:,14)];
YMatrix3= [ghdto(:,15) svdto(:,15)];
YMatrix4= [ghdto(:,16) svdto(:,16)];
YMatrix5= [ghdto(:,17) svdto(:,17)];
YMatrix6= [ghdto(:,18) svdto(:,18)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Greece');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Portugal');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Ireland');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Belgium');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Croatia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Austria');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('GC_TRANSMISSION.fig');

%% OED

YMatrix1= [ghdto(:,19) svdto(:,19)];
YMatrix2= [ghdto(:,20) svdto(:,20)];
YMatrix3= [ghdto(:,21) svdto(:,21)];
YMatrix4= [ghdto(:,22) svdto(:,22)];
YMatrix5= [ghdto(:,23) svdto(:,23)];
YMatrix6= [ghdto(:,24) svdto(:,24)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('The USA');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Canada');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Russia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Norway');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Japan');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('New Zealand');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('OED_TRANSMISSION.fig');

%% OEE

YMatrix1= [ghdto(:,25) svdto(:,25)];
YMatrix2= [ghdto(:,26) svdto(:,26)];
YMatrix3= [ghdto(:,27) svdto(:,27)];
YMatrix4= [ghdto(:,28) svdto(:,28)];
YMatrix5= [ghdto(:,29) svdto(:,29)];
YMatrix6= [ghdto(:,30) svdto(:,30)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Saudi Arabia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Israel');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Iraq');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Kuwait');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Nigeria');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Transmission');

% Create xlabel
xlabel('Year');

% Create title
title('Venezuela');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('OEE_TRANSMISSION.fig');

%% Vulnerability
%% AC

YMatrix1= [ghdfrom(:,1) svdfrom(:,1)];
YMatrix2= [ghdfrom(:,2) svdfrom(:,2)];
YMatrix3= [ghdfrom(:,3) svdfrom(:,3)];
YMatrix4= [ghdfrom(:,4) svdfrom(:,4)];
YMatrix5= [ghdfrom(:,5) svdfrom(:,5)];
YMatrix6= [ghdfrom(:,6) svdfrom(:,6)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('India');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Malaysia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Kuwait');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('South Korea');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('The Phillipines');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Thailand');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('AC_VULNERABILITY.fig');


%% EC

YMatrix1= [ghdfrom(:,7) svdfrom(:,7)];
YMatrix2= [ghdfrom(:,8) svdfrom(:,8)];
YMatrix3= [ghdfrom(:,9) svdfrom(:,9)];
YMatrix4= [ghdfrom(:,10) svdfrom(:,10)];
YMatrix5= [ghdfrom(:,11) svdfrom(:,11)];
YMatrix6= [ghdfrom(:,12) svdfrom(:,12)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Germany');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Chile');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('France');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('China');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('UK');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Australia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('EC_VULNERABILITY.fig');

%% GC

YMatrix1= [ghdfrom(:,13) svdfrom(:,13)];
YMatrix2= [ghdfrom(:,14) svdfrom(:,14)];
YMatrix3= [ghdfrom(:,15) svdfrom(:,15)];
YMatrix4= [ghdfrom(:,16) svdfrom(:,16)];
YMatrix5= [ghdfrom(:,17) svdfrom(:,17)];
YMatrix6= [ghdfrom(:,18) svdfrom(:,18)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Greece');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Portugal');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Ireland');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Belgium');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Croatia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Austria');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('GC_VULNERABILITY.fig');

%% OED

YMatrix1= [ghdfrom(:,19) svdfrom(:,19)];
YMatrix2= [ghdfrom(:,20) svdfrom(:,20)];
YMatrix3= [ghdfrom(:,21) svdfrom(:,21)];
YMatrix4= [ghdfrom(:,22) svdfrom(:,22)];
YMatrix5= [ghdfrom(:,23) svdfrom(:,23)];
YMatrix6= [ghdfrom(:,24) svdfrom(:,24)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('The USA');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Canada');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Russia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Norway');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Japan');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('New Zealand');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('OED_VULNERABILITY.fig');

%% OEE

YMatrix1= [ghdfrom(:,25) svdfrom(:,25)];
YMatrix2= [ghdfrom(:,26) svdfrom(:,26)];
YMatrix3= [ghdfrom(:,27) svdfrom(:,27)];
YMatrix4= [ghdfrom(:,28) svdfrom(:,28)];
YMatrix5= [ghdfrom(:,29) svdfrom(:,29)];
YMatrix6= [ghdfrom(:,30) svdfrom(:,30)];
% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix1,'Parent',subplot1);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Saudi Arabia');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot1,[0 5140]);
box(subplot1,'on');
% Set the remaining axes properties
set(subplot1,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix2,'Parent',subplot2);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Israel');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 5140]);
box(subplot2,'on');
% Set the remaining axes properties
set(subplot2,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix3,'Parent',subplot3);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Iraq');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot3,[0 5140]);
box(subplot3,'on');
% Set the remaining axes properties
set(subplot3,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on',...
    'YTick',[-5 5]);
% Create subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix4,'Parent',subplot4);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Kuwait');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot4,[0 5140]);
box(subplot4,'on');
% Set the remaining axes properties
set(subplot4,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% Create multiple lines using matrix input to plot
plot(YMatrix5,'Parent',subplot5);

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Nigeria');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot5,[0 5140]);
box(subplot5,'on');
% Set the remaining axes properties
set(subplot5,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create subplot
subplot6 = subplot(2,3,6,'Parent',figure1);
hold(subplot6,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix6,'Parent',subplot6);
set(plot1(1),'DisplayName','Return');
set(plot1(2),'DisplayName','Volatility');

% Create ylabel
ylabel('Vulnerability');

% Create xlabel
xlabel('Year');

% Create title
title('Venezuela');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot6,[0 5140]);
box(subplot6,'on');
% Set the remaining axes properties
set(subplot6,'FontSize',9,'XGrid','on','XTick',...
    [0 514 1028 1542 2056 2570 3084 3598 4112 4626 5140],'XTickLabel',...
    {'98','00','02','04','06','08','10','12','14','16','18'},'YGrid','on');
% Create legend
legend1 = legend(subplot6,'show');
set(legend1,...
    'Position',[0.306309704548482 0.0132686750805901 0.130467569980866 0.0317869408638617],...
    'Orientation','horizontal');
savefig('OEE_VULNERABILITY.fig');



