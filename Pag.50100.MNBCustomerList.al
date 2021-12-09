pageextension 50100 "MNB Customer List" extends "Customer List"
{
    layout 
    {
        addlast(Control1)
        {
            field("MNB Bonuses"; Rec."MNB Bonuses")
            {
                ApplicationArea = all;
                ToolTip='Shows Number of assigned Bonus to customer.';
            }
        }
    }

actions 
{
    addlast(navigation)
    {
        action("MNB MNBBonuses")

        {
            Caption='Bonuses';
            ApplicationArea=all;
            Image=Discount;
            /*open the Bonus List page where "Customer
                No." is the same as the customer No.*/
            RunObject=page "MNB Bonus List";
            RunPageLink="Customer No."=field("No.");

        }
    }
}
}




