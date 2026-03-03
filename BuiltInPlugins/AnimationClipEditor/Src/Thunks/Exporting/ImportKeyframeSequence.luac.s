PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["get"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["Animation"]
        5 NAMECALL                         R0 R0 K2 ["PromptForExistingAssetId"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 LOADB                            R3 0
        3 NAMECALL                         R0 R0 K0 ["GetAnimationClipById"]
        5 CALL                             R0 3 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["RootInstance"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R3 K4 [pcall]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U0
       13 CALL                             R3 1 2
       14 JUMPIF                           R3 ; [+1]
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R4 ; [+127]
       17 FASTCALL1                        TONUMBER R4 ; [+3]
       18 MOVE                             R6 R4
       19 GETIMPORT                        R5 K6 [tonumber]
       21 CALL                             R5 1 1
       22 LOADN                            R6 0
       23 JUMPIFNOTLT                      R6 R5 ; [+120]
       25 LOADNIL                          R5
       26 GETIMPORT                        R6 K4 [pcall]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          REF R5
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R4
       32 CALL                             R6 1 1
       33 MOVE                             R3 R6
       34 JUMPIF                           R3 ; [+7]
       35 GETUPVAL                         R8 2
       36 LOADK                            R9 K7 ["InvalidAnimation"]
       37 LOADB                            R10 1
       38 CALL                             R8 2 -1
       39 NAMECALL                         R6 R0 K8 ["dispatch"]
       41 CALL                             R6 -1 0
       42 JUMPIF                           R5 ; [+2]
       43 CLOSEUPVALS                      R5
       44 RETURN                           R0 0
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 LOADK                            R10 K9 ["KeyframeSequence"]
       48 NAMECALL                         R8 R5 K10 ["IsA"]
       50 CALL                             R8 2 1
       51 JUMPIFNOT                        R8 ; [+8]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R8 R9 K11 ["fromKeyframeSequence"]
       55 MOVE                             R9 R5
       56 CALL                             R8 1 2
       57 MOVE                             R6 R8
       58 MOVE                             R7 R9
       59 JUMP                             ; [+9]
       60 GETUPVAL                         R9 3
       61 GETTABLEKS                       R8 R9 K12 ["fromCurveAnimation"]
       63 MOVE                             R9 R5
       64 CALL                             R8 1 1
       65 MOVE                             R6 R8
       66 GETUPVAL                         R8 4
       67 GETTABLEKS                       R7 R8 K13 ["DEFAULT_FRAMERATE"]
       69 GETUPVAL                         R8 5
       70 CALL                             R8 0 1
       71 JUMPIFNOT                        R8 ; [+22]
       72 GETUPVAL                         R8 6
       73 CALL                             R8 0 1
       74 JUMPIFNOT                        R8 ; [+19]
       75 GETUPVAL                         R9 7
       76 GETTABLEKS                       R8 R9 K14 ["getAnimSavesFolder"]
       78 MOVE                             R9 R2
       79 LOADB                            R10 1
       80 CALL                             R8 2 2
       81 GETUPVAL                         R10 8
       82 JUMPIFNOT                        R10 ; [+9]
       83 GETTABLEKS                       R12 R5 K15 ["Name"]
       85 NAMECALL                         R10 R8 K16 ["FindFirstChild"]
       87 CALL                             R10 2 1
       88 JUMPIFNOT                        R10 ; [+3]
       89 NAMECALL                         R11 R10 K17 ["Destroy"]
       91 CALL                             R11 1 0
       92 SETTABLEKS                       R8 R5 K18 ["Parent"]
       94 GETTABLEKS                       R8 R6 K19 ["Metadata"]
       96 GETUPVAL                         R10 4
       97 GETTABLEKS                       R9 R10 K20 ["DEFAULT_IMPORTED_NAME"]
       99 SETTABLEKS                       R9 R8 K15 ["Name"]
      101 GETUPVAL                         R10 9
      102 MOVE                             R11 R6
      103 GETUPVAL                         R12 10
      104 CALL                             R10 2 -1
      105 NAMECALL                         R8 R0 K8 ["dispatch"]
      107 CALL                             R8 -1 0
      108 GETUPVAL                         R10 11
      109 LOADB                            R11 0
      110 CALL                             R10 1 -1
      111 NAMECALL                         R8 R0 K8 ["dispatch"]
      113 CALL                             R8 -1 0
      114 GETUPVAL                         R10 12
      115 LOADB                            R11 0
      116 CALL                             R10 1 -1
      117 NAMECALL                         R8 R0 K8 ["dispatch"]
      119 CALL                             R8 -1 0
      120 GETUPVAL                         R10 13
      121 MOVE                             R11 R7
      122 CALL                             R10 1 -1
      123 NAMECALL                         R8 R0 K8 ["dispatch"]
      125 CALL                             R8 -1 0
      126 GETUPVAL                         R8 10
      127 JUMPIFNOT                        R8 ; [+15]
      128 GETUPVAL                         R8 10
      129 LOADK                            R10 K21 ["onImportAnimation"]
      130 MOVE                             R11 R4
      131 GETTABLEKS                       R13 R6 K19 ["Metadata"]
      133 JUMPIFNOT                        R13 ; [+5]
      134 GETTABLEKS                       R13 R6 K19 ["Metadata"]
      136 GETTABLEKS                       R12 R13 K22 ["Guid"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R12
      140 NAMECALL                         R8 R8 K23 ["report"]
      142 CALL                             R8 4 0
      143 CLOSEUPVALS                      R5
      144 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["LuaFlags"]
       17 GETTABLEKS                       R3 R4 K11 ["GetFFlagStoreAnimationsInAnimSaves"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["LuaFlags"]
       24 GETTABLEKS                       R4 R5 K12 ["GetFFlagImportFromFileWithRestPoseInAnimationEditor"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R5 R1 K13 ["Src"]
       29 GETTABLEKS                       R4 R5 K14 ["Actions"]
       31 GETIMPORT                        R5 K9 [require]
       33 GETTABLEKS                       R6 R4 K15 ["SetIsDirty"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K9 [require]
       38 GETTABLEKS                       R7 R4 K16 ["SetIsLegacyAnimSaves"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K9 [require]
       43 GETTABLEKS                       R8 R4 K17 ["SetFrameRate"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K9 [require]
       48 GETTABLEKS                       R9 R4 K18 ["SetNotification"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R10 R1 K13 ["Src"]
       53 GETTABLEKS                       R9 R10 K19 ["Thunks"]
       55 GETIMPORT                        R10 K9 [require]
       57 GETTABLEKS                       R11 R9 K20 ["LoadAnimationData"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R12 R1 K13 ["Src"]
       62 GETTABLEKS                       R11 R12 K21 ["Util"]
       64 GETIMPORT                        R12 K9 [require]
       66 GETTABLEKS                       R13 R11 K22 ["Constants"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K9 [require]
       71 GETTABLEKS                       R14 R11 K23 ["RigSerialization"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K9 [require]
       76 GETTABLEKS                       R15 R11 K24 ["RigUtils"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K1 [game]
       81 LOADK                            R17 K25 ["ACEDuplicateImport"]
       82 LOADB                            R18 0
       83 NAMECALL                         R15 R15 K26 ["DefineFastFlag"]
       85 CALL                             R15 3 1
       86 DUPCLOSURE                       R16 K27 [PROTO_3]
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R7
       99 RETURN                           R16 1
