function doad(_this){
    header('Content-Description: File Transfer');
    header("Content-type: application/mp3");
    header("Cache-Control: no-cache, must-revalidate");
    header("Content-Disposition: attachment; filename=".ucwords($mtitle).".mp3");
    header('Pragma: no-cache');
    header('Expires: 0');
    header('Pragma: public');
    //Clear system output buffer
    flush();
    //Read the size of the file
    readfile('uploads/'.ucwords($upath))
    //Terminate from the script
    die();
    else{
      echo "File does not exist.";
    }
    else
    echo "Filename is not defined."}