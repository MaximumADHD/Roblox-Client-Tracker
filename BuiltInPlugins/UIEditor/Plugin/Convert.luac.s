PROTO_0:
        0 MOVE                             R5 R3
        1 GETUPVAL                         R6 0
        2 JUMPIFNOT                        R6 ; [+2]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R5 1
        5 LOADK                            R8 K0 ["UIPadding"]
        6 NAMECALL                         R6 R4 K1 ["FindFirstChildWhichIsA"]
        8 CALL                             R6 2 1
        9 GETIMPORT                        R7 K4 [Vector2.zero]
       11 GETIMPORT                        R8 K4 [Vector2.zero]
       13 JUMPIFNOT                        R6 ; [+28]
       14 GETUPVAL                         R9 1
       15 GETIMPORT                        R11 K7 [UDim2.new]
       17 GETTABLEKS                       R12 R6 K8 ["PaddingLeft"]
       19 GETTABLEKS                       R13 R6 K9 ["PaddingTop"]
       21 CALL                             R11 2 1
       22 GETTABLEKS                       R12 R4 K10 ["AbsoluteSize"]
       24 NAMECALL                         R9 R9 K11 ["multUDimWithVector"]
       26 CALL                             R9 3 1
       27 MOVE                             R7 R9
       28 GETUPVAL                         R9 1
       29 GETIMPORT                        R11 K7 [UDim2.new]
       31 GETTABLEKS                       R12 R6 K12 ["PaddingRight"]
       33 GETTABLEKS                       R13 R6 K13 ["PaddingBottom"]
       35 CALL                             R11 2 1
       36 GETTABLEKS                       R12 R4 K10 ["AbsoluteSize"]
       38 NAMECALL                         R9 R9 K11 ["multUDimWithVector"]
       40 CALL                             R9 3 1
       41 MOVE                             R8 R9
       42 GETTABLEKS                       R11 R4 K10 ["AbsoluteSize"]
       44 SUB                              R10 R11 R7
       45 SUB                              R9 R10 R8
       46 LOADN                            R10 1
       47 LOADN                            R11 1
       48 GETTABLEKS                       R12 R9 K14 ["X"]
       50 JUMPIFEQKN                       R12 K15 [0] ; [+3]
       52 GETTABLEKS                       R10 R9 K14 ["X"]
       54 GETTABLEKS                       R12 R9 K16 ["Y"]
       56 JUMPIFEQKN                       R12 K15 [0] ; [+3]
       58 GETTABLEKS                       R11 R9 K16 ["Y"]
       60 GETIMPORT                        R12 K17 [Vector2.new]
       62 MOVE                             R13 R10
       63 MOVE                             R14 R11
       64 CALL                             R12 2 1
       65 MOVE                             R9 R12
       66 JUMPIFNOT                        R1 ; [+30]
       67 GETIMPORT                        R14 K17 [Vector2.new]
       69 GETTABLEKS                       R15 R3 K14 ["X"]
       71 GETTABLEKS                       R15 R15 K18 ["Offset"]
       73 GETTABLEKS                       R16 R3 K16 ["Y"]
       75 GETTABLEKS                       R16 R16 K18 ["Offset"]
       77 CALL                             R14 2 1
       78 SUB                              R13 R2 R14
       79 DIV                              R12 R13 R9
       80 GETIMPORT                        R13 K7 [UDim2.new]
       82 GETTABLEKS                       R14 R12 K14 ["X"]
       84 GETTABLEKS                       R15 R3 K14 ["X"]
       86 GETTABLEKS                       R15 R15 K18 ["Offset"]
       88 GETTABLEKS                       R16 R12 K16 ["Y"]
       90 GETTABLEKS                       R17 R3 K16 ["Y"]
       92 GETTABLEKS                       R17 R17 K18 ["Offset"]
       94 CALL                             R13 4 1
       95 MOVE                             R5 R13
       96 RETURN                           R5 1
       97 GETIMPORT                        R14 K17 [Vector2.new]
       99 GETTABLEKS                       R15 R3 K14 ["X"]
      101 GETTABLEKS                       R15 R15 K19 ["Scale"]
      103 GETTABLEKS                       R16 R3 K16 ["Y"]
      105 GETTABLEKS                       R16 R16 K19 ["Scale"]
      107 CALL                             R14 2 1
      108 GETTABLEKS                       R15 R4 K10 ["AbsoluteSize"]
      110 MUL                              R13 R14 R15
      111 SUB                              R12 R2 R13
      112 GETIMPORT                        R13 K7 [UDim2.new]
      114 GETTABLEKS                       R14 R3 K14 ["X"]
      116 GETTABLEKS                       R14 R14 K19 ["Scale"]
      118 GETTABLEKS                       R15 R12 K14 ["X"]
      120 GETTABLEKS                       R16 R3 K16 ["Y"]
      122 GETTABLEKS                       R16 R16 K19 ["Scale"]
      124 GETTABLEKS                       R17 R12 K16 ["Y"]
      126 CALL                             R13 4 1
      127 MOVE                             R5 R13
      128 RETURN                           R5 1

PROTO_1:
        0 MOVE                             R7 R4
        1 GETUPVAL                         R8 0
        2 JUMPIFNOT                        R8 ; [+2]
        3 JUMPIF                           R5 ; [+1]
        4 RETURN                           R7 1
        5 LOADK                            R10 K0 ["UIPadding"]
        6 NAMECALL                         R8 R5 K1 ["FindFirstChildWhichIsA"]
        8 CALL                             R8 2 1
        9 GETIMPORT                        R9 K4 [Vector2.zero]
       11 GETIMPORT                        R10 K4 [Vector2.zero]
       13 JUMPIFNOT                        R8 ; [+28]
       14 GETUPVAL                         R11 1
       15 GETIMPORT                        R13 K7 [UDim2.new]
       17 GETTABLEKS                       R14 R8 K8 ["PaddingLeft"]
       19 GETTABLEKS                       R15 R8 K9 ["PaddingTop"]
       21 CALL                             R13 2 1
       22 GETTABLEKS                       R14 R5 K10 ["AbsoluteSize"]
       24 NAMECALL                         R11 R11 K11 ["multUDimWithVector"]
       26 CALL                             R11 3 1
       27 MOVE                             R9 R11
       28 GETUPVAL                         R11 1
       29 GETIMPORT                        R13 K7 [UDim2.new]
       31 GETTABLEKS                       R14 R8 K12 ["PaddingRight"]
       33 GETTABLEKS                       R15 R8 K13 ["PaddingBottom"]
       35 CALL                             R13 2 1
       36 GETTABLEKS                       R14 R5 K10 ["AbsoluteSize"]
       38 NAMECALL                         R11 R11 K11 ["multUDimWithVector"]
       40 CALL                             R11 3 1
       41 MOVE                             R10 R11
       42 DIVK                             R11 R3 K14 [2]
       43 GETUPVAL                         R12 1
       44 MOVE                             R14 R11
       45 GETIMPORT                        R15 K4 [Vector2.zero]
       47 GETTABLEKS                       R16 R5 K15 ["AbsoluteRotation"]
       49 NAMECALL                         R12 R12 K16 ["rotate"]
       51 CALL                             R12 4 1
       52 ADD                              R14 R2 R11
       53 SUB                              R13 R14 R12
       54 GETTABLEKS                       R15 R5 K10 ["AbsoluteSize"]
       56 DIVK                             R14 R15 K14 [2]
       57 GETUPVAL                         R15 1
       58 MOVE                             R17 R14
       59 GETIMPORT                        R18 K4 [Vector2.zero]
       61 GETTABLEKS                       R19 R5 K15 ["AbsoluteRotation"]
       63 NAMECALL                         R15 R15 K16 ["rotate"]
       65 CALL                             R15 4 1
       66 GETTABLEKS                       R18 R5 K17 ["AbsolutePosition"]
       68 ADD                              R17 R18 R14
       69 SUB                              R16 R17 R15
       70 GETUPVAL                         R17 1
       71 MUL                              R19 R6 R3
       72 GETIMPORT                        R20 K4 [Vector2.zero]
       74 GETTABLEKS                       R21 R5 K15 ["AbsoluteRotation"]
       76 NAMECALL                         R17 R17 K16 ["rotate"]
       78 CALL                             R17 4 1
       79 SUB                              R19 R13 R16
       80 ADD                              R18 R19 R17
       81 GETUPVAL                         R19 1
       82 MOVE                             R21 R18
       83 GETIMPORT                        R22 K4 [Vector2.zero]
       85 GETTABLEKS                       R24 R5 K15 ["AbsoluteRotation"]
       87 MINUS                            R23 R24
       88 NAMECALL                         R19 R19 K16 ["rotate"]
       90 CALL                             R19 4 1
       91 GETUPVAL                         R20 2
       92 JUMPIFNOT                        R20 ; [+8]
       93 LOADK                            R22 K18 ["ScrollingFrame"]
       94 NAMECALL                         R20 R5 K19 ["IsA"]
       96 CALL                             R20 2 1
       97 JUMPIFNOT                        R20 ; [+3]
       98 GETTABLEKS                       R20 R5 K20 ["CanvasPosition"]
      100 ADD                              R19 R19 R20
      101 LOADNIL                          R20
      102 GETUPVAL                         R21 3
      103 JUMPIFNOT                        R21 ; [+84]
      104 LOADK                            R23 K18 ["ScrollingFrame"]
      105 NAMECALL                         R21 R5 K19 ["IsA"]
      107 CALL                             R21 2 1
      108 JUMPIFNOT                        R21 ; [+74]
      109 GETUPVAL                         R21 2
      110 JUMPIFNOT                        R21 ; [+67]
      111 GETTABLEKS                       R21 R5 K21 ["CanvasSize"]
      113 GETTABLEKS                       R23 R5 K22 ["Parent"]
      115 JUMPIFNOT                        R23 ; [+5]
      116 GETTABLEKS                       R22 R5 K22 ["Parent"]
      118 GETTABLEKS                       R22 R22 K10 ["AbsoluteSize"]
      120 JUMPIF                           R22 ; [+2]
      121 GETTABLEKS                       R22 R5 K10 ["AbsoluteSize"]
      123 GETIMPORT                        R23 K23 [Vector2.new]
      125 GETTABLEKS                       R26 R21 K24 ["X"]
      127 GETTABLEKS                       R26 R26 K25 ["Scale"]
      129 GETTABLEKS                       R27 R22 K24 ["X"]
      131 MUL                              R25 R26 R27
      132 GETTABLEKS                       R26 R21 K24 ["X"]
      134 GETTABLEKS                       R26 R26 K26 ["Offset"]
      136 ADD                              R24 R25 R26
      137 GETTABLEKS                       R27 R21 K27 ["Y"]
      139 GETTABLEKS                       R27 R27 K25 ["Scale"]
      141 GETTABLEKS                       R28 R22 K27 ["Y"]
      143 MUL                              R26 R27 R28
      144 GETTABLEKS                       R27 R21 K27 ["Y"]
      146 GETTABLEKS                       R27 R27 K26 ["Offset"]
      148 ADD                              R25 R26 R27
      149 CALL                             R23 2 1
      150 GETIMPORT                        R25 K23 [Vector2.new]
      152 GETTABLEKS                       R27 R23 K24 ["X"]
      154 GETTABLEKS                       R28 R5 K10 ["AbsoluteSize"]
      156 GETTABLEKS                       R28 R28 K24 ["X"]
      158 FASTCALL2                        MATH_MAX R27 R28 ; [+3]
      160 GETIMPORT                        R26 K30 [math.max]
      162 CALL                             R26 2 1
      163 GETTABLEKS                       R28 R23 K27 ["Y"]
      165 GETTABLEKS                       R29 R5 K10 ["AbsoluteSize"]
      167 GETTABLEKS                       R29 R29 K27 ["Y"]
      169 FASTCALL2                        MATH_MAX R28 R29 ; [+3]
      171 GETIMPORT                        R27 K30 [math.max]
      173 CALL                             R27 2 1
      174 CALL                             R25 2 1
      175 SUB                              R24 R25 R9
      176 SUB                              R20 R24 R10
      177 JUMP                             ; [+14]
      178 GETTABLEKS                       R22 R5 K31 ["AbsoluteCanvasSize"]
      180 SUB                              R21 R22 R9
      181 SUB                              R20 R21 R10
      182 JUMP                             ; [+9]
      183 GETTABLEKS                       R22 R5 K10 ["AbsoluteSize"]
      185 SUB                              R21 R22 R9
      186 SUB                              R20 R21 R10
      187 JUMP                             ; [+4]
      188 GETTABLEKS                       R22 R5 K10 ["AbsoluteSize"]
      190 SUB                              R21 R22 R9
      191 SUB                              R20 R21 R10
      192 LOADN                            R21 1
      193 LOADN                            R22 1
      194 GETTABLEKS                       R23 R20 K24 ["X"]
      196 JUMPIFEQKN                       R23 K32 [0] ; [+3]
      198 GETTABLEKS                       R21 R20 K24 ["X"]
      200 GETTABLEKS                       R23 R20 K27 ["Y"]
      202 JUMPIFEQKN                       R23 K32 [0] ; [+3]
      204 GETTABLEKS                       R22 R20 K27 ["Y"]
      206 GETIMPORT                        R23 K23 [Vector2.new]
      208 MOVE                             R24 R21
      209 MOVE                             R25 R22
      210 CALL                             R23 2 1
      211 MOVE                             R20 R23
      212 JUMPIFNOT                        R1 ; [+31]
      213 GETIMPORT                        R23 K23 [Vector2.new]
      215 GETTABLEKS                       R24 R4 K24 ["X"]
      217 GETTABLEKS                       R24 R24 K26 ["Offset"]
      219 GETTABLEKS                       R25 R4 K27 ["Y"]
      221 GETTABLEKS                       R25 R25 K26 ["Offset"]
      223 CALL                             R23 2 1
      224 SUB                              R26 R19 R9
      225 SUB                              R25 R26 R23
      226 DIV                              R24 R25 R20
      227 GETIMPORT                        R25 K7 [UDim2.new]
      229 GETTABLEKS                       R26 R24 K24 ["X"]
      231 GETTABLEKS                       R27 R4 K24 ["X"]
      233 GETTABLEKS                       R27 R27 K26 ["Offset"]
      235 GETTABLEKS                       R28 R24 K27 ["Y"]
      237 GETTABLEKS                       R29 R4 K27 ["Y"]
      239 GETTABLEKS                       R29 R29 K26 ["Offset"]
      241 CALL                             R25 4 1
      242 MOVE                             R7 R25
      243 RETURN                           R7 1
      244 GETIMPORT                        R24 K23 [Vector2.new]
      246 GETTABLEKS                       R25 R4 K24 ["X"]
      248 GETTABLEKS                       R25 R25 K25 ["Scale"]
      250 GETTABLEKS                       R26 R4 K27 ["Y"]
      252 GETTABLEKS                       R26 R26 K25 ["Scale"]
      254 CALL                             R24 2 1
      255 GETTABLEKS                       R25 R5 K10 ["AbsoluteSize"]
      257 MUL                              R23 R24 R25
      258 SUB                              R25 R19 R9
      259 SUB                              R24 R25 R23
      260 GETIMPORT                        R25 K7 [UDim2.new]
      262 GETTABLEKS                       R26 R4 K24 ["X"]
      264 GETTABLEKS                       R26 R26 K25 ["Scale"]
      266 GETTABLEKS                       R27 R24 K24 ["X"]
      268 GETTABLEKS                       R28 R4 K27 ["Y"]
      270 GETTABLEKS                       R28 R28 K25 ["Scale"]
      272 GETTABLEKS                       R29 R24 K27 ["Y"]
      274 CALL                             R25 4 1
      275 MOVE                             R7 R25
      276 RETURN                           R7 1

PROTO_2:
        0 MOVE                             R11 R1
        1 MOVE                             R12 R3
        2 MOVE                             R13 R4
        3 MOVE                             R14 R5
        4 MOVE                             R15 R7
        5 MOVE                             R16 R8
        6 NAMECALL                         R9 R0 K0 ["convertAbsolutePositionToScaleOrOffset"]
        8 CALL                             R9 7 1
        9 MOVE                             R12 R2
       10 MOVE                             R13 R4
       11 MOVE                             R14 R6
       12 MOVE                             R15 R7
       13 NAMECALL                         R10 R0 K1 ["convertAbsoluteSizeToScaleOrOffset"]
       15 CALL                             R10 5 1
       16 RETURN                           R9 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Utility"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Flags"]
       18 GETTABLEKS                       R2 R2 K7 ["GetFFlagUIEditorFixCrashInConvert"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K9 [game]
       23 LOADK                            R4 K10 ["UIEditorFixScrollingFrame"]
       24 LOADB                            R5 0
       25 NAMECALL                         R2 R2 K11 ["DefineFastFlag"]
       27 CALL                             R2 3 1
       28 GETIMPORT                        R3 K9 [game]
       30 LOADK                            R5 K12 ["UIEditorFixScrollingFrameOffset"]
       31 LOADB                            R6 0
       32 NAMECALL                         R3 R3 K11 ["DefineFastFlag"]
       34 CALL                             R3 3 1
       35 NEWTABLE                         R4 4 0
       37 DUPCLOSURE                       R5 K13 [PROTO_0]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R5 R4 K14 ["convertAbsoluteSizeToScaleOrOffset"]
       42 DUPCLOSURE                       R5 K15 [PROTO_1]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R5 R4 K16 ["convertAbsolutePositionToScaleOrOffset"]
       49 DUPCLOSURE                       R5 K17 [PROTO_2]
       50 SETTABLEKS                       R5 R4 K18 ["convertAbsoluteToScaleOrOffset"]
       52 RETURN                           R4 1
