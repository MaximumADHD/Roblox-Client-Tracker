PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getPromptAssetTypeName"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R0 K1 ["AnimationGraph"]
       10 GETUPVAL                         R1 3
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K2 ["PromptForExistingAssetIdAsync"]
       14 CALL                             R1 2 1
       15 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K4 ["createGraphFromIdAsync"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canCreateGraph"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 NEWCLOSURE                       R0 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U0
       12 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+10]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["useContext"]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K1 ["Context"]
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R1 R1 K2 ["assetType"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R1
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K3 ["ContextServices"]
       24 GETTABLEKS                       R2 R2 K4 ["Plugin"]
       26 NAMECALL                         R2 R2 K5 ["use"]
       28 CALL                             R2 1 1
       29 NAMECALL                         R2 R2 K6 ["get"]
       31 CALL                             R2 1 1
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K7 ["useMemo"]
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R5 0 4
       43 MOVE                             R6 R2
       44 GETTABLEKS                       R7 R0 K8 ["canCreateGraph"]
       46 GETTABLEKS                       R8 R0 K9 ["createGraphFromIdAsync"]
       48 GETUPVAL                         R10 2
       49 CALL                             R10 0 1
       50 JUMPIFNOT                        R10 ; [+2]
       51 MOVE                             R9 R1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R9
       54 SETLIST                          R5 R6 4 [1]
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["OpenableAssetTypeContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K10 ["OpenableAssetTypeContext"]
       34 GETTABLEKS                       R5 R5 K11 ["OpenableAssetTypeUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimationEditorAnimationTypes"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K16 [PROTO_3]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 RETURN                           R8 1
