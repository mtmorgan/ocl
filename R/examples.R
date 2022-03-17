#' @importFrom OpenCL oclContext oclSimpleKernel as.clBuffer oclRun
#'
#' @export
dnorm_ocl <-
    function(x, mu = 0, sigma = 1, ..., ctx = oclContext(precision = "best"))
{
    code <- .ocl_system_file("examples.cl")
    kernel <- withCallingHandlers({
        oclSimpleKernel(ctx, "dnorm", code)
    }, warning = function(condition) {
        txt <- "OpenCL implementation does not support out-of-order execution"
        if (startsWith(conditionMessage(condition), txt))
            invokeRestart("muffleWarning")
    })
    buffer <- as.clBuffer(as.numeric(x), ctx)
    result <- oclRun(kernel, length(x), buffer, mu, sigma)
    as.numeric(result)
}
