from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup 

# fetch values from package.xml
setup_args = generate_distutils_setup(
packages=['test_class'],
package_dir={'': 'src/ros_ci'},
)
setup(**setup_args)
