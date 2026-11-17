PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Selection"]
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETTABLEKS                       R2 R1 K1 ["Keyframes"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R1 K1 ["Keyframes"]
        9 CALL                             R2 1 1
       10 JUMPIF                           R2 ; [+3]
       11 GETTABLEKS                       R2 R1 K2 ["Data"]
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R1 K2 ["Data"]
       17 GETUPVAL                         R4 1
       18 GETTABLE                         R2 R3 R4
       19 JUMPIF                           R2 ; [+24]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K3 ["getSlopes"]
       23 MOVE                             R3 R1
       24 GETUPVAL                         R4 1
       25 CALL                             R2 2 1
       26 DUPTABLE                         R3 K6 [{"Value", "LeftSlope"}]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K7 ["getValue"]
       30 MOVE                             R5 R1
       31 GETUPVAL                         R6 1
       32 CALL                             R4 2 1
       33 SETTABLEKS                       R4 R3 K4 ["Value"]
       35 SETTABLEKS                       R2 R3 K5 ["LeftSlope"]
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R4 R4 K8 ["addKeyframe"]
       40 MOVE                             R5 R1
       41 GETUPVAL                         R6 1
       42 MOVE                             R7 R3
       43 CALL                             R4 3 0
       44 GETTABLEKS                       R3 R1 K2 ["Data"]
       46 GETUPVAL                         R4 4
       47 GETTABLE                         R2 R3 R4
       48 JUMPIF                           R2 ; [+45]
       49 GETUPVAL                         R2 2
       50 GETTABLEKS                       R2 R2 K3 ["getSlopes"]
       52 MOVE                             R3 R1
       53 GETUPVAL                         R4 4
       54 CALL                             R2 2 2
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K9 ["findNearestKeyframesProperly"]
       58 GETTABLEKS                       R5 R1 K1 ["Keyframes"]
       60 GETUPVAL                         R6 4
       61 CALL                             R4 2 2
       62 JUMPIFNOT                        R5 ; [+9]
       63 GETTABLEKS                       R7 R1 K2 ["Data"]
       65 GETTABLEKS                       R9 R1 K1 ["Keyframes"]
       67 GETTABLE                         R8 R9 R5
       68 GETTABLE                         R6 R7 R8
       69 GETTABLEKS                       R6 R6 K10 ["InterpolationMode"]
       71 JUMP                             ; [+2]
       72 GETIMPORT                        R6 K14 [Enum.KeyInterpolationMode.Cubic]
       74 DUPTABLE                         R7 K16 [{"Value", "RightSlope", "InterpolationMode"}]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K7 ["getValue"]
       78 MOVE                             R9 R1
       79 GETUPVAL                         R10 4
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K4 ["Value"]
       83 SETTABLEKS                       R3 R7 K15 ["RightSlope"]
       85 SETTABLEKS                       R6 R7 K10 ["InterpolationMode"]
       87 GETUPVAL                         R8 3
       88 GETTABLEKS                       R8 R8 K8 ["addKeyframe"]
       90 MOVE                             R9 R1
       91 GETUPVAL                         R10 4
       92 MOVE                             R11 R7
       93 CALL                             R8 3 0
       94 GETIMPORT                        R2 K18 [ipairs]
       96 GETTABLEKS                       R3 R1 K1 ["Keyframes"]
       98 CALL                             R2 1 3
       99 FORGPREP_INEXT                   R2
      100 GETUPVAL                         R7 1
      101 JUMPIFNOTLT                      R7 R6 ; [+8]
      103 GETUPVAL                         R7 4
      104 JUMPIFNOTLT                      R6 R7 ; [+5]
      106 GETTABLEKS                       R7 R1 K2 ["Data"]
      108 LOADNIL                          R8
      109 SETTABLE                         R8 R7 R6
      110 FORGLOOP                         R2 2 [inext] ; [-11]
      112 GETUPVAL                         R2 5
      113 GETTABLEKS                       R2 R2 K19 ["generateCurve"]
      115 GETTABLEKS                       R3 R1 K20 ["Type"]
      117 GETUPVAL                         R4 6
      118 GETUPVAL                         R5 7
      119 GETUPVAL                         R6 1
      120 GETTABLEKS                       R8 R1 K2 ["Data"]
      122 GETUPVAL                         R9 1
      123 GETTABLE                         R7 R8 R9
      124 GETUPVAL                         R8 4
      125 GETTABLEKS                       R10 R1 K2 ["Data"]
      127 GETUPVAL                         R11 4
      128 GETTABLE                         R9 R10 R11
      129 CALL                             R2 7 1
      130 JUMPIFNOT                        R2 ; [+43]
      131 GETUPVAL                         R3 0
      132 MOVE                             R4 R2
      133 CALL                             R3 1 1
      134 JUMPIF                           R3 ; [+39]
      135 GETUPVAL                         R3 8
      136 GETTABLEKS                       R3 R3 K21 ["List"]
      138 GETTABLEKS                       R3 R3 K22 ["join"]
      140 GETUPVAL                         R4 8
      141 GETTABLEKS                       R4 R4 K23 ["Dictionary"]
      143 GETTABLEKS                       R4 R4 K24 ["keys"]
      145 GETTABLEKS                       R5 R1 K2 ["Data"]
      147 CALL                             R4 1 1
      148 GETUPVAL                         R5 8
      149 GETTABLEKS                       R5 R5 K23 ["Dictionary"]
      151 GETTABLEKS                       R5 R5 K24 ["keys"]
      153 MOVE                             R6 R2
      154 CALL                             R5 1 -1
      155 CALL                             R3 -1 1
      156 SETTABLEKS                       R3 R1 K1 ["Keyframes"]
      158 GETIMPORT                        R3 K27 [table.sort]
      160 GETTABLEKS                       R4 R1 K1 ["Keyframes"]
      162 CALL                             R3 1 0
      163 GETUPVAL                         R3 8
      164 GETTABLEKS                       R3 R3 K23 ["Dictionary"]
      166 GETTABLEKS                       R3 R3 K22 ["join"]
      168 GETTABLEKS                       R4 R1 K2 ["Data"]
      170 MOVE                             R5 R2
      171 CALL                             R3 2 1
      172 SETTABLEKS                       R3 R1 K2 ["Data"]
      174 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["SelectedKeyframes"]
        7 GETTABLEKS                       R3 R1 K3 ["AnimationData"]
        9 JUMPIFNOT                        R3 ; [+1]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       15 GETTABLEKS                       R4 R4 K5 ["join"]
       17 NEWTABLE                         R5 0 0
       19 MOVE                             R6 R3
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K4 ["Dictionary"]
       24 GETTABLEKS                       R5 R5 K5 ["join"]
       26 NEWTABLE                         R6 0 0
       28 GETTABLEKS                       R7 R4 K6 ["Instances"]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K6 ["Instances"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R6 R4 K7 ["Events"]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K7 ["Events"]
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K8 ["getSelectionBounds"]
       42 MOVE                             R6 R3
       43 MOVE                             R7 R2
       44 CALL                             R5 2 2
       45 GETUPVAL                         R7 1
       46 MOVE                             R8 R2
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K10 [pairs]
       50 MOVE                             R9 R7
       51 CALL                             R8 1 3
       52 FORGPREP_NEXT                    R8
       53 GETTABLEKS                       R13 R4 K6 ["Instances"]
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R14 R14 K4 ["Dictionary"]
       58 GETTABLEKS                       R14 R14 K5 ["join"]
       60 NEWTABLE                         R15 0 0
       62 GETTABLEKS                       R17 R4 K6 ["Instances"]
       64 GETTABLE                         R16 R17 R11
       65 CALL                             R14 2 1
       66 SETTABLE                         R14 R13 R11
       67 GETTABLEKS                       R14 R4 K6 ["Instances"]
       69 GETTABLE                         R13 R14 R11
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R14 R14 K4 ["Dictionary"]
       73 GETTABLEKS                       R14 R14 K5 ["join"]
       75 NEWTABLE                         R15 0 0
       77 GETTABLEKS                       R17 R4 K6 ["Instances"]
       79 GETTABLE                         R16 R17 R11
       80 GETTABLEKS                       R16 R16 K11 ["Tracks"]
       82 CALL                             R14 2 1
       83 SETTABLEKS                       R14 R13 K11 ["Tracks"]
       85 GETTABLEKS                       R14 R4 K6 ["Instances"]
       87 GETTABLE                         R13 R14 R11
       88 GETIMPORT                        R14 K10 [pairs]
       90 MOVE                             R15 R12
       91 CALL                             R14 1 3
       92 FORGPREP_NEXT                    R14
       93 GETTABLEKS                       R19 R13 K11 ["Tracks"]
       95 GETUPVAL                         R20 1
       96 GETTABLEKS                       R22 R13 K11 ["Tracks"]
       98 GETTABLE                         R21 R22 R17
       99 CALL                             R20 1 1
      100 SETTABLE                         R20 R19 R17
      101 GETTABLEKS                       R20 R13 K11 ["Tracks"]
      103 GETTABLE                         R19 R20 R17
      104 GETUPVAL                         R20 3
      105 GETTABLEKS                       R20 R20 K12 ["traverse"]
      107 MOVE                             R21 R18
      108 MOVE                             R22 R19
      109 NEWCLOSURE                       R23 P0
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          VAL R5
      112 CAPTURE                          UPVAL U5
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          VAL R6
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          UPVAL U7
      117 CAPTURE                          UPVAL U8
      118 CAPTURE                          UPVAL U0
      119 CALL                             R20 3 0
      120 FORGLOOP                         R14 2 ; [-28]
      122 FORGLOOP                         R8 2 ; [-70]
      124 GETUPVAL                         R10 9
      125 MOVE                             R11 R4
      126 CALL                             R10 1 -1
      127 NAMECALL                         R8 R0 K13 ["dispatch"]
      129 CALL                             R8 -1 0
      130 GETUPVAL                         R10 10
      131 NEWTABLE                         R11 0 0
      133 CALL                             R10 1 -1
      134 NAMECALL                         R8 R0 K13 ["dispatch"]
      136 CALL                             R8 -1 0
      137 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["deepCopy"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["isEmpty"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["AnimationData"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Actions"]
       47 GETTABLEKS                       R6 R6 K14 ["SetSelectedKeyframes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Thunks"]
       56 GETTABLEKS                       R7 R7 K16 ["UpdateAnimationData"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K9 ["Util"]
       65 GETTABLEKS                       R8 R8 K17 ["KeyframeUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R9 K9 ["Util"]
       74 GETTABLEKS                       R9 R9 K18 ["SelectionUtils"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K8 ["Src"]
       81 GETTABLEKS                       R10 R10 K9 ["Util"]
       83 GETTABLEKS                       R10 R10 K19 ["CurveUtils"]
       85 CALL                             R9 1 1
       86 DUPCLOSURE                       R10 K20 [PROTO_2]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R5
       96 RETURN                           R10 1
