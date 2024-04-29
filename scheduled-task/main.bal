import wso2/choreo.sendemail;
import ballerina/io;


configurable string email = ?;
const emailSubject = "Promoted advertisements";


sendemail:Client emailClient = check new ();

public function main() returns error? {


  
    // Send the email
    string _ = check emailClient->sendEmail(email, emailSubject, "Test body");
    io:println("Successfully sent the email.");
}
