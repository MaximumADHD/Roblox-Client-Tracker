PROTO_0:
  GETUPVAL R1 0
  LOADK R2 K0 ["FlipbookUserSettings"]
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
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Plugin"]
  GETTABLEKS R3 R4 K10 ["createPluginSettingsStore"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K11 ["defaultSettings"]
  CALL R3 1 1
  DUPTABLE R4 K17 [{"rememberLastOpenedStory", "theme", "sidebarWidth", "controlsHeight", "collectAnonymousUsageData"}]
  GETTABLEKS R6 R3 K12 ["rememberLastOpenedStory"]
  GETTABLEKS R5 R6 K18 ["value"]
  SETTABLEKS R5 R4 K12 ["rememberLastOpenedStory"]
  GETTABLEKS R8 R3 K13 ["theme"]
  GETTABLEKS R7 R8 K19 ["choices"]
  GETTABLEN R6 R7 1
  GETTABLEKS R5 R6 K20 ["name"]
  SETTABLEKS R5 R4 K13 ["theme"]
  GETTABLEKS R6 R3 K14 ["sidebarWidth"]
  GETTABLEKS R5 R6 K18 ["value"]
  SETTABLEKS R5 R4 K14 ["sidebarWidth"]
  GETTABLEKS R6 R3 K15 ["controlsHeight"]
  GETTABLEKS R5 R6 K18 ["value"]
  SETTABLEKS R5 R4 K15 ["controlsHeight"]
  GETTABLEKS R6 R3 K16 ["collectAnonymousUsageData"]
  GETTABLEKS R5 R6 K18 ["value"]
  SETTABLEKS R5 R4 K16 ["collectAnonymousUsageData"]
  GETTABLEKS R5 R1 K21 ["interface"]
  DUPTABLE R6 K17 [{"rememberLastOpenedStory", "theme", "sidebarWidth", "controlsHeight", "collectAnonymousUsageData"}]
  GETTABLEKS R7 R1 K22 ["boolean"]
  SETTABLEKS R7 R6 K12 ["rememberLastOpenedStory"]
  GETTABLEKS R7 R1 K23 ["string"]
  SETTABLEKS R7 R6 K13 ["theme"]
  GETTABLEKS R7 R1 K24 ["number"]
  SETTABLEKS R7 R6 K14 ["sidebarWidth"]
  GETTABLEKS R7 R1 K24 ["number"]
  SETTABLEKS R7 R6 K15 ["controlsHeight"]
  GETTABLEKS R7 R1 K22 ["boolean"]
  SETTABLEKS R7 R6 K16 ["collectAnonymousUsageData"]
  CALL R5 1 1
  MOVE R6 R3
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLE R13 R4 R9
  JUMPIFNOTEQKNIL R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  FASTCALL2K ASSERT R12 K25 [+4]
  LOADK R13 K25 ["setting with key {key} is missing from UserSettingsStore"]
  GETIMPORT R11 K27 [assert]
  CALL R11 2 0
  FORGLOOP R6 1 [-12]
  DUPTABLE R6 K29 [{"get"}]
  GETTABLEKS R7 R0 K30 ["createComputed"]
  DUPCLOSURE R8 K31 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CALL R7 1 1
  SETTABLEKS R7 R6 K28 ["get"]
  RETURN R6 1
