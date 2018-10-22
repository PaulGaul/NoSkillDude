page 50100 CloudName
{
    PageType = List;
    SourceTable = Cloud;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Сloud No"; "Сloud No")
                {
                    StyleExpr = LineStyle;
                }
                field("Item Сloud"; ItemСloud)
                {
                    StyleExpr = LineStyle;    
                }
                field("Сloud variant"; "Сloud variant")
                {
                    StyleExpr = LineStyle;    
                }
                field("Сloud count"; "Сloud count")
                {
                    StyleExpr = LineStyle;
                }

            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Init Rows")
            {
                trigger OnAction();
                begin
                    Report.Run(50100);
                end;
            }

            action("Delete all")
            {
                trigger OnAction();
                var
                    RecCloud: Record Cloud;
                begin
                    RecCloud.DeleteAll;
                end;
            }
            action("RecalculateAmount")
            {
                trigger OnAction();
                var
                    CoudCalculate: Codeunit CalculateClouds;
                begin
                    "Сloud count" := CoudCalculate.RecalculateCount("Сloud count");
                end;
            }
        }
    }
    var
        LineStyle : Text[50];
    
    trigger OnAfterGetRecord();
    begin
        IF ItemСloud then
            LineStyle := 'Favorable'
        else
            LineStyle := 'Standart'; 
        CurrPage.Update(false);       
    end;

}