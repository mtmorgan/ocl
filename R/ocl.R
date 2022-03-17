.ocl_system_file <-
    function(...)
{
    file <- system.file(package = "ocl", ...)
    readLines(file)
}
