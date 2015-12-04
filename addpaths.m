basedir = '~/code';
repos = {'mASD', ... % https://github.com/mobeets/mASD
%     'mtlip', ... % https://bitbucket.org/jcbyts/mtlip
%     'pdstools', ... % https://github.com/jcbyts/pdstools
%     'neuroglm', ... % https://github.com/jcbyts/neuroglm    
};
p = path;
for ii = 1:numel(repos)
    repo = fullfile(basedir, repos{ii});
    if ~exist(repo, 'dir')
        warning(['Failed to load "' repo '".']);
        continue;
    end
    path(p, repo);
end
