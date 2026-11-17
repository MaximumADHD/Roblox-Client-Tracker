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
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U0
       11 FASTPCALL                        pcall 1 ; [+2]
       12 GETIMPORT                        R3 K4 [pcall]
       14 CALL                             R3 1 2
       15 JUMPIF                           R3 ; [+1]
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R4 ; [+120]
       18 FASTCALL1                        TONUMBER R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K6 [tonumber]
       22 CALL                             R5 1 1
       23 LOADN                            R6 0
       24 JUMPIFNOTLT                      R6 R5 ; [+113]
       26 LOADNIL                          R5
       27 NEWCLOSURE                       R7 P1
       28 CAPTURE                          REF R5
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R4
       31 FASTPCALL                        pcall 1 ; [+2]
       32 GETIMPORT                        R6 K4 [pcall]
       34 CALL                             R6 1 1
       35 MOVE                             R3 R6
       36 JUMPIF                           R3 ; [+7]
       37 GETUPVAL                         R8 2
       38 LOADK                            R9 K7 ["InvalidAnimation"]
       39 LOADB                            R10 1
       40 CALL                             R8 2 -1
       41 NAMECALL                         R6 R0 K8 ["dispatch"]
       43 CALL                             R6 -1 0
       44 JUMPIF                           R5 ; [+2]
       45 CLOSEUPVALS                      R5
       46 RETURN                           R0 0
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 LOADK                            R10 K9 ["KeyframeSequence"]
       50 NAMECALL                         R8 R5 K10 ["IsA"]
       52 CALL                             R8 2 1
       53 JUMPIFNOT                        R8 ; [+8]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K11 ["fromKeyframeSequence"]
       57 MOVE                             R9 R5
       58 CALL                             R8 1 2
       59 MOVE                             R6 R8
       60 MOVE                             R7 R9
       61 JUMP                             ; [+9]
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R8 R8 K12 ["fromCurveAnimation"]
       65 MOVE                             R9 R5
       66 CALL                             R8 1 1
       67 MOVE                             R6 R8
       68 GETUPVAL                         R8 4
       69 GETTABLEKS                       R7 R8 K13 ["DEFAULT_FRAMERATE"]
       71 GETUPVAL                         R8 5
       72 GETTABLEKS                       R8 R8 K14 ["getAnimSavesFolder"]
       74 MOVE                             R9 R2
       75 LOADB                            R10 1
       76 CALL                             R8 2 2
       77 GETTABLEKS                       R12 R5 K15 ["Name"]
       79 NAMECALL                         R10 R8 K16 ["FindFirstChild"]
       81 CALL                             R10 2 1
       82 JUMPIFNOT                        R10 ; [+3]
       83 NAMECALL                         R11 R10 K17 ["Destroy"]
       85 CALL                             R11 1 0
       86 SETTABLEKS                       R8 R5 K18 ["Parent"]
       88 GETTABLEKS                       R11 R6 K19 ["Metadata"]
       90 GETUPVAL                         R12 4
       91 GETTABLEKS                       R12 R12 K20 ["DEFAULT_IMPORTED_NAME"]
       93 SETTABLEKS                       R12 R11 K15 ["Name"]
       95 GETUPVAL                         R13 6
       96 MOVE                             R14 R6
       97 GETUPVAL                         R15 7
       98 CALL                             R13 2 -1
       99 NAMECALL                         R11 R0 K8 ["dispatch"]
      101 CALL                             R11 -1 0
      102 GETUPVAL                         R13 8
      103 LOADB                            R14 0
      104 CALL                             R13 1 -1
      105 NAMECALL                         R11 R0 K8 ["dispatch"]
      107 CALL                             R11 -1 0
      108 GETUPVAL                         R13 9
      109 LOADB                            R14 0
      110 CALL                             R13 1 -1
      111 NAMECALL                         R11 R0 K8 ["dispatch"]
      113 CALL                             R11 -1 0
      114 GETUPVAL                         R13 10
      115 MOVE                             R14 R7
      116 CALL                             R13 1 -1
      117 NAMECALL                         R11 R0 K8 ["dispatch"]
      119 CALL                             R11 -1 0
      120 GETUPVAL                         R11 7
      121 JUMPIFNOT                        R11 ; [+15]
      122 GETUPVAL                         R11 7
      123 LOADK                            R13 K21 ["onImportAnimation"]
      124 MOVE                             R14 R4
      125 GETTABLEKS                       R16 R6 K19 ["Metadata"]
      127 JUMPIFNOT                        R16 ; [+5]
      128 GETTABLEKS                       R15 R6 K19 ["Metadata"]
      130 GETTABLEKS                       R15 R15 K22 ["Guid"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R15
      134 NAMECALL                         R11 R11 K23 ["report"]
      136 CALL                             R11 4 0
      137 CLOSEUPVALS                      R5
      138 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 RETURN                           R2 1

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
       13 GETTABLEKS                       R2 R1 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["Actions"]
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R2 K12 ["SetIsDirty"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K11 [require]
       24 GETTABLEKS                       R5 R2 K13 ["SetIsLegacyAnimSaves"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K11 [require]
       29 GETTABLEKS                       R6 R2 K14 ["SetFrameRate"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K11 [require]
       34 GETTABLEKS                       R7 R2 K15 ["SetNotification"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R1 K8 ["Src"]
       39 GETTABLEKS                       R7 R7 K16 ["Thunks"]
       41 GETIMPORT                        R8 K11 [require]
       43 GETTABLEKS                       R9 R7 K17 ["LoadAnimationData"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R1 K8 ["Src"]
       48 GETTABLEKS                       R9 R9 K18 ["Util"]
       50 GETIMPORT                        R10 K11 [require]
       52 GETTABLEKS                       R11 R9 K19 ["Constants"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K11 [require]
       57 GETTABLEKS                       R12 R9 K20 ["RigSerialization"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K11 [require]
       62 GETTABLEKS                       R13 R9 K21 ["RigUtils"]
       64 CALL                             R12 1 1
       65 DUPCLOSURE                       R13 K22 [PROTO_3]
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 RETURN                           R13 1
