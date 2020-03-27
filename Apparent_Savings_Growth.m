r = 0.02; %  We are initializing the interest rate as '2%'.This was calculated using the interest rate's average given 
          %  by the six countries:-
                    % The U.S.A. , China , Japan , Germany , India and the U.K..
app_bal = zeros(1,101); % Here we are creating a vector that stores the app_balance of a 100 years.
% Here we are taking 1 - 101 years. This implies that we are considering the year when we deposit our amount as year --> 1.  
app_bal(1)= 20000; % We have set the initial app_balance as twenty thousand US dollars.
for k = 1:100
    app_bal(k+1) = (1+r)*app_bal(k);
end
x = (1:101);
plot(x,app_bal,"LineWidth",2,"Marker","*","MarkerSize",10,"MarkerIndices",[1,10,25,50,75,101],"MarkerEdgeColor","r")
grid on
title("Saving Account Apparent Growth (For a 100 years)")
xlabel("Number of years")
xticks(0:5:101)
yticks(app_bal(1):round(10*(app_bal(101)-app_bal(1))/100):app_bal(101))
ylabel("Balance (in USD)")
ytickformat("usd")
% This gives us the apparent graph because we have not factored in the effects of taxation and INFLATION.
fprintf("Therefore the money returned to us after hundred years is :- '%d'\n",app_bal(101))
% Output :- Therefore the money returned to us after hundred years is :- '1.448929e+05'