PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selection"}]
  GETTABLEKS R5 R1 K2 ["selection"]
  SETTABLEKS R5 R4 K2 ["selection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"animations"}]
  GETTABLEKS R5 R1 K2 ["animations"]
  SETTABLEKS R5 R4 K2 ["animations"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"status"}]
  GETTABLEKS R5 R1 K2 ["status"]
  SETTABLEKS R5 R4 K2 ["status"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"processResult"}]
  GETTABLEKS R5 R1 K2 ["processResult"]
  SETTABLEKS R5 R4 K2 ["processResult"]
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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["AnimationConversion"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K11 ["constants"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K12 ["createReducer"]
  DUPTABLE R6 K17 [{"selection", "animations", "status", "processResult"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K13 ["selection"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K14 ["animations"]
  GETTABLEKS R8 R4 K18 ["Status"]
  GETTABLEKS R7 R8 K19 ["NotStarted"]
  SETTABLEKS R7 R6 K15 ["status"]
  LOADK R7 K20 [""]
  SETTABLEKS R7 R6 K16 ["processResult"]
  DUPTABLE R7 K25 [{"SetSelection", "SetAnimations", "SetStatus", "SetReplaceProcessResult"}]
  DUPCLOSURE R8 K26 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K21 ["SetSelection"]
  DUPCLOSURE R8 K27 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K22 ["SetAnimations"]
  DUPCLOSURE R8 K28 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K23 ["SetStatus"]
  DUPCLOSURE R8 K29 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K24 ["SetReplaceProcessResult"]
  CALL R5 2 -1
  RETURN R5 -1
