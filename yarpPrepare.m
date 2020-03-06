function t=yarpPrepare(type,ip,port)

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
