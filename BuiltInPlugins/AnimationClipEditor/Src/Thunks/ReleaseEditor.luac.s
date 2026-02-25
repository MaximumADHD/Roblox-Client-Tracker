PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 0
        4 LOADB                            R5 0
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R0 K1 ["dispatch"]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K2 ["PLAY_STATE"]
       13 GETTABLEKS                       R5 R6 K3 ["Pause"]
       15 CALL                             R4 1 -1
       16 NAMECALL                         R2 R0 K1 ["dispatch"]
       18 CALL                             R2 -1 0
       19 GETTABLEKS                       R2 R1 K4 ["AnimationData"]
       21 GETTABLEKS                       R4 R1 K5 ["Status"]
       23 GETTABLEKS                       R3 R4 K6 ["RootInstance"]
       25 GETUPVAL                         R4 3
       26 LOADB                            R6 1
       27 NAMECALL                         R4 R4 K7 ["SetEnabled"]
       29 CALL                             R4 2 0
       30 JUMPIFNOT                        R2 ; [+1]
       31 JUMPIF                           R3 ; [+1]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R4 R2 K8 ["Instances"]
       35 JUMPIFNOT                        R4 ; [+12]
       36 GETIMPORT                        R5 K10 [pairs]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 3
       40 FORGPREP_NEXT                    R5
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R10 R11 K11 ["clearPose"]
       44 MOVE                             R11 R3
       45 CALL                             R10 1 0
       46 FORGLOOP                         R5 2 ; [-6]
       48 GETTABLEKS                       R5 R2 K12 ["Metadata"]
       50 JUMPIFNOT                        R5 ; [+23]
       51 GETTABLEKS                       R5 R2 K8 ["Instances"]
       53 JUMPIFNOT                        R5 ; [+20]
       54 GETTABLEKS                       R6 R2 K8 ["Instances"]
       56 GETTABLEKS                       R5 R6 K13 ["Root"]
       58 JUMPIFNOT                        R5 ; [+15]
       59 GETTABLEKS                       R6 R1 K5 ["Status"]
       61 GETTABLEKS                       R5 R6 K14 ["IsDirty"]
       63 JUMPIFNOT                        R5 ; [+10]
       64 GETUPVAL                         R7 5
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R8 R9 K15 ["DEFAULT_AUTOSAVE_NAME"]
       68 GETUPVAL                         R9 6
       69 GETUPVAL                         R10 7
       70 CALL                             R7 3 -1
       71 NAMECALL                         R5 R0 K1 ["dispatch"]
       73 CALL                             R5 -1 0
       74 GETUPVAL                         R6 8
       75 GETTABLEKS                       R5 R6 K16 ["clearMicrobones"]
       77 CALL                             R5 0 0
       78 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U6
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R1 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["RigUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R7 R1 K10 ["Src"]
       35 GETTABLEKS                       R6 R7 K11 ["Util"]
       37 GETTABLEKS                       R5 R6 K14 ["RigVisualization"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R8 R1 K10 ["Src"]
       44 GETTABLEKS                       R7 R8 K15 ["Actions"]
       46 GETTABLEKS                       R6 R7 K16 ["SetActive"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R9 R1 K10 ["Src"]
       53 GETTABLEKS                       R8 R9 K15 ["Actions"]
       55 GETTABLEKS                       R7 R8 K17 ["SetPlayState"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R11 R1 K10 ["Src"]
       62 GETTABLEKS                       R10 R11 K18 ["Thunks"]
       64 GETTABLEKS                       R9 R10 K19 ["Exporting"]
       66 GETTABLEKS                       R8 R9 K20 ["SaveAnimation"]
       68 CALL                             R7 1 1
       69 DUPCLOSURE                       R8 K21 [PROTO_1]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R4
       77 RETURN                           R8 1
