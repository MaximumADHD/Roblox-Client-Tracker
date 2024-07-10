MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["StudioUri"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K10 ["fromAction"]
  GETTABLEKS R4 R1 K11 ["fromSetting"]
  NEWTABLE R5 0 7
  DUPTABLE R6 K17 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R7 K18 ["GUI"]
  SETTABLEKS R7 R6 K12 ["Id"]
  LOADK R7 K19 ["SplitButton"]
  SETTABLEKS R7 R6 K13 ["Type"]
  MOVE R7 R4
  LOADK R8 K20 ["BuilderTools"]
  LOADK R9 K21 ["InsertGui"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Setting"]
  MOVE R7 R3
  LOADK R8 K20 ["BuilderTools"]
  LOADK R9 K22 ["Insert/ScreenGui"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["DefaultAction"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["ShowSettingOptions"]
  DUPTABLE R7 K17 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R8 K23 ["Frame"]
  SETTABLEKS R8 R7 K12 ["Id"]
  LOADK R8 K19 ["SplitButton"]
  SETTABLEKS R8 R7 K13 ["Type"]
  MOVE R8 R4
  LOADK R9 K20 ["BuilderTools"]
  LOADK R10 K24 ["InsertUIFrame"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Setting"]
  MOVE R8 R3
  LOADK R9 K20 ["BuilderTools"]
  LOADK R10 K25 ["Insert/Frame"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["DefaultAction"]
  LOADB R8 1
  SETTABLEKS R8 R7 K16 ["ShowSettingOptions"]
  DUPTABLE R8 K17 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R9 K26 ["Label"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R9 K19 ["SplitButton"]
  SETTABLEKS R9 R8 K13 ["Type"]
  MOVE R9 R4
  LOADK R10 K20 ["BuilderTools"]
  LOADK R11 K27 ["InsertUILabel"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["Setting"]
  MOVE R9 R3
  LOADK R10 K20 ["BuilderTools"]
  LOADK R11 K28 ["Insert/TextLabel"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["DefaultAction"]
  LOADB R9 1
  SETTABLEKS R9 R8 K16 ["ShowSettingOptions"]
  DUPTABLE R9 K17 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R10 K29 ["Input"]
  SETTABLEKS R10 R9 K12 ["Id"]
  LOADK R10 K19 ["SplitButton"]
  SETTABLEKS R10 R9 K13 ["Type"]
  MOVE R10 R4
  LOADK R11 K20 ["BuilderTools"]
  LOADK R12 K30 ["InsertUIInput"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Setting"]
  MOVE R10 R3
  LOADK R11 K20 ["BuilderTools"]
  LOADK R12 K31 ["Insert/TextButton"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["DefaultAction"]
  LOADB R10 1
  SETTABLEKS R10 R9 K16 ["ShowSettingOptions"]
  DUPTABLE R10 K17 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R11 K32 ["Style"]
  SETTABLEKS R11 R10 K12 ["Id"]
  LOADK R11 K19 ["SplitButton"]
  SETTABLEKS R11 R10 K13 ["Type"]
  MOVE R11 R4
  LOADK R12 K20 ["BuilderTools"]
  LOADK R13 K33 ["InsertUIStyle"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Setting"]
  MOVE R11 R3
  LOADK R12 K20 ["BuilderTools"]
  LOADK R13 K34 ["Insert/UICorner"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["DefaultAction"]
  LOADB R11 1
  SETTABLEKS R11 R10 K16 ["ShowSettingOptions"]
  DUPTABLE R11 K17 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R12 K35 ["Layout"]
  SETTABLEKS R12 R11 K12 ["Id"]
  LOADK R12 K19 ["SplitButton"]
  SETTABLEKS R12 R11 K13 ["Type"]
  MOVE R12 R4
  LOADK R13 K20 ["BuilderTools"]
  LOADK R14 K36 ["InsertUILayout"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["Setting"]
  MOVE R12 R3
  LOADK R13 K20 ["BuilderTools"]
  LOADK R14 K37 ["Insert/UIGridLayout"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["DefaultAction"]
  LOADB R12 1
  SETTABLEKS R12 R11 K16 ["ShowSettingOptions"]
  DUPTABLE R12 K17 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R13 K38 ["Constraint"]
  SETTABLEKS R13 R12 K12 ["Id"]
  LOADK R13 K19 ["SplitButton"]
  SETTABLEKS R13 R12 K13 ["Type"]
  MOVE R13 R4
  LOADK R14 K20 ["BuilderTools"]
  LOADK R15 K39 ["InsertUIConstraint"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["Setting"]
  MOVE R13 R3
  LOADK R14 K20 ["BuilderTools"]
  LOADK R15 K40 ["Insert/UIAspectRatioConstraint"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["DefaultAction"]
  LOADB R13 1
  SETTABLEKS R13 R12 K16 ["ShowSettingOptions"]
  SETLIST R5 R6 7 [1]
  RETURN R5 1
