ALL_SUBSYSTEMS+=EgammaAnalysis
subdirs_src_EgammaAnalysis = src_EgammaAnalysis_ElectronTools
ALL_PACKAGES += EgammaAnalysis/ElectronTools
subdirs_src_EgammaAnalysis_ElectronTools := src_EgammaAnalysis_ElectronTools_plugins src_EgammaAnalysis_ElectronTools_python src_EgammaAnalysis_ElectronTools_src src_EgammaAnalysis_ElectronTools_test
ifeq ($(strip $(PyEgammaAnalysisElectronTools)),)
PyEgammaAnalysisElectronTools := self/src/EgammaAnalysis/ElectronTools/python
src_EgammaAnalysis_ElectronTools_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EgammaAnalysis/ElectronTools/python)
PyEgammaAnalysisElectronTools_files := $(patsubst src/EgammaAnalysis/ElectronTools/python/%,%,$(wildcard $(foreach dir,src/EgammaAnalysis/ElectronTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyEgammaAnalysisElectronTools_LOC_USE := self cmssw 
PyEgammaAnalysisElectronTools_PACKAGE := self/src/EgammaAnalysis/ElectronTools/python
ALL_PRODS += PyEgammaAnalysisElectronTools
PyEgammaAnalysisElectronTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEgammaAnalysisElectronTools,src/EgammaAnalysis/ElectronTools/python,src_EgammaAnalysis_ElectronTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyEgammaAnalysisElectronTools,src/EgammaAnalysis/ElectronTools/python))
endif
ALL_COMMONRULES += src_EgammaAnalysis_ElectronTools_python
src_EgammaAnalysis_ElectronTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EgammaAnalysis_ElectronTools_python,src/EgammaAnalysis/ElectronTools/python,PYTHON))
ifeq ($(strip $(EgammaEGammaAnalysisToolsTest)),)
EgammaEGammaAnalysisToolsTest := self/src/EgammaAnalysis/ElectronTools/test
EgammaEGammaAnalysisToolsTest_files := $(patsubst src/EgammaAnalysis/ElectronTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EgammaAnalysis/ElectronTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EgammaAnalysis/ElectronTools/test/$(file). Please fix src/EgammaAnalysis/ElectronTools/test/BuildFile.))))
EgammaEGammaAnalysisToolsTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaAnalysis/ElectronTools/test/BuildFile
EgammaEGammaAnalysisToolsTest_LOC_USE := self cmssw DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoParticleFlow/PFProducer EgammaAnalysis/ElectronTools clhep root roottmva
EgammaEGammaAnalysisToolsTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EgammaEGammaAnalysisToolsTest,EgammaEGammaAnalysisToolsTest,$(SCRAMSTORENAME_LIB),src/EgammaAnalysis/ElectronTools/test))
EgammaEGammaAnalysisToolsTest_PACKAGE := self/src/EgammaAnalysis/ElectronTools/test
ALL_PRODS += EgammaEGammaAnalysisToolsTest
EgammaEGammaAnalysisToolsTest_INIT_FUNC        += $$(eval $$(call Library,EgammaEGammaAnalysisToolsTest,src/EgammaAnalysis/ElectronTools/test,src_EgammaAnalysis_ElectronTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
EgammaEGammaAnalysisToolsTest_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,EgammaEGammaAnalysisToolsTest,src/EgammaAnalysis/ElectronTools/test))
endif
ALL_COMMONRULES += src_EgammaAnalysis_ElectronTools_test
src_EgammaAnalysis_ElectronTools_test_parent := EgammaAnalysis/ElectronTools
src_EgammaAnalysis_ElectronTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EgammaAnalysis_ElectronTools_test,src/EgammaAnalysis/ElectronTools/test,TEST))
ALL_SUBSYSTEMS+=PhysicsTools
subdirs_src_PhysicsTools = src_PhysicsTools_PatAlgos
ALL_PACKAGES += PhysicsTools/PatAlgos
subdirs_src_PhysicsTools_PatAlgos := src_PhysicsTools_PatAlgos_plugins src_PhysicsTools_PatAlgos_python src_PhysicsTools_PatAlgos_scripts src_PhysicsTools_PatAlgos_src src_PhysicsTools_PatAlgos_test
ifeq ($(strip $(PyPhysicsToolsPatAlgos)),)
PyPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/python
src_PhysicsTools_PatAlgos_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatAlgos/python)
PyPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatAlgos_LOC_USE := self cmssw 
PyPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/python
ALL_PRODS += PyPhysicsToolsPatAlgos
PyPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python,src_PhysicsTools_PatAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_python
src_PhysicsTools_PatAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_python,src/PhysicsTools/PatAlgos/python,PYTHON))
src_PhysicsTools_PatAlgos_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/PhysicsTools/PatAlgos/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_PhysicsTools_PatAlgos_scripts,src/PhysicsTools/PatAlgos/scripts,$(SCRAMSTORENAME_BIN),*))
ifeq ($(strip $(runtestPhysicsToolsPatAlgos)),)
runtestPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,runtestPhysicsToolsPatAlgos.cpp,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
runtestPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/test
runtestPhysicsToolsPatAlgos_TEST_RUNNER_CMD :=  runtestPhysicsToolsPatAlgos  /bin/bash PhysicsTools/PatAlgos/test runtests.sh
runtestPhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
runtestPhysicsToolsPatAlgos_LOC_USE := self cmssw FWCore/Utilities
runtestPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += runtestPhysicsToolsPatAlgos
runtestPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Binary,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
runtestPhysicsToolsPatAlgos_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test))
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_testAnalyzers)),)
PhysicsToolsPatAlgos_testAnalyzers := self/src/PhysicsTools/PatAlgos/test
PhysicsToolsPatAlgos_testAnalyzers_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,private/*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
PhysicsToolsPatAlgos_testAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
PhysicsToolsPatAlgos_testAnalyzers_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/BTauReco PhysicsTools/PatUtils DataFormats/PatCandidates root
PhysicsToolsPatAlgos_testAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_testAnalyzers,PhysicsToolsPatAlgos_testAnalyzers,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatAlgos/test))
PhysicsToolsPatAlgos_testAnalyzers_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += PhysicsToolsPatAlgos_testAnalyzers
PhysicsToolsPatAlgos_testAnalyzers_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
PhysicsToolsPatAlgos_testAnalyzers_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_test
src_PhysicsTools_PatAlgos_test_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_test,src/PhysicsTools/PatAlgos/test,TEST))
ALL_SUBSYSTEMS+=RecoMET
subdirs_src_RecoMET = src_RecoMET_METFilters
ALL_PACKAGES += RecoMET/METFilters
subdirs_src_RecoMET_METFilters := src_RecoMET_METFilters_data src_RecoMET_METFilters_plugins src_RecoMET_METFilters_python src_RecoMET_METFilters_test
ifeq ($(strip $(PyRecoMETMETFilters)),)
PyRecoMETMETFilters := self/src/RecoMET/METFilters/python
src_RecoMET_METFilters_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoMET/METFilters/python)
PyRecoMETMETFilters_files := $(patsubst src/RecoMET/METFilters/python/%,%,$(wildcard $(foreach dir,src/RecoMET/METFilters/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoMETMETFilters_LOC_USE := self cmssw 
PyRecoMETMETFilters_PACKAGE := self/src/RecoMET/METFilters/python
ALL_PRODS += PyRecoMETMETFilters
PyRecoMETMETFilters_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoMETMETFilters,src/RecoMET/METFilters/python,src_RecoMET_METFilters_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoMETMETFilters,src/RecoMET/METFilters/python))
endif
ALL_COMMONRULES += src_RecoMET_METFilters_python
src_RecoMET_METFilters_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMET_METFilters_python,src/RecoMET/METFilters/python,PYTHON))
ALL_COMMONRULES += src_RecoMET_METFilters_test
src_RecoMET_METFilters_test_parent := RecoMET/METFilters
src_RecoMET_METFilters_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMET_METFilters_test,src/RecoMET/METFilters/test,TEST))
ALL_SUBSYSTEMS+=TopQuarkAnalysis
subdirs_src_TopQuarkAnalysis = src_TopQuarkAnalysis_Configuration
ALL_PACKAGES += TopQuarkAnalysis/Configuration
subdirs_src_TopQuarkAnalysis_Configuration := src_TopQuarkAnalysis_Configuration_python src_TopQuarkAnalysis_Configuration_test
ifeq ($(strip $(PyTopQuarkAnalysisConfiguration)),)
PyTopQuarkAnalysisConfiguration := self/src/TopQuarkAnalysis/Configuration/python
src_TopQuarkAnalysis_Configuration_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/Configuration/python)
PyTopQuarkAnalysisConfiguration_files := $(patsubst src/TopQuarkAnalysis/Configuration/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisConfiguration_LOC_USE := self cmssw 
PyTopQuarkAnalysisConfiguration_PACKAGE := self/src/TopQuarkAnalysis/Configuration/python
ALL_PRODS += PyTopQuarkAnalysisConfiguration
PyTopQuarkAnalysisConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisConfiguration,src/TopQuarkAnalysis/Configuration/python,src_TopQuarkAnalysis_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisConfiguration,src/TopQuarkAnalysis/Configuration/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Configuration_python
src_TopQuarkAnalysis_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Configuration_python,src/TopQuarkAnalysis/Configuration/python,PYTHON))
ALL_COMMONRULES += src_TopQuarkAnalysis_Configuration_test
src_TopQuarkAnalysis_Configuration_test_parent := TopQuarkAnalysis/Configuration
src_TopQuarkAnalysis_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Configuration_test,src/TopQuarkAnalysis/Configuration/test,TEST))
