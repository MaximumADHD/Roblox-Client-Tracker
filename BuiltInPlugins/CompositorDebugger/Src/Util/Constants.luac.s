MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K8 [{"EVENTS", "FOLDERS", "LAYER_TABS", "LAYERVIEW_ACTIONS", "SETTINGS", "DEFAULT_TIMECONTROLS_INTERVAL", "FRAMERATE", "TIMECONTROLS_INVERVALS"}]
  DUPTABLE R1 K13 [{"DebugData", "PropertyOverrides", "LayerAdornments", "DebugPose"}]
  LOADK R2 K9 ["DebugData"]
  SETTABLEKS R2 R1 K9 ["DebugData"]
  LOADK R2 K10 ["PropertyOverrides"]
  SETTABLEKS R2 R1 K10 ["PropertyOverrides"]
  LOADK R2 K11 ["LayerAdornments"]
  SETTABLEKS R2 R1 K11 ["LayerAdornments"]
  LOADK R2 K12 ["DebugPose"]
  SETTABLEKS R2 R1 K12 ["DebugPose"]
  SETTABLEKS R1 R0 K0 ["EVENTS"]
  DUPTABLE R1 K18 [{"CompositorDebugger", "Server", "Client", "AdornmentHandles"}]
  LOADK R2 K19 ["__RobloxCompositorDebugger"]
  SETTABLEKS R2 R1 K14 ["CompositorDebugger"]
  LOADK R2 K15 ["Server"]
  SETTABLEKS R2 R1 K15 ["Server"]
  LOADK R2 K16 ["Client"]
  SETTABLEKS R2 R1 K16 ["Client"]
  LOADK R2 K17 ["AdornmentHandles"]
  SETTABLEKS R2 R1 K17 ["AdornmentHandles"]
  SETTABLEKS R1 R0 K1 ["FOLDERS"]
  DUPTABLE R1 K24 [{"LayerData", "Visualization", "History", "RawData"}]
  LOADK R2 K20 ["LayerData"]
  SETTABLEKS R2 R1 K20 ["LayerData"]
  LOADK R2 K21 ["Visualization"]
  SETTABLEKS R2 R1 K21 ["Visualization"]
  LOADK R2 K22 ["History"]
  SETTABLEKS R2 R1 K22 ["History"]
  LOADK R2 K23 ["RawData"]
  SETTABLEKS R2 R1 K23 ["RawData"]
  SETTABLEKS R1 R0 K2 ["LAYER_TABS"]
  DUPTABLE R1 K27 [{"Clear", "History", "NoOp"}]
  LOADK R2 K25 ["Clear"]
  SETTABLEKS R2 R1 K25 ["Clear"]
  LOADK R2 K22 ["History"]
  SETTABLEKS R2 R1 K22 ["History"]
  LOADK R2 K26 ["NoOp"]
  SETTABLEKS R2 R1 K26 ["NoOp"]
  SETTABLEKS R1 R0 K3 ["LAYERVIEW_ACTIONS"]
  DUPTABLE R1 K31 [{"LayerFilters", "ActiveLayersFilter", "FrameBufferDuration"}]
  LOADK R2 K32 ["CD_LayerFilters"]
  SETTABLEKS R2 R1 K28 ["LayerFilters"]
  LOADK R2 K33 ["CD_ActiveLayersFilter"]
  SETTABLEKS R2 R1 K29 ["ActiveLayersFilter"]
  LOADK R2 K34 ["CD_FrameBufferDuration"]
  SETTABLEKS R2 R1 K30 ["FrameBufferDuration"]
  SETTABLEKS R1 R0 K4 ["SETTINGS"]
  LOADN R1 10
  SETTABLEKS R1 R0 K5 ["DEFAULT_TIMECONTROLS_INTERVAL"]
  LOADN R1 60
  SETTABLEKS R1 R0 K6 ["FRAMERATE"]
  NEWTABLE R1 4 0
  DUPTABLE R2 K37 [{"Minor", "Major"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K35 ["Minor"]
  LOADN R3 5
  SETTABLEKS R3 R2 K36 ["Major"]
  SETTABLEN R2 R1 10
  DUPTABLE R2 K39 [{"Minor", "Medium", "Major"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K35 ["Minor"]
  LOADN R3 5
  SETTABLEKS R3 R2 K38 ["Medium"]
  LOADN R3 10
  SETTABLEKS R3 R2 K36 ["Major"]
  SETTABLEN R2 R1 30
  DUPTABLE R2 K37 [{"Minor", "Major"}]
  LOADN R3 5
  SETTABLEKS R3 R2 K35 ["Minor"]
  LOADN R3 10
  SETTABLEKS R3 R2 K36 ["Major"]
  SETTABLEN R2 R1 60
  SETTABLEKS R1 R0 K7 ["TIMECONTROLS_INVERVALS"]
  RETURN R0 1
