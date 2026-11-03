PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K3 [{"targetPinPosition", "sourcePinInfo", "initialPinValue"}]
        2 SETTABLEKS                       R0 R4 K0 ["targetPinPosition"]
        4 SETTABLEKS                       R1 R4 K1 ["sourcePinInfo"]
        6 SETTABLEKS                       R2 R4 K2 ["initialPinValue"]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"visibleMenuState", "hideMenu", "showMenu"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["visibleMenuState"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["hideMenu"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["showMenu"]
       10 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 1
       12 MOVE                             R6 R2
       13 SETLIST                          R5 R6 1 [1]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R6 0 1
       23 MOVE                             R7 R2
       24 SETLIST                          R6 R7 1 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       30 NEWCLOSURE                       R6 P2
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 3
       36 MOVE                             R8 R1
       37 MOVE                             R9 R4
       38 MOVE                             R10 R3
       39 SETLIST                          R7 R8 3 [1]
       41 CALL                             R5 2 1
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K3 ["createElement"]
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R7 R7 K4 ["Provider"]
       48 DUPTABLE                         R8 K6 [{"value"}]
       49 SETTABLEKS                       R5 R8 K5 ["value"]
       51 GETTABLEKS                       R9 R0 K7 ["children"]
       53 CALL                             R6 3 -1
       54 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K14 [{["visibleMenuState"] = , ["showMenu"], ["hideMenu"]}]
       27 GETTABLEKS                       R5 R3 K15 ["createUnimplemented"]
       29 LOADK                            R6 K12 ["showMenu"]
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K12 ["showMenu"]
       33 GETTABLEKS                       R5 R3 K15 ["createUnimplemented"]
       35 LOADK                            R6 K13 ["hideMenu"]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K13 ["hideMenu"]
       39 GETTABLEKS                       R5 R2 K16 ["createContext"]
       41 MOVE                             R6 R4
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K17 [PROTO_3]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 DUPTABLE                         R7 K20 [{"Context", "Provider"}]
       47 SETTABLEKS                       R5 R7 K18 ["Context"]
       49 SETTABLEKS                       R6 R7 K19 ["Provider"]
       51 RETURN                           R7 1
