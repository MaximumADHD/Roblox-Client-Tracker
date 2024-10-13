PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["plugin"]
  GETTABLEKS R4 R2 K2 ["Widget"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R4 R2 K2 ["Widget"]
  RETURN R4 1
  GETIMPORT R4 K5 [DockWidgetPluginGuiInfo.new]
  GETTABLEKS R5 R2 K6 ["InitialDockState"]
  GETTABLEKS R6 R2 K7 ["InitialEnabled"]
  GETTABLEKS R7 R2 K8 ["InitialEnabledShouldOverrideRestore"]
  GETTABLEKS R8 R2 K9 ["FloatingXSize"]
  GETTABLEKS R9 R2 K10 ["FloatingYSize"]
  GETTABLEKS R10 R2 K11 ["MinWidth"]
  GETTABLEKS R11 R2 K12 ["MinHeight"]
  CALL R4 7 1
  MOVE R7 R1
  MOVE R8 R4
  NAMECALL R5 R3 K13 ["CreateDockWidgetPluginGui"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["PluginWidget"]
  GETTABLEKS R2 R3 K7 ["PluginWidget"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K8 ["DockWidget"]
  DUPCLOSURE R4 K9 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
