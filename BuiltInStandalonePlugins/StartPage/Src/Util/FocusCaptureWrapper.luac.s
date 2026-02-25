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
        5 LOADNIL                          R2
        6 CALL                             R1 1 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["createElement"]
       10 LOADK                            R4 K2 ["ScreenGui"]
       11 DUPTABLE                         R5 K5 [{"ref", "ZIndexBehavior"}]
       12 SETTABLEKS                       R2 R5 K3 ["ref"]
       14 GETIMPORT                        R6 K8 [Enum.ZIndexBehavior.Sibling]
       16 SETTABLEKS                       R6 R5 K4 ["ZIndexBehavior"]
       18 NEWTABLE                         R6 0 1
       20 JUMPIFNOT                        R1 ; [+40]
       21 GETUPVAL                         R7 4
       22 NEWTABLE                         R8 0 2
       24 GETUPVAL                         R10 5
       25 GETTABLEKS                       R9 R10 K9 ["new"]
       27 MOVE                             R10 R1
       28 CALL                             R9 1 1
       29 GETUPVAL                         R11 6
       30 GETTABLEKS                       R10 R11 K10 ["mock"]
       32 CALL                             R10 0 -1
       33 SETLIST                          R8 R9 -1 [1]
       35 DUPTABLE                         R9 K13 [{"Component", "StyleLink"}]
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R10 R11 K1 ["createElement"]
       39 GETUPVAL                         R11 7
       40 MOVE                             R12 R0
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K11 ["Component"]
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R10 R11 K1 ["createElement"]
       47 LOADK                            R11 K12 ["StyleLink"]
       48 DUPTABLE                         R12 K15 [{"StyleSheet"}]
       49 GETUPVAL                         R13 8
       50 GETUPVAL                         R15 9
       51 GETTABLEKS                       R14 R15 K16 ["Parent"]
       53 CALL                             R13 1 1
       54 SETTABLEKS                       R13 R12 K14 ["StyleSheet"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K12 ["StyleLink"]
       59 CALL                             R7 2 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R7
       62 SETLIST                          R6 R7 1 [1]
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 RETURN                           R1 1

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
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K14 ["Localization"]
       31 GETTABLEKS                       R6 R4 K15 ["Focus"]
       33 GETTABLEKS                       R8 R3 K16 ["TestHelpers"]
       35 GETTABLEKS                       R7 R8 K17 ["provideMockContext"]
       37 GETTABLEKS                       R9 R3 K18 ["Styling"]
       39 GETTABLEKS                       R8 R9 K19 ["registerPluginStyles"]
       41 GETTABLEKS                       R9 R2 K20 ["useEffect"]
       43 GETTABLEKS                       R10 R2 K21 ["useState"]
       45 DUPCLOSURE                       R11 K22 [PROTO_2]
       46 CAPTURE                          VAL R9
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R0
       55 RETURN                           R11 1
