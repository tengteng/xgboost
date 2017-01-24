#-----------------------------------------------------
#  xgboost: the configuration compile script
#
#  If you want to change the configuration, please use the following
#  steps. Assume you are on the root directory of xgboost.
#  First copy this file so that any local changes will be ignored by git
#
#  $ cp make/config.mk .
#
#  Next modify the according entries in the copied file and then compile by
#
#  $ make
#
#  or build in parallel with 8 threads
#
#  $ make -j8
#----------------------------------------------------

# choice of compiler, by default use system preference.
export CC = g++-6
export CXX = g++-6
# export MPICXX = mpicxx

# the additional link flags you want to add
ADD_LDFLAGS =

# the additional compile flags you want to add
ADD_CFLAGS =

# Whether enable openmp support, needed for multi-threading.
USE_OPENMP = 1

# whether use HDFS support during compile
USE_HDFS = 0

# whether use AWS S3 support during compile
USE_S3 = 0

# whether use Azure blob support during compile
USE_AZURE = 0

# Rabit library version,
# - librabit.a Normal distributed version.
# - librabit_empty.a Non distributed mock version,
LIB_RABIT = librabit.a

# path to libjvm.so
LIBJVM=$(JAVA_HOME)/jre/lib/amd64/server

# whether to test with coverage measurement or not. (only used for `make cover`)
# measured with gcov and html report generated with lcov if it is installed.
# this disables optimization to ensure coverage information is correct
TEST_COVER = 0

# path to gtest library (only used when $BUILD_TEST=1)
# there should be an include path in $GTEST_PATH/include and library in $GTEST_PATH/lib
GTEST_PATH =

# List of additional plugins, checkout plugin folder.
# uncomment the following lines to include these plugins
# you can also add your own plugin like this
#
# XGB_PLUGINS += plugin/example/plugin.mk
