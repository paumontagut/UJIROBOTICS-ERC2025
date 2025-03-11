# UJIROBOTICS_ERC2025

## Pending tasks
- [ ] Investigar integración continua en el repositorio.

## Estructura provisional

```plaintext
📦 UJIROBOTICS-ERC2025/
│
├── 📁 erc2025_ws/              # Workspace principal de ROS 2
│   ├── 📁 src/                 # Código fuente organizado en paquetes de ROS
│   │   ├── 📁 tests_erc/       # Paquete de pruebas específicas del ERC
│   │   │   ├── 📁 launch/      # Archivos de lanzamiento para ejecutar pruebas
│   │   │   ├── 📁 scenarios/   # Configuración de cada prueba (waypoints, obstáculos)    
│   │   │   ├── 📁 results/     # Logs y métricas de cada test realizado
│   │   │   ├── 📁 scripts/     # Scripts para automatizar ejecución y análisis
│   │   │   ├── CMakeLists.txt  # Configuración de compilación (si usa C++)
│   │   │   ├── package.xml     # Definición del paquete ROS
│   │   │  
│   │   ├── 📁 navigation/      # Nodo de navegación autónoma
│   │   │   ├── include/        # Headers (C++)
│   │   │   ├── src/            # Implementación (C++)
│   │   │   ├── launch/         # Archivos de lanzamiento ROS
│   │   │   ├── config/         # Configuración de SLAM, costmap, planners
│   │   │   ├── CMakeLists.txt  # Compilación con colcon
│   │   │   ├── package.xml     # Metadatos del paquete ROS
│   │   │
│   │   ├── 📁 vision/          # Nodo de visión artificial
│   │   ├── 📁 manipulation/    # Nodo de control del brazo robótico
│   │   ├── 📁 communication/   # Nodo de comunicación Jetson-Orin ↔ Base
│   │   ├── 📁 simulation/      # Nodo para simulaciones en Gazebo
│   │   ├── 📁 telemetry/       # Nodo para gestionar logs y datos
│   │   ├── 📁 ui/              # Nodo para interfaz gráfica (rqt, web)
│   │  
│   │   ├── 📁 hardware/        # Paquetes ROS para sensores y actuadores
│   │   │   ├── 📁 zed/         # Nodo para la cámara ZED (StereoLabs)
│   │   │   │   ├── launch/     # Archivos de lanzamiento
│   │   │   │   ├── config/     # Configuración de parámetros
│   │   │   │   ├── urdf/       # Modelo de la cámara en el rover
│   │   │   │   ├── CMakeLists.txt
│   │   │   │   ├── package.xml
│   │   │   ├── 📁 realsense/   # Nodo para la cámara Intel RealSense
│   │   │   ├── 📁 lidar/       # Nodo para el LIDAR Unitree 4D y 2D
│   │   │   ├── 📁 manipulator/ # Nodo de control del brazo robótico
│   │  
│   ├── 📁 install/             # Archivos compilados
│   ├── 📁 build/               # Carpeta generada en la compilación
│   ├── 📁 log/                 # Logs de ROS
│   ├── setup.py                # Instalación de paquetes Python
│   ├── setup.bash              # Script para cargar el entorno ROS
│  
├── 📁 docs/                    # Documentación y reportes
├── 📁 hardware/                # Modelos CAD, electrónica, sensores
├── 📁 media/                   # Imágenes y vídeos del rover
├── 📁 deployment/              # Scripts de despliegue en hardware
├── README.md                   # Información general del repositorio
├── .gitignore                   # Archivos a ignorar en Git
└── LICENSE                      # Licencia del código
