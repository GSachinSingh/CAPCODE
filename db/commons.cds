namespace com.cap.learning.commons;
using { Currency } from '@sap/cds/common';

type Gender : String(1)enum{
    male ='M';
    female='F';
    undisclosed='U';
}

type AmountT:Decimal(10,2)@(
    Semantic.amount.currencyCode: 'CURRENCY_CODE',
    sap.unit:'CURRENCY_CODE'
);

aspect Amount:{
    CURRENCY:Currency;
    GROSS_AMOUNT: AmountT @(title: 'Gross Ammount');
    NET_AMOUNT: AmountT @(title: 'Net Ammount');
    TAX_AMOUNT: AmountT @(title: 'Tax Ammount');
}

type PhoneNumber : String(30)@assert.format : '^\(?([2-9][0-9]{2})\)?[-.●\s]?([2-9][0-9]{2})[-.●\s]?([0-9]{4})$';
type  Email : String(30)@assert.format : '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';



type GUID : String(32);

aspect address{
    HOUSENO: Int16;
    STREET: String(32);
    CITY: String(80);
    COUNTRY: String(3);
}


