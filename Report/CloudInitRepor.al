report 50100 CloudInitReport
{
    ProcessingOnly = true;
    dataset
    {

        dataitem(Cloud; Integer)
        {
            
            DataItemTableView = WHERE(Number=CONST(1));
            trigger OnPreDataItem()
            var
                CloudCalcCU : Codeunit CalculateClouds;
            begin
                CloudCalcCU.InitCloud(CountOfLine);        
            end;
        }

    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field("Enter count"; CountOfLine)
                    {
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                }
            }
        }
    }
    
    var
        CountOfLine: Integer;

}