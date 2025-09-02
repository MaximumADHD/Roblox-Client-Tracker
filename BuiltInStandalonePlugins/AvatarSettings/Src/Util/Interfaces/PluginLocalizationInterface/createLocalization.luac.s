PROTO_0:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Localization"]
  GETTABLEKS R3 R4 K1 ["new"]
  DUPTABLE R4 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K2 ["stringResourceTable"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K3 ["translationResourceTable"]
  LOADK R5 K6 ["AvatarSettings"]
  SETTABLEKS R5 R4 K4 ["pluginName"]
  CALL R3 1 1
  DUPTABLE R4 K8 [{"getText"}]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K7 ["getText"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Interfaces"]
  GETTABLEKS R3 R4 K11 ["InterfaceTypes"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K12 ["ContextServices"]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K13 ["Resources"]
  GETTABLEKS R5 R6 K14 ["Localization"]
  GETTABLEKS R4 R5 K15 ["SourceStrings"]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K13 ["Resources"]
  GETTABLEKS R6 R7 K14 ["Localization"]
  GETTABLEKS R5 R6 K16 ["LocalizedStrings"]
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
