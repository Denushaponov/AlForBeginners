page 50104 "MNB Bonus Entries"
{
    
    ApplicationArea = All;
    Caption = 'Bonus Entries';
    PageType = List;
    SourceTable = "MNB Bonus Entry";
    UsageCategory = Lists;
    Editable = false;
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field("Bonus Amount"; Rec."Bonus Amount")
                {
                    ToolTip = 'Specifies the value of the Bonus Amount field.';
                    ApplicationArea = All;
                }
                field("Bonus No."; Rec."Bonus No.")
                {
                    ToolTip = 'Specifies the value of the Bonus No. field.';
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Bonus No. field.';
                    ApplicationArea = All;
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.';
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
