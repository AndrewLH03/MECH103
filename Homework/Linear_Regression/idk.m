t =[4 8 12 16 20 24]
C =[1600 1320 1000 890 650 560]
Ctilde = log ( C )
slope_intercept = polyfit (t , Ctilde ,1)
slope = slope_intercept (1)
intercept = slope_intercept (2)
tnew =0:60;
plot (t ,C , ' ro ' , tnew , exp ( intercept )* exp ( slope * tnew ) , 'b ')
xlabel ( ' Time ( hours ) ')
ylabel ( ' Concentration ( CFU /100 mL ) ')
