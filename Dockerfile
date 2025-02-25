FROM python:3.9-slim

# Instalar Jupyter y Kernel Gateway
RUN pip install jupyter jupyter_kernel_gateway

# Exponer el puerto 9000
EXPOSE 9000

# Iniciar Jupyter Kernel Gateway
CMD ["jupyter", "kernelgateway", "--ip=0.0.0.0", "--port=9000", "--KernelGatewayApp.api='kernel_gateway.notebook_http'"]
