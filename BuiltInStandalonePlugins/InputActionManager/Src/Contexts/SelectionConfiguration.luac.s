PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"selectedCell", "setSelectedCell"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["selectedCell"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setSelectedCell"]
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 CALL                             R2 0 2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R1
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R6 0 2
       30 MOVE                             R7 R2
       31 MOVE                             R8 R3
       32 SETLIST                          R6 R7 2 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K5 ["createElement"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K6 ["Provider"]
       41 DUPTABLE                         R7 K8 [{"value"}]
       42 SETTABLEKS                       R4 R7 K7 ["value"]
       44 GETTABLEKS                       R8 R0 K9 ["children"]
       46 CALL                             R5 3 -1
       47 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["DatamodelConfiguration"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K15 [{["selectedCell"] = , ["setSelectedCell"]}]
       31 GETTABLEKS                       R5 R2 K16 ["createUnimplemented"]
       33 LOADK                            R6 K14 ["setSelectedCell"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K14 ["setSelectedCell"]
       37 GETTABLEKS                       R5 R1 K17 ["createContext"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K18 [PROTO_2]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R7 K21 [{"Context", "Provider"}]
       46 SETTABLEKS                       R5 R7 K19 ["Context"]
       48 SETTABLEKS                       R6 R7 K20 ["Provider"]
       50 RETURN                           R7 1
