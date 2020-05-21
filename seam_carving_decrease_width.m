function seam_carving_decrease_width() 
    im = imread('inputSeamCarvingPrague.jpg');
    %imshow(im);
    energyImg = energy_img(im);
    for i = 1:100
        [reducedColorImg,reducedEnergyImg] = decrease_width(im, energyImg);
        im = reducedColorImg;
  
        energyImg = reducedEnergyImg;
    end

    imshow(uint8(im));
    imwrite(uint8(im), 'outputReduceWidthPrague.png');
    
%     figure;
%     im = imread('inputSeamCarvingMall.jpg');
%     imshow(im);
%     energyImg = energy_img(im);
%     for i = 1:100
%        [reducedColorImg,reducedEnergyImg] = decrease_width(im, energyImg);
%        im = reducedColorImg;
%        energyImg = reducedEnergyImg;
%     end
%     imshow(uint8(im));
%     imwrite(uint8(im), 'outputReduceWidthMall.png');
end


    
    