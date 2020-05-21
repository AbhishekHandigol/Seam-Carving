
function cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection)

    M = energyImg;
    if strcmp(seamDirection,'VERTICAL')
        for i= 1:size(M,1)
            for j = 1:size(M,2)
                if (i == 1) 
                    M(i,j) = energyImg(i,j);
                elseif (j == 1) 
                    M(i, j) = energyImg(i, j) + min(M(i-1, j), M(i-1, j+1));
                elseif (j == size(M,2))
                    M(i, j) = energyImg(i, j) + min(M(i-1, j-1), M(i-1, j));
                else
                    M(i, j) = energyImg(i, j) + min( min( M(i-1, j-1), M(i-1, j) ), M(i-1, j+1));
                end
            end
        end
    else %change for horizontal
        for j = 1:size(M,2)
            for i = 1:size(M,1)
                if (j == 1) 
                    M(i,j) = energyImg(i, j);
                elseif (i == 1) 
                    M(i, j) = energyImg(i, j) + min(M(i, j-1), M(i+1, j-1));
                elseif (i == size(M,1))
                    M(i, j) = energyImg(i, j) + min(M(i-1, j-1), M(i, j-1));
                else
                    M(i, j) = energyImg(i, j) + min( min( M(i-1, j-1), M(i, j-1) ), M(i+1, j-1));
                end 
            end
        end
    end
    cumulativeEnergyMap = M;
end



    
    
    
    