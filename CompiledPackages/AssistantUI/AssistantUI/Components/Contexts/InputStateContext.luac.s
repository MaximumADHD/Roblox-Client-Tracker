PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"reasonDisabled"}]
  SETTABLEKS R0 R1 K0 ["reasonDisabled"]
  GETUPVAL R2 0
  DUPTABLE R3 K3 [{"inputEnabled", "reasonDisabled"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["inputEnabled"]
  SETTABLEKS R1 R3 K0 ["reasonDisabled"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R1 K2 [{"inputEnabled", "reasonDisabled"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["inputEnabled"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["reasonDisabled"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  LOADNIL R0
  LOADNIL R1
  GETUPVAL R2 0
  JUMPIFNOT R2 [+19]
  LOADB R0 0
  DUPTABLE R2 K3 [{"reasonDisabled", "externalReasonText", "iconType"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["External"]
  SETTABLEKS R3 R2 K0 ["reasonDisabled"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["overrideText"]
  SETTABLEKS R3 R2 K1 ["externalReasonText"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["iconType"]
  SETTABLEKS R3 R2 K2 ["iconType"]
  MOVE R1 R2
  JUMP [+6]
  GETUPVAL R2 2
  GETTABLEKS R0 R2 K6 ["inputEnabled"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["reasonDisabled"]
  DUPTABLE R2 K9 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled"}]
  SETTABLEKS R0 R2 K6 ["inputEnabled"]
  SETTABLEKS R1 R2 K0 ["reasonDisabled"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K7 ["markInputDisabled"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K8 ["clearInputDisabled"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  DUPTABLE R2 K3 [{"inputEnabled", "reasonDisabled"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["inputEnabled"]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["reasonDisabled"]
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["useCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  NEWTABLE R5 0 1
  MOVE R6 R2
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["useCallback"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R2
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETTABLEKS R5 R0 K5 ["override"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["useMemo"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R5
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  NEWTABLE R8 0 4
  MOVE R9 R1
  MOVE R10 R3
  MOVE R11 R4
  MOVE R12 R5
  SETLIST R8 R9 4 [1]
  CALL R6 2 1
  GETUPVAL R7 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["Provider"]
  DUPTABLE R9 K9 [{"value"}]
  SETTABLEKS R6 R9 K8 ["value"]
  GETTABLEKS R10 R0 K10 ["children"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createElement"]
  DUPTABLE R3 K13 [{"External", "Generation", "QuotaExceeded", "TooManyRequest"}]
  LOADK R4 K14 ["external"]
  SETTABLEKS R4 R3 K9 ["External"]
  LOADK R4 K15 ["generation"]
  SETTABLEKS R4 R3 K10 ["Generation"]
  LOADK R4 K16 ["quota_exceeded"]
  SETTABLEKS R4 R3 K11 ["QuotaExceeded"]
  LOADK R4 K17 ["too_many_request"]
  SETTABLEKS R4 R3 K12 ["TooManyRequest"]
  DUPTABLE R4 K20 [{"Loading", "Error"}]
  LOADK R5 K21 ["loading"]
  SETTABLEKS R5 R4 K18 ["Loading"]
  LOADK R5 K22 ["error"]
  SETTABLEKS R5 R4 K19 ["Error"]
  DUPTABLE R5 K27 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K23 ["inputEnabled"]
  LOADNIL R6
  SETTABLEKS R6 R5 K24 ["reasonDisabled"]
  DUPCLOSURE R6 K28 [PROTO_0]
  SETTABLEKS R6 R5 K25 ["markInputDisabled"]
  DUPCLOSURE R6 K29 [PROTO_1]
  SETTABLEKS R6 R5 K26 ["clearInputDisabled"]
  GETTABLEKS R6 R1 K30 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  DUPCLOSURE R7 K31 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R6
  DUPTABLE R8 K36 [{"Context", "Provider", "InputDisabledReasons", "InputIconTypes"}]
  SETTABLEKS R6 R8 K32 ["Context"]
  SETTABLEKS R7 R8 K33 ["Provider"]
  SETTABLEKS R3 R8 K34 ["InputDisabledReasons"]
  SETTABLEKS R4 R8 K35 ["InputIconTypes"]
  RETURN R8 1
