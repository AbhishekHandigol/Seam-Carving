function horizontalSeam = horizontal_greedy(cumulativeEnergyMap)
    M = cumulativeEnergyMap;
    horizontalSeam = zeros(1,size(M,2));
    [r,i] = min(M(:, 1));
    horizontalSeam(1) = i;
        for j = 1:size(M,2)-1
            if (i == 1) % first row
                min_val = min(M(i, j+1), M(i+1, j+1));
                    if(min_val == M(i+1, j+1))
                        i = i+1;
                    end
            elseif (i == size(M,1)) % last row
                min_val = min(M(i, j+1), M(i-1, j+1));
                    if(min_val == M(i-1, j+1))
                        i = i-1;
                    end
            else
                min_val = min( min( M(i-1, j+1), M(i, j+1)), M(i+1, j+1));
                    if (min_val == M(i+1, j+1))
                        i = i+1;
                    elseif (min_val == M(i-1, j+1))
                        i = i-1;
                    end
            end
            horizontalSeam(j+1) = i;
        end
end