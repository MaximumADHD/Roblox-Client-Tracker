PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["localization"]
        4 GETTABLEKS                       R3 R1 K2 ["plugin"]
        6 GETTABLEKS                       R4 R1 K3 ["settings"]
        8 GETTABLEKS                       R5 R1 K4 ["store"]
       10 GETTABLEKS                       R6 R1 K5 ["theme"]
       12 GETTABLEKS                       R7 R1 K6 ["analytics"]
       14 GETTABLEKS                       R8 R1 K7 ["ixp"]
       16 NAMECALL                         R9 R3 K8 ["GetMouse"]
       18 CALL                             R9 1 1
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R10 R11 K9 ["provide"]
       22 NEWTABLE                         R11 0 10
       24 GETUPVAL                         R14 0
       25 GETTABLEKS                       R13 R14 K10 ["API"]
       27 GETTABLEKS                       R12 R13 K11 ["new"]
       29 CALL                             R12 0 1
       30 GETUPVAL                         R15 0
       31 GETTABLEKS                       R14 R15 K12 ["Plugin"]
       33 GETTABLEKS                       R13 R14 K11 ["new"]
       35 MOVE                             R14 R3
       36 CALL                             R13 1 1
       37 MOVE                             R14 R2
       38 GETUPVAL                         R15 1
       39 CALL                             R15 0 1
       40 GETUPVAL                         R18 0
       41 GETTABLEKS                       R17 R18 K13 ["Store"]
       43 GETTABLEKS                       R16 R17 K11 ["new"]
       45 MOVE                             R17 R5
       46 CALL                             R16 1 1
       47 GETUPVAL                         R18 2
       48 GETTABLEKS                       R17 R18 K11 ["new"]
       50 MOVE                             R18 R4
       51 CALL                             R17 1 1
       52 GETUPVAL                         R20 0
       53 GETTABLEKS                       R19 R20 K14 ["Mouse"]
       55 GETTABLEKS                       R18 R19 K11 ["new"]
       57 MOVE                             R19 R9
       58 CALL                             R18 1 1
       59 MOVE                             R19 R7
       60 GETTABLEKS                       R20 R1 K15 ["assetAnalytics"]
       62 GETTABLEKS                       R21 R1 K7 ["ixp"]
       64 SETLIST                          R11 R12 10 [1]
       66 GETUPVAL                         R14 3
       67 GETTABLEKS                       R13 R14 K16 ["Children"]
       69 GETTABLE                         R12 R1 R13
       70 CALL                             R10 2 -1
       71 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R4 K5 [require]
       18 GETTABLEKS                       R5 R1 K7 ["Framework"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K9 ["Src"]
       27 GETTABLEKS                       R6 R7 K8 ["ContextServices"]
       29 GETTABLEKS                       R5 R6 K10 ["Settings"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R6 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R6 K11 ["Util"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R5 K12 ["makeTheme"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R2 K13 ["PureComponent"]
       43 LOADK                            R9 K14 ["ToolboxServiceWrapper"]
       44 NAMECALL                         R7 R7 K15 ["extend"]
       46 CALL                             R7 2 1
       47 DUPCLOSURE                       R8 K16 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R8 R7 K17 ["render"]
       54 RETURN                           R7 1
