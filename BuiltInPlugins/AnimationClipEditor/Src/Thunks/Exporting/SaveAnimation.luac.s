PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R3 K3 ["IsLegacyAnimSaves"]
        9 GETTABLEKS                       R4 R1 K2 ["Status"]
       11 GETTABLEKS                       R4 R4 K4 ["RootInstance"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMPIF                           R4 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R2
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R6 R5 K5 ["Metadata"]
       21 GETUPVAL                         R7 1
       22 SETTABLEKS                       R7 R6 K6 ["Name"]
       24 GETUPVAL                         R8 2
       25 MOVE                             R9 R5
       26 CALL                             R8 1 -1
       27 NAMECALL                         R6 R0 K7 ["dispatch"]
       29 CALL                             R6 -1 0
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K8 ["getAnimSavesFolder"]
       33 MOVE                             R7 R4
       34 LOADB                            R8 1
       35 CALL                             R6 2 2
       36 JUMPIFNOT                        R3 ; [+1]
       37 MOVE                             R6 R7
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 LOADNIL                          R10
       41 LOADNIL                          R11
       42 GETUPVAL                         R12 4
       43 GETTABLEKS                       R12 R12 K9 ["toAnimationAsset"]
       45 MOVE                             R13 R5
       46 MOVE                             R14 R4
       47 CALL                             R12 2 4
       48 MOVE                             R8 R12
       49 MOVE                             R9 R13
       50 MOVE                             R10 R14
       51 MOVE                             R11 R15
       52 GETTABLEKS                       R12 R5 K5 ["Metadata"]
       54 GETTABLEKS                       R12 R12 K6 ["Name"]
       56 SETTABLEKS                       R12 R8 K6 ["Name"]
       58 GETUPVAL                         R14 1
       59 NAMECALL                         R12 R6 K10 ["FindFirstChild"]
       61 CALL                             R12 2 1
       62 JUMPIFNOT                        R12 ; [+5]
       63 GETUPVAL                         R13 1
       64 GETTABLE                         R12 R6 R13
       65 NAMECALL                         R12 R12 K11 ["Destroy"]
       67 CALL                             R12 1 0
       68 SETTABLEKS                       R6 R8 K12 ["Parent"]
       70 GETUPVAL                         R12 5
       71 MOVE                             R14 R8
       72 NAMECALL                         R12 R12 K13 ["GetTags"]
       74 CALL                             R12 2 1
       75 GETIMPORT                        R13 K15 [ipairs]
       77 MOVE                             R14 R12
       78 CALL                             R13 1 3
       79 FORGPREP_INEXT                   R13
       80 GETUPVAL                         R18 5
       81 MOVE                             R20 R8
       82 MOVE                             R21 R17
       83 NAMECALL                         R18 R18 K16 ["RemoveTag"]
       85 CALL                             R18 3 0
       86 FORGLOOP                         R13 2 [inext] ; [-7]
       88 GETUPVAL                         R13 5
       89 MOVE                             R15 R8
       90 GETIMPORT                        R17 K19 [os.time]
       92 CALL                             R17 0 -1
       93 FASTCALL                         TOSTRING ; [+2]
       94 GETIMPORT                        R16 K21 [tostring]
       96 CALL                             R16 -1 1
       97 NAMECALL                         R13 R13 K22 ["AddTag"]
       99 CALL                             R13 3 0
      100 GETUPVAL                         R15 6
      101 LOADB                            R16 0
      102 CALL                             R15 1 -1
      103 NAMECALL                         R13 R0 K7 ["dispatch"]
      105 CALL                             R13 -1 0
      106 GETUPVAL                         R15 7
      107 LOADK                            R16 K23 ["Saved"]
      108 GETUPVAL                         R17 1
      109 CALL                             R15 2 -1
      110 NAMECALL                         R13 R0 K7 ["dispatch"]
      112 CALL                             R13 -1 0
      113 GETUPVAL                         R14 8
      114 GETTABLEKS                       R14 R14 K24 ["isChannelAnimation"]
      116 MOVE                             R15 R5
      117 CALL                             R14 1 1
      118 JUMPIFNOT                        R14 ; [+6]
      119 GETUPVAL                         R13 9
      120 GETTABLEKS                       R13 R13 K25 ["ANIMATION_TYPE"]
      122 GETTABLEKS                       R13 R13 K26 ["CurveAnimation"]
      124 JUMP                             ; [+5]
      125 GETUPVAL                         R13 9
      126 GETTABLEKS                       R13 R13 K25 ["ANIMATION_TYPE"]
      128 GETTABLEKS                       R13 R13 K27 ["KeyframeSequence"]
      130 GETUPVAL                         R14 10
      131 LOADK                            R16 K28 ["onSaveAnimation"]
      132 GETUPVAL                         R17 1
      133 MOVE                             R18 R9
      134 MOVE                             R19 R10
      135 MOVE                             R20 R11
      136 MOVE                             R21 R13
      137 GETTABLEKS                       R22 R8 K29 ["Guid"]
      139 NAMECALL                         R14 R14 K30 ["report"]
      141 CALL                             R14 8 0
      142 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          VAL R1
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["RigUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["RigSerialization"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K11 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["deepCopy"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R1 K10 ["Src"]
       44 GETTABLEKS                       R6 R6 K11 ["Util"]
       46 GETTABLEKS                       R6 R6 K15 ["AnimationData"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R1 K10 ["Src"]
       53 GETTABLEKS                       R7 R7 K11 ["Util"]
       55 GETTABLEKS                       R7 R7 K16 ["Constants"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R8 R1 K10 ["Src"]
       62 GETTABLEKS                       R8 R8 K17 ["Actions"]
       64 GETTABLEKS                       R8 R8 K18 ["SetAnimationData"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R9 R1 K10 ["Src"]
       71 GETTABLEKS                       R9 R9 K17 ["Actions"]
       73 GETTABLEKS                       R9 R9 K19 ["SetIsDirty"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K9 [require]
       78 GETTABLEKS                       R10 R1 K10 ["Src"]
       80 GETTABLEKS                       R10 R10 K17 ["Actions"]
       82 GETTABLEKS                       R10 R10 K20 ["SetNotification"]
       84 CALL                             R9 1 1
       85 DUPCLOSURE                       R10 K21 [PROTO_1]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 RETURN                           R10 1
