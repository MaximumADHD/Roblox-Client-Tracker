PROTO_0:
  GETTABLEKS R2 R1 K0 ["type"]
  JUMPIFNOTEQKS R2 K1 ["SetAvatarType"] [+4]
  GETTABLEKS R2 R1 K2 ["avatarType"]
  RETURN R2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K7 ["AnimationConversion"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K8 ["CharacterConversion"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["ScriptConversion"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K10 ["Adapter"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K11 ["combineReducers"]
  DUPTABLE R7 K13 [{"AnimationConversion", "CharacterConversion", "ScriptConversion", "Adapter", "AvatarType"}]
  SETTABLEKS R2 R7 K7 ["AnimationConversion"]
  SETTABLEKS R3 R7 K8 ["CharacterConversion"]
  SETTABLEKS R4 R7 K9 ["ScriptConversion"]
  SETTABLEKS R5 R7 K10 ["Adapter"]
  DUPCLOSURE R8 K14 [PROTO_0]
  SETTABLEKS R8 R7 K12 ["AvatarType"]
  CALL R6 1 1
  RETURN R6 1
