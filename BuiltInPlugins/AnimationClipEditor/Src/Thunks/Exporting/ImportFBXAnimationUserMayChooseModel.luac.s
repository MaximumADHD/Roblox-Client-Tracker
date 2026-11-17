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
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 FASTPCALL                        pcall 1 ; [+2]
       15 GETIMPORT                        R4 K4 [pcall]
       17 CALL                             R4 1 2
       18 JUMPIFNOT                        R4 ; [+55]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K5 ["fromKeyframeSequence"]
       22 MOVE                             R7 R5
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R7 R6 K6 ["Metadata"]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R8 R8 K7 ["DEFAULT_IMPORTED_NAME"]
       29 SETTABLEKS                       R8 R7 K8 ["Name"]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K9 ["clearTrackSequences"]
       34 MOVE                             R8 R6
       35 CALL                             R7 1 0
       36 GETUPVAL                         R9 4
       37 MOVE                             R10 R6
       38 GETUPVAL                         R11 5
       39 CALL                             R9 2 -1
       40 NAMECALL                         R7 R0 K10 ["dispatch"]
       42 CALL                             R7 -1 0
       43 GETUPVAL                         R9 6
       44 LOADB                            R10 0
       45 CALL                             R9 1 -1
       46 NAMECALL                         R7 R0 K10 ["dispatch"]
       48 CALL                             R7 -1 0
       49 GETUPVAL                         R9 7
       50 LOADB                            R10 0
       51 CALL                             R9 1 -1
       52 NAMECALL                         R7 R0 K10 ["dispatch"]
       54 CALL                             R7 -1 0
       55 JUMPIFNOT                        R5 ; [+3]
       56 NAMECALL                         R7 R5 K11 ["Destroy"]
       58 CALL                             R7 1 0
       59 GETUPVAL                         R7 5
       60 LOADK                            R9 K12 ["onImportFbxAnimation"]
       61 GETTABLEKS                       R11 R6 K6 ["Metadata"]
       63 JUMPIFNOT                        R11 ; [+5]
       64 GETTABLEKS                       R10 R6 K6 ["Metadata"]
       66 GETTABLEKS                       R10 R10 K13 ["Guid"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R10
       70 NAMECALL                         R7 R7 K14 ["report"]
       72 CALL                             R7 3 0
       73 RETURN                           R0 0
       74 GETIMPORT                        R6 K16 [warn]
       76 MOVE                             R7 R5
       77 CALL                             R6 1 0
       78 RETURN                           R0 0

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
