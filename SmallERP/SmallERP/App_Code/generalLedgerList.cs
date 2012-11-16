using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmallERP.App_Code
{
    public class generalLedgerList
    {
        List<generalLedgerRecord> gl = new List<generalLedgerRecord>();


        public decimal calcLedgerTotal()
        {
            decimal total = 0;
            foreach (generalLedgerRecord glr in gl)
            {
                total -= glr.debit;
                total += glr.credit;
            }

            return total;
        }

        public decimal calcAccountTotal(string acctID)
        {

        }

    }


}