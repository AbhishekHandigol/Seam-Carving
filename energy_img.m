
function energyImg = energy_img(im)
    
    colormap gray;
    filter = fspecial('sobel');   
    gray_sobel = rgb2gray(im);
    partialy_sobel = imfilter(double(gray_sobel), filter);
    partialx_sobel = imfilter(double(gray_sobel), filter');
    energyImg = sqrt(partialx_sobel.^2 + partialy_sobel.^2);
    
end


