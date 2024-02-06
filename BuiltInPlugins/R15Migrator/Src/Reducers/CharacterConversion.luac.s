PROTO_0:
  DUPTABLE R0 K5 [{"characterMetadataLoadedVersion", "characters", "convertedCharacters", "worldModels", "selection"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["characterMetadataLoadedVersion"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["characters"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["convertedCharacters"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K3 ["worldModels"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K4 ["selection"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"characters", "convertedCharacters"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["characters"]
  NEWTABLE R7 1 0
  GETTABLEKS R9 R1 K5 ["characterInfo"]
  GETTABLEKS R8 R9 K6 ["key"]
  GETTABLEKS R10 R1 K7 ["isConverted"]
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["None"]
  JUMP [+2]
  GETTABLEKS R9 R1 K5 ["characterInfo"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["characters"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K3 ["convertedCharacters"]
  NEWTABLE R7 1 0
  GETTABLEKS R9 R1 K5 ["characterInfo"]
  GETTABLEKS R8 R9 K6 ["key"]
  GETTABLEKS R10 R1 K7 ["isConverted"]
  JUMPIFNOT R10 [+3]
  GETTABLEKS R9 R1 K5 ["characterInfo"]
  JUMP [+3]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["None"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["convertedCharacters"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"convertedCharacters"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["convertedCharacters"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K6 [{"characterMetadataLoadedVersion", "characters", "convertedCharacters", "worldModels"}]
  GETTABLEKS R6 R0 K2 ["characterMetadataLoadedVersion"]
  ADDK R5 R6 K7 [1]
  SETTABLEKS R5 R4 K2 ["characterMetadataLoadedVersion"]
  GETTABLEKS R5 R1 K3 ["characters"]
  SETTABLEKS R5 R4 K3 ["characters"]
  GETTABLEKS R5 R1 K4 ["convertedCharacters"]
  SETTABLEKS R5 R4 K4 ["convertedCharacters"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K5 ["worldModels"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selection"}]
  GETTABLEKS R5 R1 K2 ["selection"]
  SETTABLEKS R5 R4 K2 ["selection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"worldModels"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["worldModels"]
  GETTABLEKS R7 R1 K4 ["newWorldModelEntries"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["worldModels"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  GETUPVAL R4 1
  CALL R4 0 1
  CALL R2 2 -1
  RETURN R2 -1

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
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Actions"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["ResetConvertedCharacters"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K12 ["SetCharacterConverted"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K13 ["SetCharacterMetadata"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K14 ["SetCharacterSelection"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R3 K15 ["SetWorldModels"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R3 K16 ["ResetAllCharacterConversion"]
  CALL R9 1 1
  DUPCLOSURE R10 K17 [PROTO_0]
  GETTABLEKS R11 R1 K18 ["createReducer"]
  MOVE R12 R10
  CALL R12 0 1
  NEWTABLE R13 8 0
  GETTABLEKS R14 R5 K19 ["name"]
  DUPCLOSURE R15 K20 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R4 K19 ["name"]
  DUPCLOSURE R15 K21 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R6 K19 ["name"]
  DUPCLOSURE R15 K22 [PROTO_3]
  CAPTURE VAL R2
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R7 K19 ["name"]
  DUPCLOSURE R15 K23 [PROTO_4]
  CAPTURE VAL R2
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R8 K19 ["name"]
  DUPCLOSURE R15 K24 [PROTO_5]
  CAPTURE VAL R2
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R9 K19 ["name"]
  DUPCLOSURE R15 K25 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLE R15 R13 R14
  CALL R11 2 1
  RETURN R11 1
