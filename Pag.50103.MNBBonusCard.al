page 50103 "MNB Bonus Card"
{
    
    Caption = 'Bonus Card';
    PageType = Document;
    SourceTable = "MNB Bonus Header";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption='General'; 
                
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ToolTip = 'Specifies the value of the Starting Date field.';
                    ApplicationArea = All;
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ToolTip = 'Specifies the value of the Ending Date field.';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Bonus Status field.';
                    ApplicationArea = All;
                }

                
            }

            part(Lines;"MNB Bonus Subform")
            {
                ApplicationArea = All;
                /*add link between the header and lines
                that "No." in header is the same as 
                "Document No." in the lines.*/
                SubPageLink = "Document No." = field("No.");

            }
        }  
    }

    actions 
    {
        area(navigation)
        {
            action(CustomerCard)
            {
                ApplicationArea=all;
                Caption='Customer Card';
                Image=Customer;
                Promoted=true;
                PromotedCategory=Process;
                RunObject=page"Customer Card";
                RunPageLink="No."=field("Customer No.");
                ToolTip='Opens customer card';
            }
            action(BonusEntries)
            {
                 
            Caption='Open Bonus Entries';
            ApplicationArea=all;
            Image=Entry;
            Promoted = true;
            PromotedCategory=Process;
            /*open the Bonus List page where "Customer
                No." is the same as the customer No.*/
            RunObject=page "MNB Bonus Entries";
            //
            RunPageLink="Bonus No."=field("No.");
            ToolTip='Opens bonus entries.';

            }

        }
    }
    
}
