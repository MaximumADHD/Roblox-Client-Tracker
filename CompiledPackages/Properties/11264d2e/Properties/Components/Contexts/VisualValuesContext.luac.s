PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 MOVE                             R5 R1
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R4 R5 K3 ["Provider"]
       22 DUPTABLE                         R5 K5 [{"value"}]
       23 SETTABLEKS                       R2 R5 K4 ["value"]
       25 GETTABLEKS                       R6 R0 K6 ["children"]
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K4 ["Parent"]
       18 GETTABLEKS                       R4 R5 K8 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Util"]
       25 GETTABLEKS                       R5 R6 K10 ["getVisualValues"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R3 K11 ["createElement"]
       30 MOVE                             R6 R4
       31 GETTABLEKS                       R8 R2 K12 ["Utility"]
       33 GETTABLEKS                       R7 R8 K13 ["getTokens"]
       35 LOADK                            R8 K14 ["Dark"]
       36 LOADK                            R9 K15 ["Desktop"]
       37 CALL                             R7 2 -1
       38 CALL                             R6 -1 1
       39 GETTABLEKS                       R7 R3 K16 ["createContext"]
       41 MOVE                             R8 R6
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K17 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R7
       49 DUPTABLE                         R9 K20 [{"Context", "Provider"}]
       50 SETTABLEKS                       R7 R9 K18 ["Context"]
       52 SETTABLEKS                       R8 R9 K19 ["Provider"]
       54 RETURN                           R9 1
