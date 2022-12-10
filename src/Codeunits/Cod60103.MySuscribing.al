codeunit 60103 MySuscribing
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyPublishingIgnoreError, 'OnSomethingChangedEvent', '', true, true)]
    local procedure OnSomethingChangedEvent1()
    begin
        Commit();
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyPublishingThrowError, 'OnSomethingChangedEvent', '', true, true)]
    local procedure OnSomethingChangedEvent2()
    begin
        Commit();
    end;
}
