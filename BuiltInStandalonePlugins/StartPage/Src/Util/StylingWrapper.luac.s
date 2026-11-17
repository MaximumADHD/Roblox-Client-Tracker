PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 2
        5 DUPTABLE                         R2 K3 [{"Component", "StyleLink"}]
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K4 ["createElement"]
        9 GETUPVAL                         R4 4
       10 MOVE                             R5 R0
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K1 ["Component"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K4 ["createElement"]
       17 LOADK                            R4 K2 ["StyleLink"]
       18 DUPTABLE                         R5 K6 [{"StyleSheet"}]
       19 GETUPVAL                         R6 5
       20 GETUPVAL                         R7 6
       21 GETTABLEKS                       R7 R7 K7 ["Parent"]
       23 CALL                             R6 1 1
       24 SETTABLEKS                       R6 R5 K5 ["StyleSheet"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K2 ["StyleLink"]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StylingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["mockContext"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R3 K16 ["Styling"]
       38 GETTABLEKS                       R5 R5 K17 ["registerPluginStyles"]
       40 GETTABLEKS                       R6 R2 K18 ["useEffect"]
       42 DUPCLOSURE                       R7 K19 [PROTO_2]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R0
       49 RETURN                           R7 1
