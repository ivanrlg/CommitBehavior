pageextension 60100 "Sales Order Ext" extends "Sales Orders"
{
    actions
    {
        addafter("Show Order")
        {
            action(TestCommitBehaviorError)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Test CommitBehavior (Error)';
                Ellipsis = true;
                Image = Import;
                PromotedIsBig = true;
                Promoted = true;
                trigger OnAction()
                var
                    MyPublishingThrowError: Codeunit MyPublishingThrowError;
                begin
                    MyPublishingThrowError.DoImportantOperation();
                end;
            }
            action(TestCommitBehaviorIgnore)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Test CommitBehavior (Ignore)';
                Ellipsis = true;
                Image = Import;
                PromotedIsBig = true;
                Promoted = true;
                trigger OnAction()
                var
                    MyPublishingIgnoreError: Codeunit MyPublishingIgnoreError;
                begin
                    MyPublishingIgnoreError.DoImportantOperation();
                end;
            }
        }
    }
}
