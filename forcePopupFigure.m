% Tested on Matlab 2019B,got the pop window and correct handle
% Mechanism:timers runs independently

%FBC edit add maximize 
function fig = ForcePopupFigure()
global NewFig;
tim = timer('TimerFcn',@temp,'ExecutionMode','singleShot');
tim.start();
pause(0.5);
fig = NewFig;
NewFig.Visible = 'on';

delete(tim);
end
function temp(~,~,~)
global NewFig;
NewFig = figure('units','normalized','outerposition',[0 0 1 1]);
end