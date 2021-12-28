using System;
using System.Collections.Generic;

namespace classes1 
{

    public class InterestEarningAccount : BankAccount
    {
        //Constructor
        public InterestEarningAccount(string name, decimal initialBalance) : base(name, initialBalance))
        {
            base.Owner = name;
        }

        //Override Method
        public override void PerformMonthEndTransactions()
        {
            if (Balance > 500m)
            {
                var interest = Balance * 0.5m;
                MakeDeposit(interest, DateTime.Now, "apply monthly interest");
            }
        }
}
