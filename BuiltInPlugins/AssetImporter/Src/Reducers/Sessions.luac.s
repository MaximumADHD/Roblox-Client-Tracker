PROTO_0:
  GETIMPORT R0 K2 [table.clone]
  GETUPVAL R1 0
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"activeSessionCount"}]
  GETTABLEKS R5 R1 K0 ["activeSessionCount"]
  SETTABLEKS R5 R4 K0 ["activeSessionCount"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"parsing"}]
  GETTABLEKS R5 R1 K0 ["parsing"]
  SETTABLEKS R5 R4 K0 ["parsing"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"progress"}]
  GETTABLEKS R5 R1 K0 ["progress"]
  SETTABLEKS R5 R4 K0 ["progress"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"progressGoal"}]
  GETTABLEKS R5 R1 K0 ["progressGoal"]
  SETTABLEKS R5 R4 K0 ["progressGoal"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"sessionCount"}]
  GETTABLEKS R5 R1 K0 ["sessionCount"]
  SETTABLEKS R5 R4 K0 ["sessionCount"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"searchTerm"}]
  GETTABLEKS R5 R1 K0 ["searchTerm"]
  SETTABLEKS R5 R4 K0 ["searchTerm"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"sessionQueue"}]
  GETTABLEKS R5 R1 K0 ["sessionQueue"]
  SETTABLEKS R5 R4 K0 ["sessionQueue"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
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
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["join"]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Actions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["ResetQueue"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K13 ["SetActiveSessionCount"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K14 ["SetParsing"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R4 K15 ["SetProgress"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R4 K16 ["SetProgressGoal"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R4 K17 ["SetSearchTerm"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R4 K18 ["SetSessionCount"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R4 K19 ["SetSessionQueue"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R4 K20 ["UpdateQueueItem"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K21 ["DataTypes"]
  GETTABLEKS R15 R16 K22 ["QueuedSession"]
  CALL R14 1 1
  DUPTABLE R15 K30 [{"activeSessionCount", "parsing", "progress", "progressGoal", "searchTerm", "sessionCount", "sessionQueue"}]
  LOADN R16 0
  SETTABLEKS R16 R15 K23 ["activeSessionCount"]
  LOADB R16 0
  SETTABLEKS R16 R15 K24 ["parsing"]
  LOADN R16 0
  SETTABLEKS R16 R15 K25 ["progress"]
  LOADN R16 0
  SETTABLEKS R16 R15 K26 ["progressGoal"]
  LOADK R16 K31 [""]
  SETTABLEKS R16 R15 K27 ["searchTerm"]
  LOADN R16 0
  SETTABLEKS R16 R15 K28 ["sessionCount"]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K29 ["sessionQueue"]
  GETTABLEKS R16 R1 K32 ["createReducer"]
  MOVE R17 R15
  NEWTABLE R18 16 0
  GETTABLEKS R19 R5 K33 ["name"]
  DUPCLOSURE R20 K34 [PROTO_0]
  CAPTURE VAL R15
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K33 ["name"]
  DUPCLOSURE R20 K35 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R7 K33 ["name"]
  DUPCLOSURE R20 K36 [PROTO_2]
  CAPTURE VAL R3
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K33 ["name"]
  DUPCLOSURE R20 K37 [PROTO_3]
  CAPTURE VAL R3
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K33 ["name"]
  DUPCLOSURE R20 K38 [PROTO_4]
  CAPTURE VAL R3
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R11 K33 ["name"]
  DUPCLOSURE R20 K39 [PROTO_5]
  CAPTURE VAL R3
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R10 K33 ["name"]
  DUPCLOSURE R20 K40 [PROTO_6]
  CAPTURE VAL R3
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R12 K33 ["name"]
  DUPCLOSURE R20 K41 [PROTO_7]
  CAPTURE VAL R3
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R13 K33 ["name"]
  DUPCLOSURE R20 K42 [PROTO_8]
  CAPTURE VAL R3
  SETTABLE R20 R18 R19
  CALL R16 2 -1
  RETURN R16 -1
