table 123456700 "Seminar Setup"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    
    Caption = 'Seminar Setup';

    fields
    {
        field(10; "Primary Key";Code[10])
        {
            Caption = 'Primary Key';

        }        

        field(20;"Seminar Nos.";Code[20])
        {
            caption = 'Seminar Nos.';

            TableRelation = "No. Series";
        }
        field(30;"Seminar Registration No.";Code[20])
        {
            caption = 'Seminar Registration Nos.';

            TableRelation = "No. Series";
        }
        field(40;"Posted Seminar Reg. Nos.";Code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';

            TableRelation = "No. Series";
        }

    }

    keys
    {
        key(PK;"Primary Key")
        {
            Clustered = true;
        }
    }
       

}