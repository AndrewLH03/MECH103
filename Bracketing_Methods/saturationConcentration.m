oSF = @(T) -139.34411 + 1.575701 * 10^5 / T - 6.642308 * 10^7 / T^2 + 1.243800 * 10^10 / T^3 - 8.621949 * 10^11 / T^4;

vL = 0 + 273.15;
vU = 35 + 273.15;

vR = (vL + vU) / 2;
vGuess = oSF(vR);

i = 0;

osfValue = 14;

while vGuess - log(osfValue) ~= 0
  i = i + 1;
  
  vR = (vL + vU) / 2;  
  vGuess = oSF(vR);

  if vGuess > log(osfValue)
      vL = vR;
  else
      vU = vR;
  end
  vR
end

i
vR = vR - 273.15