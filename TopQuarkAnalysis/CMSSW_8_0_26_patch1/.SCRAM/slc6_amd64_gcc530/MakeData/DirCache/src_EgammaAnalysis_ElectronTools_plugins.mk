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
