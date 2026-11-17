PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"expansions", "onExpansionChanged"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["expansions"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["onExpansionChanged"]
        7 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R1
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 NEWTABLE                         R7 0 2
       40 MOVE                             R8 R2
       41 MOVE                             R9 R4
       42 SETLIST                          R7 R8 2 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K6 ["createElement"]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K7 ["Provider"]
       51 DUPTABLE                         R8 K9 [{"value"}]
       52 SETTABLEKS                       R5 R8 K8 ["value"]
       54 GETTABLEKS                       R9 R0 K10 ["children"]
       56 CALL                             R6 3 -1
       57 RETURN                           R6 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["DatamodelConfiguration"]
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K15 [{"expansions", "onExpansionChanged"}]
       38 NEWTABLE                         R6 0 0
       40 SETTABLEKS                       R6 R5 K13 ["expansions"]
       42 GETTABLEKS                       R6 R2 K16 ["createUnimplemented"]
       44 LOADK                            R7 K14 ["onExpansionChanged"]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K14 ["onExpansionChanged"]
       48 GETTABLEKS                       R6 R1 K17 ["createContext"]
       50 MOVE                             R7 R5
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K18 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 DUPTABLE                         R8 K21 [{"Context", "Provider"}]
       57 SETTABLEKS                       R6 R8 K19 ["Context"]
       59 SETTABLEKS                       R7 R8 K20 ["Provider"]
       61 RETURN                           R8 1
