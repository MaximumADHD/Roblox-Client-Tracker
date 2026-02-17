PROTO_0:
  GETUPVAL R1 0
  LOADK R2 K0 ["FlipbookLocalStorage"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["RobloxPackages"]
  GETTABLEKS R1 R2 K6 ["Signals"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["t"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K9 ["createPluginSettingsStore"]
  CALL R2 1 1
  DUPTABLE R3 K11 [{"wasUserPromptedForTelemetry"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K10 ["wasUserPromptedForTelemetry"]
  GETTABLEKS R4 R1 K12 ["interface"]
  DUPTABLE R5 K15 [{"lastOpenedStoryPath", "pinnedInstancePaths", "wasUserPromptedForTelemetry"}]
  GETTABLEKS R6 R1 K16 ["optional"]
  GETTABLEKS R7 R1 K17 ["string"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["lastOpenedStoryPath"]
  GETTABLEKS R6 R1 K16 ["optional"]
  GETTABLEKS R7 R1 K18 ["array"]
  GETTABLEKS R8 R1 K17 ["string"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K14 ["pinnedInstancePaths"]
  GETTABLEKS R6 R1 K19 ["boolean"]
  SETTABLEKS R6 R5 K10 ["wasUserPromptedForTelemetry"]
  CALL R4 1 1
  DUPTABLE R5 K21 [{"get"}]
  GETTABLEKS R6 R0 K22 ["createComputed"]
  DUPCLOSURE R7 K23 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CALL R6 1 1
  SETTABLEKS R6 R5 K20 ["get"]
  RETURN R5 1
