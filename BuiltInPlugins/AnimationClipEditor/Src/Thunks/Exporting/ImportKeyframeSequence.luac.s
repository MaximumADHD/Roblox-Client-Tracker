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
        9 GETIMPORT                        R3 K4 [pcall]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U0
       13 CALL                             R3 1 2
       14 JUMPIF                           R3 ; [+1]
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R4 ; [+119]
       17 FASTCALL1                        TONUMBER R4 ; [+3]
       18 MOVE                             R6 R4
       19 GETIMPORT                        R5 K6 [tonumber]
       21 CALL                             R5 1 1
       22 LOADN                            R6 0
       23 JUMPIFNOTLT                      R6 R5 ; [+112]
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
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R8 R8 K11 ["fromKeyframeSequence"]
       55 MOVE                             R9 R5
       56 CALL                             R8 1 2
       57 MOVE                             R6 R8
       58 MOVE                             R7 R9
       59 JUMP                             ; [+9]
       60 GETUPVAL                         R8 3
       61 GETTABLEKS                       R8 R8 K12 ["fromCurveAnimation"]
       63 MOVE                             R9 R5
       64 CALL                             R8 1 1
       65 MOVE                             R6 R8
       66 GETUPVAL                         R8 4
       67 GETTABLEKS                       R7 R8 K13 ["DEFAULT_FRAMERATE"]
       69 GETUPVAL                         R8 5
       70 GETTABLEKS                       R8 R8 K14 ["getAnimSavesFolder"]
       72 MOVE                             R9 R2
       73 LOADB                            R10 1
       74 CALL                             R8 2 2
       75 GETTABLEKS                       R12 R5 K15 ["Name"]
       77 NAMECALL                         R10 R8 K16 ["FindFirstChild"]
       79 CALL                             R10 2 1
       80 JUMPIFNOT                        R10 ; [+3]
       81 NAMECALL                         R11 R10 K17 ["Destroy"]
       83 CALL                             R11 1 0
       84 SETTABLEKS                       R8 R5 K18 ["Parent"]
       86 GETTABLEKS                       R11 R6 K19 ["Metadata"]
       88 GETUPVAL                         R12 4
       89 GETTABLEKS                       R12 R12 K20 ["DEFAULT_IMPORTED_NAME"]
       91 SETTABLEKS                       R12 R11 K15 ["Name"]
       93 GETUPVAL                         R13 6
       94 MOVE                             R14 R6
       95 GETUPVAL                         R15 7
       96 CALL                             R13 2 -1
       97 NAMECALL                         R11 R0 K8 ["dispatch"]
       99 CALL                             R11 -1 0
      100 GETUPVAL                         R13 8
      101 LOADB                            R14 0
      102 CALL                             R13 1 -1
      103 NAMECALL                         R11 R0 K8 ["dispatch"]
      105 CALL                             R11 -1 0
      106 GETUPVAL                         R13 9
      107 LOADB                            R14 0
      108 CALL                             R13 1 -1
      109 NAMECALL                         R11 R0 K8 ["dispatch"]
      111 CALL                             R11 -1 0
      112 GETUPVAL                         R13 10
      113 MOVE                             R14 R7
      114 CALL                             R13 1 -1
      115 NAMECALL                         R11 R0 K8 ["dispatch"]
      117 CALL                             R11 -1 0
      118 GETUPVAL                         R11 7
      119 JUMPIFNOT                        R11 ; [+15]
      120 GETUPVAL                         R11 7
      121 LOADK                            R13 K21 ["onImportAnimation"]
      122 MOVE                             R14 R4
      123 GETTABLEKS                       R16 R6 K19 ["Metadata"]
      125 JUMPIFNOT                        R16 ; [+5]
      126 GETTABLEKS                       R15 R6 K19 ["Metadata"]
      128 GETTABLEKS                       R15 R15 K22 ["Guid"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R15
      132 NAMECALL                         R11 R11 K23 ["report"]
      134 CALL                             R11 4 0
      135 CLOSEUPVALS                      R5
      136 RETURN                           R0 0

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
