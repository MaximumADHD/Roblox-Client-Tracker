PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["plugin"]
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K1 ["plugin"]
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 3
       15 DUPTABLE                         R3 K4 [{"Design", "Plugin"}]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R4 R5 K5 ["new"]
       19 MOVE                             R5 R1
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K2 ["Design"]
       23 GETUPVAL                         R5 5
       24 GETTABLEKS                       R4 R5 K5 ["new"]
       26 GETTABLEKS                       R5 R0 K1 ["plugin"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K3 ["Plugin"]
       31 DUPTABLE                         R4 K7 [{"DialogSessionManager"}]
       32 GETUPVAL                         R5 6
       33 GETUPVAL                         R6 7
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K6 ["DialogSessionManager"]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["DialogSessionManager"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R2 K12 ["ContextServices"]
       32 GETTABLEKS                       R4 R5 K13 ["Design"]
       34 GETTABLEKS                       R6 R2 K12 ["ContextServices"]
       36 GETTABLEKS                       R5 R6 K14 ["Plugin"]
       38 GETTABLEKS                       R6 R3 K15 ["createElement"]
       40 GETTABLEKS                       R8 R2 K12 ["ContextServices"]
       42 GETTABLEKS                       R7 R8 K16 ["provide"]
       44 GETTABLEKS                       R9 R2 K17 ["Styling"]
       46 GETTABLEKS                       R8 R9 K18 ["registerPluginStyles"]
       48 DUPCLOSURE                       R9 K19 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R1
       57 GETTABLEKS                       R10 R3 K20 ["memo"]
       59 MOVE                             R11 R9
       60 CALL                             R10 1 -1
       61 RETURN                           R10 -1
