pageextension 50103 ItemCardMod extends "Customer Card" //MyTargetPageId
{
    layout
    {
        
    }
    
    actions
    {
        AddLast(Reporting)
        {
            action(NiceButton)
            {
                Image = Error;
                CaptionML = ENU = 'PushMe';
                trigger OnAction();
                var
                    CoudPage: page CloudName;
                begin
                    //Page.RunModal(50100);
                    CoudPage.RunModal;
                end;
            }
        }
    }
}