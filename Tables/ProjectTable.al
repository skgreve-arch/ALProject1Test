table 50104 Project
{
    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; Name; Text[100]) { }
        field(3; "Estimated Hours"; Decimal) { }
        field(4; "Used Hours"; Decimal) { Editable = false; }
        field(5; "Remaining Hours"; Decimal) { Editable = false; }
        field(6; Status; Option) { OptionMembers = Open,Closed; }
        field(7; "No. Series"; Code[20]) { }
    }

    keys
    {
        key(PK; "No.") { Clustered = true; }
    }

    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "No." = '' then
            NoSeriesMgt.InitSeries('PROJECT', xRec."No. Series", 0D, "No.", "No. Series");
    end;

    trigger OnModify()
    begin
        "Remaining Hours" := "Estimated Hours" - "Used Hours";
    end;
}