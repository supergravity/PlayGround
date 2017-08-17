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
