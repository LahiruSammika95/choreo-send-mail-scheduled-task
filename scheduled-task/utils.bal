function generatePromotedAdsTable(Advertisement[] promotedAdsRecord) returns string {
    // Define the table header
    string[] columns = ["    Advertiment ID   ", "Advertiment name", "Available qty", "Price", "Phone", "Location"];
    string separator = " | ";
    string wtable = separator;

    // Add the table header
    foreach var column in columns {
        wtable = wtable + column + separator;
    }
    wtable = wtable + "\n";
    
    // Add the table body
    foreach var wrecord in promotedAdsRecord {
        wtable = wtable + separator + wrecord.id.toString() + separator + wrecord.name
        + separator + wrecord.qty.toString() + separator + wrecord.price.toString()
        + separator + wrecord.tel 
        + separator + wrecord.location + separator + "\n";
    }

    // Add the table footer
    wtable = wtable + "\n";
    return wtable;
}
