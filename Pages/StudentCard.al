page 50102 "Student Card"
{
    PageType = Card;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { }
                field(Name; Rec.Name) { }
                field("E-Mail"; Rec."E-Mail") { }
                field(Age; Rec.Age) { }
            }
        }
    }
}