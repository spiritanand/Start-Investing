inv_rate = 0.12; % We can expect to make a '12%' return on the investments . We are using a real number that’s 
                 % based on the historical average annual return of the S&P 500.
inv_bal = zeros(1,101); 
inv_bal(1)= 20000; % We have set the initial balance as twenty thousand US dollars.
for k = 1:100
    inv_bal(k+1) = (1+inv_rate-inf)*inv_bal(k);
end
x = (1:101);
plot(x,inv_bal,"LineWidth",3,"Marker","*","MarkerSize",10,"MarkerIndices",[1,10,25,50,75,101],"MarkerEdgeColor","r");
grid on
title("Saving Account Actual Growth (For a 100 years)")
xlabel("Number of years")
xticks(0:5:101)
yticks(inv_bal(1):round(9*(inv_bal(101)-inv_bal(1))/100):inv_bal(101))
ylabel("Balance (in USD)")
ytickformat("usd")
% This gives us the ACTUAL graph of return on investment in mutual funds
% after factorizing the effect of INFLATION.
fprintf("Therefore the money returned to us after hundred years is :- '%d'\n",inv_bal(101))
% Output :- Therefore the money returned to us after hundred years is :- '1.390511e+08'