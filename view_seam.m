function view_seam(im,seam,seamDirection)
 
 if strcmp(seamDirection, 'HORIZONTAL')
    imagesc(im)
    hold on;
    plot(seam)
    hold off;
 else
    imagesc(im)
    hold on;
    X_axis = 1: size(seam, 2);
    Y_axis = seam;
    plot(Y_axis, X_axis);
    hold off;
 end

end