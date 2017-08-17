ifeq ($(strip $(EgammaAnalysisElectronToolsPlugins)),)
EgammaAnalysisElectronToolsPlugins := self/src/EgammaAnalysis/ElectronTools/plugins
PLUGINS:=yes
EgammaAnalysisElectronToolsPlugins_files := $(patsubst src/EgammaAnalysis/ElectronTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EgammaAnalysis/ElectronTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EgammaAnalysis/ElectronTools/plugins/$(file). Please fix src/EgammaAnalysis/ElectronTools/plugins/BuildFile.))))
EgammaAnalysisElectronToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaAnalysis/ElectronTools/plugins/BuildFile
EgammaAnalysisElectronToolsPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/PatCandidates DataFormats/Common DataFormats/VertexReco PhysicsTools/UtilAlgos FWCore/ServiceRegistry Geometry/CaloTopology Geometry/Records EgammaAnalysis/ElectronTools RecoEcal/EgammaCoreTools PhysicsTools/SelectorUtils
EgammaAnalysisElectronToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EgammaAnalysisElectronToolsPlugins,EgammaAnalysisElectronToolsPlugins,$(SCRAMSTORENAME_LIB),src/EgammaAnalysis/ElectronTools/plugins))
EgammaAnalysisElectronToolsPlugins_PACKAGE := self/src/EgammaAnalysis/ElectronTools/plugins
ALL_PRODS += EgammaAnalysisElectronToolsPlugins
EgammaAnalysis/ElectronTools_forbigobj+=EgammaAnalysisElectronToolsPlugins
EgammaAnalysisElectronToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,EgammaAnalysisElectronToolsPlugins,src/EgammaAnalysis/ElectronTools/plugins,src_EgammaAnalysis_ElectronTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
EgammaAnalysisElectronToolsPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,EgammaAnalysisElectronToolsPlugins,src/EgammaAnalysis/ElectronTools/plugins))
endif
ALL_COMMONRULES += src_EgammaAnalysis_ElectronTools_plugins
src_EgammaAnalysis_ElectronTools_plugins_parent := EgammaAnalysis/ElectronTools
src_EgammaAnalysis_ElectronTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EgammaAnalysis_ElectronTools_plugins,src/EgammaAnalysis/ElectronTools/plugins,PLUGINS))
ifeq ($(strip $(EgammaAnalysis/ElectronTools)),)
ALL_COMMONRULES += src_EgammaAnalysis_ElectronTools_src
src_EgammaAnalysis_ElectronTools_src_parent := EgammaAnalysis/ElectronTools
src_EgammaAnalysis_ElectronTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_EgammaAnalysis_ElectronTools_src,src/EgammaAnalysis/ElectronTools/src,LIBRARY))
EgammaAnalysisElectronTools := self/EgammaAnalysis/ElectronTools
EgammaAnalysis/ElectronTools := EgammaAnalysisElectronTools
EgammaAnalysisElectronTools_files := $(patsubst src/EgammaAnalysis/ElectronTools/src/%,%,$(wildcard $(foreach dir,src/EgammaAnalysis/ElectronTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
EgammaAnalysisElectronTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/EgammaAnalysis/ElectronTools/BuildFile
EgammaAnalysisElectronTools_LOC_USE := self cmssw FWCore/Framework FWCore/ServiceRegistry FWCore/Utilities FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloTopology CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects RecoEgamma/EgammaTools RecoEcal/EgammaCoreTools DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/PatCandidates DataFormats/EgammaReco DataFormats/TrackReco TrackingTools/IPTools PhysicsTools/UtilAlgos PhysicsTools/SelectorUtils CommonTools/CandAlgos clhep root rootcore roottmva
EgammaAnalysisElectronTools_LCGDICTS  := x 
EgammaAnalysisElectronTools_PRE_INIT_FUNC += $$(eval $$(call LCGDict,EgammaAnalysisElectronTools,src/EgammaAnalysis/ElectronTools/src/classes.h,src/EgammaAnalysis/ElectronTools/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
EgammaAnalysisElectronTools_EX_LIB   := EgammaAnalysisElectronTools
EgammaAnalysisElectronTools_EX_USE   := $(foreach d,$(EgammaAnalysisElectronTools_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EgammaAnalysisElectronTools_PACKAGE := self/src/EgammaAnalysis/ElectronTools/src
ALL_PRODS += EgammaAnalysisElectronTools
EgammaAnalysisElectronTools_CLASS := LIBRARY
EgammaAnalysis/ElectronTools_forbigobj+=EgammaAnalysisElectronTools
EgammaAnalysisElectronTools_INIT_FUNC        += $$(eval $$(call Library,EgammaAnalysisElectronTools,src/EgammaAnalysis/ElectronTools/src,src_EgammaAnalysis_ElectronTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_plugins)),)
PhysicsToolsPatAlgos_plugins := self/src/PhysicsTools/PatAlgos/plugins
PLUGINS:=yes
PhysicsToolsPatAlgos_plugins_files := $(patsubst src/PhysicsTools/PatAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/plugins/$(file). Please fix src/PhysicsTools/PatAlgos/plugins/BuildFile.))))
PhysicsToolsPatAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/plugins/BuildFile
PhysicsToolsPatAlgos_plugins_LOC_USE := self cmssw PhysicsTools/PatAlgos FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/BTauReco DataFormats/JetReco DataFormats/TrackReco DataFormats/Candidate DataFormats/HeavyIonEvent PhysicsTools/PatUtils CondFormats/JetMETObjects CommonTools/CandAlgos JetMETCorrections/Objects JetMETCorrections/JetCorrector TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimGeneral/HepPDTRecord RecoMET/METAlgorithms RecoEgamma/EgammaTools TrackingTools/IPTools root
PhysicsToolsPatAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_plugins,PhysicsToolsPatAlgos_plugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatAlgos/plugins))
PhysicsToolsPatAlgos_plugins_PACKAGE := self/src/PhysicsTools/PatAlgos/plugins
ALL_PRODS += PhysicsToolsPatAlgos_plugins
PhysicsTools/PatAlgos_forbigobj+=PhysicsToolsPatAlgos_plugins
PhysicsToolsPatAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,src_PhysicsTools_PatAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
PhysicsToolsPatAlgos_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_plugins
src_PhysicsTools_PatAlgos_plugins_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,PLUGINS))
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_src
src_PhysicsTools_PatAlgos_src_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_src,src/PhysicsTools/PatAlgos/src,LIBRARY))
PhysicsToolsPatAlgos := self/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/BuildFile
PhysicsToolsPatAlgos_LOC_USE := self cmssw DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos Geometry/CaloTopology RecoEgamma/EgammaTools clhep
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_EX_USE   := $(foreach d,$(PhysicsToolsPatAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/src
ALL_PRODS += PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_CLASS := LIBRARY
PhysicsTools/PatAlgos_forbigobj+=PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/src,src_PhysicsTools_PatAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(METFilters_plugins)),)
METFilters_plugins := self/src/RecoMET/METFilters/plugins
PLUGINS:=yes
METFilters_plugins_files := $(patsubst src/RecoMET/METFilters/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoMET/METFilters/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoMET/METFilters/plugins/$(file). Please fix src/RecoMET/METFilters/plugins/BuildFile.))))
METFilters_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMET/METFilters/plugins/BuildFile
METFilters_plugins_LOC_USE := self cmssw FWCore/Framework FWCore/ServiceRegistry FWCore/PluginManager FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EcalDetId Geometry/CaloTopology Geometry/CaloGeometry Geometry/Records CalibCalorimetry/EcalTPGTools CondFormats/EcalObjects DataFormats/PatCandidates DataFormats/ParticleFlowCandidate RecoParticleFlow/PFProducer DataFormats/ParticleFlowReco DataFormats/DetId CondFormats/DataRecord CommonTools/UtilAlgos CondFormats/HcalObjects DataFormats/HcalDetId DataFormats/HcalRecHit DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/StdDictionaries DataFormats/WrappedStdDictionaries RecoJets/JetAlgorithms RecoJets/JetProducers RecoMET/METAlgorithms root
METFilters_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,METFilters_plugins,METFilters_plugins,$(SCRAMSTORENAME_LIB),src/RecoMET/METFilters/plugins))
METFilters_plugins_PACKAGE := self/src/RecoMET/METFilters/plugins
ALL_PRODS += METFilters_plugins
RecoMET/METFilters_forbigobj+=METFilters_plugins
METFilters_plugins_INIT_FUNC        += $$(eval $$(call Library,METFilters_plugins,src/RecoMET/METFilters/plugins,src_RecoMET_METFilters_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
METFilters_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,METFilters_plugins,src/RecoMET/METFilters/plugins))
endif
ALL_COMMONRULES += src_RecoMET_METFilters_plugins
src_RecoMET_METFilters_plugins_parent := RecoMET/METFilters
src_RecoMET_METFilters_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMET_METFilters_plugins,src/RecoMET/METFilters/plugins,PLUGINS))
