table 50105 "Project Assignment"
{
    fields
    {
        field(1; "Project No."; Code[20]) { }
        field(2; "Employee No."; Code[20]) { }
    }

    keys
    {
        key(PK; "Project No.", "Employee No.") { Clustered = true; }
    }
}