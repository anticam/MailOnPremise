using {MailOnPremise.db as db} from '../db/data-model';

using {CV_SALES, CV_SESSION_INFO} from '../db/data-model';















service CatalogService @(path : '/catalog')
@(requires: 'authenticated-user')
{
    entity Sales
      as select * from db.Sales
      actions {
        action boost() returns Sales;
      }
    ;


    @readonly
    entity VSales
      as select * from CV_SALES
    ;

    @readonly
    entity SessionInfo
      as select * from CV_SESSION_INFO
    ;

    function topSales
      (amount: Integer)
      returns many Sales;















    type userScopes { identified: Boolean; authenticated: Boolean; };
    type userType { user: String; locale: String; scopes: userScopes; };
    function userInfo() returns userType;


};