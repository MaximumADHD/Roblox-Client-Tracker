PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["plotToView"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K3 [UDim2.fromScale]
        6 GETTABLEKS                       R4 R2 K4 ["X"]
        8 GETTABLEKS                       R5 R2 K5 ["Y"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_1:
        0 LOADN                            R5 0
        1 SUB                              R8 R3 R1
        2 SUB                              R9 R1 R2
        3 FASTCALL3                        MATH_MIN R0 R8 R9
        5 MOVE                             R7 R0
        6 GETIMPORT                        R6 K2 [math.min]
        8 CALL                             R6 3 1
        9 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       11 GETIMPORT                        R4 K4 [math.max]
       13 CALL                             R4 2 1
       14 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 SUBK                             R9 R5 K0 [1]
        7 GETTABLE                         R8 R0 R9
        8 OR                               R7 R8 R6
        9 ADDK                             R10 R5 K0 [1]
       10 GETTABLE                         R9 R0 R10
       11 OR                               R8 R9 R6
       12 SUB                              R10 R8 R7
       13 DIVK                             R9 R10 K1 [6]
       14 DUPTABLE                         R10 K5 [{"Position", "LeftTangent", "RightTangent"}]
       15 SETTABLEKS                       R6 R10 K2 ["Position"]
       17 MINUS                            R11 R9
       18 SETTABLEKS                       R11 R10 K3 ["LeftTangent"]
       20 SETTABLEKS                       R9 R10 K4 ["RightTangent"]
       22 SETTABLE                         R10 R1 R5
       23 FORGLOOP                         R2 2 ; [-18]
       25 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["getViewport"]
        2 CALL                             R1 0 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADN                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R5 R0 K1 ["plotToViewY"]
        8 LOADN                            R6 1
        9 CALL                             R5 1 1
       10 GETTABLEKS                       R6 R0 K1 ["plotToViewY"]
       12 LOADN                            R7 0
       13 CALL                             R6 1 1
       14 SUB                              R4 R5 R6
       15 FASTCALL1                        MATH_ABS R4 ; [+2]
       16 GETIMPORT                        R3 K4 [math.abs]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R1 K5 ["AbsoluteSize"]
       21 GETTABLEKS                       R4 R4 K6 ["Y"]
       23 MUL                              R2 R3 R4
       24 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["getViewport"]
        2 CALL                             R1 0 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADN                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R5 R0 K1 ["plotToViewX"]
        8 LOADN                            R6 1
        9 CALL                             R5 1 1
       10 GETTABLEKS                       R6 R0 K1 ["plotToViewX"]
       12 LOADN                            R7 0
       13 CALL                             R6 1 1
       14 SUB                              R4 R5 R6
       15 FASTCALL1                        MATH_ABS R4 ; [+2]
       16 GETIMPORT                        R3 K4 [math.abs]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R1 K5 ["AbsoluteSize"]
       21 GETTABLEKS                       R4 R4 K6 ["X"]
       23 MUL                              R2 R3 R4
       24 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["getViewport"]
        2 CALL                             R4 0 1
        3 JUMPIFNOTEQKNIL                  R4 ; [+2]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R6 R4 K1 ["AbsoluteSize"]
        8 GETTABLEKS                       R6 R6 K2 ["Y"]
       10 GETTABLEKS                       R7 R2 K3 ["BaseViewportHeightPixels"]
       12 SUB                              R5 R6 R7
       13 GETTABLEKS                       R7 R2 K3 ["BaseViewportHeightPixels"]
       15 ORK                              R9 R3 K4 [1]
       16 MUL                              R8 R5 R9
       17 ADD                              R6 R7 R8
       18 GETTABLEKS                       R9 R2 K3 ["BaseViewportHeightPixels"]
       20 DIV                              R8 R6 R9
       21 MUL                              R7 R1 R8
       22 RETURN                           R7 1

PROTO_6:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEKS                       R2 R2 K0 ["X"]
        3 JUMPIFNOTLE                      R1 R2 ; [+5]
        5 GETTABLEN                        R2 R0 1
        6 GETTABLEKS                       R2 R2 K1 ["Y"]
        8 RETURN                           R2 1
        9 LENGTH                           R2 R0
       10 GETTABLE                         R3 R0 R2
       11 GETTABLEKS                       R3 R3 K0 ["X"]
       13 JUMPIFNOTLE                      R3 R1 ; [+5]
       15 GETTABLE                         R3 R0 R2
       16 GETTABLEKS                       R3 R3 K1 ["Y"]
       18 RETURN                           R3 1
       19 LOADN                            R5 1
       20 SUBK                             R3 R2 K2 [1]
       21 LOADN                            R4 1
       22 FORNPREP                         R3
       23 GETTABLE                         R6 R0 R5
       24 ADDK                             R8 R5 K2 [1]
       25 GETTABLE                         R7 R0 R8
       26 GETTABLEKS                       R8 R7 K0 ["X"]
       28 JUMPIFNOTLE                      R1 R8 ; [+20]
       30 GETTABLEKS                       R9 R6 K1 ["Y"]
       32 GETTABLEKS                       R12 R7 K1 ["Y"]
       34 GETTABLEKS                       R13 R6 K1 ["Y"]
       36 SUB                              R11 R12 R13
       37 GETTABLEKS                       R14 R6 K0 ["X"]
       39 SUB                              R13 R1 R14
       40 GETTABLEKS                       R15 R7 K0 ["X"]
       42 GETTABLEKS                       R16 R6 K0 ["X"]
       44 SUB                              R14 R15 R16
       45 DIV                              R12 R13 R14
       46 MUL                              R10 R11 R12
       47 ADD                              R8 R9 R10
       48 RETURN                           R8 1
       49 FORNLOOP                         R3
       50 GETTABLE                         R3 R0 R2
       51 GETTABLEKS                       R3 R3 K1 ["Y"]
       53 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Left"] ; [+3]
        3 LOADN                            R4 1
        4 JUMP                             ; [+1]
        5 LOADN                            R4 -1
        6 MUL                              R2 R3 R4
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["DTimeToSlopeBlend"]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K2 ["Time"]
       14 GETTABLEKS                       R8 R1 K2 ["Time"]
       16 SUB                              R6 R7 R8
       17 FASTCALL1                        MATH_ABS R6 ; [+2]
       18 GETIMPORT                        R5 K5 [math.abs]
       20 CALL                             R5 1 1
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K6 ["Value"]
       25 GETUPVAL                         R7 4
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K7 ["Envelope"]
       29 MUL                              R6 R7 R8
       30 ADD                              R4 R5 R6
       31 GETTABLEKS                       R6 R1 K6 ["Value"]
       33 GETUPVAL                         R8 4
       34 GETTABLEKS                       R9 R1 K7 ["Envelope"]
       36 MUL                              R7 R8 R9
       37 ADD                              R5 R6 R7
       38 SUB                              R8 R5 R4
       39 MUL                              R7 R8 R3
       40 ADD                              R6 R4 R7
       41 LOADNIL                          R7
       42 GETUPVAL                         R8 3
       43 GETTABLEKS                       R8 R8 K7 ["Envelope"]
       45 JUMPIFNOTEQKN                    R8 K8 [0] ; [+5]
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R7 R8 K6 ["Value"]
       50 JUMP                             ; [+47]
       51 GETTABLEKS                       R8 R1 K2 ["Time"]
       53 GETUPVAL                         R9 3
       54 GETTABLEKS                       R9 R9 K2 ["Time"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+5]
       58 GETUPVAL                         R8 5
       59 GETTABLEKS                       R7 R8 K9 ["Y"]
       61 JUMP                             ; [+36]
       62 GETUPVAL                         R8 6
       63 GETTABLEKS                       R8 R8 K10 ["calculatePointOnLine"]
       65 GETIMPORT                        R9 K13 [Vector2.new]
       67 GETTABLEKS                       R10 R1 K2 ["Time"]
       69 GETUPVAL                         R13 4
       70 GETUPVAL                         R14 7
       71 MUL                              R12 R13 R14
       72 ADD                              R11 R6 R12
       73 CALL                             R9 2 1
       74 GETIMPORT                        R10 K13 [Vector2.new]
       76 GETUPVAL                         R11 3
       77 GETTABLEKS                       R11 R11 K2 ["Time"]
       79 GETUPVAL                         R13 3
       80 GETTABLEKS                       R13 R13 K6 ["Value"]
       82 GETUPVAL                         R15 4
       83 GETUPVAL                         R17 3
       84 GETTABLEKS                       R17 R17 K7 ["Envelope"]
       86 GETUPVAL                         R18 7
       87 ADD                              R16 R17 R18
       88 MUL                              R14 R15 R16
       89 ADD                              R12 R13 R14
       90 CALL                             R10 2 1
       91 GETUPVAL                         R12 3
       92 GETTABLEKS                       R12 R12 K2 ["Time"]
       94 SUB                              R11 R12 R2
       95 CALL                             R8 3 1
       96 GETTABLEKS                       R7 R8 K9 ["Y"]
       98 GETUPVAL                         R9 3
       99 GETTABLEKS                       R9 R9 K6 ["Value"]
      101 GETUPVAL                         R11 8
      102 GETUPVAL                         R12 4
      103 MUL                              R10 R11 R12
      104 ADD                              R8 R9 R10
      105 GETUPVAL                         R9 1
      106 GETUPVAL                         R10 2
      107 GETTABLEKS                       R10 R10 K14 ["EnvelopeToOffsetBlend"]
      109 GETUPVAL                         R11 3
      110 GETTABLEKS                       R11 R11 K7 ["Envelope"]
      112 CALL                             R9 2 1
      113 SUB                              R11 R7 R8
      114 MUL                              R10 R11 R9
      115 ADD                              R7 R8 R10
      116 LOADNIL                          R10
      117 GETUPVAL                         R11 9
      118 JUMPIFNOTEQKS                    R11 K15 ["Top"] ; [+10]
      120 FASTCALL2                        MATH_MAX R7 R8 ; [+5]
      122 MOVE                             R12 R7
      123 MOVE                             R13 R8
      124 GETIMPORT                        R11 K17 [math.max]
      126 CALL                             R11 2 1
      127 MOVE                             R10 R11
      128 JUMP                             ; [+8]
      129 FASTCALL2                        MATH_MIN R7 R8 ; [+5]
      131 MOVE                             R12 R7
      132 MOVE                             R13 R8
      133 GETIMPORT                        R11 K19 [math.min]
      135 CALL                             R11 2 1
      136 MOVE                             R10 R11
      137 GETUPVAL                         R12 5
      138 GETTABLEKS                       R12 R12 K9 ["Y"]
      140 SUB                              R11 R12 R10
      141 GETUPVAL                         R13 10
      142 MUL                              R12 R11 R13
      143 GETUPVAL                         R16 11
      144 GETUPVAL                         R17 11
      145 MUL                              R15 R16 R17
      146 MUL                              R16 R12 R12
      147 ADD                              R14 R15 R16
      148 FASTCALL1                        MATH_SQRT R14 ; [+2]
      149 GETIMPORT                        R13 K21 [math.sqrt]
      151 CALL                             R13 1 1
      152 GETUPVAL                         R16 12
      153 GETUPVAL                         R17 2
      154 GETTABLEKS                       R17 R17 K22 ["LengthPixels"]
      156 GETUPVAL                         R18 2
      157 GETTABLEKS                       R19 R16 K23 ["getViewport"]
      159 CALL                             R19 0 1
      160 JUMPIFNOTEQKNIL                  R19 ; [+3]
      162 MOVE                             R15 R17
      163 JUMP                             ; [+15]
      164 GETTABLEKS                       R21 R19 K24 ["AbsoluteSize"]
      166 GETTABLEKS                       R21 R21 K9 ["Y"]
      168 GETTABLEKS                       R22 R18 K25 ["BaseViewportHeightPixels"]
      170 SUB                              R20 R21 R22
      171 GETTABLEKS                       R22 R18 K25 ["BaseViewportHeightPixels"]
      173 MULK                             R23 R20 K26 [0.5]
      174 ADD                              R21 R22 R23
      175 GETTABLEKS                       R23 R18 K25 ["BaseViewportHeightPixels"]
      177 DIV                              R22 R21 R23
      178 MUL                              R15 R17 R22
      179 GETUPVAL                         R16 2
      180 GETTABLEKS                       R16 R16 K27 ["MaxLengthPixels"]
      182 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
      184 GETIMPORT                        R14 K19 [math.min]
      186 CALL                             R14 2 1
      187 DIV                              R15 R14 R13
      188 GETIMPORT                        R16 K13 [Vector2.new]
      190 GETUPVAL                         R18 3
      191 GETTABLEKS                       R18 R18 K2 ["Time"]
      193 MUL                              R19 R2 R15
      194 SUB                              R17 R18 R19
      195 GETUPVAL                         R19 5
      196 GETTABLEKS                       R19 R19 K9 ["Y"]
      198 MUL                              R20 R11 R15
      199 SUB                              R18 R19 R20
      200 CALL                             R16 2 -1
      201 RETURN                           R16 -1

PROTO_8:
        0 JUMPIFNOTEQKS                    R1 K0 ["Top"] ; [+3]
        2 LOADN                            R7 1
        3 JUMP                             ; [+1]
        4 LOADN                            R7 -1
        5 GETTABLEKS                       R9 R0 K1 ["getViewport"]
        7 CALL                             R9 0 1
        8 JUMPIF                           R9 ; [+2]
        9 LOADN                            R8 0
       10 JUMP                             ; [+18]
       11 GETTABLEKS                       R12 R0 K2 ["plotToViewX"]
       13 LOADN                            R13 1
       14 CALL                             R12 1 1
       15 GETTABLEKS                       R13 R0 K2 ["plotToViewX"]
       17 LOADN                            R14 0
       18 CALL                             R13 1 1
       19 SUB                              R11 R12 R13
       20 FASTCALL1                        MATH_ABS R11 ; [+2]
       21 GETIMPORT                        R10 K5 [math.abs]
       23 CALL                             R10 1 1
       24 GETTABLEKS                       R11 R9 K6 ["AbsoluteSize"]
       26 GETTABLEKS                       R11 R11 K7 ["X"]
       28 MUL                              R8 R10 R11
       29 GETTABLEKS                       R10 R0 K1 ["getViewport"]
       31 CALL                             R10 0 1
       32 JUMPIF                           R10 ; [+2]
       33 LOADN                            R9 0
       34 JUMP                             ; [+18]
       35 GETTABLEKS                       R13 R0 K8 ["plotToViewY"]
       37 LOADN                            R14 1
       38 CALL                             R13 1 1
       39 GETTABLEKS                       R14 R0 K8 ["plotToViewY"]
       41 LOADN                            R15 0
       42 CALL                             R14 1 1
       43 SUB                              R12 R13 R14
       44 FASTCALL1                        MATH_ABS R12 ; [+2]
       45 GETIMPORT                        R11 K5 [math.abs]
       47 CALL                             R11 1 1
       48 GETTABLEKS                       R12 R10 K6 ["AbsoluteSize"]
       50 GETTABLEKS                       R12 R12 K9 ["Y"]
       52 MUL                              R9 R11 R12
       53 JUMPIFEQKN                       R8 K10 [0] ; [+3]
       55 JUMPIFNOTEQKN                    R9 K10 [0] ; [+20]
       57 GETIMPORT                        R10 K13 [Vector2.new]
       59 GETTABLEKS                       R11 R2 K14 ["Time"]
       61 GETTABLEKS                       R13 R2 K15 ["Value"]
       63 GETTABLEKS                       R15 R2 K16 ["Envelope"]
       65 MUL                              R14 R7 R15
       66 ADD                              R12 R13 R14
       67 CALL                             R10 2 1
       68 NEWTABLE                         R11 0 3
       70 MOVE                             R12 R10
       71 MOVE                             R13 R10
       72 MOVE                             R14 R10
       73 SETLIST                          R11 R12 3 [1]
       75 RETURN                           R11 1
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R12 R6 K17 ["EnvelopeToOffset"]
       79 GETTABLEKS                       R13 R2 K16 ["Envelope"]
       81 CALL                             R11 2 1
       82 GETTABLEKS                       R12 R0 K1 ["getViewport"]
       84 CALL                             R12 0 1
       85 JUMPIFNOTEQKNIL                  R12 ; [+3]
       87 MOVE                             R10 R11
       88 JUMP                             ; [+15]
       89 GETTABLEKS                       R14 R12 K6 ["AbsoluteSize"]
       91 GETTABLEKS                       R14 R14 K9 ["Y"]
       93 GETTABLEKS                       R15 R6 K18 ["BaseViewportHeightPixels"]
       95 SUB                              R13 R14 R15
       96 GETTABLEKS                       R15 R6 K18 ["BaseViewportHeightPixels"]
       98 MULK                             R16 R13 K19 [0.5]
       99 ADD                              R14 R15 R16
      100 GETTABLEKS                       R16 R6 K18 ["BaseViewportHeightPixels"]
      102 DIV                              R15 R14 R16
      103 MUL                              R10 R11 R15
      104 ADD                              R11 R5 R10
      105 GETTABLEKS                       R15 R6 K21 ["WrapAngle"]
      107 SUBRK                            R14 K20 [1.5707963267949] R15
      108 FASTCALL1                        MATH_COS R14 ; [+2]
      109 GETIMPORT                        R13 K23 [math.cos]
      111 CALL                             R13 1 1
      112 MUL                              R12 R11 R13
      113 GETTABLEKS                       R16 R6 K21 ["WrapAngle"]
      115 SUBRK                            R15 K20 [1.5707963267949] R16
      116 FASTCALL1                        MATH_SIN R15 ; [+2]
      117 GETIMPORT                        R14 K25 [math.sin]
      119 CALL                             R14 1 1
      120 MUL                              R13 R11 R14
      121 DIV                              R14 R12 R8
      122 DIV                              R15 R13 R9
      123 DIV                              R16 R10 R9
      124 GETTABLEKS                       R20 R2 K16 ["Envelope"]
      126 ADD                              R19 R20 R16
      127 DIV                              R20 R11 R9
      128 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
      130 GETIMPORT                        R18 K27 [math.max]
      132 CALL                             R18 2 1
      133 MUL                              R17 R18 R7
      134 GETIMPORT                        R18 K13 [Vector2.new]
      136 GETTABLEKS                       R19 R2 K14 ["Time"]
      138 GETTABLEKS                       R21 R2 K15 ["Value"]
      140 ADD                              R20 R21 R17
      141 CALL                             R18 2 1
      142 NEWCLOSURE                       R19 P0
      143 CAPTURE                          VAL R14
      144 CAPTURE                          UPVAL U0
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R18
      149 CAPTURE                          UPVAL U1
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R0
      156 MOVE                             R20 R19
      157 LOADK                            R21 K28 ["Left"]
      158 MOVE                             R22 R3
      159 JUMPIF                           R22 ; [+8]
      160 GETIMPORT                        R22 K30 [NumberSequenceKeypoint.new]
      162 GETTABLEKS                       R24 R2 K14 ["Time"]
      164 SUB                              R23 R24 R14
      165 GETTABLEKS                       R24 R2 K15 ["Value"]
      167 CALL                             R22 2 1
      168 CALL                             R20 2 1
      169 MOVE                             R21 R19
      170 LOADK                            R22 K31 ["Right"]
      171 MOVE                             R23 R4
      172 JUMPIF                           R23 ; [+8]
      173 GETIMPORT                        R23 K30 [NumberSequenceKeypoint.new]
      175 GETTABLEKS                       R25 R2 K14 ["Time"]
      177 ADD                              R24 R25 R14
      178 GETTABLEKS                       R25 R2 K15 ["Value"]
      180 CALL                             R23 2 1
      181 CALL                             R21 2 1
      182 NEWTABLE                         R22 0 3
      184 MOVE                             R23 R20
      185 MOVE                             R24 R18
      186 MOVE                             R25 R21
      187 SETLIST                          R22 R23 3 [1]
      189 RETURN                           R22 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Graphing"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["PropertyEntries"]
       20 GETTABLEKS                       R4 R4 K10 ["PropertyView"]
       22 GETTABLEKS                       R4 R4 K11 ["NumberSequencePropertyView"]
       24 GETTABLEKS                       R4 R4 K12 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K8 ["Components"]
       31 GETTABLEKS                       R5 R5 K9 ["PropertyEntries"]
       33 GETTABLEKS                       R5 R5 K10 ["PropertyView"]
       35 GETTABLEKS                       R5 R5 K11 ["NumberSequencePropertyView"]
       37 GETTABLEKS                       R5 R5 K13 ["NumberSequenceUtil"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K6 [require]
       42 GETTABLEKS                       R6 R0 K14 ["Util"]
       44 GETTABLEKS                       R6 R6 K15 ["getVisualValues"]
       46 CALL                             R5 1 1
       47 DUPCLOSURE                       R6 K16 [PROTO_0]
       48 DUPCLOSURE                       R7 K17 [PROTO_1]
       49 DUPCLOSURE                       R8 K18 [PROTO_2]
       50 DUPCLOSURE                       R9 K19 [PROTO_3]
       51 DUPCLOSURE                       R10 K20 [PROTO_4]
       52 DUPCLOSURE                       R11 K21 [PROTO_5]
       53 DUPCLOSURE                       R12 K22 [PROTO_6]
       54 DUPCLOSURE                       R13 K23 [PROTO_8]
       55 CAPTURE                          VAL R12
       56 CAPTURE                          VAL R4
       57 DUPTABLE                         R14 K31 [{"toUDim2", "clampEnvelope", "calculateCatmullRomTangents", "calculateCurvePositions", "pixelsPerPlotUnitY", "pixelsPerPlotUnitX", "scalePixelOffsetY"}]
       58 SETTABLEKS                       R6 R14 K24 ["toUDim2"]
       60 SETTABLEKS                       R7 R14 K25 ["clampEnvelope"]
       62 SETTABLEKS                       R8 R14 K26 ["calculateCatmullRomTangents"]
       64 SETTABLEKS                       R13 R14 K27 ["calculateCurvePositions"]
       66 SETTABLEKS                       R9 R14 K28 ["pixelsPerPlotUnitY"]
       68 SETTABLEKS                       R10 R14 K29 ["pixelsPerPlotUnitX"]
       70 SETTABLEKS                       R11 R14 K30 ["scalePixelOffsetY"]
       72 RETURN                           R14 1
