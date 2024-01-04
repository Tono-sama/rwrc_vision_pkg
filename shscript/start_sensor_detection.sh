#!/bin/sh

LOG_DIR="/home/xavier_nx_001/data/log"

DATE=$(date +"%Y%m%d%H%M%S")

LOG_FILE_NAME="${LOG_DIR}/${DATE}.log"

CMD="roslaunch rwrc_vision_pkg start_sensor_detection.launch"

echo "LOG_FILE_NAME: ${LOG_FILE_NAME}"
echo "EXEC: (${CMD} > ${LOG_FILE_NAME} 2>&1)&"

(${CMD} > ${LOG_FILE_NAME} 2>&1)&
echo "PID: $!"

# TODO: create rosbag file
