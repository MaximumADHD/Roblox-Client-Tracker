PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"ephemeralRow", "clearEpehemeralRow", "setEphemeralRow"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["ephemeralRow"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["clearEpehemeralRow"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["setEphemeralRow"]
       10 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R6 0 2
       22 MOVE                             R7 R1
       23 MOVE                             R8 R3
       24 SETLIST                          R6 R7 2 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 1
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K3 ["Provider"]
       31 DUPTABLE                         R7 K5 [{"value"}]
       32 SETTABLEKS                       R4 R7 K4 ["value"]
       34 GETTABLEKS                       R8 R0 K6 ["children"]
       36 CALL                             R5 3 -1
       37 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["createElement"]
       23 GETTABLEKS                       R4 R1 K10 ["createContext"]
       25 DUPTABLE                         R5 K15 [{["ephemeralRow"] = , ["setEphemeralRow"], ["clearEpehemeralRow"]}]
       26 GETTABLEKS                       R6 R2 K16 ["createUnimplemented"]
       28 LOADK                            R7 K13 ["setEphemeralRow"]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R6 R5 K13 ["setEphemeralRow"]
       32 GETTABLEKS                       R6 R2 K16 ["createUnimplemented"]
       34 LOADK                            R7 K14 ["clearEpehemeralRow"]
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R5 K14 ["clearEpehemeralRow"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K17 [PROTO_0]
       40 DUPCLOSURE                       R6 K18 [PROTO_4]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 DUPTABLE                         R7 K22 [{"Context", "Provider", "rows"}]
       45 SETTABLEKS                       R4 R7 K19 ["Context"]
       47 SETTABLEKS                       R6 R7 K20 ["Provider"]
       49 DUPTABLE                         R8 K24 [{"addTag"}]
       50 MOVE                             R9 R5
       51 DUPTABLE                         R10 K26 [{["type"] = "addTag"}]
       52 CALL                             R9 1 1
       53 SETTABLEKS                       R9 R8 K23 ["addTag"]
       55 SETTABLEKS                       R8 R7 K21 ["rows"]
       57 RETURN                           R7 1
