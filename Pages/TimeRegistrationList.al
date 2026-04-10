page 50110 "Time Registration List"
{
    PageType = List;
    SourceTable = "Time Registration";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Employee No."; Rec."Employee No.") { Editable = false; }
                field("Project No."; Rec."Project No.")
                {
                    TableRelation = Project."No.";
                }
                field(Hours; Rec.Hours) { }
                field("Date"; Rec."Date") { }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    var
        Employee: Record Employee;
    begin
        if Employee.Get(UserId) then begin
            Rec."Employee No." := Employee."No.";
            Rec."User ID" := UserId;
        end;
    end;
}