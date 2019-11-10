function x =  Sort (x)
    
    for out = size(x,2)-1:-1:1
        for in = 1:out
            if(x(in) < x(in+1))
                temp = x(in);
                x(in) = x(in+1);
                x(in+1) = temp;
            end
        end
    end
end