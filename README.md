# ocl to Enable Use of OpenCL Functions from R

This ‘proof-of-concept’ package demonstrates use of the R OpenCL
package to provide an R-oriented interface to OpenCL implementations
provided in the package. The basics include:

-	Import OpenCL in the DESCRIPTION file
-	Write OpenCL scripts in inst/ (dnorm implemented in OpenCL)
-	Use the helper function in R/ocl.R to source the code
-	Provide a user-friendly interface as in R/examples.R (dnorm_ocl)

After loading the package, use the `dnorm_ocl()` function as

```{r}
> dnorm(1:10)
## [1] 2.419707e-01 5.399097e-02 4.431848e-03 1.338302e-04 1.486720e-06
## [6] 6.075883e-09 9.134720e-12 5.052271e-15 1.027977e-18 7.694599e-23
> dnorm_ocl(1:10)
## [1] 2.419707e-01 5.399097e-02 4.431848e-03 1.338302e-04 1.486719e-06
## [6] 6.075882e-09 9.134721e-12 5.052271e-15 1.027977e-18 7.694598e-23
```
