#! /bin/bash

echo -e "\033[1;36mSourceando ROS2 Humble...\033[0m"
echo -e "\033[1;32m\tsource /opt/ros/humble/setup.bash\033[0m"
source /opt/ros/humble/setup.bash

echo -e "\033[1;36mCreación de aliases...\033[0m"
echo -e "\033[1;33m\t - Recuerda hacer src en 'erc_ws'"
echo -e "\033[1;32m\tsrc='source install/setup.bash'\033[0m"
alias src='source install/setup.bash'

echo -e "\033[1;36mHerramientas colcon...\033[0m"
echo -e "\033[1;32m\tsource /usr/share/colcon_cd/function/colcon_cd.sh\033[0m"
echo -e "\033[1;33m\t - usa 'colcon_cd <paquete>' para navegar entre paquetes\033[0m"
echo -e "\033[1;33m\t - y vuelve al worspace con 'colcon_cd'\033[0m"
echo -e "\033[1;32m\tsource /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash\033[0m"
echo -e "\033[1;33m\t - autocompletado de colcon\033[0m"
source /usr/share/colcon_cd/function/colcon_cd.sh
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash

echo -e "\033[1;36mExportando variables de entorno...\033[0m"
echo -e "\033[1;32m\tunset ROS_DOMAIN_DOMAIN \033[0m"
echo -e "\033[1;32m\tROS_LOCALHOST_ONLY=0 \033[0m"
unset ROS_DOMAIN_ID
export ROS_LOCALHOST_ONLY=0
echo -e "\033[1;33m\t - Importante tener estos en todos los dispositivos.\033[0m"

echo -e "\033[1;36mExportando otras cosas...\033[0m"
echo -e "\033[1;32m\tsource /usr/share/ros2cli/ros2cli/env.sh\033[0m"
eval "$(register-python-argcomplete3 ros2)"
eval "$(register-python-argcomplete3 colcon)"
