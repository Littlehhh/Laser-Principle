%create library
for m = 0:10
    for n = 0:10


        MatName = ['R',num2str(m),num2str(n)]
        if check_library(MatName)==0
            V = emithgaussian(m,n);
            save(['.\data\',MatName,'.mat'],'V');
        end
        MatName = ['C',num2str(m),num2str(n)]
        if check_library(MatName)==0
            V = LaguerreGaussian(m,n);
            save(['.\data\',MatName,'.mat'],'V');
        end
    end
end