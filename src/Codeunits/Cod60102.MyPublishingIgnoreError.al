codeunit 60102 MyPublishingIgnoreError
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

    //CommitBehavior::Ignore here, any subscribers attempt to commit will be ignored
    [CommitBehavior(CommitBehavior::Ignore)]
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