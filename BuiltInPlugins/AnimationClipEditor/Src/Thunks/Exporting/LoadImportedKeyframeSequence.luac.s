PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 GETUPVAL                         R5 0
       12 LOADK                            R7 K3 ["KeyframeSequence"]
       13 NAMECALL                         R5 R5 K4 ["IsA"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+8]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["fromKeyframeSequence"]
       20 GETUPVAL                         R6 0
       21 CALL                             R5 1 2
       22 MOVE                             R3 R5
       23 MOVE                             R4 R6
       24 JUMP                             ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R5 2
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+12]
       29 GETTABLEKS                       R5 R3 K6 ["Metadata"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K7 ["Name"]
       34 JUMPIF                           R6 ; [+3]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K8 ["DEFAULT_IMPORTED_NAME"]
       38 SETTABLEKS                       R6 R5 K7 ["Name"]
       40 JUMP                             ; [+7]
       41 GETTABLEKS                       R5 R3 K6 ["Metadata"]
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R6 R6 K8 ["DEFAULT_IMPORTED_NAME"]
       46 SETTABLEKS                       R6 R5 K7 ["Name"]
       48 GETUPVAL                         R7 4
       49 MOVE                             R8 R3
       50 GETUPVAL                         R9 5
       51 CALL                             R7 2 -1
       52 NAMECALL                         R5 R0 K9 ["dispatch"]
       54 CALL                             R5 -1 0
       55 GETUPVAL                         R7 6
       56 LOADB                            R8 0
       57 CALL                             R7 1 -1
       58 NAMECALL                         R5 R0 K9 ["dispatch"]
       60 CALL                             R5 -1 0
       61 GETUPVAL                         R7 7
       62 LOADB                            R8 0
       63 CALL                             R7 1 -1
       64 NAMECALL                         R5 R0 K9 ["dispatch"]
       66 CALL                             R5 -1 0
       67 GETUPVAL                         R7 8
       68 MOVE                             R8 R4
       69 CALL                             R7 1 -1
       70 NAMECALL                         R5 R0 K9 ["dispatch"]
       72 CALL                             R5 -1 0
       73 GETUPVAL                         R5 5
       74 JUMPIFNOT                        R5 ; [+14]
       75 GETUPVAL                         R5 5
       76 LOADK                            R7 K10 ["onImportAnimationFromFile"]
       77 GETTABLEKS                       R9 R3 K6 ["Metadata"]
       79 JUMPIFNOT                        R9 ; [+5]
       80 GETTABLEKS                       R8 R3 K6 ["Metadata"]
       82 GETTABLEKS                       R8 R8 K11 ["Guid"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R8
       86 NAMECALL                         R5 R5 K12 ["report"]
       88 CALL                             R5 3 0
       89 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetIsDirty"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetIsLegacyAnimSaves"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetFrameRate"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R0 K4 ["Src"]
       28 GETTABLEKS                       R5 R5 K11 ["Thunks"]
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R5 K12 ["LoadAnimationData"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R0 K4 ["Src"]
       37 GETTABLEKS                       R7 R7 K13 ["Util"]
       39 GETIMPORT                        R8 K7 [require]
       41 GETTABLEKS                       R9 R7 K14 ["Constants"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K7 [require]
       46 GETTABLEKS                       R10 R7 K15 ["RigSerialization"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K7 [require]
       51 GETTABLEKS                       R11 R0 K16 ["LuaFlags"]
       53 GETTABLEKS                       R11 R11 K17 ["GetFFlagUseFileNameForImportedAnimation"]
       55 CALL                             R10 1 1
       56 DUPCLOSURE                       R11 K18 [PROTO_1]
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 RETURN                           R11 1
