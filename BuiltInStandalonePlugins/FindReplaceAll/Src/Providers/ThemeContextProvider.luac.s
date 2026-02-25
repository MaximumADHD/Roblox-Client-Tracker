PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Theme"]
        3 GETTABLEKS                       R0 R1 K1 ["Name"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setColors"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Theme"]
        6 GETTABLEKS                       R1 R2 K2 ["Name"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Theme"]
        4 GETTABLEKS                       R1 R2 K1 ["Name"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K2 ["setColors"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K0 ["Theme"]
       13 GETTABLEKS                       R1 R2 K1 ["Name"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Theme"]
        6 GETTABLEKS                       R2 R3 K2 ["Name"]
        8 CALL                             R1 1 2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["useEffect"]
       12 DUPCLOSURE                       R4 K4 [PROTO_1]
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U1
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 0
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K5 ["useEventConnection"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K6 ["ThemeChanged"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 NEWTABLE                         R6 0 0
       30 CALL                             R3 3 0
       31 GETUPVAL                         R3 4
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R4 R5 K7 ["Provider"]
       35 DUPTABLE                         R5 K9 [{"value"}]
       36 DUPTABLE                         R6 K11 [{"theme"}]
       37 SETTABLEKS                       R1 R6 K10 ["theme"]
       39 SETTABLEKS                       R6 R5 K8 ["value"]
       41 GETTABLEKS                       R6 R0 K12 ["children"]
       43 CALL                             R3 3 -1
       44 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Commands"]
       27 GETTABLEKS                       R4 R5 K11 ["FindReplace"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Util"]
       36 GETTABLEKS                       R5 R6 K13 ["MockableProxyStudioSettings"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Contexts"]
       45 GETTABLEKS                       R6 R7 K15 ["ThemeContext"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K16 ["createElement"]
       50 DUPCLOSURE                       R7 K17 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 DUPCLOSURE                       R8 K18 [PROTO_3]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 SETGLOBAL                        R8 K19 ["ThemeContextProvider"]
       61 GETGLOBAL                        R8 K19 ["ThemeContextProvider"]
       63 RETURN                           R8 1
