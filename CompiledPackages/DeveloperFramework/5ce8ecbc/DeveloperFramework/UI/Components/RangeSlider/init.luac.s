PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["currentlySelectedKnob"]
        4 JUMPIFEQKNIL                     R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["currentlySelectedKnob"]
        9 JUMPIFNOTEQ                      R2 R0 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Max"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["Min"]
       10 SUB                              R0 R1 R2
       11 LOADN                            R3 0
       12 JUMPIFLE                         R3 R0 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       18 LOADK                            R3 K3 ["Range must be >= 0"]
       19 GETIMPORT                        R1 K5 [assert]
       21 CALL                             R1 2 0
       22 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SnapIncrement"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["Min"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["Max"]
       15 LOADN                            R4 0
       16 JUMPIFNOTLT                      R4 R1 ; [+36]
       18 DIV                              R7 R0 R1
       19 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       20 GETIMPORT                        R6 K6 [math.floor]
       22 CALL                             R6 1 1
       23 MUL                              R5 R1 R6
       24 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       26 MOVE                             R6 R2
       27 GETIMPORT                        R4 K8 [math.max]
       29 CALL                             R4 2 1
       30 ADD                              R6 R4 R1
       31 FASTCALL2                        MATH_MIN R6 R3 ; [+4]
       33 MOVE                             R7 R3
       34 GETIMPORT                        R5 K10 [math.min]
       36 CALL                             R5 2 1
       37 SUB                              R8 R4 R0
       38 FASTCALL1                        MATH_ABS R8 ; [+2]
       39 GETIMPORT                        R7 K12 [math.abs]
       41 CALL                             R7 1 1
       42 SUB                              R9 R5 R0
       43 FASTCALL1                        MATH_ABS R9 ; [+2]
       44 GETIMPORT                        R8 K12 [math.abs]
       46 CALL                             R8 1 1
       47 JUMPIFNOTLT                      R7 R8 ; [+3]
       49 MOVE                             R6 R4
       50 JUMPIF                           R6 ; [+1]
       51 MOVE                             R6 R5
       52 RETURN                           R6 1
       53 FASTCALL3                        MATH_CLAMP R0 R2 R3
       55 MOVE                             R5 R0
       56 MOVE                             R6 R2
       57 MOVE                             R7 R3
       58 GETIMPORT                        R4 K14 [math.clamp]
       60 CALL                             R4 3 1
       61 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Layout"]
        5 GETIMPORT                        R3 K5 [Enum.FillDirection.Horizontal]
        7 JUMPIFNOTEQ                      R2 R3 ; [+99]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K6 ["state"]
       12 GETTABLEKS                       R2 R2 K7 ["width"]
       14 JUMPIFNOT                        R2 ; [+26]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["state"]
       18 GETTABLEKS                       R2 R2 K7 ["width"]
       20 GETTABLEKS                       R3 R0 K8 ["AbsoluteSize"]
       22 GETTABLEKS                       R3 R3 K9 ["X"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+16]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K6 ["state"]
       29 GETTABLEKS                       R2 R2 K10 ["rotation"]
       31 JUMPIFNOT                        R2 ; [+9]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K6 ["state"]
       35 GETTABLEKS                       R2 R2 K10 ["rotation"]
       37 GETTABLEKS                       R3 R0 K11 ["AbsoluteRotation"]
       39 JUMPIFEQ                         R2 R3 ; [+45]
       41 GETTABLEKS                       R2 R0 K11 ["AbsoluteRotation"]
       43 FASTCALL1                        MATH_RAD R2 ; [+3]
       44 MOVE                             R4 R2
       45 GETIMPORT                        R3 K14 [math.rad]
       47 CALL                             R3 1 1
       48 GETTABLEKS                       R5 R0 K15 ["AbsolutePosition"]
       50 LOADK                            R7 K16 [0.5]
       51 GETTABLEKS                       R8 R0 K8 ["AbsoluteSize"]
       53 MUL                              R6 R7 R8
       54 ADD                              R4 R5 R6
       55 GETTABLEKS                       R5 R0 K8 ["AbsoluteSize"]
       57 GETTABLEKS                       R5 R5 K9 ["X"]
       59 GETUPVAL                         R6 0
       60 DUPTABLE                         R8 K19 [{"rotation", "width", "centerPoint", "unit"}]
       61 SETTABLEKS                       R2 R8 K10 ["rotation"]
       63 SETTABLEKS                       R5 R8 K7 ["width"]
       65 SETTABLEKS                       R4 R8 K17 ["centerPoint"]
       67 GETIMPORT                        R9 K22 [Vector2.new]
       69 FASTCALL1                        MATH_COS R3 ; [+3]
       70 MOVE                             R11 R3
       71 GETIMPORT                        R10 K24 [math.cos]
       73 CALL                             R10 1 1
       74 FASTCALL1                        MATH_SIN R3 ; [+3]
       75 MOVE                             R12 R3
       76 GETIMPORT                        R11 K26 [math.sin]
       78 CALL                             R11 1 1
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K18 ["unit"]
       82 NAMECALL                         R6 R6 K27 ["setState"]
       84 CALL                             R6 2 0
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K6 ["state"]
       88 GETTABLEKS                       R5 R5 K17 ["centerPoint"]
       90 SUB                              R4 R1 R5
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K6 ["state"]
       94 GETTABLEKS                       R6 R6 K18 ["unit"]
       96 NAMECALL                         R4 R4 K28 ["Dot"]
       98 CALL                             R4 2 1
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R5 R5 K6 ["state"]
      102 GETTABLEKS                       R5 R5 K7 ["width"]
      104 DIV                              R3 R4 R5
      105 ADDK                             R2 R3 K16 [0.5]
      106 RETURN                           R2 1
      107 GETUPVAL                         R2 0
      108 GETTABLEKS                       R2 R2 K6 ["state"]
      110 GETTABLEKS                       R2 R2 K29 ["height"]
      112 JUMPIFNOT                        R2 ; [+26]
      113 GETUPVAL                         R2 0
      114 GETTABLEKS                       R2 R2 K6 ["state"]
      116 GETTABLEKS                       R2 R2 K29 ["height"]
      118 GETTABLEKS                       R3 R0 K8 ["AbsoluteSize"]
      120 GETTABLEKS                       R3 R3 K30 ["Y"]
      122 JUMPIFNOTEQ                      R2 R3 ; [+16]
      124 GETUPVAL                         R2 0
      125 GETTABLEKS                       R2 R2 K6 ["state"]
      127 GETTABLEKS                       R2 R2 K10 ["rotation"]
      129 JUMPIFNOT                        R2 ; [+9]
      130 GETUPVAL                         R2 0
      131 GETTABLEKS                       R2 R2 K6 ["state"]
      133 GETTABLEKS                       R2 R2 K10 ["rotation"]
      135 GETTABLEKS                       R3 R0 K11 ["AbsoluteRotation"]
      137 JUMPIFEQ                         R2 R3 ; [+45]
      139 GETTABLEKS                       R2 R0 K11 ["AbsoluteRotation"]
      141 FASTCALL1                        MATH_RAD R2 ; [+3]
      142 MOVE                             R4 R2
      143 GETIMPORT                        R3 K14 [math.rad]
      145 CALL                             R3 1 1
      146 GETTABLEKS                       R5 R0 K15 ["AbsolutePosition"]
      148 LOADK                            R7 K16 [0.5]
      149 GETTABLEKS                       R8 R0 K8 ["AbsoluteSize"]
      151 MUL                              R6 R7 R8
      152 ADD                              R4 R5 R6
      153 GETTABLEKS                       R5 R0 K8 ["AbsoluteSize"]
      155 GETTABLEKS                       R5 R5 K30 ["Y"]
      157 GETUPVAL                         R6 0
      158 DUPTABLE                         R8 K31 [{"rotation", "height", "centerPoint", "unit"}]
      159 SETTABLEKS                       R2 R8 K10 ["rotation"]
      161 SETTABLEKS                       R5 R8 K29 ["height"]
      163 SETTABLEKS                       R4 R8 K17 ["centerPoint"]
      165 GETIMPORT                        R9 K22 [Vector2.new]
      167 FASTCALL1                        MATH_SIN R3 ; [+3]
      168 MOVE                             R11 R3
      169 GETIMPORT                        R10 K26 [math.sin]
      171 CALL                             R10 1 1
      172 FASTCALL1                        MATH_COS R3 ; [+3]
      173 MOVE                             R12 R3
      174 GETIMPORT                        R11 K24 [math.cos]
      176 CALL                             R11 1 1
      177 CALL                             R9 2 1
      178 SETTABLEKS                       R9 R8 K18 ["unit"]
      180 NAMECALL                         R6 R6 K27 ["setState"]
      182 CALL                             R6 2 0
      183 GETUPVAL                         R5 0
      184 GETTABLEKS                       R5 R5 K6 ["state"]
      186 GETTABLEKS                       R5 R5 K17 ["centerPoint"]
      188 SUB                              R4 R1 R5
      189 GETUPVAL                         R6 0
      190 GETTABLEKS                       R6 R6 K6 ["state"]
      192 GETTABLEKS                       R6 R6 K18 ["unit"]
      194 NAMECALL                         R4 R4 K28 ["Dot"]
      196 CALL                             R4 2 1
      197 GETUPVAL                         R5 0
      198 GETTABLEKS                       R5 R5 K6 ["state"]
      200 GETTABLEKS                       R5 R5 K29 ["height"]
      202 DIV                              R3 R4 R5
      203 ADDK                             R2 R3 K16 [0.5]
      204 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sliderFrameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 LOADN                            R2 0
        6 GETTABLEKS                       R3 R1 K2 ["AbsoluteRotation"]
        8 JUMPIFEQKN                       R3 K3 [0] ; [+42]
       10 GETIMPORT                        R3 K6 [Vector2.new]
       12 GETTABLEKS                       R4 R0 K7 ["Position"]
       14 GETTABLEKS                       R4 R4 K8 ["X"]
       16 GETTABLEKS                       R5 R0 K7 ["Position"]
       18 GETTABLEKS                       R5 R5 K9 ["Y"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K10 ["GetPercentage"]
       24 MOVE                             R5 R1
       25 MOVE                             R6 R3
       26 CALL                             R4 2 1
       27 LOADN                            R7 0
       28 LOADN                            R8 1
       29 FASTCALL3                        MATH_CLAMP R4 R7 R8
       31 MOVE                             R6 R4
       32 GETIMPORT                        R5 K13 [math.clamp]
       34 CALL                             R5 3 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K14 ["getTotalRange"]
       38 CALL                             R6 0 1
       39 MUL                              R2 R5 R6
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K15 ["props"]
       43 GETTABLEKS                       R5 R5 K16 ["Layout"]
       45 GETIMPORT                        R6 K20 [Enum.FillDirection.Vertical]
       47 JUMPIFNOTEQ                      R5 R6 ; [+81]
       49 SUBRK                            R2 R21 K2 ["AbsoluteRotation"]
       50 JUMP                             ; [+78]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K15 ["props"]
       54 GETTABLEKS                       R3 R3 K16 ["Layout"]
       56 GETIMPORT                        R4 K23 [Enum.FillDirection.Horizontal]
       58 JUMPIFNOTEQ                      R3 R4 ; [+36]
       60 GETTABLEKS                       R5 R0 K7 ["Position"]
       62 GETTABLEKS                       R5 R5 K8 ["X"]
       64 GETTABLEKS                       R6 R1 K24 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R6 K8 ["X"]
       68 SUB                              R4 R5 R6
       69 GETTABLEKS                       R5 R1 K25 ["AbsoluteSize"]
       71 GETTABLEKS                       R5 R5 K8 ["X"]
       73 DIV                              R3 R4 R5
       74 LOADN                            R6 0
       75 LOADN                            R7 1
       76 FASTCALL3                        MATH_CLAMP R3 R6 R7
       78 MOVE                             R5 R3
       79 GETIMPORT                        R4 K13 [math.clamp]
       81 CALL                             R4 3 1
       82 MOVE                             R3 R4
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R4 R4 K15 ["props"]
       86 GETTABLEKS                       R4 R4 K26 ["Min"]
       88 GETUPVAL                         R6 0
       89 GETTABLEKS                       R6 R6 K14 ["getTotalRange"]
       91 CALL                             R6 0 1
       92 MUL                              R5 R3 R6
       93 ADD                              R2 R4 R5
       94 JUMP                             ; [+34]
       95 GETTABLEKS                       R5 R0 K7 ["Position"]
       97 GETTABLEKS                       R5 R5 K9 ["Y"]
       99 GETTABLEKS                       R6 R1 K24 ["AbsolutePosition"]
      101 GETTABLEKS                       R6 R6 K9 ["Y"]
      103 SUB                              R4 R5 R6
      104 GETTABLEKS                       R5 R1 K25 ["AbsoluteSize"]
      106 GETTABLEKS                       R5 R5 K9 ["Y"]
      108 DIV                              R3 R4 R5
      109 LOADN                            R6 0
      110 LOADN                            R7 1
      111 FASTCALL3                        MATH_CLAMP R3 R6 R7
      113 MOVE                             R5 R3
      114 GETIMPORT                        R4 K13 [math.clamp]
      116 CALL                             R4 3 1
      117 SUBRK                            R3 R21 K4 ["Vector2"]
      118 GETUPVAL                         R4 0
      119 GETTABLEKS                       R4 R4 K15 ["props"]
      121 GETTABLEKS                       R4 R4 K26 ["Min"]
      123 GETUPVAL                         R6 0
      124 GETTABLEKS                       R6 R6 K14 ["getTotalRange"]
      126 CALL                             R6 0 1
      127 MUL                              R5 R3 R6
      128 ADD                              R2 R4 R5
      129 GETUPVAL                         R3 0
      130 GETTABLEKS                       R3 R3 K27 ["getSnappedValue"]
      132 MOVE                             R4 R2
      133 CALL                             R3 1 -1
      134 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getStaticRangeValueDuringInput"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["getMouseClickValue"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 FASTCALL2                        MATH_MIN R2 R1 ; [+5]
       14 MOVE                             R4 R2
       15 MOVE                             R5 R1
       16 GETIMPORT                        R3 K4 [math.min]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["getSnappedValue"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 MOVE                             R3 R4
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K6 ["props"]
       28 GETTABLEKS                       R5 R5 K7 ["UpperRangeValue"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K6 ["props"]
       33 GETTABLEKS                       R6 R6 K8 ["Min"]
       35 JUMPIFNOTLE                      R5 R6 ; [+7]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K6 ["props"]
       40 GETTABLEKS                       R4 R4 K8 ["Min"]
       42 JUMP                             ; [+16]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K6 ["props"]
       46 GETTABLEKS                       R6 R6 K8 ["Min"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K6 ["props"]
       51 GETTABLEKS                       R7 R7 K7 ["UpperRangeValue"]
       53 FASTCALL3                        MATH_CLAMP R3 R6 R7
       55 MOVE                             R5 R3
       56 GETIMPORT                        R4 K10 [math.clamp]
       58 CALL                             R4 3 1
       59 FASTCALL2                        MATH_MAX R2 R1 ; [+5]
       61 MOVE                             R6 R2
       62 MOVE                             R7 R1
       63 GETIMPORT                        R5 K12 [math.max]
       65 CALL                             R5 2 1
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K5 ["getSnappedValue"]
       69 MOVE                             R7 R5
       70 CALL                             R6 1 1
       71 MOVE                             R5 R6
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K6 ["props"]
       75 GETTABLEKS                       R7 R7 K13 ["Max"]
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R8 R8 K6 ["props"]
       80 GETTABLEKS                       R8 R8 K14 ["LowerRangeValue"]
       82 JUMPIFNOTLE                      R7 R8 ; [+7]
       84 GETUPVAL                         R6 0
       85 GETTABLEKS                       R6 R6 K6 ["props"]
       87 GETTABLEKS                       R6 R6 K13 ["Max"]
       89 JUMP                             ; [+16]
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R8 R8 K6 ["props"]
       93 GETTABLEKS                       R8 R8 K14 ["LowerRangeValue"]
       95 GETUPVAL                         R9 0
       96 GETTABLEKS                       R9 R9 K6 ["props"]
       98 GETTABLEKS                       R9 R9 K13 ["Max"]
      100 FASTCALL3                        MATH_CLAMP R5 R8 R9
      102 MOVE                             R7 R5
      103 GETIMPORT                        R6 K10 [math.clamp]
      105 CALL                             R6 3 1
      106 GETUPVAL                         R7 0
      107 GETTABLEKS                       R7 R7 K6 ["props"]
      109 GETTABLEKS                       R7 R7 K14 ["LowerRangeValue"]
      111 JUMPIFNOTEQ                      R4 R7 ; [+8]
      113 GETUPVAL                         R7 0
      114 GETTABLEKS                       R7 R7 K6 ["props"]
      116 GETTABLEKS                       R7 R7 K7 ["UpperRangeValue"]
      118 JUMPIFEQ                         R6 R7 ; [+9]
      120 GETUPVAL                         R7 0
      121 GETTABLEKS                       R7 R7 K6 ["props"]
      123 GETTABLEKS                       R7 R7 K15 ["OnValuesChanged"]
      125 MOVE                             R8 R4
      126 MOVE                             R9 R6
      127 CALL                             R7 2 0
      128 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["HideLowerKnob"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K2 ["HideUpperKnob"]
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADNIL                          R1
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["props"]
       17 GETTABLEKS                       R1 R1 K2 ["HideUpperKnob"]
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["props"]
       23 GETTABLEKS                       R1 R1 K3 ["UpperRangeValue"]
       25 RETURN                           R1 1
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["props"]
       29 GETTABLEKS                       R1 R1 K1 ["HideLowerKnob"]
       31 JUMPIFNOT                        R1 ; [+6]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K0 ["props"]
       35 GETTABLEKS                       R1 R1 K4 ["LowerRangeValue"]
       37 RETURN                           R1 1
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K5 ["getMouseClickValue"]
       41 MOVE                             R2 R0
       42 CALL                             R1 1 1
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K0 ["props"]
       46 GETTABLEKS                       R2 R2 K4 ["LowerRangeValue"]
       48 JUMPIFNOTLT                      R1 R2 ; [+15]
       50 GETUPVAL                         R2 0
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K6 ["KnobType"]
       54 GETTABLEKS                       R3 R3 K7 ["Lower"]
       56 SETTABLEKS                       R3 R2 K8 ["currentlySelectedKnob"]
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K0 ["props"]
       61 GETTABLEKS                       R2 R2 K3 ["UpperRangeValue"]
       63 RETURN                           R2 1
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R2 R2 K0 ["props"]
       67 GETTABLEKS                       R2 R2 K3 ["UpperRangeValue"]
       69 JUMPIFNOTLT                      R2 R1 ; [+15]
       71 GETUPVAL                         R2 0
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K6 ["KnobType"]
       75 GETTABLEKS                       R3 R3 K9 ["Upper"]
       77 SETTABLEKS                       R3 R2 K8 ["currentlySelectedKnob"]
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R2 R2 K0 ["props"]
       82 GETTABLEKS                       R2 R2 K4 ["LowerRangeValue"]
       84 RETURN                           R2 1
       85 GETUPVAL                         R4 0
       86 GETTABLEKS                       R4 R4 K0 ["props"]
       88 GETTABLEKS                       R4 R4 K4 ["LowerRangeValue"]
       90 SUB                              R3 R1 R4
       91 FASTCALL1                        MATH_ABS R3 ; [+2]
       92 GETIMPORT                        R2 K12 [math.abs]
       94 CALL                             R2 1 1
       95 GETUPVAL                         R5 0
       96 GETTABLEKS                       R5 R5 K0 ["props"]
       98 GETTABLEKS                       R5 R5 K3 ["UpperRangeValue"]
      100 SUB                              R4 R1 R5
      101 FASTCALL1                        MATH_ABS R4 ; [+2]
      102 GETIMPORT                        R3 K12 [math.abs]
      104 CALL                             R3 1 1
      105 JUMPIFNOTLT                      R2 R3 ; [+37]
      107 GETUPVAL                         R4 0
      108 GETTABLEKS                       R4 R4 K13 ["isSwitchingKnob"]
      110 GETUPVAL                         R5 0
      111 GETTABLEKS                       R5 R5 K6 ["KnobType"]
      113 GETTABLEKS                       R5 R5 K7 ["Lower"]
      115 CALL                             R4 1 1
      116 JUMPIFNOT                        R4 ; [+12]
      117 GETUPVAL                         R5 0
      118 GETTABLEKS                       R5 R5 K0 ["props"]
      120 GETTABLEKS                       R5 R5 K3 ["UpperRangeValue"]
      122 GETUPVAL                         R6 0
      123 GETTABLEKS                       R6 R6 K0 ["props"]
      125 GETTABLEKS                       R6 R6 K14 ["SnapIncrement"]
      127 SUB                              R4 R5 R6
      128 RETURN                           R4 1
      129 GETUPVAL                         R4 0
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R5 R5 K6 ["KnobType"]
      133 GETTABLEKS                       R5 R5 K7 ["Lower"]
      135 SETTABLEKS                       R5 R4 K8 ["currentlySelectedKnob"]
      137 GETUPVAL                         R4 0
      138 GETTABLEKS                       R4 R4 K0 ["props"]
      140 GETTABLEKS                       R4 R4 K3 ["UpperRangeValue"]
      142 RETURN                           R4 1
      143 GETUPVAL                         R4 0
      144 GETTABLEKS                       R4 R4 K13 ["isSwitchingKnob"]
      146 GETUPVAL                         R5 0
      147 GETTABLEKS                       R5 R5 K6 ["KnobType"]
      149 GETTABLEKS                       R5 R5 K9 ["Upper"]
      151 CALL                             R4 1 1
      152 JUMPIFNOT                        R4 ; [+12]
      153 GETUPVAL                         R5 0
      154 GETTABLEKS                       R5 R5 K0 ["props"]
      156 GETTABLEKS                       R5 R5 K4 ["LowerRangeValue"]
      158 GETUPVAL                         R6 0
      159 GETTABLEKS                       R6 R6 K0 ["props"]
      161 GETTABLEKS                       R6 R6 K14 ["SnapIncrement"]
      163 ADD                              R4 R5 R6
      164 RETURN                           R4 1
      165 GETUPVAL                         R4 0
      166 GETUPVAL                         R5 0
      167 GETTABLEKS                       R5 R5 K6 ["KnobType"]
      169 GETTABLEKS                       R5 R5 K9 ["Upper"]
      171 SETTABLEKS                       R5 R4 K8 ["currentlySelectedKnob"]
      173 GETUPVAL                         R4 0
      174 GETTABLEKS                       R4 R4 K0 ["props"]
      176 GETTABLEKS                       R4 R4 K4 ["LowerRangeValue"]
      178 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K1 ["Disabled"]
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R0 0
       10 JUMPIFNOT                        R2 ; [+25]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R5 K3 [{"pressed"}]
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K2 ["pressed"]
       16 NAMECALL                         R3 R3 K4 ["setState"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K0 ["props"]
       22 GETTABLEKS                       R3 R3 K5 ["OnChangeBegan"]
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K0 ["props"]
       28 GETTABLEKS                       R3 R3 K5 ["OnChangeBegan"]
       30 CALL                             R3 0 0
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K6 ["setValuesFromInput"]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Disabled"]
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["state"]
       10 GETTABLEKS                       R2 R2 K3 ["pressed"]
       12 JUMPIFNOT                        R2 ; [+11]
       13 GETTABLEKS                       R2 R1 K4 ["UserInputType"]
       15 GETIMPORT                        R3 K7 [Enum.UserInputType.MouseMovement]
       17 JUMPIFNOTEQ                      R2 R3 ; [+6]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K8 ["setValuesFromInput"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K1 ["Disabled"]
        8 JUMPIF                           R3 ; [+25]
        9 JUMPIFNOT                        R2 ; [+24]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K2 ["OnInputEnded"]
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K0 ["props"]
       19 GETTABLEKS                       R3 R3 K2 ["OnInputEnded"]
       21 CALL                             R3 0 0
       22 GETUPVAL                         R3 1
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K3 ["currentlySelectedKnob"]
       26 GETUPVAL                         R3 1
       27 DUPTABLE                         R5 K5 [{"pressed"}]
       28 LOADB                            R6 0
       29 SETTABLEKS                       R6 R5 K4 ["pressed"]
       31 NAMECALL                         R3 R3 K6 ["setState"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["currentlySelectedKnob"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K2 ["sliderFrameRef"]
        9 DUPTABLE                         R1 K8 [{"pressed", "rotation", "width", "centerPoint", "unit"}]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["pressed"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K4 ["rotation"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K5 ["width"]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K6 ["centerPoint"]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K7 ["unit"]
       25 SETTABLEKS                       R1 R0 K9 ["state"]
       27 NEWCLOSURE                       R1 P0
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K10 ["isSwitchingKnob"]
       31 NEWCLOSURE                       R1 P1
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K11 ["getTotalRange"]
       35 NEWCLOSURE                       R1 P2
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K12 ["getSnappedValue"]
       39 NEWCLOSURE                       R1 P3
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K13 ["GetPercentage"]
       43 NEWCLOSURE                       R1 P4
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K14 ["getMouseClickValue"]
       47 NEWCLOSURE                       R1 P5
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K15 ["setValuesFromInput"]
       51 NEWCLOSURE                       R1 P6
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R1 R0 K16 ["getStaticRangeValueDuringInput"]
       55 NEWCLOSURE                       R1 P7
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K17 ["onInputBegan"]
       60 NEWCLOSURE                       R1 P8
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K18 ["onInputChanged"]
       64 NEWCLOSURE                       R1 P9
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R1 R0 K19 ["onInputEnded"]
       69 RETURN                           R0 0

PROTO_11:
        0 ADD                              R3 R0 R1
        1 MULK                             R2 R3 K0 [0.5]
        2 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R1 K3 ["Tooltip"]
        6 ORK                              R3 R4 K2 []
        7 LOADB                            R4 0
        8 JUMPIFEQKNIL                     R3 ; [+5]
       10 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETTABLEKS                       R5 R1 K5 ["AnchorPoint"]
       16 GETTABLEKS                       R6 R1 K6 ["Disabled"]
       18 GETTABLEKS                       R7 R1 K7 ["Max"]
       20 GETTABLEKS                       R8 R1 K8 ["Min"]
       22 GETTABLEKS                       R9 R1 K9 ["Layout"]
       24 GETTABLEKS                       R10 R1 K10 ["LayoutOrder"]
       26 GETTABLEKS                       R12 R1 K11 ["LowerRangeValue"]
       28 FASTCALL3                        MATH_CLAMP R12 R8 R7
       30 MOVE                             R13 R8
       31 MOVE                             R14 R7
       32 GETIMPORT                        R11 K14 [math.clamp]
       34 CALL                             R11 3 1
       35 GETTABLEKS                       R12 R1 K15 ["Position"]
       37 GETTABLEKS                       R14 R1 K16 ["UpperRangeValue"]
       39 FASTCALL3                        MATH_CLAMP R14 R8 R7
       41 MOVE                             R15 R8
       42 MOVE                             R16 R7
       43 GETIMPORT                        R13 K14 [math.clamp]
       45 CALL                             R13 3 1
       46 GETUPVAL                         R14 0
       47 GETTABLEKS                       R15 R1 K17 ["Size"]
       49 GETTABLEKS                       R16 R2 K17 ["Size"]
       51 GETIMPORT                        R17 K20 [UDim2.fromScale]
       53 LOADN                            R18 1
       54 LOADN                            R19 1
       55 CALL                             R17 2 -1
       56 CALL                             R14 -1 1
       57 GETTABLEKS                       R15 R1 K21 ["HorizontalDragTolerance"]
       59 GETTABLEKS                       R16 R1 K22 ["VerticalDragTolerance"]
       61 GETTABLEKS                       R17 R1 K23 ["HideBackground"]
       63 GETTABLEKS                       R18 R1 K24 ["HideLowerKnob"]
       65 GETTABLEKS                       R19 R1 K25 ["HideUpperKnob"]
       67 GETTABLEKS                       R20 R1 K26 ["FillFromCenter"]
       69 GETTABLEKS                       R21 R2 K27 ["BackgroundStyle"]
       71 GETTABLEKS                       R22 R2 K28 ["ForegroundStyle"]
       73 GETTABLEKS                       R23 R2 K29 ["KnobSize"]
       75 JUMPIF                           R23 ; [+3]
       76 GETIMPORT                        R23 K32 [Vector2.new]
       78 CALL                             R23 0 1
       79 SUB                              R25 R11 R8
       80 GETTABLEKS                       R26 R0 K33 ["getTotalRange"]
       82 CALL                             R26 0 1
       83 DIV                              R24 R25 R26
       84 SUB                              R26 R13 R8
       85 GETTABLEKS                       R27 R0 K33 ["getTotalRange"]
       87 CALL                             R27 0 1
       88 DIV                              R25 R26 R27
       89 SUB                              R26 R25 R24
       90 JUMPIFNOT                        R20 ; [+18]
       91 GETGLOBAL                        R27 K34 ["getMidPoint"]
       93 GETTABLEKS                       R28 R0 K0 ["props"]
       95 GETTABLEKS                       R28 R28 K8 ["Min"]
       97 GETTABLEKS                       R29 R0 K0 ["props"]
       99 GETTABLEKS                       R29 R29 K7 ["Max"]
      101 CALL                             R27 2 1
      102 SUB                              R29 R27 R8
      103 GETTABLEKS                       R30 R0 K33 ["getTotalRange"]
      105 CALL                             R30 0 1
      106 DIV                              R28 R29 R30
      107 SUB                              R29 R25 R28
      108 MULK                             R26 R29 K35 [-1]
      109 JUMPIFNOT                        R20 ; [+2]
      110 MOVE                             R27 R25
      111 JUMP                             ; [+1]
      112 MOVE                             R27 R24
      113 LOADNIL                          R28
      114 JUMPIFNOT                        R6 ; [+3]
      115 GETUPVAL                         R29 1
      116 GETTABLEKS                       R28 R29 K6 ["Disabled"]
      118 GETTABLEKS                       R29 R1 K36 ["OnRightClick"]
      120 GETIMPORT                        R31 K40 [Enum.FillDirection.Horizontal]
      122 JUMPIFEQ                         R9 R31 ; [+2]
      124 LOADB                            R30 0 +1
      125 LOADB                            R30 1
      126 JUMPIFNOT                        R21 ; [+32]
      127 GETUPVAL                         R31 2
      128 MOVE                             R32 R21
      129 DUPTABLE                         R33 K42 [{"Background", "Size"}]
      130 JUMPIFNOT                        R17 ; [+4]
      131 GETUPVAL                         R34 3
      132 GETTABLEKS                       R34 R34 K43 ["None"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R34
      136 SETTABLEKS                       R34 R33 K41 ["Background"]
      138 JUMPIF                           R30 ; [+15]
      139 GETTABLEKS                       R35 R21 K17 ["Size"]
      141 JUMPIFNOT                        R35 ; [+12]
      142 GETIMPORT                        R34 K44 [UDim2.new]
      144 GETTABLEKS                       R35 R21 K17 ["Size"]
      146 GETTABLEKS                       R35 R35 K45 ["Y"]
      148 GETTABLEKS                       R36 R21 K17 ["Size"]
      150 GETTABLEKS                       R36 R36 K46 ["X"]
      152 CALL                             R34 2 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R34
      155 SETTABLEKS                       R34 R33 K17 ["Size"]
      157 CALL                             R31 2 1
      158 MOVE                             R21 R31
      159 GETUPVAL                         R31 4
      160 GETTABLEKS                       R31 R31 K47 ["createElement"]
      162 LOADK                            R32 K48 ["Frame"]
      163 NEWTABLE                         R33 8 0
      165 SETTABLEKS                       R5 R33 K5 ["AnchorPoint"]
      167 LOADN                            R34 1
      168 SETTABLEKS                       R34 R33 K49 ["BackgroundTransparency"]
      170 SETTABLEKS                       R10 R33 K10 ["LayoutOrder"]
      172 SETTABLEKS                       R12 R33 K15 ["Position"]
      174 GETIMPORT                        R35 K40 [Enum.FillDirection.Horizontal]
      176 JUMPIFNOTEQ                      R9 R35 ; [+21]
      178 GETIMPORT                        R34 K44 [UDim2.new]
      180 GETIMPORT                        R35 K51 [UDim.new]
      182 GETTABLEKS                       R36 R14 K46 ["X"]
      184 GETTABLEKS                       R36 R36 K52 ["Scale"]
      186 GETTABLEKS                       R38 R14 K46 ["X"]
      188 GETTABLEKS                       R38 R38 K53 ["Offset"]
      190 GETTABLEKS                       R39 R23 K46 ["X"]
      192 SUB                              R37 R38 R39
      193 CALL                             R35 2 1
      194 GETTABLEKS                       R36 R14 K45 ["Y"]
      196 CALL                             R34 2 1
      197 JUMP                             ; [+19]
      198 GETIMPORT                        R34 K44 [UDim2.new]
      200 GETTABLEKS                       R35 R14 K46 ["X"]
      202 GETIMPORT                        R36 K51 [UDim.new]
      204 GETTABLEKS                       R37 R14 K45 ["Y"]
      206 GETTABLEKS                       R37 R37 K52 ["Scale"]
      208 GETTABLEKS                       R39 R14 K45 ["Y"]
      210 GETTABLEKS                       R39 R39 K53 ["Offset"]
      212 GETTABLEKS                       R40 R23 K45 ["Y"]
      214 SUB                              R38 R39 R40
      215 CALL                             R36 2 -1
      216 CALL                             R34 -1 1
      217 SETTABLEKS                       R34 R33 K17 ["Size"]
      219 GETUPVAL                         R34 4
      220 GETTABLEKS                       R34 R34 K54 ["Ref"]
      222 GETTABLEKS                       R35 R0 K55 ["sliderFrameRef"]
      224 SETTABLE                         R35 R33 R34
      225 DUPTABLE                         R34 K60 [{"Background", "LowerKnob", "UpperKnob", "ClickHandler", "Tooltip", "HoverArea"}]
      226 GETUPVAL                         R35 4
      227 GETTABLEKS                       R35 R35 K47 ["createElement"]
      229 GETUPVAL                         R36 5
      230 DUPTABLE                         R37 K63 [{"Style", "StyleModifier", "AnchorPoint", "Position"}]
      231 SETTABLEKS                       R21 R37 K61 ["Style"]
      233 SETTABLEKS                       R28 R37 K62 ["StyleModifier"]
      235 JUMPIFNOT                        R30 ; [+6]
      236 GETIMPORT                        R38 K32 [Vector2.new]
      238 LOADN                            R39 0
      239 LOADK                            R40 K64 [0.5]
      240 CALL                             R38 2 1
      241 JUMP                             ; [+5]
      242 GETIMPORT                        R38 K32 [Vector2.new]
      244 LOADK                            R39 K64 [0.5]
      245 LOADN                            R40 0
      246 CALL                             R38 2 1
      247 SETTABLEKS                       R38 R37 K5 ["AnchorPoint"]
      249 JUMPIFNOT                        R30 ; [+6]
      250 GETIMPORT                        R38 K20 [UDim2.fromScale]
      252 LOADN                            R39 0
      253 LOADK                            R40 K64 [0.5]
      254 CALL                             R38 2 1
      255 JUMP                             ; [+5]
      256 GETIMPORT                        R38 K20 [UDim2.fromScale]
      258 LOADK                            R39 K64 [0.5]
      259 LOADN                            R40 0
      260 CALL                             R38 2 1
      261 SETTABLEKS                       R38 R37 K15 ["Position"]
      263 DUPTABLE                         R38 K66 [{"Foreground"}]
      264 GETUPVAL                         R39 4
      265 GETTABLEKS                       R39 R39 K47 ["createElement"]
      267 GETUPVAL                         R40 5
      268 DUPTABLE                         R41 K67 [{"AnchorPoint", "Style", "StyleModifier", "Size", "Position"}]
      269 JUMPIFNOT                        R30 ; [+2]
      270 LOADNIL                          R42
      271 JUMP                             ; [+5]
      272 GETIMPORT                        R42 K32 [Vector2.new]
      274 LOADN                            R43 0
      275 LOADN                            R44 1
      276 CALL                             R42 2 1
      277 SETTABLEKS                       R42 R41 K5 ["AnchorPoint"]
      279 GETUPVAL                         R42 2
      280 MOVE                             R43 R22
      281 DUPTABLE                         R44 K69 [{"Background", "Color"}]
      282 GETTABLEKS                       R45 R1 K70 ["ImageColor3"]
      284 SETTABLEKS                       R45 R44 K41 ["Background"]
      286 GETTABLEKS                       R45 R1 K70 ["ImageColor3"]
      288 SETTABLEKS                       R45 R44 K68 ["Color"]
      290 CALL                             R42 2 1
      291 SETTABLEKS                       R42 R41 K61 ["Style"]
      293 SETTABLEKS                       R28 R41 K62 ["StyleModifier"]
      295 JUMPIFNOT                        R30 ; [+8]
      296 GETIMPORT                        R42 K44 [UDim2.new]
      298 MOVE                             R43 R26
      299 LOADN                            R44 0
      300 LOADN                            R45 1
      301 LOADN                            R46 0
      302 CALL                             R42 4 1
      303 JUMP                             ; [+7]
      304 GETIMPORT                        R42 K44 [UDim2.new]
      306 LOADN                            R43 1
      307 LOADN                            R44 0
      308 MOVE                             R45 R26
      309 LOADN                            R46 0
      310 CALL                             R42 4 1
      311 SETTABLEKS                       R42 R41 K17 ["Size"]
      313 JUMPIFNOT                        R30 ; [+6]
      314 GETIMPORT                        R42 K20 [UDim2.fromScale]
      316 MOVE                             R43 R27
      317 LOADN                            R44 0
      318 CALL                             R42 2 1
      319 JUMP                             ; [+5]
      320 GETIMPORT                        R42 K20 [UDim2.fromScale]
      322 LOADN                            R43 0
      323 SUBRK                            R44 R71 K27 ["BackgroundStyle"]
      324 CALL                             R42 2 1
      325 SETTABLEKS                       R42 R41 K15 ["Position"]
      327 CALL                             R39 2 1
      328 SETTABLEKS                       R39 R38 K65 ["Foreground"]
      330 CALL                             R35 3 1
      331 SETTABLEKS                       R35 R34 K41 ["Background"]
      333 NOT                              R35 R18
      334 JUMPIFNOT                        R35 ; [+84]
      335 GETUPVAL                         R35 4
      336 GETTABLEKS                       R35 R35 K47 ["createElement"]
      338 LOADK                            R36 K48 ["Frame"]
      339 DUPTABLE                         R37 K74 [{"AnchorPoint", "BackgroundColor3", "Position", "Size", "ZIndex"}]
      340 GETIMPORT                        R38 K32 [Vector2.new]
      342 LOADK                            R39 K64 [0.5]
      343 LOADK                            R40 K64 [0.5]
      344 CALL                             R38 2 1
      345 SETTABLEKS                       R38 R37 K5 ["AnchorPoint"]
      347 GETUPVAL                         R39 1
      348 GETTABLEKS                       R39 R39 K6 ["Disabled"]
      350 JUMPIFNOTEQ                      R28 R39 ; [+4]
      352 GETTABLEKS                       R38 R2 K75 ["DisabledKnobColor"]
      354 JUMP                             ; [+5]
      355 GETTABLEKS                       R38 R1 K70 ["ImageColor3"]
      357 JUMPIF                           R38 ; [+2]
      358 GETTABLEKS                       R38 R2 K76 ["KnobColor"]
      360 SETTABLEKS                       R38 R37 K72 ["BackgroundColor3"]
      362 JUMPIFNOT                        R30 ; [+6]
      363 GETIMPORT                        R38 K20 [UDim2.fromScale]
      365 MOVE                             R39 R24
      366 LOADK                            R40 K64 [0.5]
      367 CALL                             R38 2 1
      368 JUMP                             ; [+5]
      369 GETIMPORT                        R38 K20 [UDim2.fromScale]
      371 LOADK                            R39 K64 [0.5]
      372 SUBRK                            R40 R71 K24 ["HideLowerKnob"]
      373 CALL                             R38 2 1
      374 SETTABLEKS                       R38 R37 K15 ["Position"]
      376 GETTABLEKS                       R39 R1 K77 ["Precision"]
      378 JUMPIFNOT                        R39 ; [+13]
      379 JUMPIFNOT                        R30 ; [+6]
      380 GETIMPORT                        R38 K79 [UDim2.fromOffset]
      382 LOADN                            R39 4
      383 LOADN                            R40 16
      384 CALL                             R38 2 1
      385 JUMP                             ; [+11]
      386 GETIMPORT                        R38 K79 [UDim2.fromOffset]
      388 LOADN                            R39 16
      389 LOADN                            R40 4
      390 CALL                             R38 2 1
      391 JUMP                             ; [+5]
      392 GETIMPORT                        R38 K79 [UDim2.fromOffset]
      394 LOADN                            R39 18
      395 LOADN                            R40 18
      396 CALL                             R38 2 1
      397 SETTABLEKS                       R38 R37 K17 ["Size"]
      399 LOADN                            R38 3
      400 SETTABLEKS                       R38 R37 K73 ["ZIndex"]
      402 DUPTABLE                         R38 K81 [{"UICorner"}]
      403 GETUPVAL                         R39 4
      404 GETTABLEKS                       R39 R39 K47 ["createElement"]
      406 LOADK                            R40 K80 ["UICorner"]
      407 DUPTABLE                         R41 K83 [{"CornerRadius"}]
      408 GETIMPORT                        R42 K51 [UDim.new]
      410 LOADK                            R43 K64 [0.5]
      411 LOADN                            R44 0
      412 CALL                             R42 2 1
      413 SETTABLEKS                       R42 R41 K82 ["CornerRadius"]
      415 CALL                             R39 2 1
      416 SETTABLEKS                       R39 R38 K80 ["UICorner"]
      418 CALL                             R35 3 1
      419 SETTABLEKS                       R35 R34 K56 ["LowerKnob"]
      421 NOT                              R35 R19
      422 JUMPIFNOT                        R35 ; [+97]
      423 GETUPVAL                         R35 4
      424 GETTABLEKS                       R35 R35 K47 ["createElement"]
      426 LOADK                            R36 K48 ["Frame"]
      427 DUPTABLE                         R37 K74 [{"AnchorPoint", "BackgroundColor3", "Position", "Size", "ZIndex"}]
      428 GETIMPORT                        R38 K32 [Vector2.new]
      430 LOADK                            R39 K64 [0.5]
      431 LOADK                            R40 K64 [0.5]
      432 CALL                             R38 2 1
      433 SETTABLEKS                       R38 R37 K5 ["AnchorPoint"]
      435 GETUPVAL                         R39 1
      436 GETTABLEKS                       R39 R39 K6 ["Disabled"]
      438 JUMPIFNOTEQ                      R28 R39 ; [+4]
      440 GETTABLEKS                       R38 R2 K75 ["DisabledKnobColor"]
      442 JUMP                             ; [+5]
      443 GETTABLEKS                       R38 R1 K70 ["ImageColor3"]
      445 JUMPIF                           R38 ; [+2]
      446 GETTABLEKS                       R38 R2 K76 ["KnobColor"]
      448 SETTABLEKS                       R38 R37 K72 ["BackgroundColor3"]
      450 JUMPIFNOT                        R30 ; [+6]
      451 GETIMPORT                        R38 K20 [UDim2.fromScale]
      453 MOVE                             R39 R25
      454 LOADK                            R40 K64 [0.5]
      455 CALL                             R38 2 1
      456 JUMP                             ; [+5]
      457 GETIMPORT                        R38 K20 [UDim2.fromScale]
      459 LOADK                            R39 K64 [0.5]
      460 SUBRK                            R40 R71 K25 ["HideUpperKnob"]
      461 CALL                             R38 2 1
      462 SETTABLEKS                       R38 R37 K15 ["Position"]
      464 GETTABLEKS                       R39 R1 K77 ["Precision"]
      466 JUMPIFNOT                        R39 ; [+13]
      467 JUMPIFNOT                        R30 ; [+6]
      468 GETIMPORT                        R38 K79 [UDim2.fromOffset]
      470 LOADN                            R39 4
      471 LOADN                            R40 16
      472 CALL                             R38 2 1
      473 JUMP                             ; [+24]
      474 GETIMPORT                        R38 K79 [UDim2.fromOffset]
      476 LOADN                            R39 16
      477 LOADN                            R40 4
      478 CALL                             R38 2 1
      479 JUMP                             ; [+18]
      480 GETTABLEKS                       R39 R2 K84 ["UpperKnobBackgroundStyle"]
      482 JUMPIFNOT                        R39 ; [+10]
      483 GETTABLEKS                       R39 R2 K84 ["UpperKnobBackgroundStyle"]
      485 GETTABLEKS                       R39 R39 K17 ["Size"]
      487 JUMPIFNOT                        R39 ; [+5]
      488 GETTABLEKS                       R38 R2 K84 ["UpperKnobBackgroundStyle"]
      490 GETTABLEKS                       R38 R38 K17 ["Size"]
      492 JUMP                             ; [+5]
      493 GETIMPORT                        R38 K79 [UDim2.fromOffset]
      495 LOADN                            R39 18
      496 LOADN                            R40 18
      497 CALL                             R38 2 1
      498 SETTABLEKS                       R38 R37 K17 ["Size"]
      500 LOADN                            R38 3
      501 SETTABLEKS                       R38 R37 K73 ["ZIndex"]
      503 DUPTABLE                         R38 K81 [{"UICorner"}]
      504 GETUPVAL                         R39 4
      505 GETTABLEKS                       R39 R39 K47 ["createElement"]
      507 LOADK                            R40 K80 ["UICorner"]
      508 DUPTABLE                         R41 K83 [{"CornerRadius"}]
      509 GETIMPORT                        R42 K51 [UDim.new]
      511 LOADK                            R43 K64 [0.5]
      512 LOADN                            R44 0
      513 CALL                             R42 2 1
      514 SETTABLEKS                       R42 R41 K82 ["CornerRadius"]
      516 CALL                             R39 2 1
      517 SETTABLEKS                       R39 R38 K80 ["UICorner"]
      519 CALL                             R35 3 1
      520 SETTABLEKS                       R35 R34 K57 ["UpperKnob"]
      522 NOT                              R35 R6
      523 JUMPIFNOT                        R35 ; [+93]
      524 GETUPVAL                         R35 4
      525 GETTABLEKS                       R35 R35 K47 ["createElement"]
      527 LOADK                            R36 K85 ["ImageButton"]
      528 NEWTABLE                         R37 16 0
      530 GETIMPORT                        R38 K32 [Vector2.new]
      532 LOADK                            R39 K64 [0.5]
      533 LOADK                            R40 K64 [0.5]
      534 CALL                             R38 2 1
      535 SETTABLEKS                       R38 R37 K5 ["AnchorPoint"]
      537 LOADN                            R38 1
      538 SETTABLEKS                       R38 R37 K49 ["BackgroundTransparency"]
      540 GETIMPORT                        R38 K44 [UDim2.new]
      542 LOADK                            R39 K64 [0.5]
      543 LOADN                            R40 0
      544 LOADK                            R41 K64 [0.5]
      545 LOADN                            R42 0
      546 CALL                             R38 4 1
      547 SETTABLEKS                       R38 R37 K15 ["Position"]
      549 JUMPIFNOT                        R30 ; [+16]
      550 GETIMPORT                        R38 K44 [UDim2.new]
      552 LOADN                            R39 1
      553 GETTABLEKS                       R40 R23 K46 ["X"]
      555 LOADN                            R41 1
      556 GETTABLEKS                       R43 R0 K86 ["state"]
      558 GETTABLEKS                       R43 R43 K87 ["pressed"]
      560 JUMPIFNOT                        R43 ; [+2]
      561 MOVE                             R42 R16
      562 JUMP                             ; [+1]
      563 LOADN                            R42 0
      564 CALL                             R38 4 1
      565 JUMP                             ; [+15]
      566 GETIMPORT                        R38 K44 [UDim2.new]
      568 LOADN                            R39 1
      569 GETTABLEKS                       R41 R0 K86 ["state"]
      571 GETTABLEKS                       R41 R41 K87 ["pressed"]
      573 JUMPIFNOT                        R41 ; [+2]
      574 MOVE                             R40 R15
      575 JUMP                             ; [+1]
      576 LOADN                            R40 0
      577 LOADN                            R41 1
      578 GETTABLEKS                       R42 R23 K45 ["Y"]
      580 CALL                             R38 4 1
      581 SETTABLEKS                       R38 R37 K17 ["Size"]
      583 LOADN                            R38 4
      584 SETTABLEKS                       R38 R37 K73 ["ZIndex"]
      586 GETUPVAL                         R38 4
      587 GETTABLEKS                       R38 R38 K88 ["Event"]
      589 GETTABLEKS                       R38 R38 K89 ["InputBegan"]
      591 GETTABLEKS                       R39 R0 K90 ["onInputBegan"]
      593 SETTABLE                         R39 R37 R38
      594 GETUPVAL                         R38 4
      595 GETTABLEKS                       R38 R38 K88 ["Event"]
      597 GETTABLEKS                       R38 R38 K91 ["InputChanged"]
      599 GETTABLEKS                       R39 R0 K92 ["onInputChanged"]
      601 SETTABLE                         R39 R37 R38
      602 GETUPVAL                         R38 4
      603 GETTABLEKS                       R38 R38 K88 ["Event"]
      605 GETTABLEKS                       R38 R38 K93 ["InputEnded"]
      607 GETTABLEKS                       R39 R0 K94 ["onInputEnded"]
      609 SETTABLE                         R39 R37 R38
      610 GETUPVAL                         R38 4
      611 GETTABLEKS                       R38 R38 K88 ["Event"]
      613 GETTABLEKS                       R38 R38 K95 ["MouseButton2Click"]
      615 SETTABLE                         R29 R37 R38
      616 CALL                             R35 2 1
      617 SETTABLEKS                       R35 R34 K58 ["ClickHandler"]
      619 MOVE                             R35 R4
      620 JUMPIFNOT                        R35 ; [+18]
      621 GETUPVAL                         R35 4
      622 GETTABLEKS                       R35 R35 K47 ["createElement"]
      624 GETUPVAL                         R36 6
      625 DUPTABLE                         R37 K99 [{"MaxWidth", "Text", "TextXAlignment", "ZIndex"}]
      626 LOADN                            R38 232
      627 SETTABLEKS                       R38 R37 K96 ["MaxWidth"]
      629 SETTABLEKS                       R3 R37 K97 ["Text"]
      631 GETIMPORT                        R38 K101 [Enum.TextXAlignment.Left]
      633 SETTABLEKS                       R38 R37 K98 ["TextXAlignment"]
      635 LOADN                            R38 5
      636 SETTABLEKS                       R38 R37 K73 ["ZIndex"]
      638 CALL                             R35 2 1
      639 SETTABLEKS                       R35 R34 K3 ["Tooltip"]
      641 NOT                              R35 R6
      642 JUMPIFNOT                        R35 ; [+9]
      643 GETUPVAL                         R35 4
      644 GETTABLEKS                       R35 R35 K47 ["createElement"]
      646 GETUPVAL                         R36 7
      647 DUPTABLE                         R37 K103 [{"Cursor"}]
      648 LOADK                            R38 K104 ["PointingHand"]
      649 SETTABLEKS                       R38 R37 K102 ["Cursor"]
      651 CALL                             R35 2 1
      652 SETTABLEKS                       R35 R34 K59 ["HoverArea"]
      654 CALL                             R31 3 -1
      655 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K10 ["Dash"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K11 ["join"]
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R0 K12 ["Util"]
       38 GETTABLEKS                       R7 R7 K13 ["enumerate"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Util"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K12 ["Util"]
       50 GETTABLEKS                       R9 R9 K14 ["Typecheck"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R7 K15 ["prioritize"]
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R0 K12 ["Util"]
       59 GETTABLEKS                       R11 R11 K16 ["StyleModifier"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R0 K2 ["UI"]
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R11 K17 ["Components"]
       68 GETTABLEKS                       R13 R13 K18 ["HoverArea"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R14 R11 K17 ["Components"]
       75 GETTABLEKS                       R14 R14 K19 ["Pane"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R11 K17 ["Components"]
       82 GETTABLEKS                       R15 R15 K20 ["Tooltip"]
       84 CALL                             R14 1 1
       85 GETTABLEKS                       R15 R1 K21 ["PureComponent"]
       87 LOADK                            R17 K22 ["RangeSlider"]
       88 NAMECALL                         R15 R15 K23 ["extend"]
       90 CALL                             R15 2 1
       91 GETTABLEKS                       R16 R8 K24 ["wrap"]
       93 MOVE                             R17 R15
       94 GETIMPORT                        R18 K1 [script]
       96 CALL                             R16 2 0
       97 DUPTABLE                         R16 K30 [{"Disabled", "Layout", "SnapIncrement", "HorizontalDragTolerance", "VerticalDragTolerance"}]
       98 LOADB                            R17 0
       99 SETTABLEKS                       R17 R16 K25 ["Disabled"]
      101 GETIMPORT                        R17 K34 [Enum.FillDirection.Horizontal]
      103 SETTABLEKS                       R17 R16 K26 ["Layout"]
      105 LOADN                            R17 0
      106 SETTABLEKS                       R17 R16 K27 ["SnapIncrement"]
      108 LOADN                            R17 44
      109 SETTABLEKS                       R17 R16 K28 ["HorizontalDragTolerance"]
      111 LOADN                            R17 44
      112 SETTABLEKS                       R17 R16 K29 ["VerticalDragTolerance"]
      114 SETTABLEKS                       R16 R15 K35 ["defaultProps"]
      116 MOVE                             R16 R6
      117 LOADK                            R17 K36 ["KnobType"]
      118 NEWTABLE                         R18 0 2
      120 LOADK                            R19 K37 ["Lower"]
      121 LOADK                            R20 K38 ["Upper"]
      122 SETLIST                          R18 R19 2 [1]
      124 CALL                             R16 2 1
      125 SETTABLEKS                       R16 R15 K36 ["KnobType"]
      127 GETTABLEKS                       R16 R7 K39 ["isInputMainPress"]
      129 DUPCLOSURE                       R17 K40 [PROTO_10]
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R16
      132 SETTABLEKS                       R17 R15 K41 ["init"]
      134 DUPCLOSURE                       R17 K42 [PROTO_11]
      135 SETGLOBAL                        R17 K43 ["getMidPoint"]
      137 DUPCLOSURE                       R17 K44 [PROTO_12]
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R12
      146 SETTABLEKS                       R17 R15 K45 ["render"]
      148 MOVE                             R17 R3
      149 DUPTABLE                         R18 K48 [{"Mouse", "Stylizer"}]
      150 GETTABLEKS                       R19 R2 K46 ["Mouse"]
      152 SETTABLEKS                       R19 R18 K46 ["Mouse"]
      154 GETTABLEKS                       R19 R2 K47 ["Stylizer"]
      156 SETTABLEKS                       R19 R18 K47 ["Stylizer"]
      158 CALL                             R17 1 1
      159 MOVE                             R18 R15
      160 CALL                             R17 1 1
      161 MOVE                             R15 R17
      162 RETURN                           R15 1
