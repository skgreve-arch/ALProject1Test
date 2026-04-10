table 50103 "Time Registration"
{
    fields
    {
        field(1; "Entry No."; Integer) { AutoIncrement = true; }
        field(2; "Employee No."; Code[20]) { }
        field(3; "Project No."; Code[20]) { }
        field(4; Hours; Decimal) { }
        field(5; Posted; Boolean) { }
        field(6; "Date"; Date) { }
        field(7; "User ID"; Code[50]) { }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
    }
}