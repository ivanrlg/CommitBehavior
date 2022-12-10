codeunit 60101 MyPublishingThrowError
{
    procedure DoImportantOperation()
    begin
        // Do work
        OnSomethingChangedEvent();
        // Do more work

        // Only the internal method as required may or may not commit.
        // That is why the Validate is used as a decisive element.
        if Validate() then
            Commit()
        else
            Error('Validation failed');
    end;

    //CommitBehavior::// This will throw an error. 
    //No further code will be executed and the user will see a dialog to contact the system administrator.
    [CommitBehavior(CommitBehavior::Error)]
    [IntegrationEvent(true, false)]
    procedure OnSomethingChangedEvent()
    begin
    end;

    procedure Validate() result: Boolean
    begin
        // validation code 
        exit(false);
    end;

}