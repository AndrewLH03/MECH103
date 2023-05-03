%Andrew Holland
%MECH 105
%Algorithm to find machine epsilon

%Initialize variables
e = 1;

while(1 + e > 1)
    e = e / 2;
end

e = 2 * e;