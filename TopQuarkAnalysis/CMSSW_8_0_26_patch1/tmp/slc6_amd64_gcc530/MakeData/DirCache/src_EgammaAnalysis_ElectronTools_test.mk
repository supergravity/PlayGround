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
