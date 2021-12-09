table 50101 "MNB Bonus Header"
{
    Caption = 'BonusHeader';
    DataClassification = CustomerContent;

    /* DrillDown - The name of the page which will be shown when the
        user will use function DrillDown on the page. For
        example when clicking the calculated field.*/
    DrillDownPageId = "MNB Bonus List";

    /*The name of the page which will be shown when the
    user will use function Lookup on the page. For
    example when clickingmore options.*/
    LookupPageId = "MNB Bonus List";
    
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    BonusSetup.Get();
                   
                    // Does the No. Series can be fill manually?.
                    NoSeriesMgmt.TestManual((BonusSetup."Bonus Nos."));
                    // 
                   "No. Series" :='';
                end;
            end;
           
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;
            TableRelation= Customer;
        }
        field(3; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;
        }
        field(4; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            DataClassification = CustomerContent;
        }

        field(5; Status; Enum "MNB Bonus Status")
        {
            Caption = 'Bonus Status';
            DataClassification = CustomerContent;
        }

        field(100; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var 
    BonusSetup: Record "MNB Bonus Setup";
    NoSeriesMgmt: Codeunit NoSeriesManagement;
    
    trigger OnInsert()
    
    begin
        if "No." = '' then begin
            BonusSetup.Get();
            BonusSetup.TestField("Bonus Nos.");
            // Sends the next number from No series to field No
            NoSeriesMgmt.InitSeries(BonusSetup."Bonus Nos.", xRec."No.", 0D, Rec."No.", Rec."No. Series");
        end;
    end;
}
