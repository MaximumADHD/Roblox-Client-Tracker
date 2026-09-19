PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 MOVE                             R5 R1
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K3 ["Provider"]
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
       16 GETTABLEKS                       R4 R0 K4 ["Parent"]
       18 GETTABLEKS                       R4 R4 K8 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R5 R5 K10 ["getVisualValues"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R3 K11 ["createElement"]
       30 MOVE                             R6 R4
       31 GETTABLEKS                       R7 R2 K12 ["Utility"]
       33 GETTABLEKS                       R7 R7 K13 ["getTokens"]
       35 LOADK                            R8 K14 ["Dark"]
       36 LOADK                            R9 K15 ["Desktop"]
       37 CALL                             R7 2 -1
       38 CALL                             R6 -1 1
       39 GETTABLEKS                       R7 R3 K16 ["createContext"]
       41 MOVE                             R8 R6
       42 CALL                             R7 1 1
       43 LOADK                            R8 K17 ["VisualValuesContext"]
       44 SETTABLEKS                       R8 R7 K18 ["displayName"]
       46 DUPCLOSURE                       R8 K19 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 DUPTABLE                         R9 K22 [{"Context", "Provider"}]
       53 SETTABLEKS                       R7 R9 K20 ["Context"]
       55 SETTABLEKS                       R8 R9 K21 ["Provider"]
       57 RETURN                           R9 1
