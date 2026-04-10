page 50101 "Student List"
{
    PageType = List;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.") { }
                field(Name; Rec.Name) { }
                field("E-Mail"; Rec."E-Mail") { }
                field(Age; Rec.Age) { }
            }
        }
    }
}