function [reducedColorImg,reducedEnergyImg] = decrease_height(im,energyImg)
    M = energyImg;
    reducedEnergyImg = (zeros(size(M,1)-1,size(M,2)));
    reducedColorImg = (zeros(size(im,1)-1,size(im,2), 3));
    horizontalSeam = find_horizontal_seam(cumulative_min_energy_map(energyImg, 'HORIZONTAL'));
    for i = 1:1:size(im,2)
        temp = M(:,i);
        temp(horizontalSeam(i)) = [];
        reducedEnergyImg(:,i) = temp;
       
        %removes a specific row
        temp3d = im(:,i,:);
        temp3d(horizontalSeam(i),:,:) = [];
        reducedColorImg(:,i,:) = temp3d;
    end 
end