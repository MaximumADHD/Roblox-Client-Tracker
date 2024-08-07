PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"activeSessionCount"}]
  GETTABLEKS R5 R1 K0 ["activeSessionCount"]
  SETTABLEKS R5 R4 K0 ["activeSessionCount"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"progress"}]
  GETTABLEKS R5 R1 K0 ["progress"]
  SETTABLEKS R5 R4 K0 ["progress"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"progressGoal"}]
  GETTABLEKS R5 R1 K0 ["progressGoal"]
  SETTABLEKS R5 R4 K0 ["progressGoal"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"sessionCount"}]
  GETTABLEKS R5 R1 K0 ["sessionCount"]
  SETTABLEKS R5 R4 K0 ["sessionCount"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"searchTerm"}]
  GETTABLEKS R5 R1 K0 ["searchTerm"]
  SETTABLEKS R5 R4 K0 ["searchTerm"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"sessionQueue"}]
  GETTABLEKS R5 R1 K0 ["sessionQueue"]
  SETTABLEKS R5 R4 K0 ["sessionQueue"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"sessionQueue"}]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["sessionQueue"]
  NEWTABLE R7 1 0
  GETTABLEKS R9 R1 K2 ["queueItem"]
  GETTABLEKS R8 R9 K3 ["filepath"]
  GETTABLEKS R9 R1 K2 ["queueItem"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["sessionQueue"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETIMPORT R2 K2 [table.clone]
  GETTABLEKS R3 R0 K3 ["sessionQueue"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K4 ["filepath"]
  LOADNIL R4
  SETTABLE R4 R2 R3
  GETUPVAL R3 0
  MOVE R4 R0
  DUPTABLE R5 K5 [{"sessionQueue"}]
  SETTABLEKS R2 R5 K3 ["sessionQueue"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagAssetImporterPackageMigration"]
  CALL R2 1 1
  MOVE R4 R2
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Dash"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  MOVE R5 R2
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADNIL R4
  JUMP [+7]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Cryo"]
  CALL R4 1 1
  MOVE R6 R2
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K13 ["join"]
  JUMP [+4]
  GETTABLEKS R6 R4 K14 ["Dictionary"]
  GETTABLEKS R5 R6 K13 ["join"]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K15 ["Actions"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K16 ["RemoveQueueItem"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K17 ["SetActiveSessionCount"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R6 K18 ["SetProgress"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R6 K19 ["SetProgressGoal"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R6 K20 ["SetSessionCount"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R6 K21 ["SetSearchTerm"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R6 K22 ["SetSessionQueue"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R6 K23 ["UpdateQueueItem"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K8 ["Src"]
  GETTABLEKS R17 R18 K24 ["DataTypes"]
  GETTABLEKS R16 R17 K25 ["QueuedSession"]
  CALL R15 1 1
  DUPTABLE R16 K32 [{"activeSessionCount", "progress", "progressGoal", "sessionCount", "sessionQueue", "searchTerm"}]
  LOADN R17 0
  SETTABLEKS R17 R16 K26 ["activeSessionCount"]
  LOADN R17 0
  SETTABLEKS R17 R16 K27 ["progress"]
  LOADN R17 0
  SETTABLEKS R17 R16 K28 ["progressGoal"]
  LOADN R17 0
  SETTABLEKS R17 R16 K29 ["sessionCount"]
  NEWTABLE R17 0 0
  SETTABLEKS R17 R16 K30 ["sessionQueue"]
  LOADK R17 K33 [""]
  SETTABLEKS R17 R16 K31 ["searchTerm"]
  GETTABLEKS R17 R1 K34 ["createReducer"]
  MOVE R18 R16
  NEWTABLE R19 8 0
  GETTABLEKS R20 R8 K35 ["name"]
  DUPCLOSURE R21 K36 [PROTO_0]
  CAPTURE VAL R5
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K35 ["name"]
  DUPCLOSURE R21 K37 [PROTO_1]
  CAPTURE VAL R5
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R10 K35 ["name"]
  DUPCLOSURE R21 K38 [PROTO_2]
  CAPTURE VAL R5
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R11 K35 ["name"]
  DUPCLOSURE R21 K39 [PROTO_3]
  CAPTURE VAL R5
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R12 K35 ["name"]
  DUPCLOSURE R21 K40 [PROTO_4]
  CAPTURE VAL R5
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R13 K35 ["name"]
  DUPCLOSURE R21 K41 [PROTO_5]
  CAPTURE VAL R5
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R14 K35 ["name"]
  DUPCLOSURE R21 K42 [PROTO_6]
  CAPTURE VAL R5
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K35 ["name"]
  DUPCLOSURE R21 K43 [PROTO_7]
  CAPTURE VAL R5
  SETTABLE R21 R19 R20
  CALL R17 2 -1
  RETURN R17 -1
