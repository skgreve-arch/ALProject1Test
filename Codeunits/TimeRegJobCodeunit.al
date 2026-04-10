codeunit 50113 "Time Reg Job"
{
    trigger OnRun()
    begin
        PostTimeRegistrations();
        CheckNegativeProjects();
    end;

    procedure PostTimeRegistrations()
    var
        TimeReg: Record "Time Registration";
        Project: Record Project;
    begin
        TimeReg.SetRange(Posted, false);

        if TimeReg.FindSet() then
            repeat
                if Project.Get(TimeReg."Project No.") then begin
                    Project."Used Hours" += TimeReg.Hours;
                    Project.Modify();
                end;

                TimeReg.Posted := true;
                TimeReg.Modify();
            until TimeReg.Next() = 0;
    end;

    procedure CheckNegativeProjects()
    var
        Project: Record Project;
        EmailMsg: Codeunit "Email Message";
        EmailSend: Codeunit Email;
        Body: Text;
    begin
        if Project.FindSet() then
            repeat
                if Project."Remaining Hours" < 0 then
                    Body += Project."No." + ' is over budget\';
            until Project.Next() = 0;

        if Body <> '' then begin
            EmailMsg.Create(
                'manager@example.com',
                'Over Budget Projects',
                Body,
                true
            );

            EmailSend.Send(
                EmailMsg,
                Enum::"Email Scenario"::"Student Scenario"
            );
        end;
    end;
}