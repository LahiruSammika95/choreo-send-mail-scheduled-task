import wso2/choreo.sendemail;
import ballerina/io;
import ballerina/sql;
import ballerinax/mysql;
import ballerinax/mysql.driver as _;

configurable string host = ?;
configurable string user = ?;
configurable string password = ?;
configurable string database = ?;
configurable int port = ?;
configurable string email = ?;
const emailSubject = "Promoted advertisements";

type PromotedAdsRecordList record {
    Advertisement[] list;
};



type Advertisement record {|
    int id;
    string name;
    string publisher;
    string image;
     string image_id;
     int category;
     string tel;
     string tel2;
     decimal price;
     int qty;
     string location;
     decimal lat;
     decimal lng;
     string unit;
     string province;
     boolean promoted;
     boolean published;
     string address;
     int count;
     string description;
|};

final mysql:Client mysqlClient = check new (host = host,
                                            user = user,
                                            password = password,
                                            database = database, port = port);

sendemail:Client emailClient = check new ();

public function main() returns error? {

        // string[] advertisementsIDs = [];

    
       
        // stream<Advertisement, sql:Error?> resultStream = mysqlClient->query(`select * from advertisements where promoted=${true}`);        
        // check from Advertisement advertisement in resultStream
        //     do {
        //         advertisementsIDs.push(advertisement.id.toString() + " - " +advertisement.name+ " - " + advertisement.tel+ " - " + advertisement.price.toString());
        //     };
        
        Advertisement[] advertisements = [];

    
       
        stream<Advertisement, sql:Error?> resultStream = mysqlClient->query(`select * from advertisements where promoted=${true}`);        
        check from Advertisement advertisement in resultStream
            do {
                advertisements.push(advertisement);
            };

       
        
  
    // Send the email
    string _ = check emailClient->sendEmail(email, emailSubject,generatePromotedAdsTable(advertisements));
    io:println("Successfully sent the email.");
}
