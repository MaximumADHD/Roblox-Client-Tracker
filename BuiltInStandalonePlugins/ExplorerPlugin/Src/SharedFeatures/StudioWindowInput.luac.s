PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Signal"]
        6 GETTABLEKS                       R2 R2 K2 ["new"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useState"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["Signal"]
       15 GETTABLEKS                       R3 R3 K2 ["new"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["useState"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K1 ["Signal"]
       24 GETTABLEKS                       R4 R4 K2 ["new"]
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K3 ["useEventConnection"]
       30 GETTABLEKS                       R5 R0 K4 ["dockWidget"]
       32 GETTABLEKS                       R5 R5 K5 ["InputBegan"]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R7 0 1
       38 MOVE                             R8 R1
       39 SETLIST                          R7 R8 1 [1]
       41 CALL                             R4 3 0
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K3 ["useEventConnection"]
       45 GETTABLEKS                       R5 R0 K4 ["dockWidget"]
       47 GETTABLEKS                       R5 R5 K6 ["InputChanged"]
       49 NEWCLOSURE                       R6 P1
       50 CAPTURE                          VAL R2
       51 NEWTABLE                         R7 0 1
       53 MOVE                             R8 R2
       54 SETLIST                          R7 R8 1 [1]
       56 CALL                             R4 3 0
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R4 R4 K3 ["useEventConnection"]
       60 GETTABLEKS                       R5 R0 K4 ["dockWidget"]
       62 GETTABLEKS                       R5 R5 K7 ["InputEnded"]
       64 NEWCLOSURE                       R6 P2
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R7 0 1
       68 MOVE                             R8 R3
       69 SETLIST                          R7 R8 1 [1]
       71 CALL                             R4 3 0
       72 GETUPVAL                         R4 3
       73 GETUPVAL                         R5 1
       74 GETTABLEKS                       R5 R5 K8 ["Components"]
       76 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       78 GETTABLEKS                       R5 R5 K10 ["WindowInputContextProvider"]
       80 DUPTABLE                         R6 K14 [{"inputBeganSignal", "inputChangedSignal", "inputEndedSignal"}]
       81 SETTABLEKS                       R1 R6 K11 ["inputBeganSignal"]
       83 SETTABLEKS                       R2 R6 K12 ["inputChangedSignal"]
       85 SETTABLEKS                       R3 R6 K13 ["inputEndedSignal"]
       87 GETTABLEKS                       R7 R0 K15 ["children"]
       89 CALL                             R4 3 -1
       90 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fire"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MouseEnterStudioViewport"]
        3 DUPCLOSURE                       R2 K1 [PROTO_4]
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K2 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MouseService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Explorer"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["SharedFeatures"]
       40 GETTABLEKS                       R6 R6 K16 ["createPluginRpcMethod"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R3 K17 ["createElement"]
       45 NEWTABLE                         R7 2 0
       47 MOVE                             R8 R5
       48 LOADK                            R9 K18 ["ViewportHovered"]
       49 CALL                             R8 1 1
       50 DUPCLOSURE                       R9 K19 [PROTO_3]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 SETTABLEKS                       R9 R7 K20 ["Provider"]
       57 DUPCLOSURE                       R9 K21 [PROTO_6]
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R8
       60 SETTABLEKS                       R9 R7 K22 ["connectGuest"]
       62 RETURN                           R7 1
