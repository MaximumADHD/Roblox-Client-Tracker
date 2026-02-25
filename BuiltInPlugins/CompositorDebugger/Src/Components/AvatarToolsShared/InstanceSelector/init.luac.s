PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Actor"]
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K2 ["Get"]
        8 CALL                             R1 1 1
        9 LENGTH                           R2 R1
       10 JUMPIFNOTEQKN                    R2 K3 [1] ; [+19]
       12 GETUPVAL                         R3 1
       13 NAMECALL                         R3 R3 K2 ["Get"]
       15 CALL                             R3 1 1
       16 GETTABLEN                        R2 R3 1
       17 JUMPIFEQ                         R2 R0 ; [+12]
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETUPVAL                         R3 3
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 4
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsSelectedInstanceValid"]
        4 GETTABLEKS                       R3 R1 K2 ["OnValidSelection"]
        6 GETTABLEKS                       R4 R1 K3 ["OnInvalidSelection"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["SelectionChanged"]
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R4
       17 NAMECALL                         R5 R5 K5 ["Connect"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R0 K6 ["SelectionChangedHandle"]
       22 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["SelectionChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["SelectionChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"Actor"}]
        1 GETTABLEKS                       R4 R0 K2 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["Actor"]
        5 SETTABLEKS                       R3 R2 K0 ["Actor"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETIMPORT                        R6 K13 [game]
       34 LOADK                            R8 K14 ["Selection"]
       35 NAMECALL                         R6 R6 K15 ["GetService"]
       37 CALL                             R6 2 1
       38 GETTABLEKS                       R7 R1 K16 ["PureComponent"]
       40 LOADK                            R9 K17 ["InstanceSelector"]
       41 NAMECALL                         R7 R7 K18 ["extend"]
       43 CALL                             R7 2 1
       44 DUPCLOSURE                       R8 K19 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R8 R7 K20 ["didMount"]
       48 DUPCLOSURE                       R8 K21 [PROTO_2]
       49 SETTABLEKS                       R8 R7 K22 ["willUnmount"]
       51 DUPCLOSURE                       R8 K23 [PROTO_3]
       52 SETTABLEKS                       R8 R7 K24 ["render"]
       54 MOVE                             R8 R5
       55 DUPTABLE                         R9 K28 [{"Localization", "Mouse", "Plugin"}]
       56 GETTABLEKS                       R10 R4 K25 ["Localization"]
       58 SETTABLEKS                       R10 R9 K25 ["Localization"]
       60 GETTABLEKS                       R10 R4 K26 ["Mouse"]
       62 SETTABLEKS                       R10 R9 K26 ["Mouse"]
       64 GETTABLEKS                       R10 R4 K27 ["Plugin"]
       66 SETTABLEKS                       R10 R9 K27 ["Plugin"]
       68 CALL                             R8 1 1
       69 MOVE                             R9 R7
       70 CALL                             R8 1 1
       71 MOVE                             R7 R8
       72 DUPCLOSURE                       R8 K29 [PROTO_4]
       73 GETTABLEKS                       R9 R2 K30 ["connect"]
       75 MOVE                             R10 R8
       76 CALL                             R9 1 1
       77 MOVE                             R10 R7
       78 CALL                             R9 1 1
       79 MOVE                             R7 R9
       80 RETURN                           R7 1
