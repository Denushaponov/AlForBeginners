page 50102 "MNB Bonus List"
{
    
    ApplicationArea = All;
    Caption = 'The Bonuses list page present all available, at this moment fields, from the Bonus Header table.';
    PageType = List;
    SourceTable = "MNB Bonus Header";
    UsageCategory = Lists;
    Editable=false;

    /*This property is only for pages with type list. You
    can decide which page will be open as a card page
    for the list.*/
    CardPageId="MNB Bonus Card";
    
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
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
        }
    }

    actions 
    {
        /*Действия, которые используются для открытия 
        связанных данных, следует размещать в области навигации.*/
        area(navigation)
        {
            action(CustomerCard)
            {
                /*This property is mandatory. 
                It says in which area of
                the systemaction will be visible.*/
                ApplicationArea=all;
                Caption='Customer Card';
                /*The property tells what 
                is the image for the action.*/
                Image=Customer;
                /*If action is set as promoted then it is shown on the
                Home tab. If you want that action is shown only in
                the Home tab, then set property PromotedOnly to
                true. When action is promoted, then you can put it in the
                proper category using property
                PromotedCategory. There are three standard
                categories: New, Process, Report.*/
                Promoted=true;
                PromotedCategory=Process;
                /*Если вы хотите запустить объект, например, другую страницу или отчет,
                вам необходимо указать тип и имя объекта. Связь между вашей страницей и 
                объектом можно установить в свойстве RunPageLink. 
                Если вы используете свойство RunObject, не пишите код в триггере onAction ().*/
                RunObject=page"Customer Card";
                RunPageLink="No."=field("Customer No.");
                ToolTip='Opens customer card';
            }

        }
    }
    
        
    
    
}
