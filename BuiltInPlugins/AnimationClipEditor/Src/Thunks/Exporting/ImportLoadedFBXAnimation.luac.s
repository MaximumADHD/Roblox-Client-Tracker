PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AvatarImportService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R0 R0 K4 ["ImportLoadedFBXAnimation"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+121]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["fromKeyframeSequence"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 NAMECALL                         R4 R0 K3 ["getState"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R4 K4 ["AnimationData"]
       16 MOVE                             R6 R5
       17 JUMPIFNOT                        R6 ; [+5]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K5 ["hasFacsData"]
       21 MOVE                             R7 R5
       22 CALL                             R6 1 1
       23 MOVE                             R7 R3
       24 JUMPIFNOT                        R7 ; [+6]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K5 ["hasFacsData"]
       28 MOVE                             R9 R3
       29 CALL                             R8 1 1
       30 NOT                              R7 R8
       31 GETUPVAL                         R8 3
       32 JUMPIFNOT                        R8 ; [+15]
       33 JUMPIFNOT                        R6 ; [+14]
       34 JUMPIFNOT                        R7 ; [+13]
       35 GETUPVAL                         R10 4
       36 MOVE                             R11 R3
       37 GETUPVAL                         R12 5
       38 GETTABLEKS                       R12 R12 K6 ["TRACKS_SUBSETS_TYPE"]
       40 GETTABLEKS                       R12 R12 K7 ["Body"]
       42 GETUPVAL                         R13 6
       43 CALL                             R10 3 -1
       44 NAMECALL                         R8 R0 K8 ["dispatch"]
       46 CALL                             R8 -1 0
       47 JUMP                             ; [+26]
       48 GETTABLEKS                       R8 R3 K9 ["Metadata"]
       50 GETUPVAL                         R9 5
       51 GETTABLEKS                       R9 R9 K10 ["DEFAULT_IMPORTED_NAME"]
       53 SETTABLEKS                       R9 R8 K11 ["Name"]
       55 GETUPVAL                         R10 7
       56 MOVE                             R11 R3
       57 GETUPVAL                         R12 6
       58 CALL                             R10 2 -1
       59 NAMECALL                         R8 R0 K8 ["dispatch"]
       61 CALL                             R8 -1 0
       62 GETUPVAL                         R10 8
       63 LOADB                            R11 0
       64 CALL                             R10 1 -1
       65 NAMECALL                         R8 R0 K8 ["dispatch"]
       67 CALL                             R8 -1 0
       68 GETUPVAL                         R10 9
       69 LOADB                            R11 0
       70 CALL                             R10 1 -1
       71 NAMECALL                         R8 R0 K8 ["dispatch"]
       73 CALL                             R8 -1 0
       74 JUMPIFNOT                        R2 ; [+3]
       75 NAMECALL                         R8 R2 K12 ["Destroy"]
       77 CALL                             R8 1 0
       78 GETUPVAL                         R8 6
       79 LOADK                            R10 K13 ["onImportFbxAnimation"]
       80 GETTABLEKS                       R12 R3 K9 ["Metadata"]
       82 JUMPIFNOT                        R12 ; [+5]
       83 GETTABLEKS                       R11 R3 K9 ["Metadata"]
       85 GETTABLEKS                       R11 R11 K14 ["Guid"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R11
       89 NAMECALL                         R8 R8 K15 ["report"]
       91 CALL                             R8 3 0
       92 GETUPVAL                         R8 0
       93 JUMPIFNOT                        R8 ; [+15]
       94 GETUPVAL                         R8 6
       95 LOADK                            R10 K16 ["onUserChoseFBXModelForAnimImport"]
       96 GETTABLEKS                       R12 R3 K9 ["Metadata"]
       98 JUMPIFNOT                        R12 ; [+5]
       99 GETTABLEKS                       R11 R3 K9 ["Metadata"]
      101 GETTABLEKS                       R11 R11 K14 ["Guid"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R11
      105 NAMECALL                         R8 R8 K15 ["report"]
      107 CALL                             R8 3 0
      108 JUMP                             ; [+14]
      109 GETUPVAL                         R8 6
      110 LOADK                            R10 K17 ["onUserChoseSelectedModelForAnimImport"]
      111 GETTABLEKS                       R12 R3 K9 ["Metadata"]
      113 JUMPIFNOT                        R12 ; [+5]
      114 GETTABLEKS                       R11 R3 K9 ["Metadata"]
      116 GETTABLEKS                       R11 R11 K14 ["Guid"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R11
      120 NAMECALL                         R8 R8 K15 ["report"]
      122 CALL                             R8 3 0
      123 GETIMPORT                        R8 K19 [warn]
      125 MOVE                             R9 R2
      126 CALL                             R8 1 0
      127 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["RigSerialization"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Thunks"]
       31 GETTABLEKS                       R4 R4 K11 ["LoadAnimationData"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Actions"]
       40 GETTABLEKS                       R5 R5 K13 ["SetIsDirty"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Actions"]
       49 GETTABLEKS                       R6 R6 K14 ["SetIsLegacyAnimSaves"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K7 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["AnimationData"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K10 ["Thunks"]
       67 GETTABLEKS                       R8 R8 K16 ["MergeBodyAndFacialAnimation"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K18 [game]
       72 LOADK                            R10 K19 ["MergeBodyAnimationWithExistingFaceAnimationOnFBXImport"]
       73 LOADB                            R11 0
       74 NAMECALL                         R8 R8 K20 ["DefineFastFlag"]
       76 CALL                             R8 3 1
       77 DUPCLOSURE                       R9 K21 [PROTO_2]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R5
       86 RETURN                           R9 1
