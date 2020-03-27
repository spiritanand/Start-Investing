inf = 0.0275; %  We are initializing the inflation rate as '2.75%' This was calculated using the interest rate's average given 
              %  by the six countries:-
                    % The U.S.A. , China , Japan , Germany , India and the U.K.. 
real_bal = zeros(1,101); 
real_bal(1)= 20000; % We have set the initial balance as twenty thousand US dollars.
for k = 1:100
    real_bal(k+1) = (1+r-inf)*real_bal(k);
end
x = (1:101);
plot(x,real_bal,"LineWidth",3,"Marker","*","MarkerSize",10,"MarkerIndices",[1,10,25,50,75,101],"MarkerEdgeColor","r");
grid on
title("Saving Account Actual Growth (For a 100 years)")
xlabel("Number of years")
xticks(0:5:101)
yticks(real_bal(101):round(9*(real_bal(1)-real_bal(101))/100):real_bal(1))
ylabel("Balance (in USD)")
ytickformat("usd")
% This gives us the ACTUAL graph because after factoring in the effects of taxation and INFLATION.
% By looking at the graph it can be seen that we actually lose money over the years due to inflation.
fprintf("Therefore the money returned to us after hundred years is :- '%d'\n",real_bal(101))
% Output :- Therefore the money returned to us after hundred years is :- '9.420665e+03'