__kernel void dnorm(
    __global numeric* output, const unsigned int count,
    __global numeric* input, const numeric mu, const numeric sigma)
{
    size_t i = get_global_id(0);
    if (i < count)
        output[i] =
            exp(-0.5 * ((input[i] - mu) / sigma) * ((input[i] - mu) / sigma)) /
            (sigma * sqrt( 2 * 3.14159265358979323846264338327950288 ) );
}
