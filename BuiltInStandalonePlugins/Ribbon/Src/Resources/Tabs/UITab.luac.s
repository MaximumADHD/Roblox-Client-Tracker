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
  NEWTABLE R5 0 10
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
  DUPTABLE R8 K27 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions", "FastFlag"}]
  LOADK R9 K28 ["Label"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R9 K19 ["SplitButton"]
  SETTABLEKS R9 R8 K13 ["Type"]
  MOVE R9 R4
  LOADK R10 K20 ["BuilderTools"]
  LOADK R11 K29 ["InsertUILabel"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["Setting"]
  MOVE R9 R3
  LOADK R10 K20 ["BuilderTools"]
  LOADK R11 K30 ["Insert/TextLabel"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["DefaultAction"]
  LOADB R9 1
  SETTABLEKS R9 R8 K16 ["ShowSettingOptions"]
  LOADK R9 K31 ["!UpdateUITabLuaRibbon"]
  SETTABLEKS R9 R8 K26 ["FastFlag"]
  DUPTABLE R9 K27 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions", "FastFlag"}]
  LOADK R10 K32 ["Input"]
  SETTABLEKS R10 R9 K12 ["Id"]
  LOADK R10 K19 ["SplitButton"]
  SETTABLEKS R10 R9 K13 ["Type"]
  MOVE R10 R4
  LOADK R11 K20 ["BuilderTools"]
  LOADK R12 K33 ["InsertUIInput"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Setting"]
  MOVE R10 R3
  LOADK R11 K20 ["BuilderTools"]
  LOADK R12 K34 ["Insert/TextButton"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["DefaultAction"]
  LOADB R10 1
  SETTABLEKS R10 R9 K16 ["ShowSettingOptions"]
  LOADK R10 K31 ["!UpdateUITabLuaRibbon"]
  SETTABLEKS R10 R9 K26 ["FastFlag"]
  DUPTABLE R10 K27 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions", "FastFlag"}]
  LOADK R11 K35 ["Style"]
  SETTABLEKS R11 R10 K12 ["Id"]
  LOADK R11 K19 ["SplitButton"]
  SETTABLEKS R11 R10 K13 ["Type"]
  MOVE R11 R4
  LOADK R12 K20 ["BuilderTools"]
  LOADK R13 K36 ["InsertUIStyle"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Setting"]
  MOVE R11 R3
  LOADK R12 K20 ["BuilderTools"]
  LOADK R13 K37 ["Insert/UICorner"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["DefaultAction"]
  LOADB R11 1
  SETTABLEKS R11 R10 K16 ["ShowSettingOptions"]
  LOADK R11 K31 ["!UpdateUITabLuaRibbon"]
  SETTABLEKS R11 R10 K26 ["FastFlag"]
  DUPTABLE R11 K39 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R12 K28 ["Label"]
  SETTABLEKS R12 R11 K12 ["Id"]
  LOADK R12 K19 ["SplitButton"]
  SETTABLEKS R12 R11 K13 ["Type"]
  MOVE R12 R4
  LOADK R13 K20 ["BuilderTools"]
  LOADK R14 K29 ["InsertUILabel"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["Setting"]
  MOVE R12 R3
  LOADK R13 K20 ["BuilderTools"]
  LOADK R14 K40 ["Insert/ImageLabel"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["DefaultAction"]
  LOADB R12 1
  SETTABLEKS R12 R11 K16 ["ShowSettingOptions"]
  LOADK R12 K41 ["UpdateUITabLuaRibbon"]
  SETTABLEKS R12 R11 K38 ["DEPRECATED_FastFlag"]
  LOADK R12 K41 ["UpdateUITabLuaRibbon"]
  SETTABLEKS R12 R11 K26 ["FastFlag"]
  DUPTABLE R12 K39 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R13 K32 ["Input"]
  SETTABLEKS R13 R12 K12 ["Id"]
  LOADK R13 K19 ["SplitButton"]
  SETTABLEKS R13 R12 K13 ["Type"]
  MOVE R13 R4
  LOADK R14 K20 ["BuilderTools"]
  LOADK R15 K33 ["InsertUIInput"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["Setting"]
  MOVE R13 R3
  LOADK R14 K20 ["BuilderTools"]
  LOADK R15 K42 ["Insert/ImageButton"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["DefaultAction"]
  LOADB R13 1
  SETTABLEKS R13 R12 K16 ["ShowSettingOptions"]
  LOADK R13 K41 ["UpdateUITabLuaRibbon"]
  SETTABLEKS R13 R12 K38 ["DEPRECATED_FastFlag"]
  LOADK R13 K41 ["UpdateUITabLuaRibbon"]
  SETTABLEKS R13 R12 K26 ["FastFlag"]
  DUPTABLE R13 K39 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R14 K43 ["Appearance"]
  SETTABLEKS R14 R13 K12 ["Id"]
  LOADK R14 K19 ["SplitButton"]
  SETTABLEKS R14 R13 K13 ["Type"]
  MOVE R14 R4
  LOADK R15 K20 ["BuilderTools"]
  LOADK R16 K44 ["InsertUIAppearance"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Setting"]
  MOVE R14 R3
  LOADK R15 K20 ["BuilderTools"]
  LOADK R16 K37 ["Insert/UICorner"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K15 ["DefaultAction"]
  LOADB R14 1
  SETTABLEKS R14 R13 K16 ["ShowSettingOptions"]
  LOADK R14 K41 ["UpdateUITabLuaRibbon"]
  SETTABLEKS R14 R13 K38 ["DEPRECATED_FastFlag"]
  LOADK R14 K41 ["UpdateUITabLuaRibbon"]
  SETTABLEKS R14 R13 K26 ["FastFlag"]
  DUPTABLE R14 K17 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R15 K45 ["Layout"]
  SETTABLEKS R15 R14 K12 ["Id"]
  LOADK R15 K19 ["SplitButton"]
  SETTABLEKS R15 R14 K13 ["Type"]
  MOVE R15 R4
  LOADK R16 K20 ["BuilderTools"]
  LOADK R17 K46 ["InsertUILayout"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Setting"]
  MOVE R15 R3
  LOADK R16 K20 ["BuilderTools"]
  LOADK R17 K47 ["Insert/UIGridLayout"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["DefaultAction"]
  LOADB R15 1
  SETTABLEKS R15 R14 K16 ["ShowSettingOptions"]
  DUPTABLE R15 K17 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R16 K48 ["Constraint"]
  SETTABLEKS R16 R15 K12 ["Id"]
  LOADK R16 K19 ["SplitButton"]
  SETTABLEKS R16 R15 K13 ["Type"]
  MOVE R16 R4
  LOADK R17 K20 ["BuilderTools"]
  LOADK R18 K49 ["InsertUIConstraint"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K14 ["Setting"]
  MOVE R16 R3
  LOADK R17 K20 ["BuilderTools"]
  LOADK R18 K50 ["Insert/UIAspectRatioConstraint"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K15 ["DefaultAction"]
  LOADB R16 1
  SETTABLEKS R16 R15 K16 ["ShowSettingOptions"]
  SETLIST R5 R6 10 [1]
  RETURN R5 1
