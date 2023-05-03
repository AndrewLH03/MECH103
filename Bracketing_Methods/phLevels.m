vL = 0;
vU = 6.00;

ec = @(x) fp * (-x^5 + 2 * L^2 * x^3 - L^4 * x);

vR = (vL + vU) / 2;
vGuess = ecDiff(vR);

i = 0;

while vGuess ~= 0
  i = i + 1;
  vR = (vL + vU) / 2;  

  vGuess = ecDiff(vR);
  if vGuess < 0
      vL = vR;
  else
      vU = vR;
  end
  vR
end