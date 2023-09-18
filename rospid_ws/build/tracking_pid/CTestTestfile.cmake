# CMake generated Testfile for 
# Source directory: /root/rospid_ws/src/tracking_pid
# Build directory: /root/rospid_ws/build/tracking_pid
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_tracking_pid_gtest_test_controller "/root/rospid_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/root/rospid_ws/build/test_results/tracking_pid/gtest-test_controller.xml" "--return-code" "/root/rospid_ws/devel/lib/tracking_pid/test_controller --gtest_output=xml:/root/rospid_ws/build/test_results/tracking_pid/gtest-test_controller.xml")
set_tests_properties(_ctest_tracking_pid_gtest_test_controller PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/root/rospid_ws/src/tracking_pid/CMakeLists.txt;120;catkin_add_gtest;/root/rospid_ws/src/tracking_pid/CMakeLists.txt;0;")
add_test(_ctest_tracking_pid_nosetests_test.test_interpolator.py "/root/rospid_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/root/rospid_ws/build/test_results/tracking_pid/nosetests-test.test_interpolator.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /root/rospid_ws/build/test_results/tracking_pid" "/usr/bin/nosetests3 -P --process-timeout=60 /root/rospid_ws/src/tracking_pid/test/test_interpolator.py --with-xunit --xunit-file=/root/rospid_ws/build/test_results/tracking_pid/nosetests-test.test_interpolator.py.xml")
set_tests_properties(_ctest_tracking_pid_nosetests_test.test_interpolator.py PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/root/rospid_ws/src/tracking_pid/CMakeLists.txt;124;catkin_add_nosetests;/root/rospid_ws/src/tracking_pid/CMakeLists.txt;0;")
add_test(_ctest_tracking_pid_rostest_test_tracking_pid_test_tracking_pid.test "/root/rospid_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/root/rospid_ws/build/test_results/tracking_pid/rostest-test_tracking_pid_test_tracking_pid.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/root/rospid_ws/src/tracking_pid --package=tracking_pid --results-filename test_tracking_pid_test_tracking_pid.xml --results-base-dir \"/root/rospid_ws/build/test_results\" /root/rospid_ws/src/tracking_pid/test/tracking_pid/test_tracking_pid.test ")
set_tests_properties(_ctest_tracking_pid_rostest_test_tracking_pid_test_tracking_pid.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/root/rospid_ws/src/tracking_pid/CMakeLists.txt;126;add_rostest;/root/rospid_ws/src/tracking_pid/CMakeLists.txt;0;")
