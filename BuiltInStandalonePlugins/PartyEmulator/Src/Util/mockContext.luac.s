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
  DUPTABLE R7 K16 [{"PartyContextProvider"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K17 ["provider"]
  NEWTABLE R10 0 0
  MOVE R11 R0
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["PartyContextProvider"]
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
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["mockPartyContext"]
  CALL R7 1 1
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K16 ["Resources"]
  GETTABLEKS R9 R10 K17 ["Localization"]
  GETTABLEKS R8 R9 K18 ["SourceStrings"]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K16 ["Resources"]
  GETTABLEKS R10 R11 K17 ["Localization"]
  GETTABLEKS R9 R10 K19 ["LocalizedStrings"]
  NEWTABLE R10 0 3
  GETTABLEKS R12 R4 K20 ["Analytics"]
  GETTABLEKS R11 R12 K21 ["mock"]
  CALL R11 0 1
  GETTABLEKS R13 R4 K17 ["Localization"]
  GETTABLEKS R12 R13 K21 ["mock"]
  DUPTABLE R13 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R8 R13 K22 ["stringResourceTable"]
  SETTABLEKS R9 R13 K23 ["translationResourceTable"]
  LOADK R14 K2 ["PartyEmulator"]
  SETTABLEKS R14 R13 K24 ["pluginName"]
  CALL R12 1 1
  GETTABLEKS R14 R4 K26 ["Design"]
  GETTABLEKS R13 R14 K21 ["mock"]
  GETIMPORT R14 K29 [Instance.new]
  LOADK R15 K30 ["StyleSheet"]
  CALL R14 1 -1
  CALL R13 -1 -1
  SETLIST R10 R11 -1 [1]
  DUPCLOSURE R11 K31 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R11 1
