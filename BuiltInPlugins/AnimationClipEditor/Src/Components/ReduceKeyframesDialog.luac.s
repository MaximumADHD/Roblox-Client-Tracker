PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["Tracks"]
        5 LENGTH                           R2 R3
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["isChannelAnimation"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["props"]
       12 GETTABLEKS                       R4 R5 K3 ["AnimationData"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K5 ["state"]
       18 GETTABLEKS                       R5 R6 K6 ["hasMoved"]
       20 ORK                              R4 R5 K4 [False]
       21 GETUPVAL                         R5 0
       22 SETTABLEKS                       R0 R5 K7 ["keepChanges"]
       24 JUMPIFNOT                        R0 ; [+62]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R7 R8 K5 ["state"]
       28 GETTABLEKS                       R6 R7 K8 ["ticks"]
       30 JUMPIFNOT                        R6 ; [+7]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K5 ["state"]
       34 GETTABLEKS                       R6 R7 K8 ["ticks"]
       36 LENGTH                           R5 R6
       37 JUMP                             ; [+1]
       38 LOADN                            R5 0
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K5 ["state"]
       42 GETTABLEKS                       R6 R7 K9 ["keyframes"]
       44 GETTABLEKS                       R7 R1 K10 ["Analytics"]
       46 LOADK                            R9 K11 ["onKeyframeReductionApply"]
       47 MOVE                             R10 R2
       48 MOVE                             R11 R3
       49 MOVE                             R12 R5
       50 MOVE                             R13 R6
       51 MOVE                             R14 R4
       52 GETUPVAL                         R18 0
       53 GETTABLEKS                       R17 R18 K0 ["props"]
       55 GETTABLEKS                       R16 R17 K3 ["AnimationData"]
       57 JUMPIFNOT                        R16 ; [+18]
       58 GETUPVAL                         R19 0
       59 GETTABLEKS                       R18 R19 K0 ["props"]
       61 GETTABLEKS                       R17 R18 K3 ["AnimationData"]
       63 GETTABLEKS                       R16 R17 K12 ["Metadata"]
       65 JUMPIFNOT                        R16 ; [+10]
       66 GETUPVAL                         R19 0
       67 GETTABLEKS                       R18 R19 K0 ["props"]
       69 GETTABLEKS                       R17 R18 K3 ["AnimationData"]
       71 GETTABLEKS                       R16 R17 K12 ["Metadata"]
       73 GETTABLEKS                       R15 R16 K13 ["Guid"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R15
       77 NAMECALL                         R7 R7 K14 ["report"]
       79 CALL                             R7 8 0
       80 GETTABLEKS                       R7 R1 K15 ["AddWaypoint"]
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R8 R9 K16 ["animationBackup"]
       85 CALL                             R7 1 0
       86 JUMP                             ; [+34]
       87 GETTABLEKS                       R5 R1 K10 ["Analytics"]
       89 LOADK                            R7 K17 ["onKeyframeReductionCancel"]
       90 MOVE                             R8 R2
       91 MOVE                             R9 R3
       92 MOVE                             R10 R4
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R13 R14 K0 ["props"]
       96 GETTABLEKS                       R12 R13 K3 ["AnimationData"]
       98 JUMPIFNOT                        R12 ; [+18]
       99 GETUPVAL                         R15 0
      100 GETTABLEKS                       R14 R15 K0 ["props"]
      102 GETTABLEKS                       R13 R14 K3 ["AnimationData"]
      104 GETTABLEKS                       R12 R13 K12 ["Metadata"]
      106 JUMPIFNOT                        R12 ; [+10]
      107 GETUPVAL                         R15 0
      108 GETTABLEKS                       R14 R15 K0 ["props"]
      110 GETTABLEKS                       R13 R14 K3 ["AnimationData"]
      112 GETTABLEKS                       R12 R13 K12 ["Metadata"]
      114 GETTABLEKS                       R11 R12 K13 ["Guid"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R11
      118 NAMECALL                         R5 R5 K14 ["report"]
      120 CALL                             R5 6 0
      121 GETUPVAL                         R7 0
      122 GETTABLEKS                       R6 R7 K0 ["props"]
      124 GETTABLEKS                       R5 R6 K18 ["OnClose"]
      126 CALL                             R5 0 0
      127 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        MATH_ROUND R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K2 [math.round]
        4 CALL                             R1 1 1
        5 MOVE                             R0 R1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K3 ["state"]
        9 GETTABLEKS                       R1 R2 K4 ["keyframes"]
       11 GETUPVAL                         R2 0
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R2 K5 ["previewVisvalingamWhyatt"]
       16 CALL                             R2 3 0
       17 GETUPVAL                         R2 0
       18 DUPTABLE                         R4 K7 [{"keyframes", "hasMoved"}]
       19 SETTABLEKS                       R0 R4 K4 ["keyframes"]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R7 R8 K3 ["state"]
       24 GETTABLEKS                       R6 R7 K8 ["initialKeyframes"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getRigInfo"]
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
       18 GETTABLEKS                       R12 R10 K6 ["Part0"]
       20 GETTABLEKS                       R11 R12 K7 ["Name"]
       22 SETTABLE                         R11 R5 R9
       23 FORGLOOP                         R6 2 ; [-6]
       25 GETIMPORT                        R6 K5 [pairs]
       27 MOVE                             R7 R4
       28 CALL                             R6 1 3
       29 FORGPREP_NEXT                    R6
       30 GETTABLEKS                       R12 R10 K8 ["Parent"]
       32 GETTABLEKS                       R11 R12 K7 ["Name"]
       34 SETTABLE                         R11 R5 R9
       35 FORGLOOP                         R6 2 ; [-6]
       37 GETIMPORT                        R6 K5 [pairs]
       39 MOVE                             R7 R3
       40 CALL                             R6 1 3
       41 FORGPREP_NEXT                    R6
       42 GETTABLEKS                       R13 R10 K9 ["Attachment0"]
       44 GETTABLEKS                       R12 R13 K8 ["Parent"]
       46 GETTABLEKS                       R11 R12 K7 ["Name"]
       48 SETTABLE                         R11 R5 R9
       49 FORGLOOP                         R6 2 ; [-8]
       51 RETURN                           R5 1

PROTO_4:
        0 GETTABLE                         R5 R1 R3
        1 JUMPIF                           R5 ; [+30]
        2 GETTABLE                         R5 R0 R3
        3 JUMPIFNOT                        R5 ; [+12]
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R7 R8 K0 ["getValue"]
        7 MOVE                             R8 R5
        8 MOVE                             R9 R4
        9 CALL                             R7 2 1
       10 NAMECALL                         R7 R7 K1 ["Orthonormalize"]
       12 CALL                             R7 1 1
       13 GETTABLEKS                       R6 R7 K2 ["Rotation"]
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
       17 LOADN                            R16 255
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
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R3 K2 ["RootInstance"]
        6 GETTABLEKS                       R5 R1 K3 ["Instances"]
        8 GETTABLEKS                       R4 R5 K4 ["Root"]
       10 GETTABLEKS                       R3 R4 K5 ["Tracks"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K6 ["findRootPart"]
       15 MOVE                             R5 R2
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R5 R4 K7 ["Name"]
       19 GETTABLE                         R6 R3 R5
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K8 ["getSummaryKeyframes"]
       23 MOVE                             R8 R3
       24 GETTABLEKS                       R10 R1 K9 ["Metadata"]
       26 GETTABLEKS                       R9 R10 K10 ["StartTick"]
       28 GETTABLEKS                       R11 R1 K9 ["Metadata"]
       30 GETTABLEKS                       R10 R11 K11 ["EndTick"]
       32 CALL                             R7 3 1
       33 GETIMPORT                        R8 K14 [table.sort]
       35 MOVE                             R9 R7
       36 CALL                             R8 1 0
       37 GETUPVAL                         R8 2
       38 MOVE                             R9 R2
       39 CALL                             R8 1 1
       40 GETUPVAL                         R11 3
       41 GETTABLEKS                       R10 R11 K15 ["Dictionary"]
       43 GETTABLEKS                       R9 R10 K16 ["keys"]
       45 MOVE                             R10 R3
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K18 [table.create]
       49 LENGTH                           R11 R7
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K20 [ipairs]
       53 MOVE                             R12 R7
       54 CALL                             R11 1 3
       55 FORGPREP_INEXT                   R11
       56 GETIMPORT                        R16 K18 [table.create]
       58 LENGTH                           R18 R9
       59 ADDK                             R17 R18 K21 [4]
       60 CALL                             R16 1 1
       61 FASTCALL2                        TABLE_INSERT R16 R15 ; [+5]
       63 MOVE                             R18 R16
       64 MOVE                             R19 R15
       65 GETIMPORT                        R17 K23 [table.insert]
       67 CALL                             R17 2 0
       68 JUMPIFNOT                        R6 ; [+32]
       69 GETUPVAL                         R19 4
       70 GETTABLEKS                       R18 R19 K24 ["getValue"]
       72 MOVE                             R19 R6
       73 MOVE                             R20 R15
       74 CALL                             R18 2 1
       75 GETTABLEKS                       R17 R18 K25 ["Position"]
       77 GETTABLEKS                       R20 R17 K26 ["X"]
       79 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
       81 MOVE                             R19 R16
       82 GETIMPORT                        R18 K23 [table.insert]
       84 CALL                             R18 2 0
       85 GETTABLEKS                       R20 R17 K27 ["Y"]
       87 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
       89 MOVE                             R19 R16
       90 GETIMPORT                        R18 K23 [table.insert]
       92 CALL                             R18 2 0
       93 GETTABLEKS                       R20 R17 K28 ["Z"]
       95 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
       97 MOVE                             R19 R16
       98 GETIMPORT                        R18 K23 [table.insert]
      100 CALL                             R18 2 0
      101 NEWTABLE                         R17 0 0
      103 GETIMPORT                        R18 K20 [ipairs]
      105 MOVE                             R19 R9
      106 CALL                             R18 1 3
      107 FORGPREP_INEXT                   R18
      108 GETTABLE                         R23 R3 R22
      109 GETTABLEKS                       R24 R23 K29 ["Type"]
      111 GETUPVAL                         R27 5
      112 GETTABLEKS                       R26 R27 K30 ["TRACK_TYPES"]
      114 GETTABLEKS                       R25 R26 K31 ["CFrame"]
      116 JUMPIFNOTEQ                      R24 R25 ; [+47]
      118 GETUPVAL                         R24 6
      119 MOVE                             R25 R3
      120 MOVE                             R26 R17
      121 MOVE                             R27 R8
      122 MOVE                             R28 R22
      123 MOVE                             R29 R15
      124 CALL                             R24 5 0
      125 GETTABLE                         R27 R17 R22
      126 GETTABLE                         R28 R17 R5
      127 JUMPIFNOT                        R28 ; [+5]
      128 NAMECALL                         R30 R28 K32 ["Inverse"]
      130 CALL                             R30 1 1
      131 MUL                              R29 R27 R30
      132 JUMP                             ; [+1]
      133 MOVE                             R29 R27
      134 NAMECALL                         R30 R29 K33 ["GetComponents"]
      136 CALL                             R30 1 12
      137 ADD                              R43 R33 R37
      138 ADD                              R42 R43 R41
      139 LOADN                            R43 3
      140 JUMPIFNOTLE                      R43 R42 ; [+3]
      142 LOADK                            R26 K34 [1.5707963267949]
      143 JUMP                             ; [+13]
      144 LOADN                            R43 255
      145 JUMPIFNOTLE                      R42 R43 ; [+3]
      147 LOADK                            R26 K35 [-1.5707963267949]
      148 JUMP                             ; [+8]
      149 SUBK                             R45 R42 K37 [1]
      150 DIVK                             R44 R45 K36 [2]
      151 FASTCALL1                        MATH_ACOS R44 ; [+2]
      152 GETIMPORT                        R43 K40 [math.acos]
      154 CALL                             R43 1 1
      155 MOVE                             R26 R43
      156 JUMP                             ; [0]
      157 FASTCALL2                        TABLE_INSERT R16 R26 ; [+4]
      159 MOVE                             R25 R16
      160 GETIMPORT                        R24 K23 [table.insert]
      162 CALL                             R24 2 0
      163 JUMP                             ; [+21]
      164 GETTABLEKS                       R24 R23 K29 ["Type"]
      166 GETUPVAL                         R27 5
      167 GETTABLEKS                       R26 R27 K30 ["TRACK_TYPES"]
      169 GETTABLEKS                       R25 R26 K41 ["Facs"]
      171 JUMPIFNOTEQ                      R24 R25 ; [+13]
      173 GETUPVAL                         R27 4
      174 GETTABLEKS                       R26 R27 K24 ["getValue"]
      176 MOVE                             R27 R23
      177 MOVE                             R28 R15
      178 CALL                             R26 2 1
      179 FASTCALL2                        TABLE_INSERT R16 R26 ; [+4]
      181 MOVE                             R25 R16
      182 GETIMPORT                        R24 K23 [table.insert]
      184 CALL                             R24 2 0
      185 FORGLOOP                         R18 2 [inext] ; [-78]
      187 SETTABLE                         R16 R10 R14
      188 FORGLOOP                         R11 2 [inext] ; [-133]
      190 GETUPVAL                         R11 7
      191 MOVE                             R12 R10
      192 CALL                             R11 1 -1
      193 RETURN                           R11 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getTrack"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["sourceData"]
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
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
        6 GETTABLEKS                       R3 R4 K1 ["join"]
        8 GETTABLEKS                       R4 R0 K2 ["workData"]
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R5 R0 K3 ["state"]
       15 GETTABLEKS                       R4 R5 K4 ["ticks"]
       17 JUMPIFNOT                        R4 ; [+42]
       18 GETTABLEKS                       R5 R3 K5 ["Instances"]
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETTABLEKS                       R10 R9 K6 ["Tracks"]
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 FORGPREP                         R10
       28 GETUPVAL                         R16 1
       29 GETTABLEKS                       R15 R16 K7 ["traverseTracks"]
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
       45 GETTABLEKS                       R6 R0 K8 ["props"]
       47 GETTABLEKS                       R5 R6 K9 ["SetAnimationData"]
       49 MOVE                             R6 R3
       50 CALL                             R5 1 0
       51 GETTABLEKS                       R6 R0 K8 ["props"]
       53 GETTABLEKS                       R5 R6 K10 ["StepAnimation"]
       55 GETTABLEKS                       R7 R0 K8 ["props"]
       57 GETTABLEKS                       R6 R7 K11 ["Playhead"]
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
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R2 R3 K8 ["clearTrackSequences"]
       40 GETTABLEKS                       R3 R0 K7 ["sourceData"]
       42 CALL                             R2 1 1
       43 JUMPIFNOT                        R2 ; [+16]
       44 GETTABLEKS                       R3 R0 K0 ["props"]
       46 GETTABLEKS                       R2 R3 K9 ["SetAnimationData"]
       48 GETTABLEKS                       R3 R0 K7 ["sourceData"]
       50 CALL                             R2 1 0
       51 GETTABLEKS                       R3 R0 K0 ["props"]
       53 GETTABLEKS                       R2 R3 K10 ["StepAnimation"]
       55 GETTABLEKS                       R4 R0 K0 ["props"]
       57 GETTABLEKS                       R3 R4 K11 ["Playhead"]
       59 CALL                             R2 1 0
       60 GETTABLEKS                       R5 R0 K7 ["sourceData"]
       62 GETTABLEKS                       R2 R5 K12 ["Instances"]
       64 LOADNIL                          R3
       65 LOADNIL                          R4
       66 FORGPREP                         R2
       67 GETTABLEKS                       R7 R6 K1 ["Tracks"]
       69 LOADNIL                          R8
       70 LOADNIL                          R9
       71 FORGPREP                         R7
       72 GETUPVAL                         R13 3
       73 GETTABLEKS                       R12 R13 K13 ["traverseTracks"]
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
       93 DUPTABLE                         R5 K21 [{"initialKeyframes", "keyframes", "ticks", "hasMoved"}]
       94 LENGTH                           R6 R2
       95 SETTABLEKS                       R6 R5 K17 ["initialKeyframes"]
       97 LENGTH                           R6 R2
       98 SETTABLEKS                       R6 R5 K18 ["keyframes"]
      100 SETTABLEKS                       R2 R5 K19 ["ticks"]
      102 LOADB                            R6 0
      103 SETTABLEKS                       R6 R5 K20 ["hasMoved"]
      105 NAMECALL                         R3 R0 K22 ["setState"]
      107 CALL                             R3 2 0
      108 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["keepChanges"]
        2 JUMPIF                           R1 ; [+7]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R2 K2 ["UpdateAnimationData"]
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
       22 GETTABLEKS                       R2 R0 K1 ["props"]
       24 GETTABLEKS                       R1 R2 K6 ["SetReadOnly"]
       26 LOADB                            R2 0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Localization"]
        8 GETTABLEKS                       R3 R1 K3 ["dialogTheme"]
       10 GETTABLEKS                       R5 R0 K4 ["state"]
       12 GETTABLEKS                       R4 R5 K5 ["keyframes"]
       14 GETTABLEKS                       R6 R0 K4 ["state"]
       16 GETTABLEKS                       R5 R6 K6 ["ticks"]
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
       62 DUPTABLE                         R11 K22 [{"Key", "Text", "Style"}]
       63 LOADB                            R12 0
       64 SETTABLEKS                       R12 R11 K19 ["Key"]
       66 LOADK                            R14 K23 ["Dialog"]
       67 LOADK                            R15 K24 ["Cancel"]
       68 NAMECALL                         R12 R2 K14 ["getText"]
       70 CALL                             R12 3 1
       71 SETTABLEKS                       R12 R11 K20 ["Text"]
       73 LOADK                            R12 K25 ["Round"]
       74 SETTABLEKS                       R12 R11 K21 ["Style"]
       76 DUPTABLE                         R12 K22 [{"Key", "Text", "Style"}]
       77 LOADB                            R13 1
       78 SETTABLEKS                       R13 R12 K19 ["Key"]
       80 LOADK                            R15 K23 ["Dialog"]
       81 LOADK                            R16 K26 ["Ok"]
       82 NAMECALL                         R13 R2 K14 ["getText"]
       84 CALL                             R13 3 1
       85 SETTABLEKS                       R13 R12 K20 ["Text"]
       87 LOADK                            R13 K27 ["RoundPrimary"]
       88 SETTABLEKS                       R13 R12 K21 ["Style"]
       90 SETLIST                          R10 R11 2 [1]
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R11 R12 K28 ["createElement"]
       95 GETUPVAL                         R12 1
       96 DUPTABLE                         R13 K37 [{"MinContentSize", "Size", "TextSize", "Resizable", "Buttons", "OnButtonPressed", "OnClose", "Title"}]
       97 GETIMPORT                        R14 K40 [Vector2.new]
       99 LOADN                            R15 144
      100 LOADN                            R16 100
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K29 ["MinContentSize"]
      104 GETIMPORT                        R14 K40 [Vector2.new]
      106 LOADN                            R15 144
      107 LOADN                            R16 100
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K30 ["Size"]
      111 GETTABLEKS                       R14 R3 K41 ["textSize"]
      113 SETTABLEKS                       R14 R13 K31 ["TextSize"]
      115 LOADB                            R14 0
      116 SETTABLEKS                       R14 R13 K32 ["Resizable"]
      118 SETTABLEKS                       R10 R13 K33 ["Buttons"]
      120 GETTABLEKS                       R14 R0 K42 ["onClose"]
      122 SETTABLEKS                       R14 R13 K34 ["OnButtonPressed"]
      124 GETTABLEKS                       R14 R0 K42 ["onClose"]
      126 SETTABLEKS                       R14 R13 K35 ["OnClose"]
      128 LOADK                            R16 K36 ["Title"]
      129 LOADK                            R17 K12 ["OptimizeKeyframes"]
      130 NAMECALL                         R14 R2 K14 ["getText"]
      132 CALL                             R14 3 1
      133 SETTABLEKS                       R14 R13 K36 ["Title"]
      135 DUPTABLE                         R14 K46 [{"Layout", "KeyframePane", "Slider"}]
      136 GETUPVAL                         R16 0
      137 GETTABLEKS                       R15 R16 K28 ["createElement"]
      139 LOADK                            R16 K47 ["UIListLayout"]
      140 DUPTABLE                         R17 K52 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
      141 GETIMPORT                        R18 K55 [Enum.FillDirection.Vertical]
      143 SETTABLEKS                       R18 R17 K48 ["FillDirection"]
      145 GETIMPORT                        R18 K57 [Enum.HorizontalAlignment.Left]
      147 SETTABLEKS                       R18 R17 K49 ["HorizontalAlignment"]
      149 GETIMPORT                        R18 K59 [Enum.SortOrder.LayoutOrder]
      151 SETTABLEKS                       R18 R17 K50 ["SortOrder"]
      153 GETIMPORT                        R18 K61 [Enum.VerticalAlignment.Top]
      155 SETTABLEKS                       R18 R17 K51 ["VerticalAlignment"]
      157 CALL                             R15 2 1
      158 SETTABLEKS                       R15 R14 K43 ["Layout"]
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R15 R16 K28 ["createElement"]
      163 GETUPVAL                         R16 2
      164 DUPTABLE                         R17 K65 [{"AutomaticSize", "Layout", "Padding", "Spacing", "LayoutOrder"}]
      165 GETIMPORT                        R18 K67 [Enum.AutomaticSize.Y]
      167 SETTABLEKS                       R18 R17 K62 ["AutomaticSize"]
      169 GETIMPORT                        R18 K55 [Enum.FillDirection.Vertical]
      171 SETTABLEKS                       R18 R17 K43 ["Layout"]
      173 LOADN                            R18 10
      174 SETTABLEKS                       R18 R17 K63 ["Padding"]
      176 LOADN                            R18 15
      177 SETTABLEKS                       R18 R17 K64 ["Spacing"]
      179 LOADN                            R18 1
      180 SETTABLEKS                       R18 R17 K58 ["LayoutOrder"]
      182 DUPTABLE                         R18 K69 [{"KeyframesText"}]
      183 GETUPVAL                         R20 0
      184 GETTABLEKS                       R19 R20 K28 ["createElement"]
      186 GETUPVAL                         R20 3
      187 DUPTABLE                         R21 K74 [{"AutomaticSize", "TextXAlignment", "Text", "TextColor3", "BackgroundTransparency", "TextWrapped"}]
      188 GETIMPORT                        R22 K76 [Enum.AutomaticSize.XY]
      190 SETTABLEKS                       R22 R21 K62 ["AutomaticSize"]
      192 GETIMPORT                        R22 K77 [Enum.TextXAlignment.Left]
      194 SETTABLEKS                       R22 R21 K70 ["TextXAlignment"]
      196 SETTABLEKS                       R9 R21 K20 ["Text"]
      198 GETTABLEKS                       R22 R1 K78 ["TextColor"]
      200 SETTABLEKS                       R22 R21 K71 ["TextColor3"]
      202 LOADN                            R22 1
      203 SETTABLEKS                       R22 R21 K72 ["BackgroundTransparency"]
      205 LOADB                            R22 1
      206 SETTABLEKS                       R22 R21 K73 ["TextWrapped"]
      208 CALL                             R19 2 1
      209 SETTABLEKS                       R19 R18 K68 ["KeyframesText"]
      211 CALL                             R15 3 1
      212 SETTABLEKS                       R15 R14 K44 ["KeyframePane"]
      214 GETUPVAL                         R16 0
      215 GETTABLEKS                       R15 R16 K28 ["createElement"]
      217 GETUPVAL                         R16 4
      218 DUPTABLE                         R17 K84 [{"Size", "Min", "Max", "Value", "Disabled", "OnValueChanged", "LayoutOrder"}]
      219 GETIMPORT                        R18 K86 [UDim2.new]
      221 LOADN                            R19 1
      222 LOADN                            R20 0
      223 LOADN                            R21 0
      224 LOADN                            R22 30
      225 CALL                             R18 4 1
      226 SETTABLEKS                       R18 R17 K30 ["Size"]
      228 LOADN                            R18 2
      229 SETTABLEKS                       R18 R17 K79 ["Min"]
      231 SETTABLEKS                       R6 R17 K80 ["Max"]
      233 SETTABLEKS                       R7 R17 K81 ["Value"]
      235 NOT                              R18 R8
      236 SETTABLEKS                       R18 R17 K82 ["Disabled"]
      238 GETTABLEKS                       R18 R0 K87 ["onSliderChanged"]
      240 SETTABLEKS                       R18 R17 K83 ["OnValueChanged"]
      242 LOADN                            R18 2
      243 SETTABLEKS                       R18 R17 K58 ["LayoutOrder"]
      245 CALL                             R15 2 1
      246 SETTABLEKS                       R15 R14 K45 ["Slider"]
      248 CALL                             R11 3 -1
      249 RETURN                           R11 -1

PROTO_13:
        0 DUPTABLE                         R1 K4 [{"AnimationData", "Tracks", "Playhead", "RootInstance"}]
        1 GETTABLEKS                       R2 R0 K0 ["AnimationData"]
        3 SETTABLEKS                       R2 R1 K0 ["AnimationData"]
        5 GETTABLEKS                       R3 R0 K5 ["Status"]
        7 GETTABLEKS                       R2 R3 K1 ["Tracks"]
        9 SETTABLEKS                       R2 R1 K1 ["Tracks"]
       11 GETTABLEKS                       R3 R0 K5 ["Status"]
       13 GETTABLEKS                       R2 R3 K2 ["Playhead"]
       15 SETTABLEKS                       R2 R1 K2 ["Playhead"]
       17 GETTABLEKS                       R3 R0 K5 ["Status"]
       19 GETTABLEKS                       R2 R3 K3 ["RootInstance"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Src"]
       39 GETTABLEKS                       R7 R8 K12 ["Actions"]
       41 GETTABLEKS                       R6 R7 K13 ["SetAnimationData"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K11 ["Src"]
       48 GETTABLEKS                       R8 R9 K12 ["Actions"]
       50 GETTABLEKS                       R7 R8 K14 ["SetReadOnly"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K11 ["Src"]
       57 GETTABLEKS                       R9 R10 K12 ["Actions"]
       59 GETTABLEKS                       R8 R9 K15 ["SetSelectedKeyframes"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R12 R0 K11 ["Src"]
       66 GETTABLEKS                       R11 R12 K16 ["Thunks"]
       68 GETTABLEKS                       R10 R11 K17 ["History"]
       70 GETTABLEKS                       R9 R10 K18 ["AddWaypoint"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R13 R0 K11 ["Src"]
       77 GETTABLEKS                       R12 R13 K16 ["Thunks"]
       79 GETTABLEKS                       R11 R12 K19 ["Playback"]
       81 GETTABLEKS                       R10 R11 K20 ["StepAnimation"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K11 ["Src"]
       88 GETTABLEKS                       R12 R13 K16 ["Thunks"]
       90 GETTABLEKS                       R11 R12 K21 ["UpdateAnimationData"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R14 R0 K11 ["Src"]
       97 GETTABLEKS                       R13 R14 K22 ["Util"]
       99 GETTABLEKS                       R12 R13 K23 ["AnimationData"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R15 R0 K11 ["Src"]
      106 GETTABLEKS                       R14 R15 K22 ["Util"]
      108 GETTABLEKS                       R13 R14 K24 ["Constants"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R16 R0 K11 ["Src"]
      115 GETTABLEKS                       R15 R16 K22 ["Util"]
      117 GETTABLEKS                       R14 R15 K25 ["deepCopy"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R17 R0 K11 ["Src"]
      124 GETTABLEKS                       R16 R17 K22 ["Util"]
      126 GETTABLEKS                       R15 R16 K26 ["isEmpty"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R18 R0 K11 ["Src"]
      133 GETTABLEKS                       R17 R18 K22 ["Util"]
      135 GETTABLEKS                       R16 R17 K27 ["KeyframeUtils"]
      137 CALL                             R15 1 1
      138 GETIMPORT                        R16 K5 [require]
      140 GETTABLEKS                       R19 R0 K11 ["Src"]
      142 GETTABLEKS                       R18 R19 K22 ["Util"]
      144 GETTABLEKS                       R17 R18 K28 ["PathUtils"]
      146 CALL                             R16 1 1
      147 GETIMPORT                        R17 K5 [require]
      149 GETTABLEKS                       R20 R0 K11 ["Src"]
      151 GETTABLEKS                       R19 R20 K22 ["Util"]
      153 GETTABLEKS                       R18 R19 K29 ["RigInfo"]
      155 CALL                             R17 1 1
      156 GETIMPORT                        R18 K5 [require]
      158 GETTABLEKS                       R21 R0 K11 ["Src"]
      160 GETTABLEKS                       R20 R21 K22 ["Util"]
      162 GETTABLEKS                       R19 R20 K30 ["TrackUtils"]
      164 CALL                             R18 1 1
      165 GETIMPORT                        R19 K5 [require]
      167 GETTABLEKS                       R23 R0 K11 ["Src"]
      169 GETTABLEKS                       R22 R23 K22 ["Util"]
      171 GETTABLEKS                       R21 R22 K31 ["KeyframeReduction"]
      173 GETTABLEKS                       R20 R21 K32 ["VisvalingamWhyatt"]
      175 CALL                             R19 1 1
      176 GETTABLEKS                       R20 R2 K33 ["ContextServices"]
      178 GETTABLEKS                       R21 R20 K34 ["withContext"]
      180 GETTABLEKS                       R22 R2 K35 ["UI"]
      182 GETTABLEKS                       R23 R22 K36 ["Pane"]
      184 GETTABLEKS                       R24 R22 K37 ["Slider"]
      186 GETTABLEKS                       R25 R22 K38 ["TextLabel"]
      188 GETTABLEKS                       R26 R22 K39 ["StyledDialog"]
      190 GETIMPORT                        R27 K5 [require]
      192 GETTABLEKS                       R29 R0 K11 ["Src"]
      194 GETTABLEKS                       R28 R29 K40 ["Types"]
      196 CALL                             R27 1 1
      197 GETTABLEKS                       R28 R3 K41 ["PureComponent"]
      199 LOADK                            R30 K42 ["ReduceKeyframesDialog"]
      200 NAMECALL                         R28 R28 K43 ["extend"]
      202 CALL                             R28 2 1
      203 DUPCLOSURE                       R29 K44 [PROTO_2]
      204 CAPTURE                          VAL R11
      205 SETTABLEKS                       R29 R28 K45 ["init"]
      207 DUPCLOSURE                       R29 K46 [PROTO_3]
      208 CAPTURE                          VAL R17
      209 DUPCLOSURE                       R30 K47 [PROTO_4]
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R30
      212 DUPCLOSURE                       R31 K48 [PROTO_5]
      213 DUPCLOSURE                       R32 K49 [PROTO_6]
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R29
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R30
      221 CAPTURE                          VAL R19
      222 SETTABLEKS                       R32 R28 K50 ["calculateVisvalingamWhyatt"]
      224 DUPCLOSURE                       R32 K51 [PROTO_8]
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R11
      228 SETTABLEKS                       R32 R28 K52 ["previewVisvalingamWhyatt"]
      230 DUPCLOSURE                       R32 K53 [PROTO_10]
      231 CAPTURE                          VAL R14
      232 CAPTURE                          VAL R13
      233 CAPTURE                          VAL R11
      234 CAPTURE                          VAL R18
      235 SETTABLEKS                       R32 R28 K54 ["didMount"]
      237 DUPCLOSURE                       R32 K55 [PROTO_11]
      238 SETTABLEKS                       R32 R28 K56 ["willUnmount"]
      240 DUPCLOSURE                       R32 K57 [PROTO_12]
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R23
      244 CAPTURE                          VAL R25
      245 CAPTURE                          VAL R24
      246 SETTABLEKS                       R32 R28 K58 ["render"]
      248 DUPCLOSURE                       R32 K59 [PROTO_13]
      249 DUPCLOSURE                       R33 K60 [PROTO_20]
      250 CAPTURE                          VAL R8
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R6
      253 CAPTURE                          VAL R7
      254 CAPTURE                          VAL R9
      255 CAPTURE                          VAL R10
      256 MOVE                             R34 R21
      257 DUPTABLE                         R35 K65 [{"Analytics", "Localization", "Plugin", "Stylizer"}]
      258 GETTABLEKS                       R36 R20 K61 ["Analytics"]
      260 SETTABLEKS                       R36 R35 K61 ["Analytics"]
      262 GETTABLEKS                       R36 R20 K62 ["Localization"]
      264 SETTABLEKS                       R36 R35 K62 ["Localization"]
      266 GETTABLEKS                       R36 R20 K63 ["Plugin"]
      268 SETTABLEKS                       R36 R35 K63 ["Plugin"]
      270 GETTABLEKS                       R36 R20 K64 ["Stylizer"]
      272 SETTABLEKS                       R36 R35 K64 ["Stylizer"]
      274 CALL                             R34 1 1
      275 MOVE                             R35 R28
      276 CALL                             R34 1 1
      277 MOVE                             R28 R34
      278 GETTABLEKS                       R34 R4 K66 ["connect"]
      280 MOVE                             R35 R32
      281 MOVE                             R36 R33
      282 CALL                             R34 2 1
      283 MOVE                             R35 R28
      284 CALL                             R34 1 -1
      285 RETURN                           R34 -1
