execute_process(COMMAND "/root/rospid_ws/build/tracking_pid/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/root/rospid_ws/build/tracking_pid/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
