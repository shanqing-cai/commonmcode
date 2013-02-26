function varargout = cdds
dl={'e:','z:','f:','c:', '/users/cais', '/media/DATA', 'e:/scai','e:/NT_Data/scai/','a:','b:','d:','g:','h:','i:','j:','k:','l:','m:','n:',...
    'o:','p:','q:','r:','s:','t:','u:','v:','w:','x:','y:'};
dirFound=0;
for i1=1:length(dl)
    if isdir(fullfile([dl{i1}],'speechres'))
        dirFound=1;
        break;
    end
end

if dirFound==0;
    fprintf('speechres dir not found. Given up.\n');
    return
end
dl=[dl{i1}];
if nargout == 0
    disp(['Found speechres dir under ',dl]);
end

if nargout == 0
    cd(fullfile(dl,'speechres'));
elseif nargout == 1
    varargout{1} = fullfile(dl,'speechres');
end

audapterPath = which('TransShiftMex');
if ~isempty(audapterPath)
    dns = splitstring(audapterPath, '\');
    if length(dns) > 3
        t_dir = fullfile(dns{1}, dns{2}, dns{3}, 'mcode');
        cd(t_dir);
    end
end
return