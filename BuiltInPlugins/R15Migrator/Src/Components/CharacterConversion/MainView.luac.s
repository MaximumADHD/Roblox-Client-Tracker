PROTO_0:
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R8 K3 [{"key", "text", "characterInfo"}]
  GETTABLEKS R9 R7 K0 ["key"]
  SETTABLEKS R9 R8 K0 ["key"]
  GETTABLEKS R9 R7 K4 ["fullName"]
  SETTABLEKS R9 R8 K1 ["text"]
  SETTABLEKS R7 R8 K2 ["characterInfo"]
  FASTCALL2 TABLE_INSERT R2 R8 [+5]
  MOVE R10 R2
  MOVE R11 R8
  GETIMPORT R9 K7 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [-19]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  NEWTABLE R3 0 0
  DUPTABLE R6 K5 [{"key", "text", "children"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["InProgress"]
  SETTABLEKS R7 R6 K2 ["key"]
  LOADK R9 K7 ["CharacterConversion"]
  LOADK R10 K8 ["Issues"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["text"]
  GETTABLEKS R9 R1 K10 ["characters"]
  NAMECALL R7 R0 K11 ["getChildItems"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K4 ["children"]
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K14 [table.insert]
  CALL R4 2 0
  DUPTABLE R6 K5 [{"key", "text", "children"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K15 ["Completed"]
  SETTABLEKS R7 R6 K2 ["key"]
  LOADK R9 K7 ["CharacterConversion"]
  LOADK R10 K16 ["Converted"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["text"]
  GETTABLEKS R9 R1 K17 ["convertedCharacters"]
  NAMECALL R7 R0 K11 ["getChildItems"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K4 ["children"]
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K14 [table.insert]
  CALL R4 2 0
  RETURN R3 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Size"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  NAMECALL R4 R0 K3 ["getItems"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K7 [{"OnResetPlugin", "Size", "LayoutOrder", "Items"}]
  GETTABLEKS R8 R1 K5 ["OnResetPlugin"]
  SETTABLEKS R8 R7 K5 ["OnResetPlugin"]
  SETTABLEKS R2 R7 K1 ["Size"]
  SETTABLEKS R3 R7 K2 ["LayoutOrder"]
  SETTABLEKS R4 R7 K6 ["Items"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_3:
  DUPTABLE R2 K2 [{"characters", "convertedCharacters"}]
  GETTABLEKS R4 R0 K3 ["CharacterConversion"]
  GETTABLEKS R3 R4 K0 ["characters"]
  SETTABLEKS R3 R2 K0 ["characters"]
  GETTABLEKS R4 R0 K3 ["CharacterConversion"]
  GETTABLEKS R3 R4 K1 ["convertedCharacters"]
  SETTABLEKS R3 R2 K1 ["convertedCharacters"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["ItemState"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K14 ["CharacterConversion"]
  GETTABLEKS R6 R7 K15 ["CharacterList"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K16 ["ContextServices"]
  GETTABLEKS R7 R2 K17 ["PureComponent"]
  LOADK R9 K18 ["ModelConversionMainView"]
  NAMECALL R7 R7 K19 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K20 [PROTO_0]
  SETTABLEKS R8 R7 K21 ["getChildItems"]
  DUPCLOSURE R8 K22 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K23 ["getItems"]
  DUPCLOSURE R8 K24 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K25 ["render"]
  GETTABLEKS R8 R6 K26 ["withContext"]
  DUPTABLE R9 K30 [{"Plugin", "Localization", "Stylizer"}]
  GETTABLEKS R10 R6 K27 ["Plugin"]
  SETTABLEKS R10 R9 K27 ["Plugin"]
  GETTABLEKS R10 R6 K28 ["Localization"]
  SETTABLEKS R10 R9 K28 ["Localization"]
  GETTABLEKS R10 R6 K29 ["Stylizer"]
  SETTABLEKS R10 R9 K29 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  DUPCLOSURE R8 K31 [PROTO_3]
  GETTABLEKS R9 R3 K32 ["connect"]
  MOVE R10 R8
  CALL R9 1 1
  MOVE R10 R7
  CALL R9 1 -1
  RETURN R9 -1
