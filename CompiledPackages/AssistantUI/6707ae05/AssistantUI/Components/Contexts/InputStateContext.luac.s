PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K4 [{[1] = True, ["reasonDisabled"] = }]
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+1]
        6 DUPTABLE                         R0 K5 [{["inputEnabled"] = True, ["reasonDisabled"] = }]
        7 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K5 [{["inputEnabled"] = True, ["reasonDisabled"] = }]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K1 [{"reasonDisabled"}]
        4 SETTABLEKS                       R0 R3 K0 ["reasonDisabled"]
        6 DUPTABLE                         R4 K4 [{["inputEnabled"] = False, [2]}]
        7 SETTABLEKS                       R3 R4 K0 ["reasonDisabled"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K5 ["current"]
       12 SETTABLE                         R4 R5 R2
       13 GETUPVAL                         R5 2
       14 GETIMPORT                        R6 K8 [table.clone]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K5 ["current"]
       19 CALL                             R6 1 -1
       20 CALL                             R5 -1 0
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K5 ["current"]
       24 JUMPIFNOTEQ                      R2 R5 ; [+4]
       26 GETUPVAL                         R5 4
       27 MOVE                             R6 R4
       28 CALL                             R5 1 0
       29 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R2 R1
        8 GETUPVAL                         R2 2
        9 GETIMPORT                        R3 K3 [table.clone]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K0 ["current"]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K0 ["current"]
       19 JUMPIFNOTEQ                      R1 R2 ; [+4]
       21 GETUPVAL                         R2 4
       22 DUPTABLE                         R3 K8 [{["inputEnabled"] = True, ["reasonDisabled"] = }]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
        4 GETTABLEKS                       R1 R1 K1 ["Studio"]
        6 JUMPIFEQ                         R0 R1 ; [+31]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["reasonDisabled"]
       11 JUMPIFNOT                        R0 ; [+26]
       12 LOADB                            R0 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K2 ["reasonDisabled"]
       16 GETTABLEKS                       R1 R1 K2 ["reasonDisabled"]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K3 ["QuotaExceeded"]
       21 JUMPIFEQ                         R1 R2 ; [+13]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K2 ["reasonDisabled"]
       26 GETTABLEKS                       R1 R1 K2 ["reasonDisabled"]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K4 ["TooManyRequest"]
       31 JUMPIFEQ                         R1 R2 ; [+2]
       33 LOADB                            R0 0 +1
       34 LOADB                            R0 1
       35 JUMPIFNOT                        R0 ; [+2]
       36 GETUPVAL                         R1 4
       37 CALL                             R1 0 0
       38 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+19]
        4 LOADB                            R0 0
        5 DUPTABLE                         R2 K3 [{"reasonDisabled", "externalReasonText", "iconType"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["External"]
        9 SETTABLEKS                       R3 R2 K0 ["reasonDisabled"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["overrideText"]
       14 SETTABLEKS                       R3 R2 K1 ["externalReasonText"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["iconType"]
       19 SETTABLEKS                       R3 R2 K2 ["iconType"]
       21 MOVE                             R1 R2
       22 JUMP                             ; [+6]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R0 R2 K6 ["inputEnabled"]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R1 R2 K0 ["reasonDisabled"]
       29 DUPTABLE                         R2 K10 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled", "allThreadInputStates"}]
       30 SETTABLEKS                       R0 R2 K6 ["inputEnabled"]
       32 SETTABLEKS                       R1 R2 K0 ["reasonDisabled"]
       34 GETUPVAL                         R3 3
       35 SETTABLEKS                       R3 R2 K7 ["markInputDisabled"]
       37 GETUPVAL                         R3 4
       38 SETTABLEKS                       R3 R2 K8 ["clearInputDisabled"]
       40 GETUPVAL                         R3 5
       41 SETTABLEKS                       R3 R2 K9 ["allThreadInputStates"]
       43 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["threadId"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["useRef"]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["useRef"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["useState"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 CALL                             R5 1 2
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K4 ["useState"]
       30 NEWTABLE                         R8 0 0
       32 CALL                             R7 1 2
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R11 0 1
       41 MOVE                             R12 R2
       42 SETLIST                          R11 R12 1 [1]
       44 CALL                             R9 2 0
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       48 NEWCLOSURE                       R10 P2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 NEWTABLE                         R11 0 1
       54 MOVE                             R12 R2
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 0
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       61 NEWCLOSURE                       R10 P3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 NEWTABLE                         R11 0 1
       69 MOVE                             R12 R2
       70 SETLIST                          R11 R12 1 [1]
       72 CALL                             R9 2 1
       73 GETUPVAL                         R10 0
       74 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       76 NEWCLOSURE                       R11 P4
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R6
       82 NEWTABLE                         R12 0 1
       84 MOVE                             R13 R2
       85 SETLIST                          R12 R13 1 [1]
       87 CALL                             R10 2 1
       88 GETUPVAL                         R11 2
       89 CALL                             R11 0 1
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R12 R12 K5 ["useEffect"]
       93 NEWCLOSURE                       R13 P5
       94 CAPTURE                          VAL R11
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          VAL R5
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          VAL R10
       99 NEWTABLE                         R14 0 2
      101 MOVE                             R15 R5
      102 MOVE                             R16 R11
      103 SETLIST                          R14 R15 2 [1]
      105 CALL                             R12 2 0
      106 GETTABLEKS                       R12 R0 K7 ["override"]
      108 GETUPVAL                         R13 0
      109 GETTABLEKS                       R13 R13 K8 ["useMemo"]
      111 NEWCLOSURE                       R14 P6
      112 CAPTURE                          VAL R12
      113 CAPTURE                          UPVAL U4
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R7
      118 NEWTABLE                         R15 0 5
      120 MOVE                             R16 R5
      121 MOVE                             R17 R7
      122 MOVE                             R18 R9
      123 MOVE                             R19 R10
      124 MOVE                             R20 R12
      125 SETLIST                          R15 R16 5 [1]
      127 CALL                             R13 2 1
      128 GETUPVAL                         R14 5
      129 GETUPVAL                         R15 6
      130 GETTABLEKS                       R15 R15 K9 ["Provider"]
      132 DUPTABLE                         R16 K11 [{"value"}]
      133 SETTABLEKS                       R13 R16 K10 ["value"]
      135 GETTABLEKS                       R17 R0 K12 ["children"]
      137 CALL                             R14 3 -1
      138 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["InputStateTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["ThreadIdContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K14 ["useLLMProvider"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K15 ["createElement"]
       46 GETTABLEKS                       R7 R1 K16 ["InputDisabledReasons"]
       48 GETTABLEKS                       R8 R1 K17 ["InputIconTypes"]
       50 DUPTABLE                         R9 K25 [{["inputEnabled"] = True, ["reasonDisabled"] = , ["markInputDisabled"], ["clearInputDisabled"], ["allThreadInputStates"]}]
       51 DUPCLOSURE                       R10 K26 [PROTO_0]
       52 SETTABLEKS                       R10 R9 K22 ["markInputDisabled"]
       54 DUPCLOSURE                       R10 K27 [PROTO_1]
       55 SETTABLEKS                       R10 R9 K23 ["clearInputDisabled"]
       57 NEWTABLE                         R10 0 0
       59 SETTABLEKS                       R10 R9 K24 ["allThreadInputStates"]
       61 DUPCLOSURE                       R10 K28 [PROTO_2]
       62 GETTABLEKS                       R11 R2 K29 ["createContext"]
       64 MOVE                             R12 R9
       65 CALL                             R11 1 1
       66 DUPCLOSURE                       R12 K30 [PROTO_10]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R11
       74 DUPTABLE                         R13 K33 [{"Context", "Provider", "InputDisabledReasons", "InputIconTypes"}]
       75 SETTABLEKS                       R11 R13 K31 ["Context"]
       77 SETTABLEKS                       R12 R13 K32 ["Provider"]
       79 SETTABLEKS                       R7 R13 K16 ["InputDisabledReasons"]
       81 SETTABLEKS                       R8 R13 K17 ["InputIconTypes"]
       83 RETURN                           R13 1
