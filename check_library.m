function [Isexit] = check_library(MatName)
% cd data;
%检查是否已经存在的Mat
Isexit = 0;
MyFolderInfo = dir('data\*.mat');
MatName = [MatName,'.mat'];
n = size(MyFolderInfo);
for i = 1:n
  if strcmp(MatName,MyFolderInfo(i).name)
      Isexit = 1;break
  end
end

