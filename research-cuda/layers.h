#include <iostream>
#include <cuda_runtime.h>
#include <cublas_v2.h>

class Layer{
Public:
    Layer(int in_s, int out_s)~Layer();

    void forward(double* h_input, double* h_output);
    void backward(double* d_error_top,double* d_error_bottom, double* eta);

Privte:
    double* d_weights;
    double* d_biases;

    double* d_workspace;

    double* d_last_input;

    int input_size;
    int output_size;

    cublasHandle_t handle;
}
