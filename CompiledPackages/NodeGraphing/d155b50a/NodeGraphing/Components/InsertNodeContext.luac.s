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
       27 DUPTABLE                         R5 K5 [{"visibleMenuState", "hideMenu", "showMenu"}]
       28 SETTABLEKS                       R1 R5 K2 ["visibleMenuState"]
       30 SETTABLEKS                       R4 R5 K3 ["hideMenu"]
       32 SETTABLEKS                       R3 R5 K4 ["showMenu"]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K6 ["createElement"]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K7 ["Provider"]
       40 DUPTABLE                         R8 K9 [{"value"}]
       41 SETTABLEKS                       R5 R8 K8 ["value"]
       43 GETTABLEKS                       R9 R0 K10 ["children"]
       45 CALL                             R6 3 -1
       46 RETURN                           R6 -1

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
       26 DUPTABLE                         R4 K13 [{"visibleMenuState", "showMenu", "hideMenu"}]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K10 ["visibleMenuState"]
       30 GETTABLEKS                       R5 R3 K14 ["createUnimplemented"]
       32 LOADK                            R6 K11 ["showMenu"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K11 ["showMenu"]
       36 GETTABLEKS                       R5 R3 K14 ["createUnimplemented"]
       38 LOADK                            R6 K12 ["hideMenu"]
       39 CALL                             R5 1 1
       40 SETTABLEKS                       R5 R4 K12 ["hideMenu"]
       42 GETTABLEKS                       R5 R2 K15 ["createContext"]
       44 MOVE                             R6 R4
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K16 [PROTO_2]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 DUPTABLE                         R7 K19 [{"Context", "Provider"}]
       50 SETTABLEKS                       R5 R7 K17 ["Context"]
       52 SETTABLEKS                       R6 R7 K18 ["Provider"]
       54 RETURN                           R7 1
