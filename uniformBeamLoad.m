vL = 0;
vU = 6.00;
E = 50000;
I = 30000;
w = 2.5;
L = 6.00;
fp = w / (120 * E * I * L);

ec = @(x) fp * (-x^5 + 2 * L^2 * x^3 - L^4 * x);
ecDiff = @(x) fp * (-5 * x^4 + 6 * L^2 * x^2 - L^4);

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

i
ec(vR)