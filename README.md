# grid-control-submission
Submission via grid-control on bwUniCluster and store on Gridka

## Installation of necessary software
1. Log into ekpcms6 and make sure that you are using the bash (e.g. zsh does not work)
2. Install grid-control in a folder, e.g. /usr/users via

  ```
svn co https://ekptrac.physik.uni-karlsruhe.de/svn/grid-control/trunk/grid-control
  ```
3. Source the proper grid environment 

  ```
source /cvmfs/grid.cern.ch/emi3ui-latest/etc/profile.d/setup-ui-example.sh
  ```
4. Create a dcms voms proxy and manually export the path to the proxy. During the creation of the proxy its path will be shown

  ```
voms-proxy-init --voms cms:/cms/dcms --valid 192:00
export X509_USER_PROXY=/tmp/x509up_u12117
```
5. Export path to grid-config

  ```
export PATH=$PATH:/usr/users/harrendorf/grid-control:/usr/users/harrendorf/grid-control/scripts
```
6. Clone this repository

  ```
git clone git@github.com:mharrend/grid-control-submission.git
```
7. Modify one of the conf scripts of this repository according to your needs

## Invocation of grid-config
1. Do not forget to do the following steps beforehand

  ```
source /cvmfs/grid.cern.ch/emi3ui-latest/etc/profile.d/setup-ui-example.sh

voms-proxy-init --voms cms:/cms/dcms --valid 192:00
export X509_USER_PROXY=/tmp/x509up_u12117

export PATH=$PATH:/usr/users/harrendorf/grid-control:/usr/users/harrendorf/grid-control/scripts
```
2. Invoke grid-control using a prepared config script
  
  ```
go.py script.conf
```
3. Check Gui output




