FROM python:3.9-slim

# Instalar Jupyter y Kernel Gateway
RUN pip install jupyter jupyter_kernel_gateway

# Exponer el puerto 9000
EXPOSE 9000

# Configurar Jupyter para permitir acceso externo
CMD jupyter kernelgateway --KernelGatewayApp.ip=0.0.0.0 --KernelGatewayApp.port=9000 --KernelGatewayApp.allow_origin="*" --KernelGatewayApp.allow_credentials=True --KernelGatewayApp.auth_token=""
