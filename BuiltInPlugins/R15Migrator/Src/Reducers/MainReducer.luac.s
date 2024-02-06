PROTO_0:
  GETTABLEKS R2 R1 K0 ["type"]
  JUMPIFNOTEQKS R2 K1 ["SetAvatarType"] [+4]
  GETTABLEKS R2 R1 K2 ["avatarType"]
  RETURN R2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["AnimationConversion"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K10 ["CharacterConversion"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K8 ["Parent"]
  GETTABLEKS R5 R6 K11 ["ScriptConversion"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K8 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Adapter"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K8 ["Parent"]
  GETTABLEKS R7 R8 K13 ["PanelSelection"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K14 ["combineReducers"]
  DUPTABLE R8 K16 [{"AnimationConversion", "CharacterConversion", "ScriptConversion", "Adapter", "PanelSelection", "AvatarType"}]
  SETTABLEKS R2 R8 K9 ["AnimationConversion"]
  SETTABLEKS R3 R8 K10 ["CharacterConversion"]
  SETTABLEKS R4 R8 K11 ["ScriptConversion"]
  SETTABLEKS R5 R8 K12 ["Adapter"]
  SETTABLEKS R6 R8 K13 ["PanelSelection"]
  DUPCLOSURE R9 K17 [PROTO_0]
  SETTABLEKS R9 R8 K15 ["AvatarType"]
  CALL R7 1 1
  RETURN R7 1
