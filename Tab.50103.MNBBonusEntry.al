table 50103 "MNB Bonus Entry"
{
    Caption = 'Bonus Entry';
    DataClassification = ToBeClassified;
    
    
    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(2; "Bonus No."; Code[20])
        {
            Caption = 'Bonus No.';
            DataClassification = CustomerContent;
            TableRelation="MNB Bonus Header";
            Editable = false;
        }

         field(3; "Document No."; Code[20])
        {
            Caption = 'Bonus No.';
            DataClassification = CustomerContent;
            TableRelation="Sales Invoice Header";
            Editable = false;
        }
        field(4; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
            TableRelation="Item";
            Editable = false;

        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(6; "Bonus Amount"; Decimal)
        {
            Caption = 'Bonus Amount';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
    
}
