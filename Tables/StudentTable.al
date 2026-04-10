table 50100 Student
{
    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; Name; Text[100]) { }
        field(3; "E-Mail"; Text[100]) { }
        field(4; Age; Integer) { }
    }

    keys
    {
        key(PK; "No.") { Clustered = true; }
    }
}