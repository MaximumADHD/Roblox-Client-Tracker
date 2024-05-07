PROTO_0:
  DUPTABLE R0 K5 [{"selection", "previewSelection", "previewSpeed", "animations", "status"}]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["selection"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["None"]
  SETTABLEKS R1 R0 K1 ["previewSelection"]
  LOADN R1 1
  SETTABLEKS R1 R0 K2 ["previewSpeed"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K3 ["animations"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["Status"]
  GETTABLEKS R1 R2 K8 ["NotStarted"]
  SETTABLEKS R1 R0 K4 ["status"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selection"}]
  GETTABLEKS R5 R1 K2 ["selection"]
  SETTABLEKS R5 R4 K2 ["selection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"previewSelection"}]
  GETTABLEKS R6 R1 K2 ["previewSelection"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K2 ["previewSelection"]
  JUMP [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["None"]
  SETTABLEKS R5 R4 K2 ["previewSelection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"previewSpeed"}]
  GETTABLEKS R5 R1 K2 ["previewSpeed"]
  SETTABLEKS R5 R4 K2 ["previewSpeed"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"animations"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["animations"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["id"]
  GETTABLEKS R9 R1 K5 ["animation"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["animations"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"animations"}]
  GETTABLEKS R5 R1 K2 ["animations"]
  SETTABLEKS R5 R4 K2 ["animations"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"status"}]
  GETTABLEKS R5 R1 K2 ["status"]
  SETTABLEKS R5 R4 K2 ["status"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R3 0 1
  CALL R1 2 -1
  RETURN R1 -1

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
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["AnimationConversion"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K12 ["constants"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  GETTABLEKS R6 R1 K14 ["createReducer"]
  MOVE R7 R5
  CALL R7 0 1
  DUPTABLE R8 K22 [{"SetSelection", "SetPreviewSelection", "SetPreviewSpeed", "SetAnimation", "SetAnimations", "SetStatus", "ResetAllAnimationConversion"}]
  DUPCLOSURE R9 K23 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K15 ["SetSelection"]
  DUPCLOSURE R9 K24 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K16 ["SetPreviewSelection"]
  DUPCLOSURE R9 K25 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K17 ["SetPreviewSpeed"]
  DUPCLOSURE R9 K26 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K18 ["SetAnimation"]
  DUPCLOSURE R9 K27 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K19 ["SetAnimations"]
  DUPCLOSURE R9 K28 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K20 ["SetStatus"]
  DUPCLOSURE R9 K29 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K21 ["ResetAllAnimationConversion"]
  CALL R6 2 -1
  RETURN R6 -1
