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

## Example grid-control config files

#### Config-CMSSWJobs-Freiburg-GridkaStore.conf
* Own CMSSW installation will be used together with a CMSSW config
* Jobs will be run at bwUniCluster in Freiburg
* Jobs will be stored at Gridka NRG storage (needs dcms proxy)

## Automatic generation of grid-control config files
1. Edit the automaticJobCreation_draft.conf file according to your needs, while keeping the #DATASETNAME# and #SAMPLENAME# part.
1. Invoke the automaticJobCreation.sh giving two parameters
  1. Full name of dataset, e.g. /ttHTobb_M125_TuneCUETP8M2_ttHtranche3_13TeV-powheg-pythia8/RunIISpring16MiniAODv2-premix_withHLT_80X_mcRun2_asymptotic_v14-v1/MINIAODSIM
  1. Short name of sample, e.g. ttHTobb_M125_TuneCUETP8M2_ttHtranche3_13TeV-powheg-pythia8"
1. Check the generated config file which has the sample name as a basename.conf
1. Run config with grid-control via
  
  ```
  go.py [config file]
  ```



