function check_dir(dirName)
if ~isdir(dirName)
    error('Failed to find directory: %s', dirName);
end
return