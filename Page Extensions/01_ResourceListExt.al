pageextension 123456701 CSD_resourceLisExt extends "Resource List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }   

        addafter(Type) 
        {
            field("Resource Type";"CSD_Resource Type")
            {

            }
            field("Maximum Participants";"CSD_Maximum Participants")
            {
                Visible=false;
            }
        }
    }

    
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        Showtype := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type)=format(Type::Machine));
        FilterGroup(0);    
    end;
   
    var
        [InDataSet]
        ShowMaxField:Boolean;
        [InDataSet]
        Showtype:Boolean;
}