PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["Tracks"]
        5 LENGTH                           R2 R3
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["isChannelAnimation"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["props"]
       12 GETTABLEKS                       R4 R4 K3 ["AnimationData"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["state"]
       18 GETTABLEKS                       R5 R5 K6 ["hasMoved"]
       20 ORK                              R4 R5 K4 [False]
       21 GETUPVAL                         R5 0
       22 SETTABLEKS                       R0 R5 K7 ["keepChanges"]
       24 JUMPIFNOT                        R0 ; [+62]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K5 ["state"]
       28 GETTABLEKS                       R6 R6 K8 ["ticks"]
       30 JUMPIFNOT                        R6 ; [+7]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K5 ["state"]
       34 GETTABLEKS                       R6 R6 K8 ["ticks"]
       36 LENGTH                           R5 R6
       37 JUMP                             ; [+1]
       38 LOADN                            R5 0
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K5 ["state"]
       42 GETTABLEKS                       R6 R6 K9 ["keyframes"]
       44 GETTABLEKS                       R7 R1 K10 ["Analytics"]
       46 LOADK                            R9 K11 ["onKeyframeReductionApply"]
       47 MOVE                             R10 R2
       48 MOVE                             R11 R3
       49 MOVE                             R12 R5
       50 MOVE                             R13 R6
       51 MOVE                             R14 R4
       52 GETUPVAL                         R16 0
       53 GETTABLEKS                       R16 R16 K0 ["props"]
       55 GETTABLEKS                       R16 R16 K3 ["AnimationData"]
       57 JUMPIFNOT                        R16 ; [+18]
       58 GETUPVAL                         R16 0
       59 GETTABLEKS                       R16 R16 K0 ["props"]
       61 GETTABLEKS                       R16 R16 K3 ["AnimationData"]
       63 GETTABLEKS                       R16 R16 K12 ["Metadata"]
       65 JUMPIFNOT                        R16 ; [+10]
       66 GETUPVAL                         R15 0
       67 GETTABLEKS                       R15 R15 K0 ["props"]
       69 GETTABLEKS                       R15 R15 K3 ["AnimationData"]
       71 GETTABLEKS                       R15 R15 K12 ["Metadata"]
       73 GETTABLEKS                       R15 R15 K13 ["Guid"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R15
       77 NAMECALL                         R7 R7 K14 ["report"]
       79 CALL                             R7 8 0
       80 GETTABLEKS                       R7 R1 K15 ["AddWaypoint"]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K16 ["animationBackup"]
       85 CALL                             R7 1 0
       86 JUMP                             ; [+34]
       87 GETTABLEKS                       R5 R1 K10 ["Analytics"]
       89 LOADK                            R7 K17 ["onKeyframeReductionCancel"]
       90 MOVE                             R8 R2
       91 MOVE                             R9 R3
       92 MOVE                             R10 R4
       93 GETUPVAL                         R12 0
       94 GETTABLEKS                       R12 R12 K0 ["props"]
       96 GETTABLEKS                       R12 R12 K3 ["AnimationData"]
       98 JUMPIFNOT                        R12 ; [+18]
       99 GETUPVAL                         R12 0
      100 GETTABLEKS                       R12 R12 K0 ["props"]
      102 GETTABLEKS                       R12 R12 K3 ["AnimationData"]
      104 GETTABLEKS                       R12 R12 K12 ["Metadata"]
      106 JUMPIFNOT                        R12 ; [+10]
      107 GETUPVAL                         R11 0
      108 GETTABLEKS                       R11 R11 K0 ["props"]
      110 GETTABLEKS                       R11 R11 K3 ["AnimationData"]
      112 GETTABLEKS                       R11 R11 K12 ["Metadata"]
      114 GETTABLEKS                       R11 R11 K13 ["Guid"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R11
      118 NAMECALL                         R5 R5 K14 ["report"]
      120 CALL                             R5 6 0
      121 GETUPVAL                         R5 0
      122 GETTABLEKS                       R5 R5 K0 ["props"]
      124 GETTABLEKS                       R5 R5 K18 ["OnClose"]
      126 CALL                             R5 0 0
      127 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        MATH_ROUND R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K2 [math.round]
        4 CALL                             R1 1 1
        5 MOVE                             R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["state"]
        9 GETTABLEKS                       R1 R1 K4 ["keyframes"]
       11 GETUPVAL                         R2 0
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R2 K5 ["previewVisvalingamWhyatt"]
       16 CALL                             R2 3 0
       17 GETUPVAL                         R2 0
       18 DUPTABLE                         R4 K7 [{"keyframes", "hasMoved"}]
       19 SETTABLEKS                       R0 R4 K4 ["keyframes"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K3 ["state"]
       24 GETTABLEKS                       R6 R6 K8 ["initialKeyframes"]
       26 JUMPIFEQ                         R0 R6 ; [+3]
       28 LOADB                            R5 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R5
       31 SETTABLEKS                       R5 R4 K6 ["hasMoved"]
       33 NAMECALL                         R2 R2 K9 ["setState"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["didApply"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["animationBackup"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["timestamps"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["lastIndexToDelete"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R1 R0 K4 ["onClose"]
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K5 ["onSliderChanged"]
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getRigInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["PartNameToMotor"]
        7 GETTABLEKS                       R3 R1 K2 ["PartNameToAnimConstraint"]
        9 GETTABLEKS                       R4 R1 K3 ["BoneNameToBone"]
       11 NEWTABLE                         R5 0 0
       13 GETIMPORT                        R6 K5 [pairs]
       15 MOVE                             R7 R2
       16 CALL                             R6 1 3
       17 FORGPREP_NEXT                    R6
       18 GETTABLEKS                       R11 R10 K6 ["Part0"]
       20 GETTABLEKS                       R11 R11 K7 ["Name"]
       22 SETTABLE                         R11 R5 R9
       23 FORGLOOP                         R6 2 ; [-6]
       25 GETIMPORT                        R6 K5 [pairs]
       27 MOVE                             R7 R4
       28 CALL                             R6 1 3
       29 FORGPREP_NEXT                    R6
       30 GETTABLEKS                       R11 R10 K8 ["Parent"]
       32 GETTABLEKS                       R11 R11 K7 ["Name"]
       34 SETTABLE                         R11 R5 R9
       35 FORGLOOP                         R6 2 ; [-6]
       37 GETIMPORT                        R6 K5 [pairs]
       39 MOVE                             R7 R3
       40 CALL                             R6 1 3
       41 FORGPREP_NEXT                    R6
       42 GETTABLEKS                       R11 R10 K9 ["Attachment0"]
       44 GETTABLEKS                       R11 R11 K8 ["Parent"]
       46 GETTABLEKS                       R11 R11 K7 ["Name"]
       48 SETTABLE                         R11 R5 R9
       49 FORGLOOP                         R6 2 ; [-8]
       51 RETURN                           R5 1

PROTO_4:
        0 GETTABLE                         R5 R1 R3
        1 JUMPIF                           R5 ; [+30]
        2 GETTABLE                         R5 R0 R3
        3 JUMPIFNOT                        R5 ; [+12]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["getValue"]
        7 MOVE                             R7 R5
        8 MOVE                             R8 R4
        9 CALL                             R6 2 1
       10 NAMECALL                         R6 R6 K1 ["Orthonormalize"]
       12 CALL                             R6 1 1
       13 GETTABLEKS                       R6 R6 K2 ["Rotation"]
       15 JUMP                             ; [+3]
       16 GETIMPORT                        R6 K5 [CFrame.new]
       18 CALL                             R6 0 1
       19 SETTABLE                         R6 R1 R3
       20 GETTABLE                         R6 R2 R3
       21 JUMPIFNOT                        R6 ; [+10]
       22 GETUPVAL                         R7 1
       23 MOVE                             R8 R0
       24 MOVE                             R9 R1
       25 MOVE                             R10 R2
       26 GETTABLE                         R11 R2 R3
       27 MOVE                             R12 R4
       28 CALL                             R7 5 1
       29 GETTABLE                         R8 R1 R3
       30 MUL                              R6 R7 R8
       31 SETTABLE                         R6 R1 R3
       32 GETTABLE                         R5 R1 R3
       33 RETURN                           R5 1

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+5]
        1 NAMECALL                         R3 R1 K0 ["Inverse"]
        3 CALL                             R3 1 1
        4 MUL                              R2 R0 R3
        5 JUMP                             ; [+1]
        6 MOVE                             R2 R0
        7 NAMECALL                         R3 R2 K1 ["GetComponents"]
        9 CALL                             R3 1 12
       10 ADD                              R16 R6 R10
       11 ADD                              R15 R16 R14
       12 LOADN                            R16 3
       13 JUMPIFNOTLE                      R16 R15 ; [+3]
       15 LOADK                            R16 K2 [1.5707963267949]
       16 RETURN                           R16 1
       17 LOADN                            R16 -1
       18 JUMPIFNOTLE                      R15 R16 ; [+3]
       20 LOADK                            R16 K3 [-1.5707963267949]
       21 RETURN                           R16 1
       22 SUBK                             R18 R15 K5 [1]
       23 DIVK                             R17 R18 K4 [2]
       24 FASTCALL1                        MATH_ACOS R17 ; [+2]
       25 GETIMPORT                        R16 K8 [math.acos]
       27 CALL                             R16 1 1
       28 RETURN                           R16 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["sourceData"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        6 GETTABLEKS                       R3 R1 K3 ["Instances"]
        8 GETTABLEKS                       R3 R3 K4 ["Root"]
       10 GETTABLEKS                       R3 R3 K5 ["Tracks"]
       12 GETUPVAL                         R5 0
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+6]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K6 ["getRootPart"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 JUMP                             ; [+5]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K7 ["findRootPart"]
       24 MOVE                             R5 R2
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K8 ["Name"]
       28 GETTABLE                         R6 R3 R5
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K9 ["getSummaryKeyframes"]
       32 MOVE                             R8 R3
       33 GETTABLEKS                       R9 R1 K10 ["Metadata"]
       35 GETTABLEKS                       R9 R9 K11 ["StartTick"]
       37 GETTABLEKS                       R10 R1 K10 ["Metadata"]
       39 GETTABLEKS                       R10 R10 K12 ["EndTick"]
       41 CALL                             R7 3 1
       42 GETIMPORT                        R8 K15 [table.sort]
       44 MOVE                             R9 R7
       45 CALL                             R8 1 0
       46 GETUPVAL                         R8 3
       47 MOVE                             R9 R2
       48 CALL                             R8 1 1
       49 GETUPVAL                         R9 4
       50 GETTABLEKS                       R9 R9 K16 ["Dictionary"]
       52 GETTABLEKS                       R9 R9 K17 ["keys"]
       54 MOVE                             R10 R3
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K19 [table.create]
       58 LENGTH                           R11 R7
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K21 [ipairs]
       62 MOVE                             R12 R7
       63 CALL                             R11 1 3
       64 FORGPREP_INEXT                   R11
       65 GETIMPORT                        R16 K19 [table.create]
       67 LENGTH                           R18 R9
       68 ADDK                             R17 R18 K22 [4]
       69 CALL                             R16 1 1
       70 FASTCALL2                        TABLE_INSERT R16 R15 ; [+5]
       72 MOVE                             R18 R16
       73 MOVE                             R19 R15
       74 GETIMPORT                        R17 K24 [table.insert]
       76 CALL                             R17 2 0
       77 JUMPIFNOT                        R6 ; [+32]
       78 GETUPVAL                         R17 5
       79 GETTABLEKS                       R17 R17 K25 ["getValue"]
       81 MOVE                             R18 R6
       82 MOVE                             R19 R15
       83 CALL                             R17 2 1
       84 GETTABLEKS                       R17 R17 K26 ["Position"]
       86 GETTABLEKS                       R20 R17 K27 ["X"]
       88 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
       90 MOVE                             R19 R16
       91 GETIMPORT                        R18 K24 [table.insert]
       93 CALL                             R18 2 0
       94 GETTABLEKS                       R20 R17 K28 ["Y"]
       96 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
       98 MOVE                             R19 R16
       99 GETIMPORT                        R18 K24 [table.insert]
      101 CALL                             R18 2 0
      102 GETTABLEKS                       R20 R17 K29 ["Z"]
      104 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
      106 MOVE                             R19 R16
      107 GETIMPORT                        R18 K24 [table.insert]
      109 CALL                             R18 2 0
      110 NEWTABLE                         R17 0 0
      112 GETIMPORT                        R18 K21 [ipairs]
      114 MOVE                             R19 R9
      115 CALL                             R18 1 3
      116 FORGPREP_INEXT                   R18
      117 GETTABLE                         R23 R3 R22
      118 GETTABLEKS                       R24 R23 K30 ["Type"]
      120 GETUPVAL                         R25 6
      121 GETTABLEKS                       R25 R25 K31 ["TRACK_TYPES"]
      123 GETTABLEKS                       R25 R25 K32 ["CFrame"]
      125 JUMPIFNOTEQ                      R24 R25 ; [+46]
      127 GETUPVAL                         R24 7
      128 MOVE                             R25 R3
      129 MOVE                             R26 R17
      130 MOVE                             R27 R8
      131 MOVE                             R28 R22
      132 MOVE                             R29 R15
      133 CALL                             R24 5 0
      134 GETTABLE                         R27 R17 R22
      135 GETTABLE                         R28 R17 R5
      136 JUMPIFNOT                        R28 ; [+5]
      137 NAMECALL                         R30 R28 K33 ["Inverse"]
      139 CALL                             R30 1 1
      140 MUL                              R29 R27 R30
      141 JUMP                             ; [+1]
      142 MOVE                             R29 R27
      143 NAMECALL                         R30 R29 K34 ["GetComponents"]
      145 CALL                             R30 1 12
      146 ADD                              R43 R33 R37
      147 ADD                              R42 R43 R41
      148 LOADN                            R43 3
      149 JUMPIFNOTLE                      R43 R42 ; [+3]
      151 LOADK                            R26 K35 [1.5707963267949]
      152 JUMP                             ; [+12]
      153 LOADN                            R43 -1
      154 JUMPIFNOTLE                      R42 R43 ; [+3]
      156 LOADK                            R26 K36 [-1.5707963267949]
      157 JUMP                             ; [+7]
      158 SUBK                             R45 R42 K38 [1]
      159 DIVK                             R44 R45 K37 [2]
      160 FASTCALL1                        MATH_ACOS R44 ; [+2]
      161 GETIMPORT                        R43 K41 [math.acos]
      163 CALL                             R43 1 1
      164 MOVE                             R26 R43
      165 FASTCALL2                        TABLE_INSERT R16 R26 ; [+4]
      167 MOVE                             R25 R16
      168 GETIMPORT                        R24 K24 [table.insert]
      170 CALL                             R24 2 0
      171 JUMP                             ; [+21]
      172 GETTABLEKS                       R24 R23 K30 ["Type"]
      174 GETUPVAL                         R25 6
      175 GETTABLEKS                       R25 R25 K31 ["TRACK_TYPES"]
      177 GETTABLEKS                       R25 R25 K42 ["Facs"]
      179 JUMPIFNOTEQ                      R24 R25 ; [+13]
      181 GETUPVAL                         R26 5
      182 GETTABLEKS                       R26 R26 K25 ["getValue"]
      184 MOVE                             R27 R23
      185 MOVE                             R28 R15
      186 CALL                             R26 2 1
      187 FASTCALL2                        TABLE_INSERT R16 R26 ; [+4]
      189 MOVE                             R25 R16
      190 GETIMPORT                        R24 K24 [table.insert]
      192 CALL                             R24 2 0
      193 FORGLOOP                         R18 2 [inext] ; [-77]
      195 SETTABLE                         R16 R10 R14
      196 FORGLOOP                         R11 2 [inext] ; [-132]
      198 GETUPVAL                         R11 8
      199 MOVE                             R12 R10
      200 CALL                             R11 1 -1
      201 RETURN                           R11 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getTrack"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["sourceData"]
        6 GETUPVAL                         R5 2
        7 MOVE                             R6 R2
        8 CALL                             R3 3 1
        9 JUMPIFNOT                        R3 ; [+39]
       10 GETTABLEKS                       R4 R3 K2 ["Data"]
       12 JUMPIFNOT                        R4 ; [+36]
       13 GETIMPORT                        R4 K5 [table.create]
       15 GETUPVAL                         R5 3
       16 CALL                             R4 1 1
       17 GETIMPORT                        R5 K5 [table.create]
       19 GETUPVAL                         R6 3
       20 CALL                             R5 1 1
       21 LOADN                            R8 1
       22 GETUPVAL                         R6 3
       23 LOADN                            R7 1
       24 FORNPREP                         R6
       25 GETUPVAL                         R10 4
       26 GETTABLE                         R9 R10 R8
       27 GETTABLEKS                       R11 R3 K2 ["Data"]
       29 GETTABLE                         R10 R11 R9
       30 SETTABLE                         R10 R5 R9
       31 GETTABLE                         R10 R5 R9
       32 JUMPIFNOT                        R10 ; [+7]
       33 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       35 MOVE                             R11 R4
       36 MOVE                             R12 R9
       37 GETIMPORT                        R10 K7 [table.insert]
       39 CALL                             R10 2 0
       40 FORNLOOP                         R6
       41 GETIMPORT                        R6 K9 [table.sort]
       43 MOVE                             R7 R4
       44 CALL                             R6 1 0
       45 SETTABLEKS                       R4 R0 K10 ["Keyframes"]
       47 SETTABLEKS                       R5 R0 K2 ["Data"]
       49 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQ                      R1 R2 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        6 GETTABLEKS                       R3 R3 K1 ["join"]
        8 GETTABLEKS                       R4 R0 K2 ["workData"]
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R0 K3 ["state"]
       15 GETTABLEKS                       R4 R4 K4 ["ticks"]
       17 JUMPIFNOT                        R4 ; [+42]
       18 GETTABLEKS                       R5 R3 K5 ["Instances"]
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETTABLEKS                       R10 R9 K6 ["Tracks"]
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 FORGPREP                         R10
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R15 R15 K7 ["traverseTracks"]
       31 MOVE                             R16 R13
       32 MOVE                             R17 R14
       33 NEWCLOSURE                       R18 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R8
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 LOADB                            R19 1
       40 CALL                             R15 4 0
       41 FORGLOOP                         R10 2 ; [-14]
       43 FORGLOOP                         R5 2 ; [-21]
       45 GETTABLEKS                       R5 R0 K8 ["props"]
       47 GETTABLEKS                       R5 R5 K9 ["SetAnimationData"]
       49 MOVE                             R6 R3
       50 CALL                             R5 1 0
       51 GETTABLEKS                       R5 R0 K8 ["props"]
       53 GETTABLEKS                       R5 R5 K10 ["StepAnimation"]
       55 GETTABLEKS                       R6 R0 K8 ["props"]
       57 GETTABLEKS                       R6 R6 K11 ["Playhead"]
       59 CALL                             R5 1 0
       60 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 LOADNIL                          R6
        6 SETTABLEKS                       R6 R5 K1 ["LeftTangent"]
        8 LOADNIL                          R6
        9 SETTABLEKS                       R6 R5 K2 ["RightTangent"]
       11 FORGLOOP                         R1 2 ; [-7]
       13 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Tracks"]
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R1 K1 ["Tracks"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R2 R0 K2 ["onClose"]
       13 LOADB                            R3 0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R1 K3 ["SetReadOnly"]
       18 LOADB                            R3 1
       19 CALL                             R2 1 0
       20 GETTABLEKS                       R2 R1 K4 ["SetSelectedKeyframes"]
       22 NEWTABLE                         R3 0 0
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R3 R1 K5 ["AnimationData"]
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R0 K6 ["animationBackup"]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R3 R1 K5 ["AnimationData"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R0 K7 ["sourceData"]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K8 ["clearTrackSequences"]
       40 GETTABLEKS                       R3 R0 K7 ["sourceData"]
       42 CALL                             R2 1 1
       43 JUMPIFNOT                        R2 ; [+16]
       44 GETTABLEKS                       R2 R0 K0 ["props"]
       46 GETTABLEKS                       R2 R2 K9 ["SetAnimationData"]
       48 GETTABLEKS                       R3 R0 K7 ["sourceData"]
       50 CALL                             R2 1 0
       51 GETTABLEKS                       R2 R0 K0 ["props"]
       53 GETTABLEKS                       R2 R2 K10 ["StepAnimation"]
       55 GETTABLEKS                       R3 R0 K0 ["props"]
       57 GETTABLEKS                       R3 R3 K11 ["Playhead"]
       59 CALL                             R2 1 0
       60 GETTABLEKS                       R2 R0 K7 ["sourceData"]
       62 GETTABLEKS                       R2 R2 K12 ["Instances"]
       64 LOADNIL                          R3
       65 LOADNIL                          R4
       66 FORGPREP                         R2
       67 GETTABLEKS                       R7 R6 K1 ["Tracks"]
       69 LOADNIL                          R8
       70 LOADNIL                          R9
       71 FORGPREP                         R7
       72 GETUPVAL                         R12 3
       73 GETTABLEKS                       R12 R12 K13 ["traverseTracks"]
       75 MOVE                             R13 R10
       76 MOVE                             R14 R11
       77 DUPCLOSURE                       R15 K14 [PROTO_9]
       78 LOADB                            R16 1
       79 CALL                             R12 4 0
       80 FORGLOOP                         R7 2 ; [-9]
       82 FORGLOOP                         R2 2 ; [-16]
       84 GETUPVAL                         R2 1
       85 GETTABLEKS                       R3 R0 K7 ["sourceData"]
       87 CALL                             R2 1 1
       88 SETTABLEKS                       R2 R0 K15 ["workData"]
       90 NAMECALL                         R2 R0 K16 ["calculateVisvalingamWhyatt"]
       92 CALL                             R2 1 1
       93 DUPTABLE                         R5 K22 [{["initialKeyframes"], ["keyframes"], ["ticks"], ["hasMoved"] = False}]
       94 LENGTH                           R6 R2
       95 SETTABLEKS                       R6 R5 K17 ["initialKeyframes"]
       97 LENGTH                           R6 R2
       98 SETTABLEKS                       R6 R5 K18 ["keyframes"]
      100 SETTABLEKS                       R2 R5 K19 ["ticks"]
      102 NAMECALL                         R3 R0 K23 ["setState"]
      104 CALL                             R3 2 0
      105 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["keepChanges"]
        2 JUMPIF                           R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["UpdateAnimationData"]
        7 GETTABLEKS                       R2 R0 K3 ["animationBackup"]
        9 CALL                             R1 1 0
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K0 ["keepChanges"]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K3 ["animationBackup"]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K4 ["sourceData"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K5 ["workData"]
       22 GETTABLEKS                       R1 R0 K1 ["props"]
       24 GETTABLEKS                       R1 R1 K6 ["SetReadOnly"]
       26 LOADB                            R2 0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R3 R1 K3 ["dialogTheme"]
       10 GETTABLEKS                       R4 R0 K4 ["state"]
       12 GETTABLEKS                       R4 R4 K5 ["keyframes"]
       14 GETTABLEKS                       R5 R0 K4 ["state"]
       16 GETTABLEKS                       R5 R5 K6 ["ticks"]
       18 JUMPIFNOT                        R5 ; [+8]
       19 LENGTH                           R7 R5
       20 FASTCALL2K                       MATH_MAX R7 K7 ; [+4]
       22 LOADK                            R8 K7 [3]
       23 GETIMPORT                        R6 K10 [math.max]
       25 CALL                             R6 2 1
       26 JUMP                             ; [+1]
       27 LOADN                            R6 3
       28 JUMPIFNOT                        R4 ; [+8]
       29 FASTCALL2K                       MATH_MAX R4 K11 ; [+5]
       31 MOVE                             R8 R4
       32 LOADK                            R9 K11 [2]
       33 GETIMPORT                        R7 K10 [math.max]
       35 CALL                             R7 2 1
       36 JUMP                             ; [+1]
       37 LOADN                            R7 2
       38 MOVE                             R8 R5
       39 JUMPIFNOT                        R8 ; [+6]
       40 LENGTH                           R9 R5
       41 LOADN                            R10 2
       42 JUMPIFLT                         R10 R9 ; [+2]
       44 LOADB                            R8 0 +1
       45 LOADB                            R8 1
       46 LOADK                            R11 K12 ["OptimizeKeyframes"]
       47 LOADK                            R12 K13 ["Keyframes"]
       48 NAMECALL                         R9 R2 K14 ["getText"]
       50 CALL                             R9 3 1
       51 JUMPIFNOT                        R5 ; [+8]
       52 MOVE                             R10 R9
       53 GETIMPORT                        R11 K17 [string.format]
       55 LOADK                            R12 K18 [" %d / %d"]
       56 MOVE                             R13 R4
       57 LENGTH                           R14 R5
       58 CALL                             R11 3 1
       59 CONCAT                           R9 R10 R11
       60 NEWTABLE                         R10 0 2
       62 DUPTABLE                         R11 K24 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
       63 LOADK                            R14 K25 ["Dialog"]
       64 LOADK                            R15 K26 ["Cancel"]
       65 NAMECALL                         R12 R2 K14 ["getText"]
       67 CALL                             R12 3 1
       68 SETTABLEKS                       R12 R11 K21 ["Text"]
       70 DUPTABLE                         R12 K29 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
       71 LOADK                            R15 K25 ["Dialog"]
       72 LOADK                            R16 K30 ["Ok"]
       73 NAMECALL                         R13 R2 K14 ["getText"]
       75 CALL                             R13 3 1
       76 SETTABLEKS                       R13 R12 K21 ["Text"]
       78 SETLIST                          R10 R11 2 [1]
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K31 ["createElement"]
       83 GETUPVAL                         R12 1
       84 DUPTABLE                         R13 K40 [{["MinContentSize"], ["Size"], ["TextSize"], ["Resizable"] = False, ["Buttons"], ["OnButtonPressed"], ["OnClose"], ["Title"]}]
       85 GETIMPORT                        R14 K43 [Vector2.new]
       87 LOADN                            R15 400
       88 LOADN                            R16 100
       89 CALL                             R14 2 1
       90 SETTABLEKS                       R14 R13 K32 ["MinContentSize"]
       92 GETIMPORT                        R14 K43 [Vector2.new]
       94 LOADN                            R15 400
       95 LOADN                            R16 100
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K33 ["Size"]
       99 GETTABLEKS                       R14 R3 K44 ["textSize"]
      101 SETTABLEKS                       R14 R13 K34 ["TextSize"]
      103 SETTABLEKS                       R10 R13 K36 ["Buttons"]
      105 GETTABLEKS                       R14 R0 K45 ["onClose"]
      107 SETTABLEKS                       R14 R13 K37 ["OnButtonPressed"]
      109 GETTABLEKS                       R14 R0 K45 ["onClose"]
      111 SETTABLEKS                       R14 R13 K38 ["OnClose"]
      113 LOADK                            R16 K39 ["Title"]
      114 LOADK                            R17 K12 ["OptimizeKeyframes"]
      115 NAMECALL                         R14 R2 K14 ["getText"]
      117 CALL                             R14 3 1
      118 SETTABLEKS                       R14 R13 K39 ["Title"]
      120 DUPTABLE                         R14 K49 [{"Layout", "KeyframePane", "Slider"}]
      121 GETUPVAL                         R15 0
      122 GETTABLEKS                       R15 R15 K31 ["createElement"]
      124 LOADK                            R16 K50 ["UIListLayout"]
      125 DUPTABLE                         R17 K55 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
      126 GETIMPORT                        R18 K58 [Enum.FillDirection.Vertical]
      128 SETTABLEKS                       R18 R17 K51 ["FillDirection"]
      130 GETIMPORT                        R18 K60 [Enum.HorizontalAlignment.Left]
      132 SETTABLEKS                       R18 R17 K52 ["HorizontalAlignment"]
      134 GETIMPORT                        R18 K62 [Enum.SortOrder.LayoutOrder]
      136 SETTABLEKS                       R18 R17 K53 ["SortOrder"]
      138 GETIMPORT                        R18 K64 [Enum.VerticalAlignment.Top]
      140 SETTABLEKS                       R18 R17 K54 ["VerticalAlignment"]
      142 CALL                             R15 2 1
      143 SETTABLEKS                       R15 R14 K46 ["Layout"]
      145 GETUPVAL                         R15 0
      146 GETTABLEKS                       R15 R15 K31 ["createElement"]
      148 GETUPVAL                         R16 2
      149 DUPTABLE                         R17 K71 [{["AutomaticSize"], ["Layout"], ["Padding"] = 10, ["Spacing"] = 15, ["LayoutOrder"] = 1}]
      150 GETIMPORT                        R18 K73 [Enum.AutomaticSize.Y]
      152 SETTABLEKS                       R18 R17 K65 ["AutomaticSize"]
      154 GETIMPORT                        R18 K58 [Enum.FillDirection.Vertical]
      156 SETTABLEKS                       R18 R17 K46 ["Layout"]
      158 DUPTABLE                         R18 K75 [{"KeyframesText"}]
      159 GETUPVAL                         R19 0
      160 GETTABLEKS                       R19 R19 K31 ["createElement"]
      162 GETUPVAL                         R20 3
      163 DUPTABLE                         R21 K80 [{["AutomaticSize"], ["TextXAlignment"], ["Text"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True}]
      164 GETIMPORT                        R22 K82 [Enum.AutomaticSize.XY]
      166 SETTABLEKS                       R22 R21 K65 ["AutomaticSize"]
      168 GETIMPORT                        R22 K83 [Enum.TextXAlignment.Left]
      170 SETTABLEKS                       R22 R21 K76 ["TextXAlignment"]
      172 SETTABLEKS                       R9 R21 K21 ["Text"]
      174 GETTABLEKS                       R22 R1 K84 ["TextColor"]
      176 SETTABLEKS                       R22 R21 K77 ["TextColor3"]
      178 CALL                             R19 2 1
      179 SETTABLEKS                       R19 R18 K74 ["KeyframesText"]
      181 CALL                             R15 3 1
      182 SETTABLEKS                       R15 R14 K47 ["KeyframePane"]
      184 GETUPVAL                         R15 0
      185 GETTABLEKS                       R15 R15 K31 ["createElement"]
      187 GETUPVAL                         R16 4
      188 DUPTABLE                         R17 K90 [{["Size"], ["Min"] = 2, ["Max"], ["Value"], ["Disabled"], ["OnValueChanged"], ["LayoutOrder"] = 2}]
      189 GETIMPORT                        R18 K92 [UDim2.new]
      191 LOADN                            R19 1
      192 LOADN                            R20 0
      193 LOADN                            R21 0
      194 LOADN                            R22 30
      195 CALL                             R18 4 1
      196 SETTABLEKS                       R18 R17 K33 ["Size"]
      198 SETTABLEKS                       R6 R17 K86 ["Max"]
      200 SETTABLEKS                       R7 R17 K87 ["Value"]
      202 NOT                              R18 R8
      203 SETTABLEKS                       R18 R17 K88 ["Disabled"]
      205 GETTABLEKS                       R18 R0 K93 ["onSliderChanged"]
      207 SETTABLEKS                       R18 R17 K89 ["OnValueChanged"]
      209 CALL                             R15 2 1
      210 SETTABLEKS                       R15 R14 K48 ["Slider"]
      212 CALL                             R11 3 -1
      213 RETURN                           R11 -1

PROTO_13:
        0 DUPTABLE                         R1 K4 [{"AnimationData", "Tracks", "Playhead", "RootInstance"}]
        1 GETTABLEKS                       R2 R0 K0 ["AnimationData"]
        3 SETTABLEKS                       R2 R1 K0 ["AnimationData"]
        5 GETTABLEKS                       R2 R0 K5 ["Status"]
        7 GETTABLEKS                       R2 R2 K1 ["Tracks"]
        9 SETTABLEKS                       R2 R1 K1 ["Tracks"]
       11 GETTABLEKS                       R2 R0 K5 ["Status"]
       13 GETTABLEKS                       R2 R2 K2 ["Playhead"]
       15 SETTABLEKS                       R2 R1 K2 ["Playhead"]
       17 GETTABLEKS                       R2 R0 K5 ["Status"]
       19 GETTABLEKS                       R2 R2 K3 ["RootInstance"]
       21 SETTABLEKS                       R2 R1 K3 ["RootInstance"]
       23 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K6 [{"AddWaypoint", "SetAnimationData", "SetReadOnly", "SetSelectedKeyframes", "StepAnimation", "UpdateAnimationData"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["AddWaypoint"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetAnimationData"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetReadOnly"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetSelectedKeyframes"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["StepAnimation"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["UpdateAnimationData"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Actions"]
       41 GETTABLEKS                       R6 R6 K13 ["SetAnimationData"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Src"]
       48 GETTABLEKS                       R7 R7 K12 ["Actions"]
       50 GETTABLEKS                       R7 R7 K14 ["SetReadOnly"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Src"]
       57 GETTABLEKS                       R8 R8 K12 ["Actions"]
       59 GETTABLEKS                       R8 R8 K15 ["SetSelectedKeyframes"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K11 ["Src"]
       66 GETTABLEKS                       R9 R9 K16 ["Thunks"]
       68 GETTABLEKS                       R9 R9 K17 ["History"]
       70 GETTABLEKS                       R9 R9 K18 ["AddWaypoint"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K11 ["Src"]
       77 GETTABLEKS                       R10 R10 K16 ["Thunks"]
       79 GETTABLEKS                       R10 R10 K19 ["Playback"]
       81 GETTABLEKS                       R10 R10 K20 ["StepAnimation"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K11 ["Src"]
       88 GETTABLEKS                       R11 R11 K16 ["Thunks"]
       90 GETTABLEKS                       R11 R11 K21 ["UpdateAnimationData"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K11 ["Src"]
       97 GETTABLEKS                       R12 R12 K22 ["Util"]
       99 GETTABLEKS                       R12 R12 K23 ["AnimationData"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K11 ["Src"]
      106 GETTABLEKS                       R13 R13 K22 ["Util"]
      108 GETTABLEKS                       R13 R13 K24 ["Constants"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K11 ["Src"]
      115 GETTABLEKS                       R14 R14 K22 ["Util"]
      117 GETTABLEKS                       R14 R14 K25 ["deepCopy"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K11 ["Src"]
      124 GETTABLEKS                       R15 R15 K22 ["Util"]
      126 GETTABLEKS                       R15 R15 K26 ["isEmpty"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R16 R0 K11 ["Src"]
      133 GETTABLEKS                       R16 R16 K22 ["Util"]
      135 GETTABLEKS                       R16 R16 K27 ["KeyframeUtils"]
      137 CALL                             R15 1 1
      138 GETIMPORT                        R16 K5 [require]
      140 GETTABLEKS                       R17 R0 K11 ["Src"]
      142 GETTABLEKS                       R17 R17 K22 ["Util"]
      144 GETTABLEKS                       R17 R17 K28 ["PathUtils"]
      146 CALL                             R16 1 1
      147 GETIMPORT                        R17 K5 [require]
      149 GETTABLEKS                       R18 R0 K11 ["Src"]
      151 GETTABLEKS                       R18 R18 K22 ["Util"]
      153 GETTABLEKS                       R18 R18 K29 ["RigInfo"]
      155 CALL                             R17 1 1
      156 GETIMPORT                        R18 K5 [require]
      158 GETTABLEKS                       R19 R0 K11 ["Src"]
      160 GETTABLEKS                       R19 R19 K22 ["Util"]
      162 GETTABLEKS                       R19 R19 K30 ["TrackUtils"]
      164 CALL                             R18 1 1
      165 GETIMPORT                        R19 K5 [require]
      167 GETTABLEKS                       R20 R0 K11 ["Src"]
      169 GETTABLEKS                       R20 R20 K22 ["Util"]
      171 GETTABLEKS                       R20 R20 K31 ["KeyframeReduction"]
      173 GETTABLEKS                       R20 R20 K32 ["VisvalingamWhyatt"]
      175 CALL                             R19 1 1
      176 GETTABLEKS                       R20 R2 K33 ["ContextServices"]
      178 GETTABLEKS                       R21 R20 K34 ["withContext"]
      180 GETTABLEKS                       R22 R2 K35 ["UI"]
      182 GETTABLEKS                       R23 R22 K36 ["Pane"]
      184 GETTABLEKS                       R24 R22 K37 ["Slider"]
      186 GETTABLEKS                       R25 R22 K38 ["TextLabel"]
      188 GETTABLEKS                       R26 R22 K39 ["StyledDialog"]
      190 GETIMPORT                        R27 K5 [require]
      192 GETTABLEKS                       R28 R0 K11 ["Src"]
      194 GETTABLEKS                       R28 R28 K40 ["Types"]
      196 CALL                             R27 1 1
      197 GETIMPORT                        R28 K5 [require]
      199 GETTABLEKS                       R29 R0 K41 ["LuaFlags"]
      201 GETTABLEKS                       R29 R29 K42 ["GetFFlagRootMotion"]
      203 CALL                             R28 1 1
      204 GETTABLEKS                       R29 R3 K43 ["PureComponent"]
      206 LOADK                            R31 K44 ["ReduceKeyframesDialog"]
      207 NAMECALL                         R29 R29 K45 ["extend"]
      209 CALL                             R29 2 1
      210 DUPCLOSURE                       R30 K46 [PROTO_2]
      211 CAPTURE                          VAL R11
      212 SETTABLEKS                       R30 R29 K47 ["init"]
      214 DUPCLOSURE                       R30 K48 [PROTO_3]
      215 CAPTURE                          VAL R17
      216 DUPCLOSURE                       R31 K49 [PROTO_4]
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R31
      219 DUPCLOSURE                       R32 K50 [PROTO_5]
      220 DUPCLOSURE                       R33 K51 [PROTO_6]
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R17
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R30
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R15
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R31
      229 CAPTURE                          VAL R19
      230 SETTABLEKS                       R33 R29 K52 ["calculateVisvalingamWhyatt"]
      232 DUPCLOSURE                       R33 K53 [PROTO_8]
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R18
      235 CAPTURE                          VAL R11
      236 SETTABLEKS                       R33 R29 K54 ["previewVisvalingamWhyatt"]
      238 DUPCLOSURE                       R33 K55 [PROTO_10]
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R13
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R18
      243 SETTABLEKS                       R33 R29 K56 ["didMount"]
      245 DUPCLOSURE                       R33 K57 [PROTO_11]
      246 SETTABLEKS                       R33 R29 K58 ["willUnmount"]
      248 DUPCLOSURE                       R33 K59 [PROTO_12]
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R26
      251 CAPTURE                          VAL R23
      252 CAPTURE                          VAL R25
      253 CAPTURE                          VAL R24
      254 SETTABLEKS                       R33 R29 K60 ["render"]
      256 DUPCLOSURE                       R33 K61 [PROTO_13]
      257 DUPCLOSURE                       R34 K62 [PROTO_20]
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R5
      260 CAPTURE                          VAL R6
      261 CAPTURE                          VAL R7
      262 CAPTURE                          VAL R9
      263 CAPTURE                          VAL R10
      264 MOVE                             R35 R21
      265 DUPTABLE                         R36 K67 [{"Analytics", "Localization", "Plugin", "Stylizer"}]
      266 GETTABLEKS                       R37 R20 K63 ["Analytics"]
      268 SETTABLEKS                       R37 R36 K63 ["Analytics"]
      270 GETTABLEKS                       R37 R20 K64 ["Localization"]
      272 SETTABLEKS                       R37 R36 K64 ["Localization"]
      274 GETTABLEKS                       R37 R20 K65 ["Plugin"]
      276 SETTABLEKS                       R37 R36 K65 ["Plugin"]
      278 GETTABLEKS                       R37 R20 K66 ["Stylizer"]
      280 SETTABLEKS                       R37 R36 K66 ["Stylizer"]
      282 CALL                             R35 1 1
      283 MOVE                             R36 R29
      284 CALL                             R35 1 1
      285 MOVE                             R29 R35
      286 GETTABLEKS                       R35 R4 K68 ["connect"]
      288 MOVE                             R36 R33
      289 MOVE                             R37 R34
      290 CALL                             R35 2 1
      291 MOVE                             R36 R29
      292 CALL                             R35 1 -1
      293 RETURN                           R35 -1
