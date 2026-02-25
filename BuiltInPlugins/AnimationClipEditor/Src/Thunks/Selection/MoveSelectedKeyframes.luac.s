PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Selection"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["Dictionary"]
        7 GETTABLEKS                       R2 R3 K2 ["keys"]
        9 GETTABLEKS                       R3 R0 K0 ["Selection"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K5 [table.sort]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 GETUPVAL                         R6 1
       20 JUMPIFNOT                        R6 ; [+4]
       21 LENGTH                           R3 R2
       22 LOADN                            R4 1
       23 LOADN                            R5 255
       24 JUMP                             ; [+3]
       25 LOADN                            R3 1
       26 LENGTH                           R4 R2
       27 LOADN                            R5 1
       28 MOVE                             R8 R3
       29 MOVE                             R6 R4
       30 MOVE                             R7 R5
       31 FORNPREP                         R6
       32 GETTABLE                         R9 R2 R8
       33 GETUPVAL                         R11 2
       34 GETUPVAL                         R13 3
       35 SUB                              R12 R9 R13
       36 ADD                              R10 R11 R12
       37 GETUPVAL                         R11 4
       38 GETUPVAL                         R14 5
       39 GETTABLEKS                       R13 R14 K6 ["SNAP_MODES"]
       41 GETTABLEKS                       R12 R13 K7 ["None"]
       43 JUMPIFEQ                         R11 R12 ; [+8]
       45 GETUPVAL                         R12 6
       46 GETTABLEKS                       R11 R12 K8 ["getNearestFrame"]
       48 MOVE                             R12 R10
       49 GETUPVAL                         R13 7
       50 CALL                             R11 2 1
       51 MOVE                             R10 R11
       52 GETUPVAL                         R14 8
       53 SUB                              R13 R9 R14
       54 GETUPVAL                         R16 5
       55 GETTABLEKS                       R15 R16 K9 ["MAX_ANIMATION_LENGTH"]
       57 GETUPVAL                         R17 9
       58 SUB                              R16 R17 R9
       59 SUB                              R14 R15 R16
       60 FASTCALL3                        MATH_CLAMP R10 R13 R14
       62 MOVE                             R12 R10
       63 GETIMPORT                        R11 K12 [math.clamp]
       65 CALL                             R11 3 1
       66 MOVE                             R10 R11
       67 GETTABLEKS                       R11 R1 K13 ["Keyframes"]
       69 JUMPIFNOT                        R11 ; [+69]
       70 GETUPVAL                         R12 10
       71 GETTABLEKS                       R11 R12 K14 ["moveKeyframe"]
       73 MOVE                             R12 R1
       74 MOVE                             R13 R9
       75 MOVE                             R14 R10
       76 CALL                             R11 3 0
       77 GETUPVAL                         R12 10
       78 GETTABLEKS                       R11 R12 K15 ["moveNamedKeyframe"]
       80 GETUPVAL                         R12 11
       81 MOVE                             R13 R9
       82 MOVE                             R14 R10
       83 CALL                             R11 3 0
       84 GETTABLEKS                       R11 R1 K16 ["Type"]
       86 GETUPVAL                         R14 5
       87 GETTABLEKS                       R13 R14 K17 ["TRACK_TYPES"]
       89 GETTABLEKS                       R12 R13 K18 ["Quaternion"]
       91 JUMPIFEQ                         R11 R12 ; [+47]
       93 GETTABLEKS                       R11 R1 K19 ["Data"]
       95 JUMPIFNOT                        R11 ; [+43]
       96 GETTABLEKS                       R12 R1 K19 ["Data"]
       98 GETTABLE                         R11 R12 R10
       99 JUMPIFNOT                        R11 ; [+39]
      100 GETUPVAL                         R11 12
      101 JUMPIFNOT                        R11 ; [+37]
      102 GETUPVAL                         R11 13
      103 JUMPIFNOT                        R11 ; [+35]
      104 GETTABLEKS                       R11 R1 K16 ["Type"]
      106 GETUPVAL                         R14 5
      107 GETTABLEKS                       R13 R14 K17 ["TRACK_TYPES"]
      109 GETTABLEKS                       R12 R13 K20 ["Facs"]
      111 JUMPIFNOTEQ                      R11 R12 ; [+9]
      113 GETUPVAL                         R12 13
      114 LOADN                            R13 0
      115 LOADN                            R14 1
      116 FASTCALL                         MATH_CLAMP ; [+2]
      117 GETIMPORT                        R11 K12 [math.clamp]
      119 CALL                             R11 3 1
      120 SETUPVAL                         R11 13
      121 GETUPVAL                         R12 10
      122 GETTABLEKS                       R11 R12 K21 ["setKeyframeData"]
      124 MOVE                             R12 R1
      125 MOVE                             R13 R10
      126 DUPTABLE                         R14 K23 [{"Value"}]
      127 GETTABLEKS                       R19 R1 K19 ["Data"]
      129 GETTABLE                         R18 R19 R10
      130 GETTABLEKS                       R17 R18 K22 ["Value"]
      132 GETUPVAL                         R18 12
      133 SUB                              R16 R17 R18
      134 GETUPVAL                         R17 13
      135 ADD                              R15 R16 R17
      136 SETTABLEKS                       R15 R14 K22 ["Value"]
      138 CALL                             R11 3 0
      139 GETTABLEKS                       R11 R0 K0 ["Selection"]
      141 LOADNIL                          R12
      142 SETTABLE                         R12 R11 R9
      143 GETTABLEKS                       R11 R0 K0 ["Selection"]
      145 LOADB                            R12 1
      146 SETTABLE                         R12 R11 R10
      147 FORNLOOP                         R6
      148 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 0
        4 JUMPIFNOT                        R3 ; [+4]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["selectedKeyframes"]
        8 JUMPIF                           R2 ; [+4]
        9 GETTABLEKS                       R3 R1 K2 ["Status"]
       11 GETTABLEKS                       R2 R3 K3 ["SelectedKeyframes"]
       13 GETUPVAL                         R4 0
       14 JUMPIFNOT                        R4 ; [+4]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["animationData"]
       18 JUMPIF                           R3 ; [+2]
       19 GETTABLEKS                       R3 R1 K5 ["AnimationData"]
       21 GETTABLEKS                       R5 R1 K2 ["Status"]
       23 GETTABLEKS                       R4 R5 K6 ["FrameRate"]
       25 GETTABLEKS                       R6 R1 K2 ["Status"]
       27 GETTABLEKS                       R5 R6 K7 ["SnapMode"]
       29 JUMPIFNOT                        R3 ; [+1]
       30 JUMPIF                           R2 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R7 R8 K8 ["Dictionary"]
       35 GETTABLEKS                       R6 R7 K9 ["join"]
       37 NEWTABLE                         R7 0 0
       39 MOVE                             R8 R3
       40 CALL                             R6 2 1
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K8 ["Dictionary"]
       44 GETTABLEKS                       R7 R8 K9 ["join"]
       46 NEWTABLE                         R8 0 0
       48 GETTABLEKS                       R9 R6 K10 ["Instances"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K10 ["Instances"]
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R8 R6 K11 ["Events"]
       56 CALL                             R7 1 1
       57 SETTABLEKS                       R7 R6 K11 ["Events"]
       59 GETUPVAL                         R8 3
       60 GETUPVAL                         R9 4
       61 JUMPIFLT                         R9 R8 ; [+2]
       63 LOADB                            R7 0 +1
       64 LOADB                            R7 1
       65 GETUPVAL                         R9 5
       66 GETTABLEKS                       R8 R9 K12 ["getSelectionBounds"]
       68 MOVE                             R9 R6
       69 MOVE                             R10 R2
       70 CALL                             R8 2 2
       71 GETUPVAL                         R10 2
       72 MOVE                             R11 R2
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K14 [pairs]
       76 MOVE                             R12 R10
       77 CALL                             R11 1 3
       78 FORGPREP_NEXT                    R11
       79 GETTABLEKS                       R16 R6 K10 ["Instances"]
       81 GETUPVAL                         R19 1
       82 GETTABLEKS                       R18 R19 K8 ["Dictionary"]
       84 GETTABLEKS                       R17 R18 K9 ["join"]
       86 NEWTABLE                         R18 0 0
       88 GETTABLEKS                       R20 R6 K10 ["Instances"]
       90 GETTABLE                         R19 R20 R14
       91 CALL                             R17 2 1
       92 SETTABLE                         R17 R16 R14
       93 GETTABLEKS                       R17 R6 K10 ["Instances"]
       95 GETTABLE                         R16 R17 R14
       96 GETUPVAL                         R19 1
       97 GETTABLEKS                       R18 R19 K8 ["Dictionary"]
       99 GETTABLEKS                       R17 R18 K9 ["join"]
      101 NEWTABLE                         R18 0 0
      103 GETTABLEKS                       R21 R6 K10 ["Instances"]
      105 GETTABLE                         R20 R21 R14
      106 GETTABLEKS                       R19 R20 K15 ["Tracks"]
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K15 ["Tracks"]
      111 GETTABLEKS                       R17 R6 K10 ["Instances"]
      113 GETTABLE                         R16 R17 R14
      114 GETIMPORT                        R17 K14 [pairs]
      116 MOVE                             R18 R15
      117 CALL                             R17 1 3
      118 FORGPREP_NEXT                    R17
      119 GETTABLEKS                       R22 R16 K15 ["Tracks"]
      121 GETUPVAL                         R23 2
      122 GETTABLEKS                       R25 R16 K15 ["Tracks"]
      124 GETTABLE                         R24 R25 R20
      125 CALL                             R23 1 1
      126 SETTABLE                         R23 R22 R20
      127 GETTABLEKS                       R23 R16 K15 ["Tracks"]
      129 GETTABLE                         R22 R23 R20
      130 GETUPVAL                         R24 6
      131 GETTABLEKS                       R23 R24 K16 ["traverse"]
      133 MOVE                             R24 R21
      134 MOVE                             R25 R22
      135 NEWCLOSURE                       R26 P0
      136 CAPTURE                          UPVAL U1
      137 CAPTURE                          VAL R7
      138 CAPTURE                          UPVAL U3
      139 CAPTURE                          UPVAL U4
      140 CAPTURE                          VAL R5
      141 CAPTURE                          UPVAL U7
      142 CAPTURE                          UPVAL U8
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R9
      146 CAPTURE                          UPVAL U5
      147 CAPTURE                          VAL R6
      148 CAPTURE                          UPVAL U9
      149 CAPTURE                          UPVAL U10
      150 CALL                             R23 3 0
      151 FORGLOOP                         R17 2 ; [-33]
      153 FORGLOOP                         R11 2 ; [-75]
      155 GETUPVAL                         R13 11
      156 MOVE                             R14 R6
      157 CALL                             R13 1 -1
      158 NAMECALL                         R11 R0 K17 ["dispatch"]
      160 CALL                             R11 -1 0
      161 GETUPVAL                         R13 12
      162 MOVE                             R14 R10
      163 CALL                             R13 1 -1
      164 NAMECALL                         R11 R0 K17 ["dispatch"]
      166 CALL                             R11 -1 0
      167 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R4
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R2
       11 CAPTURE                          REF R3
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CLOSEUPVALS                      R3
       15 RETURN                           R5 1

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
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["deepCopy"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["AnimationData"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Actions"]
       38 GETTABLEKS                       R5 R6 K13 ["SetSelectedKeyframes"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K14 ["Thunks"]
       47 GETTABLEKS                       R6 R7 K15 ["UpdateAnimationData"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R9 K9 ["Util"]
       56 GETTABLEKS                       R7 R8 K16 ["Constants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R10 K9 ["Util"]
       65 GETTABLEKS                       R8 R9 K17 ["KeyframeUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Src"]
       72 GETTABLEKS                       R10 R11 K9 ["Util"]
       74 GETTABLEKS                       R9 R10 K18 ["SelectionUtils"]
       76 CALL                             R8 1 1
       77 DUPCLOSURE                       R9 K19 [PROTO_2]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 RETURN                           R9 1
