PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["showImportAnimModelChoicePrompt"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AvatarImportService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R0 R0 K4 ["ImportFBXAnimationUserMayChooseModel"]
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U0
       11 GETIMPORT                        R4 K4 [pcall]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CALL                             R4 1 2
       17 JUMPIFNOT                        R4 ; [+55]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K5 ["fromKeyframeSequence"]
       21 MOVE                             R7 R5
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R7 R6 K6 ["Metadata"]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K7 ["DEFAULT_IMPORTED_NAME"]
       28 SETTABLEKS                       R8 R7 K8 ["Name"]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K9 ["clearTrackSequences"]
       33 MOVE                             R8 R6
       34 CALL                             R7 1 0
       35 GETUPVAL                         R9 4
       36 MOVE                             R10 R6
       37 GETUPVAL                         R11 5
       38 CALL                             R9 2 -1
       39 NAMECALL                         R7 R0 K10 ["dispatch"]
       41 CALL                             R7 -1 0
       42 GETUPVAL                         R9 6
       43 LOADB                            R10 0
       44 CALL                             R9 1 -1
       45 NAMECALL                         R7 R0 K10 ["dispatch"]
       47 CALL                             R7 -1 0
       48 GETUPVAL                         R9 7
       49 LOADB                            R10 0
       50 CALL                             R9 1 -1
       51 NAMECALL                         R7 R0 K10 ["dispatch"]
       53 CALL                             R7 -1 0
       54 JUMPIFNOT                        R5 ; [+3]
       55 NAMECALL                         R7 R5 K11 ["Destroy"]
       57 CALL                             R7 1 0
       58 GETUPVAL                         R7 5
       59 LOADK                            R9 K12 ["onImportFbxAnimation"]
       60 GETTABLEKS                       R11 R6 K6 ["Metadata"]
       62 JUMPIFNOT                        R11 ; [+5]
       63 GETTABLEKS                       R10 R6 K6 ["Metadata"]
       65 GETTABLEKS                       R10 R10 K13 ["Guid"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R10
       69 NAMECALL                         R7 R7 K14 ["report"]
       71 CALL                             R7 3 0
       72 RETURN                           R0 0
       73 GETIMPORT                        R6 K16 [warn]
       75 MOVE                             R7 R5
       76 CALL                             R6 1 0
       77 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetIsDirty"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["SetIsLegacyAnimSaves"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Thunks"]
       31 GETTABLEKS                       R4 R4 K11 ["LoadAnimationData"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Util"]
       40 GETTABLEKS                       R5 R5 K13 ["AnimationData"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Util"]
       49 GETTABLEKS                       R6 R6 K14 ["Constants"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K12 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["RigSerialization"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K16 [PROTO_3]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 RETURN                           R7 1
