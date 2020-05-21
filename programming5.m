

function Question() 
    %Question 3
    %Question 3a
    im = imread('inputSeamCarvingPrague.jpg');
    Energy = energy_img(im);
    %imagesc(Energy)
    %title('Question 3a: Energy')
    %figure;
    
    %Question 3b
    CummulativeEnergy_Ver = cumulative_min_energy_map(Energy,'VERTICAL');
    %imagesc(CummulativeEnergy_Ver)
    %title('Question 3b: Cummulative Energy Vertical')
    %figure;
    %EXPLANATION:
    % Why CummulativeEnergy_Ver looks like that
    
    CummulativeEnergy_Hor = cumulative_min_energy_map(Energy,'HORIZONTAL');
    %imagesc(CummulativeEnergy_Hor)
    %title('Question 3b: Cummulative Energy Horizontal')
    %figure;
    %EXPLANATION:
    % Why CummulativeEnergy_Hor looks like that
    
    %#################################################################
    
    %Question 4
    %Displaying Original Image
    
    % first selected horizontal seam
    imagesc(im)
    hold on;
    Seam_Hor = find_horizontal_seam(CummulativeEnergy_Hor);    
    plot(Seam_Hor);
    title('Question 4a: Seam Horizontal')
    hold off;
    %figure;
    %EXPLANATION:
    %Why optimal horizontal seam
    
    % first selected vertical seam
    imagesc(im)
    hold on;
    Seam_Ver = find_vertical_seam(CummulativeEnergy_Ver);
    X_axis_ver = 1:size(Seam_Ver, 2);
    Y_axis_ver = Seam_Ver;
    plot(Y_axis_ver, X_axis_ver)
    title('Question 4b: Seam Vertical')
    hold off;
    %EXPLANATION:
    %Why optimal vertical seam
    
    %#################################################################
    
    
    
end