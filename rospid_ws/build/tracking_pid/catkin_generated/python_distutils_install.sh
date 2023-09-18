#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/root/rospid_ws/src/tracking_pid"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/root/rospid_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/root/rospid_ws/install/lib/python3/dist-packages:/root/rospid_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/root/rospid_ws/build" \
    "/usr/bin/python3" \
    "/root/rospid_ws/src/tracking_pid/setup.py" \
    egg_info --egg-base /root/rospid_ws/build/tracking_pid \
    build --build-base "/root/rospid_ws/build/tracking_pid" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/root/rospid_ws/install" --install-scripts="/root/rospid_ws/install/bin"
