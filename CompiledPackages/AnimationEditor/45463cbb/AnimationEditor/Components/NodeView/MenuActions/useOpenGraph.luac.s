PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADK                            R2 K0 ["AnimationGraph"]
        4 JUMP                             ; [+1]
        5 LOADK                            R2 K1 ["Animation"]
        6 NAMECALL                         R0 R0 K2 ["PromptForExistingAssetIdAsync"]
        8 CALL                             R0 2 1
        9 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K4 ["createGraphFromIdAsync"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canCreateGraph"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 NEWCLOSURE                       R0 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["ContextServices"]
       10 GETTABLEKS                       R1 R1 K3 ["Plugin"]
       12 NAMECALL                         R1 R1 K4 ["use"]
       14 CALL                             R1 1 1
       15 NAMECALL                         R1 R1 K5 ["get"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U3
       25 NEWTABLE                         R4 0 3
       27 MOVE                             R5 R1
       28 GETTABLEKS                       R6 R0 K7 ["canCreateGraph"]
       30 GETTABLEKS                       R7 R0 K8 ["createGraphFromIdAsync"]
       32 SETLIST                          R4 R5 3 [1]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K12 [game]
       30 LOADK                            R6 K13 ["ToolboxPassThroughAssetType"]
       31 NAMECALL                         R4 R4 K14 ["GetEngineFeature"]
       33 CALL                             R4 2 1
       34 DUPCLOSURE                       R5 K15 [PROTO_3]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
