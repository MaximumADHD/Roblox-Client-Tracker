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
  GETUPVAL R0 0
  JUMPIFEQKS R0 K0 ["Studio"] [+31]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["reasonDisabled"]
  JUMPIFNOT R0 [+26]
  LOADB R0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["reasonDisabled"]
  GETTABLEKS R1 R2 K1 ["reasonDisabled"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["QuotaExceeded"]
  JUMPIFEQ R1 R2 [+13]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["reasonDisabled"]
  GETTABLEKS R1 R2 K1 ["reasonDisabled"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["TooManyRequest"]
  JUMPIFEQ R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R1 3
  CALL R1 0 0
  RETURN R0 0

PROTO_5:
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

PROTO_6:
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
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+19]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+16]
  GETUPVAL R5 3
  CALL R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["useEffect"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  NEWTABLE R8 0 1
  MOVE R9 R5
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETTABLEKS R5 R0 K6 ["override"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["useMemo"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R5
  CAPTURE UPVAL U4
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
  GETUPVAL R7 5
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K8 ["Provider"]
  DUPTABLE R9 K10 [{"value"}]
  SETTABLEKS R6 R9 K9 ["value"]
  GETTABLEKS R10 R0 K11 ["children"]
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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["FFlagAssistantClearQuotaOnProviderSwitch"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Flags"]
  GETTABLEKS R4 R5 K10 ["FFlagMCPAssistantExternalAPIKey"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Hooks"]
  GETTABLEKS R5 R6 K12 ["useLLMProvider"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K13 ["createElement"]
  DUPTABLE R6 K18 [{"External", "Generation", "QuotaExceeded", "TooManyRequest"}]
  LOADK R7 K19 ["external"]
  SETTABLEKS R7 R6 K14 ["External"]
  LOADK R7 K20 ["generation"]
  SETTABLEKS R7 R6 K15 ["Generation"]
  LOADK R7 K21 ["quota_exceeded"]
  SETTABLEKS R7 R6 K16 ["QuotaExceeded"]
  LOADK R7 K22 ["too_many_request"]
  SETTABLEKS R7 R6 K17 ["TooManyRequest"]
  DUPTABLE R7 K25 [{"Loading", "Error"}]
  LOADK R8 K26 ["loading"]
  SETTABLEKS R8 R7 K23 ["Loading"]
  LOADK R8 K27 ["error"]
  SETTABLEKS R8 R7 K24 ["Error"]
  DUPTABLE R8 K32 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K28 ["inputEnabled"]
  LOADNIL R9
  SETTABLEKS R9 R8 K29 ["reasonDisabled"]
  DUPCLOSURE R9 K33 [PROTO_0]
  SETTABLEKS R9 R8 K30 ["markInputDisabled"]
  DUPCLOSURE R9 K34 [PROTO_1]
  SETTABLEKS R9 R8 K31 ["clearInputDisabled"]
  GETTABLEKS R9 R1 K35 ["createContext"]
  MOVE R10 R8
  CALL R9 1 1
  DUPCLOSURE R10 K36 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R9
  DUPTABLE R11 K41 [{"Context", "Provider", "InputDisabledReasons", "InputIconTypes"}]
  SETTABLEKS R9 R11 K37 ["Context"]
  SETTABLEKS R10 R11 K38 ["Provider"]
  SETTABLEKS R6 R11 K39 ["InputDisabledReasons"]
  SETTABLEKS R7 R11 K40 ["InputIconTypes"]
  RETURN R11 1
