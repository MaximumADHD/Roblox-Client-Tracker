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
       35 JUMPIFNOT                        R5 ; [+19]
       36 GETUPVAL                         R5 2
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+16]
       39 GETUPVAL                         R5 3
       40 CALL                             R5 0 1
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       44 NEWCLOSURE                       R7 P2
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R8 0 1
       51 MOVE                             R9 R5
       52 SETLIST                          R8 R9 1 [1]
       54 CALL                             R6 2 0
       55 GETTABLEKS                       R5 R0 K6 ["override"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       60 NEWCLOSURE                       R7 P3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 NEWTABLE                         R8 0 4
       68 MOVE                             R9 R1
       69 MOVE                             R10 R3
       70 MOVE                             R11 R4
       71 MOVE                             R12 R5
       72 SETLIST                          R8 R9 4 [1]
       74 CALL                             R6 2 1
       75 GETUPVAL                         R7 5
       76 GETUPVAL                         R9 6
       77 GETTABLEKS                       R8 R9 K8 ["Provider"]
       79 DUPTABLE                         R9 K10 [{"value"}]
       80 SETTABLEKS                       R6 R9 K9 ["value"]
       82 GETTABLEKS                       R10 R0 K11 ["children"]
       84 CALL                             R7 3 -1
       85 RETURN                           R7 -1

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
       18 GETTABLEKS                       R3 R4 K9 ["FFlagAssistantClearQuotaOnProviderSwitch"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R5 K10 ["FFlagMCPAssistantExternalAPIKey"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       32 GETTABLEKS                       R5 R6 K12 ["useLLMProvider"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K13 ["createElement"]
       37 DUPTABLE                         R6 K18 [{"External", "Generation", "QuotaExceeded", "TooManyRequest"}]
       38 LOADK                            R7 K19 ["external"]
       39 SETTABLEKS                       R7 R6 K14 ["External"]
       41 LOADK                            R7 K20 ["generation"]
       42 SETTABLEKS                       R7 R6 K15 ["Generation"]
       44 LOADK                            R7 K21 ["quota_exceeded"]
       45 SETTABLEKS                       R7 R6 K16 ["QuotaExceeded"]
       47 LOADK                            R7 K22 ["too_many_request"]
       48 SETTABLEKS                       R7 R6 K17 ["TooManyRequest"]
       50 DUPTABLE                         R7 K25 [{"Loading", "Error"}]
       51 LOADK                            R8 K26 ["loading"]
       52 SETTABLEKS                       R8 R7 K23 ["Loading"]
       54 LOADK                            R8 K27 ["error"]
       55 SETTABLEKS                       R8 R7 K24 ["Error"]
       57 DUPTABLE                         R8 K32 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled"}]
       58 LOADB                            R9 1
       59 SETTABLEKS                       R9 R8 K28 ["inputEnabled"]
       61 LOADNIL                          R9
       62 SETTABLEKS                       R9 R8 K29 ["reasonDisabled"]
       64 DUPCLOSURE                       R9 K33 [PROTO_0]
       65 SETTABLEKS                       R9 R8 K30 ["markInputDisabled"]
       67 DUPCLOSURE                       R9 K34 [PROTO_1]
       68 SETTABLEKS                       R9 R8 K31 ["clearInputDisabled"]
       70 GETTABLEKS                       R9 R1 K35 ["createContext"]
       72 MOVE                             R10 R8
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K36 [PROTO_6]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R9
       82 DUPTABLE                         R11 K41 [{"Context", "Provider", "InputDisabledReasons", "InputIconTypes"}]
       83 SETTABLEKS                       R9 R11 K37 ["Context"]
       85 SETTABLEKS                       R10 R11 K38 ["Provider"]
       87 SETTABLEKS                       R6 R11 K39 ["InputDisabledReasons"]
       89 SETTABLEKS                       R7 R11 K40 ["InputIconTypes"]
       91 RETURN                           R11 1
