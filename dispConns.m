function dispConns(conns)
cp=conns';
fprintf('%65s\t%8s\t%8s\n','Area','Weight','P value');
fprintf('%65s\t%f\t%f\n',cp{:});