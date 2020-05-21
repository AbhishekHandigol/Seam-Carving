function horizontalSeam = find_horizontal_seam(cumulativeEnergyMap)
    M = cumulativeEnergyMap;
    horizontalSeam = zeros(1,size(M,2));
    [r,i] = min(M(:, size(M,2)));
    horizontalSeam(size(M,2)) = i;
        for j = size(M,2):-1:2
            if (i == 1) % first row
                min_val = min(M(i, j-1), M(i+1, j-1));
                    if(min_val == M(i+1, j-1))
                        i = i+1;
                    end
            elseif (i == size(M,1)) % last row
                min_val = min(M(i, j-1), M(i-1, j-1));
                    if(min_val == M(i-1, j-1))
                        i = i-1;
                    end
            else
                min_val = min( min( M(i-1, j-1), M(i, j-1)), M(i+1, j-1));
                    if (min_val == M(i+1, j-1))
                        i = i+1;
                    elseif (min_val == M(i-1, j-1))
                        i = i-1;
                    end
          
            end
            horizontalSeam(j-1) = i;
        end             
end


