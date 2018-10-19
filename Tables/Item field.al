table 50100 Cloud
{
    DataClassification = ToBeClassified;

    fields
    {

        field(1; "Сloud No"; Integer)
        {
            Caption = 'Enable Сloud';
            DataClassification = ToBeClassified;
        }
        field(2; ItemСloud; Boolean)
        {
            Caption = 'Enable Сloud';
            DataClassification = ToBeClassified;
        }

        field(3; "Сloud variant"; Option)
        {
            Caption = 'Сloud variant';
            DataClassification = ToBeClassified;
            OptionMembers = Cirrocumulus, Cirrus, Altostratus, Stratus, Cumulus;
            OptionCaption = 'Cirrocumulus,Cirrus,Altostratus,Stratus,Cumulus';
        }
        field(4; "Сloud count"; Decimal)
        {
            Caption = 'Сloud count';
        }
    }
    keys
    {
        key("Сloud No"; "Сloud No")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}