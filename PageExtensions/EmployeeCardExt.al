pageextension 50112 EmployeeExt extends "Employee Card"
{
    actions
    {
        addlast(Processing)
        {
            action(ViewTimeRegistrations)
            {
                Caption = 'Time Registrations';

                trigger OnAction()
                var
                    TimeReg: Record "Time Registration";
                begin
                    TimeReg.SetRange("Employee No.", Rec."No.");
                    PAGE.Run(PAGE::"Time Registration List", TimeReg);
                end;
            }
        }
    }
}