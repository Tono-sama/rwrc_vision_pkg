#!/bin/sh

CMD="roslaunch"

PID=$(pgrep -f ${CMD})

echo "PID: ${PID}"
echo "EXEC: kill ${PID}"

kill ${PID}

# TODO: create rosbag file
