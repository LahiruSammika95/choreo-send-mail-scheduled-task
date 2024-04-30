function generatePromotedAdsTable(Advertisement[] promotedAdsRecord) returns string {

    string[] columns = ["    Advertiment ID   ", "Advertiment name", "Available qty", "Price", "Phone", "Location"];
    string separator = " | ";
    string promotedAdTable = separator;


    foreach var column in columns {
        promotedAdTable = promotedAdTable + column + separator;
    }
    promotedAdTable = promotedAdTable + "\n";
    

    foreach var promotedAdRecord in promotedAdsRecord {
        promotedAdTable = promotedAdTable + separator + promotedAdRecord.id.toString() + separator + promotedAdRecord.name
        + separator + promotedAdRecord.qty.toString() + separator + promotedAdRecord.price.toString()
        + separator + promotedAdRecord.tel 
        + separator + promotedAdRecord.location + separator + "\n";
    }

  
    promotedAdTable = promotedAdTable + "\n";
    return promotedAdTable;
}
