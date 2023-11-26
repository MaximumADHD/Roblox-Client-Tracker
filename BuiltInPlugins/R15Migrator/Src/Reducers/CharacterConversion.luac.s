PROTO_0:
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

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"convertedCharacters"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["convertedCharacters"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"characterMetadataLoadedVersion", "characters", "worldModels"}]
  GETTABLEKS R6 R0 K2 ["characterMetadataLoadedVersion"]
  ADDK R5 R6 K6 [1]
  SETTABLEKS R5 R4 K2 ["characterMetadataLoadedVersion"]
  GETTABLEKS R5 R1 K3 ["characters"]
  SETTABLEKS R5 R4 K3 ["characters"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K4 ["worldModels"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selection"}]
  GETTABLEKS R5 R1 K2 ["selection"]
  SETTABLEKS R5 R4 K2 ["selection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
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
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K10 ["ResetConvertedCharacters"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K11 ["SetCharacterConverted"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R3 K12 ["SetCharacterMetadata"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R3 K13 ["SetCharacterSelection"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R3 K14 ["SetWorldModels"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K15 ["createReducer"]
  DUPTABLE R10 K21 [{"characterMetadataLoadedVersion", "characters", "convertedCharacters", "worldModels", "selection"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K16 ["characterMetadataLoadedVersion"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K17 ["characters"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K18 ["convertedCharacters"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K19 ["worldModels"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K20 ["selection"]
  NEWTABLE R11 8 0
  GETTABLEKS R12 R5 K22 ["name"]
  DUPCLOSURE R13 K23 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K22 ["name"]
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R6 K22 ["name"]
  DUPCLOSURE R13 K25 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R7 K22 ["name"]
  DUPCLOSURE R13 K26 [PROTO_3]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R8 K22 ["name"]
  DUPCLOSURE R13 K27 [PROTO_4]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  CALL R9 2 1
  RETURN R9 1
