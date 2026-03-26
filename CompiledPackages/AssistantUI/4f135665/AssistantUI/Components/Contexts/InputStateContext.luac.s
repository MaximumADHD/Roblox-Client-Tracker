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
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       38 NEWCLOSURE                       R7 P2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R8 0 1
       45 MOVE                             R9 R5
       46 SETLIST                          R8 R9 1 [1]
       48 CALL                             R6 2 0
       49 GETTABLEKS                       R6 R0 K6 ["override"]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K7 ["useMemo"]
       54 NEWCLOSURE                       R8 P3
       55 CAPTURE                          VAL R6
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 NEWTABLE                         R9 0 4
       62 MOVE                             R10 R1
       63 MOVE                             R11 R3
       64 MOVE                             R12 R4
       65 MOVE                             R13 R6
       66 SETLIST                          R9 R10 4 [1]
       68 CALL                             R7 2 1
       69 GETUPVAL                         R8 3
       70 GETUPVAL                         R10 4
       71 GETTABLEKS                       R9 R10 K8 ["Provider"]
       73 DUPTABLE                         R10 K10 [{"value"}]
       74 SETTABLEKS                       R7 R10 K9 ["value"]
       76 GETTABLEKS                       R11 R0 K11 ["children"]
       78 CALL                             R8 3 -1
       79 RETURN                           R8 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R4 K9 ["useLLMProvider"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["createElement"]
       23 DUPTABLE                         R4 K15 [{"External", "Generation", "QuotaExceeded", "TooManyRequest"}]
       24 LOADK                            R5 K16 ["external"]
       25 SETTABLEKS                       R5 R4 K11 ["External"]
       27 LOADK                            R5 K17 ["generation"]
       28 SETTABLEKS                       R5 R4 K12 ["Generation"]
       30 LOADK                            R5 K18 ["quota_exceeded"]
       31 SETTABLEKS                       R5 R4 K13 ["QuotaExceeded"]
       33 LOADK                            R5 K19 ["too_many_request"]
       34 SETTABLEKS                       R5 R4 K14 ["TooManyRequest"]
       36 DUPTABLE                         R5 K22 [{"Loading", "Error"}]
       37 LOADK                            R6 K23 ["loading"]
       38 SETTABLEKS                       R6 R5 K20 ["Loading"]
       40 LOADK                            R6 K24 ["error"]
       41 SETTABLEKS                       R6 R5 K21 ["Error"]
       43 DUPTABLE                         R6 K29 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled"}]
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R6 K25 ["inputEnabled"]
       47 LOADNIL                          R7
       48 SETTABLEKS                       R7 R6 K26 ["reasonDisabled"]
       50 DUPCLOSURE                       R7 K30 [PROTO_0]
       51 SETTABLEKS                       R7 R6 K27 ["markInputDisabled"]
       53 DUPCLOSURE                       R7 K31 [PROTO_1]
       54 SETTABLEKS                       R7 R6 K28 ["clearInputDisabled"]
       56 GETTABLEKS                       R7 R1 K32 ["createContext"]
       58 MOVE                             R8 R6
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K33 [PROTO_6]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R7
       66 DUPTABLE                         R9 K38 [{"Context", "Provider", "InputDisabledReasons", "InputIconTypes"}]
       67 SETTABLEKS                       R7 R9 K34 ["Context"]
       69 SETTABLEKS                       R8 R9 K35 ["Provider"]
       71 SETTABLEKS                       R4 R9 K36 ["InputDisabledReasons"]
       73 SETTABLEKS                       R5 R9 K37 ["InputIconTypes"]
       75 RETURN                           R9 1
