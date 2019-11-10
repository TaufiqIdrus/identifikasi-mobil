function threshold = threshold(img_gs,value)
threshold = img_gs;
    for i=1:size(img_gs, 1)
        for j=1:size(img_gs, 2)
            if img_gs(i,j) > value
                threshold(i,j) = 0;
            else
                threshold(i,j) = 255;
            end
        end
    end
end