PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADB                            R4 1
        4 GETUPVAL                         R5 3
        5 CALL                             R2 3 -1
        6 NAMECALL                         R0 R0 K0 ["dispatch"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AvatarImportService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 NAMECALL                         R0 R0 K4 ["ImportFBXAnimationFromFilePathUserMayChooseModel"]
       11 CALL                             R0 4 -1
       12 RETURN                           R0 -1

PROTO_2:
        0 NAMECALL                         R6 R0 K0 ["getState"]
        2 CALL                             R6 1 1
        3 GETTABLEKS                       R7 R6 K1 ["Status"]
        5 GETTABLEKS                       R7 R7 K2 ["RootInstance"]
        7 JUMPIF                           R7 ; [+1]
        8 RETURN                           R0 0
        9 JUMPIFEQKNIL                     R5 ; [+3]
       11 MOVE                             R8 R5
       12 JUMP                             ; [+2]
       13 GETUPVAL                         R8 0
       14 CALL                             R8 0 1
       15 JUMPIFNOT                        R8 ; [+22]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R9 R9 K3 ["StartSessionWithPathAsync"]
       19 MOVE                             R10 R1
       20 CALL                             R9 1 1
       21 NAMECALL                         R10 R9 K4 ["GetKeyframeSequences"]
       23 CALL                             R10 1 1
       24 LENGTH                           R11 R10
       25 JUMPIFNOTEQKN                    R11 K5 [0] ; [+2]
       27 RETURN                           R0 0
       28 GETTABLEN                        R11 R10 1
       29 GETTABLEKS                       R12 R3 K6 ["props"]
       31 GETTABLEKS                       R12 R12 K7 ["LoadImportedKeyframeSequence"]
       33 MOVE                             R13 R2
       34 MOVE                             R14 R4
       35 MOVE                             R15 R11
       36 CALL                             R12 3 0
       37 RETURN                           R0 0
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 GETIMPORT                        R10 K9 [pcall]
       45 NEWCLOSURE                       R11 P1
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R9
       49 CALL                             R10 1 2
       50 JUMPIFNOT                        R10 ; [+49]
       51 GETUPVAL                         R12 3
       52 GETTABLEKS                       R12 R12 K10 ["fromKeyframeSequence"]
       54 MOVE                             R13 R11
       55 CALL                             R12 1 1
       56 GETTABLEKS                       R13 R12 K11 ["Metadata"]
       58 GETUPVAL                         R14 4
       59 GETTABLEKS                       R14 R14 K12 ["DEFAULT_IMPORTED_NAME"]
       61 SETTABLEKS                       R14 R13 K13 ["Name"]
       63 GETUPVAL                         R15 5
       64 MOVE                             R16 R12
       65 MOVE                             R17 R4
       66 CALL                             R15 2 -1
       67 NAMECALL                         R13 R0 K14 ["dispatch"]
       69 CALL                             R13 -1 0
       70 GETUPVAL                         R15 6
       71 LOADB                            R16 0
       72 CALL                             R15 1 -1
       73 NAMECALL                         R13 R0 K14 ["dispatch"]
       75 CALL                             R13 -1 0
       76 GETUPVAL                         R15 7
       77 LOADB                            R16 0
       78 CALL                             R15 1 -1
       79 NAMECALL                         R13 R0 K14 ["dispatch"]
       81 CALL                             R13 -1 0
       82 JUMPIFNOT                        R11 ; [+3]
       83 NAMECALL                         R13 R11 K15 ["Destroy"]
       85 CALL                             R13 1 0
       86 LOADK                            R15 K16 ["onCreateFromVideo"]
       87 GETTABLEKS                       R17 R12 K11 ["Metadata"]
       89 JUMPIFNOT                        R17 ; [+5]
       90 GETTABLEKS                       R16 R12 K11 ["Metadata"]
       92 GETTABLEKS                       R16 R16 K17 ["Guid"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R16
       96 NAMECALL                         R13 R4 K18 ["report"]
       98 CALL                             R13 3 0
       99 RETURN                           R0 0
      100 GETIMPORT                        R12 K20 [warn]
      102 MOVE                             R13 R11
      103 CALL                             R12 1 0
      104 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ANIMATION_FROM_VIDEO_STATUS"]
        3 GETTABLEKS                       R2 R2 K1 ["UploadingData"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+14]
        7 GETUPVAL                         R2 1
        8 JUMPIF                           R2 ; [+11]
        9 GETIMPORT                        R2 K4 [os.clock]
       11 CALL                             R2 0 1
       12 SETUPVAL                         R2 1
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 1
       16 CALL                             R4 1 -1
       17 NAMECALL                         R2 R2 K5 ["dispatch"]
       19 CALL                             R2 -1 0
       20 GETUPVAL                         R2 2
       21 NAMECALL                         R2 R2 K6 ["getState"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R2 R2 K7 ["Status"]
       26 GETTABLEKS                       R2 R2 K8 ["CreatingAnimationFromVideo"]
       28 JUMPIF                           R2 ; [+2]
       29 LOADB                            R2 0
       30 RETURN                           R2 1
       31 GETUPVAL                         R2 2
       32 GETUPVAL                         R4 4
       33 MOVE                             R5 R1
       34 CALL                             R4 1 -1
       35 NAMECALL                         R2 R2 K5 ["dispatch"]
       37 CALL                             R2 -1 0
       38 GETUPVAL                         R2 2
       39 GETUPVAL                         R4 5
       40 MOVE                             R5 R0
       41 CALL                             R4 1 -1
       42 NAMECALL                         R2 R2 K5 ["dispatch"]
       44 CALL                             R2 -1 0
       45 LOADB                            R2 1
       46 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreateAnimationByUploadingVideo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Status"]
        5 GETTABLEKS                       R1 R1 K2 ["CreatingAnimationFromVideo"]
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 0
       10 LOADB                            R4 0
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R0 K3 ["dispatch"]
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["ANIMATION_FROM_VIDEO_STATUS"]
       19 GETTABLEKS                       R4 R4 K5 ["Initializing"]
       21 CALL                             R3 1 -1
       22 NAMECALL                         R1 R0 K3 ["dispatch"]
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R3 3
       26 LOADN                            R4 0
       27 CALL                             R3 1 -1
       28 NAMECALL                         R1 R0 K3 ["dispatch"]
       30 CALL                             R1 -1 0
       31 GETUPVAL                         R3 4
       32 LOADB                            R4 1
       33 CALL                             R3 1 -1
       34 NAMECALL                         R1 R0 K3 ["dispatch"]
       36 CALL                             R1 -1 0
       37 LOADNIL                          R1
       38 NEWCLOSURE                       R2 P0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          REF R1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U3
       45 GETIMPORT                        R3 K7 [pcall]
       47 NEWCLOSURE                       R4 P1
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R2
       50 CALL                             R3 1 2
       51 MOVE                             R5 R1
       52 JUMPIFNOT                        R5 ; [+4]
       53 GETIMPORT                        R6 K10 [os.clock]
       55 CALL                             R6 0 1
       56 SUB                              R5 R6 R1
       57 JUMPIF                           R3 ; [+70]
       58 GETUPVAL                         R8 0
       59 LOADB                            R9 1
       60 CALL                             R8 1 -1
       61 NAMECALL                         R6 R0 K3 ["dispatch"]
       63 CALL                             R6 -1 0
       64 NAMECALL                         R6 R0 K0 ["getState"]
       66 CALL                             R6 1 1
       67 GETTABLEKS                       R6 R6 K1 ["Status"]
       69 GETTABLEKS                       R6 R6 K11 ["AnimationImportStatus"]
       71 GETUPVAL                         R7 2
       72 GETTABLEKS                       R7 R7 K4 ["ANIMATION_FROM_VIDEO_STATUS"]
       74 GETTABLEKS                       R7 R7 K5 ["Initializing"]
       76 JUMPIFNOTEQ                      R6 R7 ; [+7]
       78 GETUPVAL                         R8 4
       79 LOADB                            R9 0
       80 CALL                             R8 1 -1
       81 NAMECALL                         R6 R0 K3 ["dispatch"]
       83 CALL                             R6 -1 0
       84 NAMECALL                         R6 R0 K0 ["getState"]
       86 CALL                             R6 1 1
       87 GETTABLEKS                       R6 R6 K1 ["Status"]
       89 GETTABLEKS                       R6 R6 K11 ["AnimationImportStatus"]
       91 GETUPVAL                         R7 2
       92 GETTABLEKS                       R7 R7 K4 ["ANIMATION_FROM_VIDEO_STATUS"]
       94 GETTABLEKS                       R7 R7 K12 ["UploadingData"]
       96 JUMPIFNOTEQ                      R6 R7 ; [+18]
       98 GETUPVAL                         R8 1
       99 GETUPVAL                         R9 2
      100 GETTABLEKS                       R9 R9 K4 ["ANIMATION_FROM_VIDEO_STATUS"]
      102 GETTABLEKS                       R9 R9 K13 ["ErrorUploadingData"]
      104 CALL                             R8 1 -1
      105 NAMECALL                         R6 R0 K3 ["dispatch"]
      107 CALL                             R6 -1 0
      108 GETUPVAL                         R8 3
      109 LOADN                            R9 0
      110 CALL                             R8 1 -1
      111 NAMECALL                         R6 R0 K3 ["dispatch"]
      113 CALL                             R6 -1 0
      114 ORK                              R4 R4 K14 ["Error while uploading video"]
      115 GETUPVAL                         R6 7
      116 LOADK                            R8 K15 ["onAnimationEditorImportVideoError"]
      117 MOVE                             R9 R4
      118 MOVE                             R10 R5
      119 NAMECALL                         R6 R6 K16 ["report"]
      121 CALL                             R6 4 0
      122 GETIMPORT                        R6 K18 [warn]
      124 MOVE                             R7 R4
      125 CALL                             R6 1 0
      126 CLOSEUPVALS                      R1
      127 RETURN                           R0 0
      128 MOVE                             R6 R4
      129 GETUPVAL                         R7 7
      130 LOADK                            R9 K19 ["onAnimationEditorImportVideoUploadSucceed"]
      131 MOVE                             R10 R5
      132 NAMECALL                         R7 R7 K16 ["report"]
      134 CALL                             R7 3 0
      135 JUMPIFEQKNIL                     R6 ; [+9]
      137 NAMECALL                         R7 R0 K0 ["getState"]
      139 CALL                             R7 1 1
      140 GETTABLEKS                       R7 R7 K1 ["Status"]
      142 GETTABLEKS                       R7 R7 K2 ["CreatingAnimationFromVideo"]
      144 JUMPIF                           R7 ; [+2]
      145 CLOSEUPVALS                      R1
      146 RETURN                           R0 0
      147 GETUPVAL                         R9 4
      148 LOADB                            R10 0
      149 CALL                             R9 1 -1
      150 NAMECALL                         R7 R0 K3 ["dispatch"]
      152 CALL                             R7 -1 0
      153 GETUPVAL                         R7 8
      154 MOVE                             R8 R0
      155 MOVE                             R9 R6
      156 GETUPVAL                         R10 9
      157 GETUPVAL                         R11 10
      158 GETUPVAL                         R12 7
      159 GETUPVAL                         R13 11
      160 CALL                             R7 6 0
      161 CLOSEUPVALS                      R1
      162 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R3
       13 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["LuaFlags"]
       11 GETTABLEKS                       R2 R2 K7 ["GetFFlagACEAnimationFromVideoCreatorServiceWithAssetImport"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["AssetImportServiceWrapper"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["AnimationFromVideoCreatorStudioServiceWrapper"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["RigSerialization"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K14 ["Thunks"]
       56 GETTABLEKS                       R7 R7 K15 ["Exporting"]
       58 GETTABLEKS                       R7 R7 K16 ["ImportLoadedFBXAnimation"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K8 ["Src"]
       65 GETTABLEKS                       R8 R8 K14 ["Thunks"]
       67 GETTABLEKS                       R8 R8 K17 ["LoadAnimationData"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K8 ["Src"]
       74 GETTABLEKS                       R9 R9 K18 ["Actions"]
       76 GETTABLEKS                       R9 R9 K19 ["SetIsDirty"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K8 ["Src"]
       83 GETTABLEKS                       R10 R10 K18 ["Actions"]
       85 GETTABLEKS                       R10 R10 K20 ["SetIsLegacyAnimSaves"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K8 ["Src"]
       92 GETTABLEKS                       R11 R11 K18 ["Actions"]
       94 GETTABLEKS                       R11 R11 K21 ["SetAnimationImportProgress"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K8 ["Src"]
      101 GETTABLEKS                       R12 R12 K18 ["Actions"]
      103 GETTABLEKS                       R12 R12 K22 ["SetAnimationImportStatus"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K8 ["Src"]
      110 GETTABLEKS                       R13 R13 K18 ["Actions"]
      112 GETTABLEKS                       R13 R13 K23 ["SetCreatingAnimationFromVideo"]
      114 CALL                             R12 1 1
      115 GETIMPORT                        R13 K5 [require]
      117 GETTABLEKS                       R14 R0 K8 ["Src"]
      119 GETTABLEKS                       R14 R14 K18 ["Actions"]
      121 GETTABLEKS                       R14 R14 K24 ["SetAnimationFromVideoUploadStartTime"]
      123 CALL                             R13 1 1
      124 GETIMPORT                        R14 K5 [require]
      126 GETTABLEKS                       R15 R0 K8 ["Src"]
      128 GETTABLEKS                       R15 R15 K18 ["Actions"]
      130 GETTABLEKS                       R15 R15 K25 ["SetAnimationFromVideoErroredOut"]
      132 CALL                             R14 1 1
      133 DUPCLOSURE                       R15 K26 [PROTO_2]
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R9
      142 DUPCLOSURE                       R16 K27 [PROTO_6]
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R15
      151 RETURN                           R16 1
