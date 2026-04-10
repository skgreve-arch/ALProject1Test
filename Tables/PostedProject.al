table 50106 "Posted Project"
{
    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; Name; Text[100]) { }
        field(3; "Estimated Hours"; Decimal) { }
        field(4; "Used Hours"; Decimal) { }
    }

    keys
    {
        key(PK; "No.") { Clustered = true; }
    }
}