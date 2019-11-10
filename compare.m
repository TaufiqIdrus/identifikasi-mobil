function result = compare(test_image,example_images)
score = 0;
    for h = 1:size(example_images,3)
        for i = 1:size(example_image,1)
            for j = 1:size(example_image,2)
                if (test_image (i,j) == example_images(i,j,h))
                   score = score+1; 
                end
            end
        end
    end
result = score;
end