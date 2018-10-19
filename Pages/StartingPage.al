pageextension 50101 StartingPage extends "Order Processor Role Center"
{
    actions
    {
        AddLast(Processing)
        {
            action(InitExtPage)
            {
                Image = Error;
                CaptionML = ENU = 'PushMe',
                            RUS = 'НажмиМеня';
                trigger OnAction();
                var
                    Windows : Dialog;
                begin
                    Message('Madsfadsf');
                    //Windows.Open()   
                end;
                // trigger OnAction();
                // //var
                //     //CoudPage: page CloudName;
                // begin
                //     // CoudPage.RunModal;
                //     // CoudPage.Run;
                //     // Page.Run(50100);
                //     // Page.RunModal(50100);
                //     message('1');
                // end;
            }
        }
    }
    trigger OnOpenPage();
    begin
        Message('sadf');    
    end;
}