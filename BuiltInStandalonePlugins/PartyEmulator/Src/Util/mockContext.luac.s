PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Expected children to be a table"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["provideMockContext"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"FoundationProvider"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K12 [{"theme", "device"}]
  LOADK R7 K13 ["Dark"]
  SETTABLEKS R7 R6 K10 ["theme"]
  LOADK R7 K14 ["Desktop"]
  SETTABLEKS R7 R6 K11 ["device"]
  MOVE R7 R0
  CALL R4 3 1
  SETTABLEKS R4 R3 K7 ["FoundationProvider"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PartyEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["TestHelpers"]
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Foundation"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K12 ["FoundationProvider"]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Resources"]
  GETTABLEKS R8 R9 K15 ["Localization"]
  GETTABLEKS R7 R8 K16 ["SourceStrings"]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Resources"]
  GETTABLEKS R9 R10 K15 ["Localization"]
  GETTABLEKS R8 R9 K17 ["LocalizedStrings"]
  NEWTABLE R9 0 3
  GETTABLEKS R11 R4 K18 ["Analytics"]
  GETTABLEKS R10 R11 K19 ["mock"]
  CALL R10 0 1
  GETTABLEKS R12 R4 K15 ["Localization"]
  GETTABLEKS R11 R12 K19 ["mock"]
  DUPTABLE R12 K23 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R7 R12 K20 ["stringResourceTable"]
  SETTABLEKS R8 R12 K21 ["translationResourceTable"]
  LOADK R13 K2 ["PartyEmulator"]
  SETTABLEKS R13 R12 K22 ["pluginName"]
  CALL R11 1 1
  GETTABLEKS R13 R4 K24 ["Design"]
  GETTABLEKS R12 R13 K19 ["mock"]
  GETIMPORT R13 K27 [Instance.new]
  LOADK R14 K28 ["StyleSheet"]
  CALL R13 1 -1
  CALL R12 -1 -1
  SETLIST R9 R10 -1 [1]
  DUPCLOSURE R10 K29 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R6
  RETURN R10 1
