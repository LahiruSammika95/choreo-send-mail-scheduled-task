function generateAdvertisementTable(AdvertisementList advertisementRecords) returns string {
    // Define the table header
    string[] columns = ["  Name   ", "Price", "Available qty", "Publisher", "Location", "id"];
    string separator = " | ";
    string wtable = separator;

    // Add the table header
    foreach var column in columns {
        wtable = wtable + column + separator;
    }
    wtable = wtable + "\n";
    
    // Add the table body
    foreach var advertisement in advertisementRecords.list {
        wtable = wtable + separator + advertisement.name + separator + advertisement.price.toString()
        + separator + advertisement.qty.toString() + separator + advertisement.publisher
        + separator + advertisement.province +  separator + advertisement.id + separator + "\n";
    }

    // Add the table footer
    wtable = wtable + "\n";
    return wtable;
}
