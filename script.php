<?php
// Parse incoming information if above form was posted
if($_POST[ref] == "csv2sql")
{
    echo "<h2>SQL Query Output:</h2>";
    // Get information from form & prepare it for parsing
    $table_name = 'contact'
		$fileName = 'Contact.php';
    $csv_data = fopen($fileName, filesize($fileName));
    $column_names = explode(";",fgets($csv_data);
    // Generate base query
    $base_query = "INSERT INTO $table_name (";
    $first = true;
 
    foreach($column_names as $column_name)
    {
        if(!$first)
        $base_query .= ", ";
        $column_name = trim($column_name);
        $base_query .= "`$column_name`";
        $first = false;
    }
 
    $base_query .= ") ";
    // Loop through all CSV data rows and generate separate
    // INSERT queries based on base_query + the row information
    $last_data_row = count($csv_array) - 1;
 
    for($counter = 1; $counter < $last_data_row; $counter++)
    {
        $value_query = "VALUES (";
        $first = true;
        $data_row = explode(",", $csv_array[$counter]);
        $value_counter = 0;
 
        foreach($data_row as $data_value)
        {
            if(!$first)
            $value_query .= ", ";
            $data_value = trim($data_value);
            $value_query .= "'$data_value'";
            $first = false;
        }
 
        $value_query .= ")";
        // Combine generated queries to generate final query
        $query = $base_query .$value_query .";";
        echo "$query <br />";
    }
		fclose($csv_data);
}
