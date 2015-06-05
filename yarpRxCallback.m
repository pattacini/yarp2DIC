function yarpRxCallback(obj,~)
%#ok<*ST2NM>

tline=fgetl(obj);
tline(end)=[];
if ~strcmp(tline,'do')    
    [yarpData,status]=str2num(tline);
    if status~=0
        assignin('base','yarpData',yarpData');
    end
end

