# .bash_profile

# Set main variables
export HOSTNAME=`hostname`
export PARENT_PID=$$
export DB2CLIINIPATH=/etc/
BASE_DIR=/opt/data_mgmt
CMN_DIR=${BASE_DIR}/common
DEPT_DIR=${BASE_DIR}/${DEPTIND}

# Set common directories
export DATA_DIR=${CMN_DIR}/temp
export INCLUDE_DIR=${CMN_DIR}/include
export CMN_PROC_DIR=${CMN_DIR}/procs

# Set departmental directories
export SCRIPT_DIR=${DEPT_DIR}/scripts
export PROC_DIR=${DEPT_DIR}/procs
export LOG_DIR=${DEPT_DIR}/logs

# User specific environment and startup programs
export PATH=$PATH:$HOME/bin:$HOME/.local/bin
export ftp_proxy=http://webproxy.bcbst.com:80
export http_proxy=http://webproxy.bcbst.com:80
export https_proxy=https://webproxy.bcbst.com:80

export ids=/opt/data_mgmt/ids/
export com=/opt/data_mgmt/common/

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
