function [ mask ] = mask( x, N )

mask = zeros(length(x),length(x), length(x));

for i = 1:length(x)
    for j = 1:length(x)
        for k = 1:length(x)
            if (((abs(i-(N+1)/2))^2 + (abs(j-(N+1)/2)^2 + (abs(k-(N+1)/2)^2))) <= ((N+1)/6)^2)
                mask(i,j,k) = 1;
            else
                mask(i,j,k) = 0;
            end
        end 
    end
end


end

