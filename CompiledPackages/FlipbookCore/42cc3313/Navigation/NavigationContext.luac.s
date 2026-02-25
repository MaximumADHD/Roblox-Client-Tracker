PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [table.insert]
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 LENGTH                           R2 R3
        3 GETTABLE                         R0 R1 R2
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 1
        3 JUMPIFLT                         R2 R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [table.remove]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 DUPCLOSURE                       R1 K0 [PROTO_4]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"eventName", "properties"}]
        2 LOADK                            R2 K3 ["PageChanged"]
        3 SETTABLEKS                       R2 R1 K0 ["eventName"]
        5 DUPTABLE                         R2 K5 [{"page"}]
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R6 1
        8 LENGTH                           R5 R6
        9 GETTABLE                         R3 R4 R5
       10 SETTABLEKS                       R3 R2 K4 ["page"]
       12 SETTABLEKS                       R2 R1 K1 ["properties"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+7]
        4 GETIMPORT                        R0 K2 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 1
        3 GETTABLEKS                       R3 R0 K0 ["defaultScreen"]
        5 SETLIST                          R2 R3 1 [1]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R6 0 0
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 3
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R7 0 1
       22 MOVE                             R8 R1
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 3
       27 NEWCLOSURE                       R7 P2
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R1
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 2
       36 NEWCLOSURE                       R8 P3
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R9 0 1
       41 MOVE                             R10 R6
       42 SETLIST                          R9 R10 1 [1]
       44 CALL                             R7 2 1
       45 GETUPVAL                         R8 4
       46 NEWCLOSURE                       R9 P4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U5
       50 NEWTABLE                         R10 0 1
       52 MOVE                             R11 R1
       53 SETLIST                          R10 R11 1 [1]
       55 CALL                             R8 2 0
       56 GETUPVAL                         R9 6
       57 GETTABLEKS                       R8 R9 K1 ["createElement"]
       59 GETUPVAL                         R10 7
       60 GETTABLEKS                       R9 R10 K2 ["Provider"]
       62 DUPTABLE                         R10 K4 [{"value"}]
       63 DUPTABLE                         R11 K9 [{"navigateTo", "goBack", "breadcrumbs", "currentScreen"}]
       64 SETTABLEKS                       R4 R11 K5 ["navigateTo"]
       66 SETTABLEKS                       R7 R11 K6 ["goBack"]
       68 SETTABLEKS                       R1 R11 K7 ["breadcrumbs"]
       70 SETTABLEKS                       R5 R11 K8 ["currentScreen"]
       72 SETTABLEKS                       R11 R10 K3 ["value"]
       74 GETTABLEKS                       R11 R0 K10 ["children"]
       76 CALL                             R8 3 -1
       77 RETURN                           R8 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Packages"]
       11 GETTABLEKS                       R1 R2 K6 ["React"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Telemetry"]
       24 GETTABLEKS                       R2 R3 K8 ["fireEventAsync"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R5 K3 [script]
       31 GETTABLEKS                       R4 R5 K4 ["Parent"]
       33 GETTABLEKS                       R3 R4 K9 ["enums"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R8 K3 [script]
       40 GETTABLEKS                       R7 R8 K4 ["Parent"]
       42 GETTABLEKS                       R6 R7 K4 ["Parent"]
       44 GETTABLEKS                       R5 R6 K10 ["Common"]
       46 GETTABLEKS                       R4 R5 K11 ["usePrevious"]
       48 CALL                             R3 1 1
       49 GETTABLEKS                       R4 R0 K12 ["useCallback"]
       51 GETTABLEKS                       R5 R0 K13 ["useContext"]
       53 GETTABLEKS                       R6 R0 K14 ["useMemo"]
       55 GETTABLEKS                       R7 R0 K15 ["useState"]
       57 GETTABLEKS                       R8 R0 K16 ["useEffect"]
       59 GETTABLEKS                       R9 R0 K17 ["createContext"]
       61 NEWTABLE                         R10 0 0
       63 CALL                             R9 1 1
       64 DUPCLOSURE                       R10 K18 [PROTO_8]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R9
       73 DUPCLOSURE                       R11 K19 [PROTO_9]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R9
       76 DUPTABLE                         R12 K23 [{"Context", "Provider", "use"}]
       77 SETTABLEKS                       R9 R12 K20 ["Context"]
       79 SETTABLEKS                       R10 R12 K21 ["Provider"]
       81 SETTABLEKS                       R11 R12 K22 ["use"]
       83 RETURN                           R12 1
