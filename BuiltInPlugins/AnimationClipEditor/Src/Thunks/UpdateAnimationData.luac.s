PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["Metadata"]
        9 JUMPIF                           R2 ; [+16]
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R5 0
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R0 K2 ["dispatch"]
       15 CALL                             R2 -1 0
       16 GETUPVAL                         R2 2
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+6]
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R5 0
       21 CALL                             R4 1 -1
       22 NAMECALL                         R2 R0 K2 ["dispatch"]
       24 CALL                             R2 -1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R3 R1 K3 ["Status"]
       28 GETTABLEKS                       R2 R3 K4 ["HorizontalScroll"]
       30 GETTABLEKS                       R4 R1 K3 ["Status"]
       32 GETTABLEKS                       R3 R4 K5 ["HorizontalZoom"]
       34 GETTABLEKS                       R5 R1 K3 ["Status"]
       36 GETTABLEKS                       R4 R5 K6 ["Playhead"]
       38 GETTABLEKS                       R6 R1 K3 ["Status"]
       40 GETTABLEKS                       R5 R6 K7 ["EditingLength"]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K1 ["Metadata"]
       45 GETTABLEKS                       R6 R7 K8 ["StartTick"]
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R7 R8 K9 ["getZoomRange"]
       50 GETUPVAL                         R8 0
       51 MOVE                             R9 R2
       52 MOVE                             R10 R3
       53 MOVE                             R11 R5
       54 CALL                             R7 4 1
       55 GETUPVAL                         R9 5
       56 GETTABLEKS                       R8 R9 K10 ["removeExtraKeyframes"]
       58 GETUPVAL                         R9 0
       59 CALL                             R8 1 1
       60 JUMPIFNOT                        R8 ; [+7]
       61 GETUPVAL                         R11 6
       62 LOADK                            R12 K11 ["ClippedWarning"]
       63 LOADB                            R13 1
       64 CALL                             R11 2 -1
       65 NAMECALL                         R9 R0 K2 ["dispatch"]
       67 CALL                             R9 -1 0
       68 GETUPVAL                         R10 5
       69 GETTABLEKS                       R9 R10 K12 ["setEndTick"]
       71 GETUPVAL                         R10 0
       72 CALL                             R9 1 0
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R10 R11 K1 ["Metadata"]
       76 GETTABLEKS                       R9 R10 K13 ["EndTick"]
       78 GETIMPORT                        R10 K15 [ipairs]
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R13 R14 K16 ["Events"]
       83 GETTABLEKS                       R11 R13 K17 ["Keyframes"]
       85 CALL                             R10 1 3
       86 FORGPREP_INEXT                   R10
       87 JUMPIFNOTLT                      R9 R14 ; [+7]
       89 GETUPVAL                         R16 0
       90 GETTABLEKS                       R15 R16 K1 ["Metadata"]
       92 SETTABLEKS                       R14 R15 K13 ["EndTick"]
       94 MOVE                             R9 R14
       95 FORGLOOP                         R10 2 [inext] ; [-9]
       97 GETUPVAL                         R11 5
       98 GETTABLEKS                       R10 R11 K18 ["validateKeyframeNames"]
      100 GETUPVAL                         R11 0
      101 CALL                             R10 1 0
      102 GETUPVAL                         R12 1
      103 GETUPVAL                         R13 0
      104 CALL                             R12 1 -1
      105 NAMECALL                         R10 R0 K2 ["dispatch"]
      107 CALL                             R10 -1 0
      108 GETUPVAL                         R10 2
      109 CALL                             R10 0 1
      110 JUMPIFNOT                        R10 ; [+6]
      111 GETUPVAL                         R12 3
      112 GETUPVAL                         R13 0
      113 CALL                             R12 1 -1
      114 NAMECALL                         R10 R0 K2 ["dispatch"]
      116 CALL                             R10 -1 0
      117 JUMPIFEQ                         R6 R9 ; [+10]
      119 FASTCALL3                        MATH_CLAMP R4 R6 R9
      121 MOVE                             R11 R4
      122 MOVE                             R12 R6
      123 MOVE                             R13 R9
      124 GETIMPORT                        R10 K21 [math.clamp]
      126 CALL                             R10 3 1
      127 MOVE                             R4 R10
      128 GETUPVAL                         R12 7
      129 MOVE                             R13 R4
      130 CALL                             R12 1 -1
      131 NAMECALL                         R10 R0 K2 ["dispatch"]
      133 CALL                             R10 -1 0
      134 SUB                              R10 R9 R6
      135 JUMPIFNOTLT                      R5 R10 ; [+50]
      137 GETUPVAL                         R13 8
      138 MOVE                             R14 R10
      139 CALL                             R13 1 -1
      140 NAMECALL                         R11 R0 K2 ["dispatch"]
      142 CALL                             R11 -1 0
      143 GETUPVAL                         R14 9
      144 GETTABLEKS                       R13 R14 K22 ["LENGTH_PADDING"]
      146 MUL                              R12 R10 R13
      147 FASTCALL1                        MATH_CEIL R12 ; [+2]
      148 GETIMPORT                        R11 K24 [math.ceil]
      150 CALL                             R11 1 1
      151 GETTABLEKS                       R13 R7 K25 ["End"]
      153 GETTABLEKS                       R14 R7 K26 ["Start"]
      155 SUB                              R12 R13 R14
      156 LOADN                            R2 0
      157 JUMPIFEQ                         R11 R12 ; [+13]
      159 GETTABLEKS                       R16 R7 K26 ["Start"]
      161 SUB                              R15 R16 R6
      162 SUB                              R16 R11 R12
      163 DIV                              R14 R15 R16
      164 LOADN                            R15 0
      165 LOADN                            R16 1
      166 FASTCALL                         MATH_CLAMP ; [+2]
      167 GETIMPORT                        R13 K21 [math.clamp]
      169 CALL                             R13 3 1
      170 MOVE                             R2 R13
      171 DIV                              R14 R12 R11
      172 LOADN                            R15 0
      173 LOADN                            R16 1
      174 FASTCALL                         MATH_CLAMP ; [+2]
      175 GETIMPORT                        R13 K21 [math.clamp]
      177 CALL                             R13 3 1
      178 SUBRK                            R3 R27 K13 ["EndTick"]
      179 GETUPVAL                         R15 10
      180 MOVE                             R16 R2
      181 MOVE                             R17 R3
      182 CALL                             R15 2 -1
      183 NAMECALL                         R13 R0 K2 ["dispatch"]
      185 CALL                             R13 -1 0
      186 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
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
       11 CAPTURE                          UPVAL U9
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetAnimationData"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetHorizontalScrollZoom"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetNotification"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R6 R0 K4 ["Src"]
       28 GETTABLEKS                       R5 R6 K11 ["Thunks"]
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R8 R5 K12 ["Playback"]
       34 GETTABLEKS                       R7 R8 K13 ["StepAnimation"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R5 K14 ["UpdateEditingLength"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K7 [require]
       44 GETTABLEKS                       R9 R5 K15 ["UpdateEngineAnimationTrack"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R10 R0 K4 ["Src"]
       49 GETTABLEKS                       R9 R10 K16 ["Util"]
       51 GETIMPORT                        R10 K7 [require]
       53 GETTABLEKS                       R11 R9 K17 ["AnimationData"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K7 [require]
       58 GETTABLEKS                       R12 R9 K18 ["Constants"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K7 [require]
       63 GETTABLEKS                       R13 R9 K19 ["TrackUtils"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K7 [require]
       68 GETTABLEKS                       R15 R0 K20 ["LuaFlags"]
       70 GETTABLEKS                       R14 R15 K21 ["GetFFlagEngineAnimator"]
       72 CALL                             R13 1 1
       73 DUPCLOSURE                       R14 K22 [PROTO_1]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R3
       84 RETURN                           R14 1
