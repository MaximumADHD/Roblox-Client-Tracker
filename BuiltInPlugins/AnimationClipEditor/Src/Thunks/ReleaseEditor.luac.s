PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 0
        4 LOADB                            R5 0
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R0 K1 ["dispatch"]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["PLAY_STATE"]
       13 GETTABLEKS                       R5 R5 K3 ["Pause"]
       15 CALL                             R4 1 -1
       16 NAMECALL                         R2 R0 K1 ["dispatch"]
       18 CALL                             R2 -1 0
       19 GETTABLEKS                       R2 R1 K4 ["AnimationData"]
       21 GETTABLEKS                       R3 R1 K5 ["Status"]
       23 GETTABLEKS                       R3 R3 K6 ["RootInstance"]
       25 GETUPVAL                         R4 3
       26 CALL                             R4 0 1
       27 JUMPIF                           R4 ; [+5]
       28 GETUPVAL                         R4 4
       29 LOADB                            R6 1
       30 NAMECALL                         R4 R4 K7 ["SetEnabled"]
       32 CALL                             R4 2 0
       33 JUMPIFNOT                        R2 ; [+1]
       34 JUMPIF                           R3 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R4 R2 K8 ["Instances"]
       38 JUMPIFNOT                        R4 ; [+12]
       39 GETIMPORT                        R5 K10 [pairs]
       41 MOVE                             R6 R4
       42 CALL                             R5 1 3
       43 FORGPREP_NEXT                    R5
       44 GETUPVAL                         R10 5
       45 GETTABLEKS                       R10 R10 K11 ["clearPose"]
       47 MOVE                             R11 R3
       48 CALL                             R10 1 0
       49 FORGLOOP                         R5 2 ; [-6]
       51 GETTABLEKS                       R5 R2 K12 ["Metadata"]
       53 JUMPIFNOT                        R5 ; [+23]
       54 GETTABLEKS                       R5 R2 K8 ["Instances"]
       56 JUMPIFNOT                        R5 ; [+20]
       57 GETTABLEKS                       R5 R2 K8 ["Instances"]
       59 GETTABLEKS                       R5 R5 K13 ["Root"]
       61 JUMPIFNOT                        R5 ; [+15]
       62 GETTABLEKS                       R5 R1 K5 ["Status"]
       64 GETTABLEKS                       R5 R5 K14 ["IsDirty"]
       66 JUMPIFNOT                        R5 ; [+10]
       67 GETUPVAL                         R7 6
       68 GETUPVAL                         R8 2
       69 GETTABLEKS                       R8 R8 K15 ["DEFAULT_AUTOSAVE_NAME"]
       71 GETUPVAL                         R9 7
       72 GETUPVAL                         R10 8
       73 CALL                             R7 3 -1
       74 NAMECALL                         R5 R0 K1 ["dispatch"]
       76 CALL                             R5 -1 0
       77 GETUPVAL                         R5 9
       78 CALL                             R5 0 1
       79 JUMPIFNOT                        R5 ; [+25]
       80 GETTABLEKS                       R5 R1 K5 ["Status"]
       82 GETTABLEKS                       R5 R5 K16 ["RootCFrame"]
       84 JUMPIFNOT                        R5 ; [+8]
       85 GETTABLEKS                       R5 R3 K17 ["PrimaryPart"]
       87 GETTABLEKS                       R6 R1 K5 ["Status"]
       89 GETTABLEKS                       R6 R6 K16 ["RootCFrame"]
       91 SETTABLEKS                       R6 R5 K18 ["CFrame"]
       93 GETTABLEKS                       R5 R1 K5 ["Status"]
       95 GETTABLEKS                       R5 R5 K19 ["RootCFrameSignal"]
       97 JUMPIFNOT                        R5 ; [+7]
       98 GETTABLEKS                       R5 R1 K5 ["Status"]
      100 GETTABLEKS                       R5 R5 K19 ["RootCFrameSignal"]
      102 NAMECALL                         R5 R5 K20 ["Disconnect"]
      104 CALL                             R5 1 0
      105 GETUPVAL                         R5 10
      106 GETTABLEKS                       R5 R5 K21 ["clearMicrobones"]
      108 CALL                             R5 0 0
      109 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 RETURN                           R2 1

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
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["RigUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K11 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["RigVisualization"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R1 K10 ["Src"]
       44 GETTABLEKS                       R6 R6 K15 ["Actions"]
       46 GETTABLEKS                       R6 R6 K16 ["SetActive"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R1 K10 ["Src"]
       53 GETTABLEKS                       R7 R7 K15 ["Actions"]
       55 GETTABLEKS                       R7 R7 K17 ["SetPlayState"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R8 R1 K10 ["Src"]
       62 GETTABLEKS                       R8 R8 K18 ["Thunks"]
       64 GETTABLEKS                       R8 R8 K19 ["Exporting"]
       66 GETTABLEKS                       R8 R8 K20 ["SaveAnimation"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K9 [require]
       71 GETTABLEKS                       R9 R1 K21 ["LuaFlags"]
       73 GETTABLEKS                       R9 R9 K22 ["GetFFlagKeepHistoryService"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K9 [require]
       78 GETTABLEKS                       R10 R1 K21 ["LuaFlags"]
       80 GETTABLEKS                       R10 R10 K23 ["GetFFlagRootMotion"]
       82 CALL                             R9 1 1
       83 DUPCLOSURE                       R10 K24 [PROTO_1]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R4
       93 RETURN                           R10 1
