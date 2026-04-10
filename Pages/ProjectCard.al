page 50111 "Project Card"
{
    PageType = Card;
    SourceTable = Project;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { }
                field(Name; Rec.Name) { }
                field("Estimated Hours"; Rec."Estimated Hours") { }
                field("Used Hours"; Rec."Used Hours") { }
                field("Remaining Hours"; Rec."Remaining Hours") { }
                field(Status; Rec.Status) { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CloseProject)
            {
                trigger OnAction()
                var
                    Posted: Record "Posted Project";
                begin
                    Posted.TransferFields(Rec);
                    Posted.Insert();
                    Rec.Delete();
                end;
            }
        }
    }
}