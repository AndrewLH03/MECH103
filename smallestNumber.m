%Andrew Holland
%MECH 105
%Algorithm to find smallest number in MATLAB

%Initialize variables
small = 1;

%Loop to recursively divide small by 2 which breaks before it reaches 0
while(small > 0)
    if(small / 2 ~= 0)
        small = small / 2;
    end

    if(small / 2 ==  0)
        break
    end
end

display(small)