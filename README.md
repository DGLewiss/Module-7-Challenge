# Unit 7 Homework Assignment: Looking for Suspicious Transactions

This repository has been created to showcase the findings from the module 7 challenge content. 
___
![ERD Diagram](Images/ERD_Module_7_Challenge.png)

This ERD Diagram displays the relationship between the five csv files provided to track down fraudulent transactions. We can see that each table has its own ID unique ID column that can be utilised in each table to monitor transactions. Some foreign keys are also displayed in the illustration above. 
___

![Transaction trends of cardholder 2](Images/transaction_cardholder_18&2.png)
From the card trend patterns above we can observe the differences in card behaviour. I do believe that transactions on cardholder 18 card are suspicious. Expensive and inconsistent large purchases never over $2,000 (a typical limit for a credit card) are abnormal. similarly, cardholder 2 may have stolen a card and used it to only purchase small items that the true owner may never notice. frequent small transaction of less than $25 is not typical for anyone with access to credit.

![Transaction trends of cardholder 2](Images/transaction_series_2.png)
___

![Transaction trends of cardholder 18](Images/transaction_series_18.png)

___
![Distibution of transactions for cardholder 25](Images/distribution_monthly_25.png)
Card Holder 25 does indeed have outliers in its payments. We can establish this through the dots above the box plots, there are eight in total across the assessed six-month period. The key anomoly I noticed is the increase in the amount spent for April. The outliers could be larger one-off payments such as rent. 
