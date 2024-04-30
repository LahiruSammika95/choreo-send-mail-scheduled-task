function generatePromotedAdsTable(Advertisement[] promotedAdsRecord) returns string {
    // Define the table header
    string[] columns = ["   Date and Time   ", "Description", "Temperature", "Humidity", "Wind", "Cloud"];
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
        + separator + wrecord.address.toString() + " m/s, " + (wrecord.description).toString()
        + "°" + separator + (wrecord.location).toString() + "%" + separator + "\n";
    }

    // Add the table footer
    wtable = wtable + "\n";
    return wtable;
}
