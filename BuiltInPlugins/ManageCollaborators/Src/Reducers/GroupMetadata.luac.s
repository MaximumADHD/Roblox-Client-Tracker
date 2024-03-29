PROTO_0:
  DUPTABLE R0 K1 [{"CurrentGroupMetadata"}]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["CurrentGroupMetadata"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R2 K1 [{"CurrentGroupMetadata"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["CurrentGroupMetadata"]
  RETURN R2 1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["newGroupMetadata"]
  FASTCALL1 TYPE R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K2 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K3 ["table"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K5 [assert]
  CALL R3 1 0
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K6 ["CurrentGroupMetadata"]
  MOVE R5 R2
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["None"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["Dictionary"]
  GETTABLEKS R3 R4 K9 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K11 [{"NewGroupMetadata"}]
  SETTABLEKS R2 R5 K10 ["NewGroupMetadata"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"CurrentGroupMetadata"}]
  GETTABLEKS R5 R1 K4 ["currentGroupMetadata"]
  SETTABLEKS R5 R4 K2 ["CurrentGroupMetadata"]
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
  GETTABLEKS R5 R3 K10 ["SetGroupMetadata"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K11 ["SetCurrentGroupMetadata"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["IsEqualCheck"]
  CALL R6 1 1
  DUPCLOSURE R7 K14 [PROTO_0]
  GETTABLEKS R8 R1 K15 ["createReducer"]
  DUPTABLE R9 K17 [{"CurrentGroupMetadata"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K16 ["CurrentGroupMetadata"]
  NEWTABLE R10 4 0
  DUPCLOSURE R11 K18 [PROTO_1]
  SETTABLEKS R11 R10 K19 ["ResetStore"]
  GETTABLEKS R11 R4 K20 ["name"]
  DUPCLOSURE R12 K21 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R5 K20 ["name"]
  DUPCLOSURE R12 K22 [PROTO_3]
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  CALL R8 2 -1
  RETURN R8 -1
