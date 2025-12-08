PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Observable"]
  GETTABLEKS R1 R2 K1 ["useState"]
  LOADK R2 K2 ["RGB"]
  CALL R1 1 2
  GETUPVAL R3 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["Components"]
  GETTABLEKS R5 R6 K4 ["Contexts"]
  GETTABLEKS R4 R5 K5 ["SettingsContextProvider"]
  DUPTABLE R5 K8 [{"colorDisplayModeObservable", "setColorDisplayMode"}]
  SETTABLEKS R1 R5 K6 ["colorDisplayModeObservable"]
  SETTABLEKS R2 R5 K7 ["setColorDisplayMode"]
  GETTABLEKS R6 R0 K9 ["children"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PropertiesPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Properties"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["createElement"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1
