# Credit-Card-Fraud-Detection
Reference (https://www.sciencedirect.com/science/article/pii/S1566253509000141)

For a credit-card fraud detection problem, 
Genuine transactions and fraudulent arrive according to the Markov-modulated Poisson arrival process 

Transaction amounts (genuine and fraudulent) are normally distributed. 

First generated a dataset consisting a total of 10,000 transactions with the following parameters of the MMPP simulator: 
Arrival rate of genuine and fraudulent transactions: 4 per day and 9 per day, respectively; 
Qgf = 0.7, Qfg = 0.3; μg = 30, σg = 6; μf = 100, σg = 40. Transaction amounts cannot be negative. 
Seed value of 1234 was used for random number generator.

After generating the transaction dataset, Matlab classification learner was used to find the algorithm that works best (max. f1 score) 
in terms of predicting whether a transaction is genuine or fraudulent using transaction amount and time between transactions as features.
The following algorithms were used for training and a relative comparison was made: ensemble bagged trees, RUSboosted trees, logistic regression, cubic SVM and linear SVM. 

First 7000 transactions fields was used for training and rest 3000 for testing. 
