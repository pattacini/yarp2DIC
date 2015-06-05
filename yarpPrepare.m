function t=yarpPrepare(type,portName)

t=[];
status=system('yarp where');
if status~=0
    fprintf('YARP server seems to be not available\n');
    return;
end

[status,result]=system(['yarp name query ' portName]);
if status~=0
    fprintf('%s is unkwnown\n',portName);
    return;
end

idx_ip=strfind(result,'ip');
idx_port=strfind(result,'port');
idx_type=strfind(result,'type');
ip=strtrim(result(idx_ip+2:idx_port-1));
port=str2double(result(idx_port+4:idx_type-1));

t=tcpip(ip,port);
if strcmpi(type,'rx')
    set(t,'InputBufferSize',100000);
    set(t,'BytesAvailableFcn',@yarpRxCallback);
end

fopen(t);
fprintf(t,'CONNECT foo\n');

if strcmpi(type,'rx')
    fprintf(t,'r\n');
end
