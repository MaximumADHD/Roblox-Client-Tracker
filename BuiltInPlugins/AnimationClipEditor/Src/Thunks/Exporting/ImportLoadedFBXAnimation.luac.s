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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+121]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["fromKeyframeSequence"]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 NAMECALL                         R4 R0 K3 ["getState"]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R5 R4 K4 ["AnimationData"]
       17 MOVE                             R6 R5
       18 JUMPIFNOT                        R6 ; [+5]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K5 ["hasFacsData"]
       22 MOVE                             R7 R5
       23 CALL                             R6 1 1
       24 MOVE                             R7 R3
       25 JUMPIFNOT                        R7 ; [+6]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R8 R8 K5 ["hasFacsData"]
       29 MOVE                             R9 R3
       30 CALL                             R8 1 1
       31 NOT                              R7 R8
       32 GETUPVAL                         R8 3
       33 JUMPIFNOT                        R8 ; [+15]
       34 JUMPIFNOT                        R6 ; [+14]
       35 JUMPIFNOT                        R7 ; [+13]
       36 GETUPVAL                         R10 4
       37 MOVE                             R11 R3
       38 GETUPVAL                         R12 5
       39 GETTABLEKS                       R12 R12 K6 ["TRACKS_SUBSETS_TYPE"]
       41 GETTABLEKS                       R12 R12 K7 ["Body"]
       43 GETUPVAL                         R13 6
       44 CALL                             R10 3 -1
       45 NAMECALL                         R8 R0 K8 ["dispatch"]
       47 CALL                             R8 -1 0
       48 JUMP                             ; [+26]
       49 GETTABLEKS                       R8 R3 K9 ["Metadata"]
       51 GETUPVAL                         R9 5
       52 GETTABLEKS                       R9 R9 K10 ["DEFAULT_IMPORTED_NAME"]
       54 SETTABLEKS                       R9 R8 K11 ["Name"]
       56 GETUPVAL                         R10 7
       57 MOVE                             R11 R3
       58 GETUPVAL                         R12 6
       59 CALL                             R10 2 -1
       60 NAMECALL                         R8 R0 K8 ["dispatch"]
       62 CALL                             R8 -1 0
       63 GETUPVAL                         R10 8
       64 LOADB                            R11 0
       65 CALL                             R10 1 -1
       66 NAMECALL                         R8 R0 K8 ["dispatch"]
       68 CALL                             R8 -1 0
       69 GETUPVAL                         R10 9
       70 LOADB                            R11 0
       71 CALL                             R10 1 -1
       72 NAMECALL                         R8 R0 K8 ["dispatch"]
       74 CALL                             R8 -1 0
       75 JUMPIFNOT                        R2 ; [+3]
       76 NAMECALL                         R8 R2 K12 ["Destroy"]
       78 CALL                             R8 1 0
       79 GETUPVAL                         R8 6
       80 LOADK                            R10 K13 ["onImportFbxAnimation"]
       81 GETTABLEKS                       R12 R3 K9 ["Metadata"]
       83 JUMPIFNOT                        R12 ; [+5]
       84 GETTABLEKS                       R11 R3 K9 ["Metadata"]
       86 GETTABLEKS                       R11 R11 K14 ["Guid"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R11
       90 NAMECALL                         R8 R8 K15 ["report"]
       92 CALL                             R8 3 0
       93 GETUPVAL                         R8 0
       94 JUMPIFNOT                        R8 ; [+15]
       95 GETUPVAL                         R8 6
       96 LOADK                            R10 K16 ["onUserChoseFBXModelForAnimImport"]
       97 GETTABLEKS                       R12 R3 K9 ["Metadata"]
       99 JUMPIFNOT                        R12 ; [+5]
      100 GETTABLEKS                       R11 R3 K9 ["Metadata"]
      102 GETTABLEKS                       R11 R11 K14 ["Guid"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R11
      106 NAMECALL                         R8 R8 K15 ["report"]
      108 CALL                             R8 3 0
      109 JUMP                             ; [+14]
      110 GETUPVAL                         R8 6
      111 LOADK                            R10 K17 ["onUserChoseSelectedModelForAnimImport"]
      112 GETTABLEKS                       R12 R3 K9 ["Metadata"]
      114 JUMPIFNOT                        R12 ; [+5]
      115 GETTABLEKS                       R11 R3 K9 ["Metadata"]
      117 GETTABLEKS                       R11 R11 K14 ["Guid"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R11
      121 NAMECALL                         R8 R8 K15 ["report"]
      123 CALL                             R8 3 0
      124 GETIMPORT                        R8 K19 [warn]
      126 MOVE                             R9 R2
      127 CALL                             R8 1 0
      128 RETURN                           R0 0

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
