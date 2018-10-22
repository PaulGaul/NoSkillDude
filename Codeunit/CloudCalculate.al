codeunit 50100 CalculateClouds
{
    trigger OnRun();
    begin
    end;

    var
        myInt: Integer;


    procedure InitCloud(CountClouds: Integer);
    var
        Cloud: Record Cloud;
        i: Integer;
    begin
        //     Cloud.Setrange(ItemСloud, false);
        // if Cloud.findset(true) then
        //     repeat
        //         Cloud."ItemСloud" := true;
        //         Cloud.Modify;
        //     until Cloud.Next =0;
        for i := 1 TO CountClouds do
        begin
            Cloud.Init;
            Cloud."Сloud No" := GetNextCoudNo; 
            CalculateCloud(Cloud);
            Cloud.Insert;     
        end;
    end;

    local procedure CalculateCloud(VAR CaclCloud: Record Cloud);
    begin
        CaclCloud."Сloud variant" := random(5) - 1;
        CaclCloud."Сloud count" := random(1000);
    end;

    local procedure GetNextCoudNo() NextNo: Integer;
    var
        Cloud: Record Cloud;
    begin
        IF Cloud.findLast then
            EXIT(Cloud."Сloud No" + 1)
        else
            EXIT(1);
    end;

    procedure RecalculateCount(Сloudcount:Integer) : Integer;
    begin
        Сloudcount +=1;
        exit(Сloudcount);
    end;

    procedure NewSome();
    begin
        //zxcv
        //zcxvzxcvxzz
        /**/
        /* zxcvzxcv*/
    end;

    procedure NewOne();
    begin
        //send me invite to DoNothingClub#2 pls
    end;
}