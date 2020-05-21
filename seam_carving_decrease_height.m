function seam_carving_decrease_height() 
    im = imread('inputSeamCarvingPrague.jpg');
    energyImg = energy_img(im);
    for i = 1:50
        [reducedColorImg,reducedEnergyImg] = decrease_height(im, energyImg);
        im = reducedColorImg;
        energyImg = reducedEnergyImg;
    end
    imshow(uint8(im));
    imwrite(uint8(im), 'outputReduceHeightPrague.png');
    
%     im = imread('inputSeamCarvingMall.jpg');
%     energyImg = energy_img(im);
%     for i = 1:50
%         [reducedColorImg,reducedEnergyImg] = decrease_height(im, energyImg);
%         im = reducedColorImg;
%         energyImg = reducedEnergyImg;
%     end
%     imshow(uint8(im));
%     imwrite(uint8(im), 'outputReduceHeightMall.png');
end