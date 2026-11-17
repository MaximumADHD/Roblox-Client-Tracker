PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"DefaultStateObject"}]
        1 GETTABLEKS                       R3 R0 K0 ["DefaultStateObject"]
        3 SETTABLEKS                       R3 R2 K0 ["DefaultStateObject"]
        5 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"dispatchExampleAction"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchExampleAction"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R4 K11 ["Analytics"]
       36 GETTABLEKS                       R7 R4 K12 ["Localization"]
       38 GETTABLEKS                       R8 R3 K13 ["Style"]
       40 GETTABLEKS                       R8 R8 K14 ["Stylizer"]
       42 GETTABLEKS                       R9 R3 K15 ["UI"]
       44 GETTABLEKS                       R10 R9 K16 ["Pane"]
       46 GETTABLEKS                       R11 R0 K17 ["Src"]
       48 GETTABLEKS                       R11 R11 K18 ["Actions"]
       50 GETIMPORT                        R12 K4 [require]
       52 GETTABLEKS                       R13 R11 K19 ["ExampleAction"]
       54 CALL                             R12 1 1
       55 GETTABLEKS                       R13 R0 K17 ["Src"]
       57 GETTABLEKS                       R13 R13 K20 ["Reducers"]
       59 GETIMPORT                        R14 K4 [require]
       61 GETTABLEKS                       R15 R13 K21 ["ExampleReducer"]
       63 CALL                             R14 1 1
       64 GETTABLEKS                       R15 R1 K22 ["PureComponent"]
       66 LOADK                            R17 K23 ["ExampleRoactRoduxComponent"]
       67 NAMECALL                         R15 R15 K24 ["extend"]
       69 CALL                             R15 2 1
       70 DUPCLOSURE                       R16 K25 [PROTO_0]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R10
       73 SETTABLEKS                       R16 R15 K26 ["render"]
       75 MOVE                             R16 R5
       76 DUPTABLE                         R17 K27 [{"Analytics", "Localization", "Stylizer"}]
       77 SETTABLEKS                       R6 R17 K11 ["Analytics"]
       79 SETTABLEKS                       R7 R17 K12 ["Localization"]
       81 SETTABLEKS                       R8 R17 K14 ["Stylizer"]
       83 CALL                             R16 1 1
       84 MOVE                             R17 R15
       85 CALL                             R16 1 1
       86 MOVE                             R15 R16
       87 GETTABLEKS                       R16 R2 K28 ["connect"]
       89 DUPCLOSURE                       R17 K29 [PROTO_1]
       90 DUPCLOSURE                       R18 K30 [PROTO_3]
       91 CAPTURE                          VAL R12
       92 CALL                             R16 2 1
       93 MOVE                             R17 R15
       94 CALL                             R16 1 -1
       95 RETURN                           R16 -1
