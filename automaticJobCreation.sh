#!/bin/bash
echo "Give full dataset name, then short sample name"
echo "E.g. ./automaticJobcreation.sh /ttHTobb_M125_TuneCUETP8M2_ttHtranche3_13TeV-powheg-pythia8/RunIISpring16MiniAODv2-premix_withHLT_80X_mcRun2_asymptotic_v14-v1/MINIAODSIM ttHTobb_M125_TuneCUETP8M2_ttHtranche3_13TeV-powheg-pythia8"
export DATASETNAME=$1
export SAMPLENAME=$2

cp ./automaticJobcreation_draft.conf ./$SAMPLENAME.conf
sed -i "s~#DATASETNAME#~${DATASETNAME}~g" ./$SAMPLENAME.conf
sed -i "s~#SAMPLENAME#~${SAMPLENAME}~g" ./$SAMPLENAME.conf
