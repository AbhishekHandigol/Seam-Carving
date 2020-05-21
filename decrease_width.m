function [reducedColorImg,reducedEnergyImg] = decrease_width(im,energyImg)
    M = energyImg;
    reducedEnergyImg = zeros(size(M,1),size(M,2)-1);
    reducedColorImg = zeros(size(im,1),size(im,2)-1, 3);
    verticalSeam = find_vertical_seam(cumulative_min_energy_map(energyImg, 'VERTICAL')); 
    for i = 1:1:size(im,1)
        temp = M(i,:);
        temp(verticalSeam(i)) = [];
        reducedEnergyImg(i,:) = temp;
       
        %removes a specific column
        temp3d = im(i,:,:);
        temp3d(:,verticalSeam(i),:) = [];
        reducedColorImg(i,:,:) = temp3d;
    end 
end
