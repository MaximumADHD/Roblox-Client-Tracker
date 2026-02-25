PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"reasonDisabled"}]
        1 SETTABLEKS                       R0 R1 K0 ["reasonDisabled"]
        3 GETUPVAL                         R2 0
        4 DUPTABLE                         R3 K3 [{"inputEnabled", "reasonDisabled"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K2 ["inputEnabled"]
        8 SETTABLEKS                       R1 R3 K0 ["reasonDisabled"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"inputEnabled", "reasonDisabled"}]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R1 K0 ["inputEnabled"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["reasonDisabled"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["Studio"] ; [+31]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K1 ["reasonDisabled"]
        6 JUMPIFNOT                        R0 ; [+26]
        7 LOADB                            R0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["reasonDisabled"]
       11 GETTABLEKS                       R1 R2 K1 ["reasonDisabled"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K2 ["QuotaExceeded"]
       16 JUMPIFEQ                         R1 R2 ; [+13]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K1 ["reasonDisabled"]
       21 GETTABLEKS                       R1 R2 K1 ["reasonDisabled"]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K3 ["TooManyRequest"]
       26 JUMPIFEQ                         R1 R2 ; [+2]
       28 LOADB                            R0 0 +1
       29 LOADB                            R0 1
       30 JUMPIFNOT                        R0 ; [+2]
       31 GETUPVAL                         R1 3
       32 CALL                             R1 0 0
       33 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+19]
        4 LOADB                            R0 0
        5 DUPTABLE                         R2 K3 [{"reasonDisabled", "externalReasonText", "iconType"}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K4 ["External"]
        9 SETTABLEKS                       R3 R2 K0 ["reasonDisabled"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K5 ["overrideText"]
       14 SETTABLEKS                       R3 R2 K1 ["externalReasonText"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K2 ["iconType"]
       19 SETTABLEKS                       R3 R2 K2 ["iconType"]
       21 MOVE                             R1 R2
       22 JUMP                             ; [+6]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R0 R2 K6 ["inputEnabled"]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R1 R2 K0 ["reasonDisabled"]
       29 DUPTABLE                         R2 K9 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled"}]
       30 SETTABLEKS                       R0 R2 K6 ["inputEnabled"]
       32 SETTABLEKS                       R1 R2 K0 ["reasonDisabled"]
       34 GETUPVAL                         R3 3
       35 SETTABLEKS                       R3 R2 K7 ["markInputDisabled"]
       37 GETUPVAL                         R3 4
       38 SETTABLEKS                       R3 R2 K8 ["clearInputDisabled"]
       40 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 DUPTABLE                         R2 K3 [{"inputEnabled", "reasonDisabled"}]
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K1 ["inputEnabled"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["reasonDisabled"]
       10 CALL                             R1 1 2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["useCallback"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R5 0 1
       18 MOVE                             R6 R2
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R6 0 1
       29 MOVE                             R7 R2
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 1
       34 CALL                             R5 0 1
       35 JUMPIFNOT                        R5 ; [+16]
       36 GETUPVAL                         R5 2
       37 CALL                             R5 0 1
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       41 NEWCLOSURE                       R7 P2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R4
       46 NEWTABLE                         R8 0 1
       48 MOVE                             R9 R5
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R6 2 0
       52 GETTABLEKS                       R5 R0 K6 ["override"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       57 NEWCLOSURE                       R7 P3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 NEWTABLE                         R8 0 4
       65 MOVE                             R9 R1
       66 MOVE                             R10 R3
       67 MOVE                             R11 R4
       68 MOVE                             R12 R5
       69 SETLIST                          R8 R9 4 [1]
       71 CALL                             R6 2 1
       72 GETUPVAL                         R7 4
       73 GETUPVAL                         R9 5
       74 GETTABLEKS                       R8 R9 K8 ["Provider"]
       76 DUPTABLE                         R9 K10 [{"value"}]
       77 SETTABLEKS                       R6 R9 K9 ["value"]
       79 GETTABLEKS                       R10 R0 K11 ["children"]
       81 CALL                             R7 3 -1
       82 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R4 K9 ["FFlagMCPAssistantExternalAPIKey"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K11 ["useLLMProvider"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K12 ["createElement"]
       30 DUPTABLE                         R5 K17 [{"External", "Generation", "QuotaExceeded", "TooManyRequest"}]
       31 LOADK                            R6 K18 ["external"]
       32 SETTABLEKS                       R6 R5 K13 ["External"]
       34 LOADK                            R6 K19 ["generation"]
       35 SETTABLEKS                       R6 R5 K14 ["Generation"]
       37 LOADK                            R6 K20 ["quota_exceeded"]
       38 SETTABLEKS                       R6 R5 K15 ["QuotaExceeded"]
       40 LOADK                            R6 K21 ["too_many_request"]
       41 SETTABLEKS                       R6 R5 K16 ["TooManyRequest"]
       43 DUPTABLE                         R6 K24 [{"Loading", "Error"}]
       44 LOADK                            R7 K25 ["loading"]
       45 SETTABLEKS                       R7 R6 K22 ["Loading"]
       47 LOADK                            R7 K26 ["error"]
       48 SETTABLEKS                       R7 R6 K23 ["Error"]
       50 DUPTABLE                         R7 K31 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled"}]
       51 LOADB                            R8 1
       52 SETTABLEKS                       R8 R7 K27 ["inputEnabled"]
       54 LOADNIL                          R8
       55 SETTABLEKS                       R8 R7 K28 ["reasonDisabled"]
       57 DUPCLOSURE                       R8 K32 [PROTO_0]
       58 SETTABLEKS                       R8 R7 K29 ["markInputDisabled"]
       60 DUPCLOSURE                       R8 K33 [PROTO_1]
       61 SETTABLEKS                       R8 R7 K30 ["clearInputDisabled"]
       63 GETTABLEKS                       R8 R1 K34 ["createContext"]
       65 MOVE                             R9 R7
       66 CALL                             R8 1 1
       67 DUPCLOSURE                       R9 K35 [PROTO_6]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R8
       74 DUPTABLE                         R10 K40 [{"Context", "Provider", "InputDisabledReasons", "InputIconTypes"}]
       75 SETTABLEKS                       R8 R10 K36 ["Context"]
       77 SETTABLEKS                       R9 R10 K37 ["Provider"]
       79 SETTABLEKS                       R5 R10 K38 ["InputDisabledReasons"]
       81 SETTABLEKS                       R6 R10 K39 ["InputIconTypes"]
       83 RETURN                           R10 1
