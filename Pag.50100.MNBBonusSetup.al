page 50100 "MNB Bonus Setup"
{
    
    PageType = Card;
    Caption = 'Bonus Setup';
    ApplicationArea=All;
    UsageCategory = Administration;
    SourceTable = "MNB Bonus Setup";
    DeleteAllowed=false;
   InsertAllowed=false;
    
    layout
    {
        area(content)
        {
            group(Numbering)
            {
                Caption='Numbering';
                field ("Bonus Nos.";Rec."Bonus Nos.")
                {
                    ApplicationArea=All;
                    ToolTip='Specifies number series what will be used for bonus numbers';
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end
        
    end;
    
}
