MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K9 [{"EVENTS", "FOLDERS", "LAYER_TABS", "LAYERVIEW_ACTIONS", "SETTINGS", "DEFAULT_TIMECONTROLS_INTERVAL", "FRAMERATE", "SKIP_UI_FRAMES", "TIMECONTROLS_INVERVALS"}]
  DUPTABLE R1 K14 [{"DebugData", "PropertyOverrides", "LayerAdornments", "DebugPose"}]
  LOADK R2 K10 ["DebugData"]
  SETTABLEKS R2 R1 K10 ["DebugData"]
  LOADK R2 K11 ["PropertyOverrides"]
  SETTABLEKS R2 R1 K11 ["PropertyOverrides"]
  LOADK R2 K12 ["LayerAdornments"]
  SETTABLEKS R2 R1 K12 ["LayerAdornments"]
  LOADK R2 K13 ["DebugPose"]
  SETTABLEKS R2 R1 K13 ["DebugPose"]
  SETTABLEKS R1 R0 K0 ["EVENTS"]
  DUPTABLE R1 K19 [{"CompositorDebugger", "Server", "Client", "AdornmentHandles"}]
  LOADK R2 K20 ["__RobloxCompositorDebugger"]
  SETTABLEKS R2 R1 K15 ["CompositorDebugger"]
  LOADK R2 K16 ["Server"]
  SETTABLEKS R2 R1 K16 ["Server"]
  LOADK R2 K17 ["Client"]
  SETTABLEKS R2 R1 K17 ["Client"]
  LOADK R2 K18 ["AdornmentHandles"]
  SETTABLEKS R2 R1 K18 ["AdornmentHandles"]
  SETTABLEKS R1 R0 K1 ["FOLDERS"]
  DUPTABLE R1 K25 [{"LayerData", "Visualization", "History", "RawData"}]
  LOADK R2 K21 ["LayerData"]
  SETTABLEKS R2 R1 K21 ["LayerData"]
  LOADK R2 K22 ["Visualization"]
  SETTABLEKS R2 R1 K22 ["Visualization"]
  LOADK R2 K23 ["History"]
  SETTABLEKS R2 R1 K23 ["History"]
  LOADK R2 K24 ["RawData"]
  SETTABLEKS R2 R1 K24 ["RawData"]
  SETTABLEKS R1 R0 K2 ["LAYER_TABS"]
  DUPTABLE R1 K28 [{"Clear", "History", "NoOp"}]
  LOADK R2 K26 ["Clear"]
  SETTABLEKS R2 R1 K26 ["Clear"]
  LOADK R2 K23 ["History"]
  SETTABLEKS R2 R1 K23 ["History"]
  LOADK R2 K27 ["NoOp"]
  SETTABLEKS R2 R1 K27 ["NoOp"]
  SETTABLEKS R1 R0 K3 ["LAYERVIEW_ACTIONS"]
  DUPTABLE R1 K33 [{"LayerFilters", "ActiveLayersFilter", "FrameBufferDuration", "SkipUIFrames"}]
  LOADK R2 K34 ["CD_LayerFilters"]
  SETTABLEKS R2 R1 K29 ["LayerFilters"]
  LOADK R2 K35 ["CD_ActiveLayersFilter"]
  SETTABLEKS R2 R1 K30 ["ActiveLayersFilter"]
  LOADK R2 K36 ["CD_FrameBufferDuration"]
  SETTABLEKS R2 R1 K31 ["FrameBufferDuration"]
  LOADK R2 K37 ["CD_SkipUIFrames"]
  SETTABLEKS R2 R1 K32 ["SkipUIFrames"]
  SETTABLEKS R1 R0 K4 ["SETTINGS"]
  LOADN R1 10
  SETTABLEKS R1 R0 K5 ["DEFAULT_TIMECONTROLS_INTERVAL"]
  LOADN R1 60
  SETTABLEKS R1 R0 K6 ["FRAMERATE"]
  NEWTABLE R1 0 5
  LOADN R2 0
  LOADN R3 1
  LOADN R4 2
  LOADN R5 5
  LOADN R6 10
  SETLIST R1 R2 5 [1]
  SETTABLEKS R1 R0 K7 ["SKIP_UI_FRAMES"]
  NEWTABLE R1 4 0
  DUPTABLE R2 K40 [{"Minor", "Major"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K38 ["Minor"]
  LOADN R3 5
  SETTABLEKS R3 R2 K39 ["Major"]
  SETTABLEN R2 R1 10
  DUPTABLE R2 K42 [{"Minor", "Medium", "Major"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K38 ["Minor"]
  LOADN R3 5
  SETTABLEKS R3 R2 K41 ["Medium"]
  LOADN R3 10
  SETTABLEKS R3 R2 K39 ["Major"]
  SETTABLEN R2 R1 30
  DUPTABLE R2 K40 [{"Minor", "Major"}]
  LOADN R3 5
  SETTABLEKS R3 R2 K38 ["Minor"]
  LOADN R3 10
  SETTABLEKS R3 R2 K39 ["Major"]
  SETTABLEN R2 R1 60
  SETTABLEKS R1 R0 K8 ["TIMECONTROLS_INVERVALS"]
  RETURN R0 1
