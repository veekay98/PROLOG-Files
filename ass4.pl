amount_saved(22000).
earnings(25000,steady).
numdependents(3).

minsavings(Dependents,Amount) :- Amount is 5000*Dependents.
minincome(Dependents,Amount) :- Amount is (4000*Dependents)+15000.

income(adequate) :- earnings(AmountEarned,steady),
                    numdependents(Dependents),
                    minincome(Dependents,IncomeMin),
                    AmountEarned>IncomeMin.

income(inadequate) :- earnings(AmountEarned,steady),
                      numdependents(Dependents),
                      minincome(Dependents,IncomeMin),
                      AmountEarned=<IncomeMin.

income(inadequate) :- earnings(AmountEarned,unsteady).

income(adequate) :- numdependents(Dependents),
                    Dependents==0.

savings_account(adequate) :- amount_saved(Amount),
                             numdependents(Dependents),
                             minsavings(Dependents,SavingsMin),
                             Amount>SavingsMin.

savings_account(inadequate) :- amount_saved(Amount),
                               numdependents(Dependents),
                               minsavings(Dependents,SavingsMin), 
                               Amount=<SavingsMin.

savings_account(adequate) :- numdependents(Dependents),
                             Dependents==0.

investment(savings) :- savings_account(inadequate).

investment(stocks) :- savings_account(adequate),
                      income(adequate).

investment(combination) :- savings_account(adequate),
                           income(inadequate).








