# Amazon S3 vs. Amazon EBS

* **Amazon S3:** Servicio de almacenamiento de objetos dentro de buckets. Resuelve el almacenamiento de grandes cantidades de archivos en cualquier formato sin depender de los discos de los servidores, gracias a su volumen ilimitado de datos.
* **Amazon EBS:** Almacenamiento en bloque de alto rendimiento para instancias Amazon EC2. Resuelve la necesidad de agregar volúmenes a las instancias para usarlos como un disco duro local conectado a un ordenador.

## Despliegue y Comandos

### 1. Configuración de variables
Copia el archivo de ejemplo y ajusta los valores:

```bash
cp terraform.tfvars.example terraform.tfvars
```

### 2. Comandos de despliegue
#### 1. Inicializa el directorio y descarga proveedores
```bash
terraform init
```

#### 2. Visualiza los cambios planeados antes de aplicar
```bash
terraform plan
```

#### 3. Despliega y crea la infraestructura en AWS
```bash
terraform apply
```

#### 4. Elimina todos los recursos creados cuando ya no los necesites
```bash
terraform destroy
```