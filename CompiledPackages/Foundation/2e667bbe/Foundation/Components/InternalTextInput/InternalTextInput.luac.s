PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["ReleaseFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["IsFocused"]
        9 CALL                             R0 1 1
       10 RETURN                           R0 1
       11 LOADNIL                          R0
       12 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K4 [{"getIsFocused", "focus", "releaseFocus", "setHover"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getIsFocused"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["focus"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["releaseFocus"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setHover"]
       13 RETURN                           R0 1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["onChanged"]
        5 LOADK                            R2 K1 [""]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K0 ["onChanged"]
       11 GETTABLEKS                       R2 R0 K2 ["Text"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K1 ["onFocus"]
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K1 ["onFocus"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
       10 CALL                             R3 0 0
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K1 ["onReturnPressed"]
       15 JUMPIFNOT                        R3 ; [+4]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K1 ["onReturnPressed"]
       19 CALL                             R3 0 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["onDragStarted"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["onDragStarted"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["onDrag"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["onDrag"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQ                      R2 R1 ; [+4]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 0
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 3
       11 LOADB                            R3 0
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K0 ["current"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R2 R3 K1 ["onDragEnded"]
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R2 R3 K1 ["onDragEnded"]
       24 MOVE                             R3 R0
       25 MOVE                             R4 R1
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K7 ["innerContainer"]
        7 GETTABLEKS                       R3 R4 K0 ["radius"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K8 ["Stroke"]
       15 GETTABLEKS                       R1 R2 K9 ["Thick"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K8 ["Stroke"]
       22 GETTABLEKS                       R1 R2 K9 ["Thick"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K1 ["outerContainer"]
        3 GETTABLEKS                       R6 R7 K2 ["minHeight"]
        5 GETUPVAL                         R7 1
        6 SUB                              R5 R6 R7
        7 GETUPVAL                         R6 2
        8 SUB                              R4 R5 R6
        9 GETUPVAL                         R6 3
       10 FASTCALL1                        MATH_CEIL R6 ; [+2]
       11 GETIMPORT                        R5 K5 [math.ceil]
       13 CALL                             R5 1 1
       14 SUB                              R3 R4 R5
       15 MULK                             R2 R3 K0 [2]
       16 FASTCALL1                        MATH_ROUND R2 ; [+2]
       17 GETIMPORT                        R1 K7 [math.round]
       19 CALL                             R1 1 1
       20 DIVK                             R0 R1 K0 [2]
       21 GETIMPORT                        R1 K10 [UDim.new]
       23 LOADN                            R2 0
       24 DIVK                             R4 R0 K0 [2]
       25 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       26 GETIMPORT                        R3 K12 [math.floor]
       28 CALL                             R3 1 1
       29 CALL                             R1 2 1
       30 GETIMPORT                        R2 K10 [UDim.new]
       32 LOADN                            R3 0
       33 DIVK                             R5 R0 K0 [2]
       34 FASTCALL1                        MATH_CEIL R5 ; [+2]
       35 GETIMPORT                        R4 K5 [math.ceil]
       37 CALL                             R4 1 1
       38 CALL                             R2 2 1
       39 GETUPVAL                         R4 4
       40 GETUPVAL                         R5 3
       41 GETUPVAL                         R6 5
       42 GETUPVAL                         R7 6
       43 CALL                             R4 3 1
       44 FASTCALL1                        MATH_ROUND R0 ; [+3]
       45 MOVE                             R6 R0
       46 GETIMPORT                        R5 K7 [math.round]
       48 CALL                             R5 1 1
       49 ADD                              R3 R4 R5
       50 DUPTABLE                         R4 K17 [{"top", "bottom", "left", "right"}]
       51 SETTABLEKS                       R1 R4 K13 ["top"]
       53 SETTABLEKS                       R2 R4 K14 ["bottom"]
       55 GETIMPORT                        R5 K10 [UDim.new]
       57 LOADN                            R6 0
       58 LOADN                            R7 0
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R4 K15 ["left"]
       62 GETIMPORT                        R5 K10 [UDim.new]
       64 LOADN                            R6 0
       65 LOADN                            R7 0
       66 CALL                             R5 2 1
       67 SETTABLEKS                       R5 R4 K16 ["right"]
       69 MOVE                             R5 R3
       70 RETURN                           R4 2

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onDragStarted"]
        3 JUMPIF                           R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["onDrag"]
        7 JUMPIF                           R0 ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K2 ["onDragEnded"]
       11 JUMPIF                           R0 ; [+2]
       12 LOADNIL                          R0
       13 RETURN                           R0 1
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K3 ["createElement"]
       17 LOADK                            R1 K4 ["UIDragDetector"]
       18 NEWTABLE                         R2 8 0
       20 GETIMPORT                        R3 K8 [Enum.UIDragDetectorDragStyle.Scriptable]
       22 SETTABLEKS                       R3 R2 K9 ["DragStyle"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K10 ["Event"]
       27 GETTABLEKS                       R3 R4 K11 ["DragStart"]
       29 GETUPVAL                         R4 2
       30 SETTABLE                         R4 R2 R3
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K10 ["Event"]
       34 GETTABLEKS                       R3 R4 K12 ["DragContinue"]
       36 GETUPVAL                         R4 3
       37 SETTABLE                         R4 R2 R3
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K10 ["Event"]
       41 GETTABLEKS                       R3 R4 K13 ["DragEnd"]
       43 GETUPVAL                         R4 4
       44 SETTABLE                         R4 R2 R3
       45 GETUPVAL                         R4 5
       46 NOT                              R3 R4
       47 JUMPIFNOT                        R3 ; [+4]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K14 ["isDisabled"]
       51 NOT                              R3 R4
       52 SETTABLEKS                       R3 R2 K15 ["Enabled"]
       54 CALL                             R0 2 -1
       55 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 LOADN                            R5 1
        7 GETTABLEKS                       R6 R2 K0 ["maxLines"]
        9 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       11 GETIMPORT                        R4 K3 [math.max]
       13 CALL                             R4 2 1
       14 LOADN                            R6 1
       15 JUMPIFLT                         R6 R4 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R3
       21 GETTABLEKS                       R8 R2 K4 ["size"]
       23 MOVE                             R9 R5
       24 CALL                             R6 3 1
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K5 ["useRef"]
       28 LOADNIL                          R8
       29 CALL                             R7 1 1
       30 GETUPVAL                         R9 4
       31 GETTABLEKS                       R8 R9 K5 ["useRef"]
       33 LOADNIL                          R9
       34 CALL                             R8 1 1
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R9 R10 K6 ["useState"]
       38 LOADB                            R10 0
       39 CALL                             R9 1 2
       40 GETUPVAL                         R12 4
       41 GETTABLEKS                       R11 R12 K6 ["useState"]
       43 LOADB                            R12 0
       44 CALL                             R11 1 2
       45 GETTABLEKS                       R14 R3 K7 ["Stroke"]
       47 GETTABLEKS                       R13 R14 K8 ["Standard"]
       49 FASTCALL1                        MATH_CEIL R13 ; [+3]
       50 MOVE                             R16 R13
       51 GETIMPORT                        R15 K11 [math.ceil]
       53 CALL                             R15 1 1
       54 MULK                             R14 R15 K9 [2]
       55 GETTABLEKS                       R16 R3 K7 ["Stroke"]
       57 GETTABLEKS                       R15 R16 K12 ["Thick"]
       59 FASTCALL1                        MATH_CEIL R15 ; [+3]
       60 MOVE                             R18 R15
       61 GETIMPORT                        R17 K11 [math.ceil]
       63 CALL                             R17 1 1
       64 MULK                             R16 R17 K9 [2]
       65 GETTABLEKS                       R18 R6 K13 ["textBox"]
       67 GETTABLEKS                       R17 R18 K14 ["FontSize"]
       69 GETTABLEKS                       R19 R6 K13 ["textBox"]
       71 GETTABLEKS                       R18 R19 K15 ["LineHeight"]
       73 GETUPVAL                         R20 4
       74 GETTABLEKS                       R19 R20 K16 ["useCallback"]
       76 NEWCLOSURE                       R20 P0
       77 CAPTURE                          VAL R7
       78 NEWTABLE                         R21 0 0
       80 CALL                             R19 2 1
       81 GETUPVAL                         R21 4
       82 GETTABLEKS                       R20 R21 K16 ["useCallback"]
       84 NEWCLOSURE                       R21 P1
       85 CAPTURE                          VAL R7
       86 NEWTABLE                         R22 0 0
       88 CALL                             R20 2 1
       89 GETUPVAL                         R22 4
       90 GETTABLEKS                       R21 R22 K16 ["useCallback"]
       92 NEWCLOSURE                       R22 P2
       93 CAPTURE                          VAL R7
       94 NEWTABLE                         R23 0 0
       96 CALL                             R21 2 1
       97 GETUPVAL                         R23 4
       98 GETTABLEKS                       R22 R23 K17 ["useImperativeHandle"]
      100 MOVE                             R23 R1
      101 NEWCLOSURE                       R24 P3
      102 CAPTURE                          VAL R21
      103 CAPTURE                          VAL R19
      104 CAPTURE                          VAL R20
      105 CAPTURE                          VAL R10
      106 NEWTABLE                         R25 0 3
      108 MOVE                             R26 R21
      109 MOVE                             R27 R19
      110 MOVE                             R28 R20
      111 SETLIST                          R25 R26 3 [1]
      113 CALL                             R22 3 0
      114 GETUPVAL                         R23 4
      115 GETTABLEKS                       R22 R23 K16 ["useCallback"]
      117 NEWCLOSURE                       R23 P4
      118 CAPTURE                          VAL R2
      119 NEWTABLE                         R24 0 1
      121 GETTABLEKS                       R25 R2 K18 ["onChanged"]
      123 SETLIST                          R24 R25 1 [1]
      125 CALL                             R22 2 1
      126 GETUPVAL                         R24 4
      127 GETTABLEKS                       R23 R24 K16 ["useCallback"]
      129 NEWCLOSURE                       R24 P5
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R12
      132 NEWTABLE                         R25 0 2
      134 GETTABLEKS                       R26 R2 K19 ["onFocus"]
      136 GETTABLEKS                       R27 R2 K20 ["isDisabled"]
      138 SETLIST                          R25 R26 2 [1]
      140 CALL                             R23 2 1
      141 GETUPVAL                         R25 4
      142 GETTABLEKS                       R24 R25 K16 ["useCallback"]
      144 NEWCLOSURE                       R25 P6
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R2
      147 NEWTABLE                         R26 0 2
      149 GETTABLEKS                       R27 R2 K21 ["onReturnPressed"]
      151 GETTABLEKS                       R28 R2 K22 ["onFocusLost"]
      153 SETLIST                          R26 R27 2 [1]
      155 CALL                             R24 2 1
      156 GETUPVAL                         R26 4
      157 GETTABLEKS                       R25 R26 K16 ["useCallback"]
      159 NEWCLOSURE                       R26 P7
      160 CAPTURE                          VAL R10
      161 CAPTURE                          UPVAL U5
      162 NEWTABLE                         R27 0 0
      164 CALL                             R25 2 1
      165 GETUPVAL                         R27 4
      166 GETTABLEKS                       R26 R27 K16 ["useCallback"]
      168 NEWCLOSURE                       R27 P8
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R2
      171 NEWTABLE                         R28 0 1
      173 GETTABLEKS                       R29 R2 K23 ["onDragStarted"]
      175 SETLIST                          R28 R29 1 [1]
      177 CALL                             R26 2 1
      178 GETUPVAL                         R28 4
      179 GETTABLEKS                       R27 R28 K16 ["useCallback"]
      181 NEWCLOSURE                       R28 P9
      182 CAPTURE                          VAL R2
      183 NEWTABLE                         R29 0 1
      185 GETTABLEKS                       R30 R2 K24 ["onDrag"]
      187 SETLIST                          R29 R30 1 [1]
      189 CALL                             R27 2 1
      190 GETUPVAL                         R29 4
      191 GETTABLEKS                       R28 R29 K16 ["useCallback"]
      193 NEWCLOSURE                       R29 P10
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R2
      199 NEWTABLE                         R30 0 1
      201 GETTABLEKS                       R31 R2 K25 ["onDragEnded"]
      203 SETLIST                          R30 R31 1 [1]
      205 CALL                             R28 2 1
      206 GETUPVAL                         R31 6
      207 GETTABLEKS                       R30 R31 K26 ["FoundationDisableStylingPolyfill"]
      209 JUMPIFNOT                        R30 ; [+7]
      210 GETUPVAL                         R29 7
      211 GETTABLEKS                       R31 R6 K13 ["textBox"]
      213 GETTABLEKS                       R30 R31 K27 ["tag"]
      215 CALL                             R29 1 1
      216 JUMP                             ; [+1]
      217 LOADNIL                          R29
      218 GETUPVAL                         R31 4
      219 GETTABLEKS                       R30 R31 K28 ["useMemo"]
      221 NEWCLOSURE                       R31 P11
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R3
      224 NEWTABLE                         R32 0 2
      226 MOVE                             R33 R3
      227 GETTABLEKS                       R35 R6 K29 ["innerContainer"]
      229 GETTABLEKS                       R34 R35 K30 ["radius"]
      231 SETLIST                          R32 R33 2 [1]
      233 CALL                             R30 2 1
      234 GETUPVAL                         R32 4
      235 GETTABLEKS                       R31 R32 K28 ["useMemo"]
      237 NEWCLOSURE                       R32 P12
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R17
      242 CAPTURE                          UPVAL U8
      243 CAPTURE                          VAL R4
      244 CAPTURE                          VAL R18
      245 NEWTABLE                         R33 0 6
      247 GETTABLEKS                       R35 R6 K31 ["outerContainer"]
      249 GETTABLEKS                       R34 R35 K32 ["minHeight"]
      251 MOVE                             R35 R14
      252 MOVE                             R36 R16
      253 MOVE                             R37 R17
      254 MOVE                             R38 R4
      255 MOVE                             R39 R18
      256 SETLIST                          R33 R34 6 [1]
      258 CALL                             R31 2 2
      259 GETUPVAL                         R34 4
      260 GETTABLEKS                       R33 R34 K28 ["useMemo"]
      262 NEWCLOSURE                       R34 P13
      263 CAPTURE                          VAL R2
      264 CAPTURE                          UPVAL U4
      265 CAPTURE                          VAL R26
      266 CAPTURE                          VAL R27
      267 CAPTURE                          VAL R28
      268 CAPTURE                          VAL R11
      269 NEWTABLE                         R35 0 5
      271 MOVE                             R36 R26
      272 MOVE                             R37 R27
      273 MOVE                             R38 R28
      274 MOVE                             R39 R11
      275 GETTABLEKS                       R40 R2 K20 ["isDisabled"]
      277 SETLIST                          R35 R36 5 [1]
      279 CALL                             R33 2 1
      280 GETUPVAL                         R35 4
      281 GETTABLEKS                       R34 R35 K33 ["createElement"]
      283 GETUPVAL                         R35 9
      284 GETUPVAL                         R36 10
      285 MOVE                             R37 R2
      286 DUPTABLE                         R38 K36 [{"GroupTransparency", "padding", "tag"}]
      287 GETTABLEKS                       R40 R2 K20 ["isDisabled"]
      289 JUMPIFNOT                        R40 ; [+4]
      290 GETUPVAL                         R40 11
      291 GETTABLEKS                       R39 R40 K37 ["DISABLED_TRANSPARENCY"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R39
      295 SETTABLEKS                       R39 R38 K34 ["GroupTransparency"]
      297 GETUPVAL                         R41 6
      298 GETTABLEKS                       R40 R41 K38 ["FoundationInternalTextInputAutoSize"]
      300 JUMPIF                           R40 ; [+1]
      301 JUMPIFNOT                        R5 ; [+2]
      302 DIVK                             R39 R14 K9 [2]
      303 JUMP                             ; [+1]
      304 LOADNIL                          R39
      305 SETTABLEKS                       R39 R38 K35 ["padding"]
      307 GETTABLEKS                       R40 R6 K39 ["canvas"]
      309 GETTABLEKS                       R39 R40 K27 ["tag"]
      311 SETTABLEKS                       R39 R38 K27 ["tag"]
      313 CALL                             R36 2 1
      314 DUPTABLE                         R37 K41 [{"Input"}]
      315 GETUPVAL                         R39 4
      316 GETTABLEKS                       R38 R39 K33 ["createElement"]
      318 GETUPVAL                         R39 9
      319 DUPTABLE                         R40 K51 [{"Size", "Position", "selection", "cursor", "stroke", "padding", "onActivated", "onStateChanged", "stateLayer", "tag", "testId"}]
      320 GETUPVAL                         R43 6
      321 GETTABLEKS                       R42 R43 K38 ["FoundationInternalTextInputAutoSize"]
      323 JUMPIF                           R42 ; [+1]
      324 JUMPIFNOT                        R5 ; [+2]
      325 LOADNIL                          R41
      326 JUMP                             ; [+7]
      327 GETIMPORT                        R41 K54 [UDim2.new]
      329 LOADN                            R42 1
      330 MINUS                            R43 R14
      331 LOADN                            R44 1
      332 MINUS                            R45 R14
      333 CALL                             R41 4 1
      334 SETTABLEKS                       R41 R40 K42 ["Size"]
      336 GETUPVAL                         R43 6
      337 GETTABLEKS                       R42 R43 K38 ["FoundationInternalTextInputAutoSize"]
      339 JUMPIF                           R42 ; [+1]
      340 JUMPIFNOT                        R5 ; [+2]
      341 LOADNIL                          R41
      342 JUMP                             ; [+5]
      343 GETIMPORT                        R41 K56 [UDim2.fromOffset]
      345 DIVK                             R42 R14 K9 [2]
      346 DIVK                             R43 R14 K9 [2]
      347 CALL                             R41 2 1
      348 SETTABLEKS                       R41 R40 K43 ["Position"]
      350 DUPTABLE                         R41 K58 [{"Selectable"}]
      351 GETTABLEKS                       R43 R2 K20 ["isDisabled"]
      353 NOT                              R42 R43
      354 SETTABLEKS                       R42 R41 K57 ["Selectable"]
      356 SETTABLEKS                       R41 R40 K44 ["selection"]
      358 SETTABLEKS                       R30 R40 K45 ["cursor"]
      360 DUPTABLE                         R41 K62 [{"Color", "Transparency", "Thickness"}]
      361 GETTABLEKS                       R43 R2 K63 ["hasError"]
      363 JUMPIFNOT                        R43 ; [+9]
      364 GETTABLEKS                       R45 R3 K59 ["Color"]
      366 GETTABLEKS                       R44 R45 K64 ["System"]
      368 GETTABLEKS                       R43 R44 K65 ["Alert"]
      370 GETTABLEKS                       R42 R43 K66 ["Color3"]
      372 JUMP                             ; [+8]
      373 GETTABLEKS                       R45 R3 K59 ["Color"]
      375 GETTABLEKS                       R44 R45 K7 ["Stroke"]
      377 GETTABLEKS                       R43 R44 K67 ["Emphasis"]
      379 GETTABLEKS                       R42 R43 K66 ["Color3"]
      381 SETTABLEKS                       R42 R41 K59 ["Color"]
      383 GETTABLEKS                       R43 R2 K63 ["hasError"]
      385 JUMPIFNOT                        R43 ; [+9]
      386 GETTABLEKS                       R45 R3 K59 ["Color"]
      388 GETTABLEKS                       R44 R45 K64 ["System"]
      390 GETTABLEKS                       R43 R44 K65 ["Alert"]
      392 GETTABLEKS                       R42 R43 K60 ["Transparency"]
      394 JUMP                             ; [+11]
      395 JUMPIFNOT                        R11 ; [+2]
      396 LOADN                            R42 0
      397 JUMP                             ; [+8]
      398 GETTABLEKS                       R45 R3 K59 ["Color"]
      400 GETTABLEKS                       R44 R45 K7 ["Stroke"]
      402 GETTABLEKS                       R43 R44 K67 ["Emphasis"]
      404 GETTABLEKS                       R42 R43 K60 ["Transparency"]
      406 SETTABLEKS                       R42 R41 K60 ["Transparency"]
      408 SETTABLEKS                       R13 R41 K61 ["Thickness"]
      410 SETTABLEKS                       R41 R40 K46 ["stroke"]
      412 GETUPVAL                         R43 6
      413 GETTABLEKS                       R42 R43 K38 ["FoundationInternalTextInputAutoSize"]
      415 JUMPIF                           R42 ; [+1]
      416 JUMPIFNOT                        R5 ; [+2]
      417 DIVK                             R41 R16 K9 [2]
      418 JUMP                             ; [+1]
      419 LOADNIL                          R41
      420 SETTABLEKS                       R41 R40 K35 ["padding"]
      422 SETTABLEKS                       R19 R40 K47 ["onActivated"]
      424 SETTABLEKS                       R25 R40 K48 ["onStateChanged"]
      426 DUPTABLE                         R41 K69 [{"affordance"}]
      427 GETUPVAL                         R43 12
      428 GETTABLEKS                       R42 R43 K70 ["None"]
      430 SETTABLEKS                       R42 R41 K68 ["affordance"]
      432 SETTABLEKS                       R41 R40 K49 ["stateLayer"]
      434 GETTABLEKS                       R42 R6 K31 ["outerContainer"]
      436 GETTABLEKS                       R41 R42 K27 ["tag"]
      438 SETTABLEKS                       R41 R40 K27 ["tag"]
      440 LOADK                            R42 K71 ["%*--outer-container"]
      441 GETTABLEKS                       R44 R2 K50 ["testId"]
      443 NAMECALL                         R42 R42 K72 ["format"]
      445 CALL                             R42 2 1
      446 MOVE                             R41 R42
      447 SETTABLEKS                       R41 R40 K50 ["testId"]
      449 DUPTABLE                         R41 K76 [{"DragDetector", "Background", "BorderFrame"}]
      450 SETTABLEKS                       R33 R41 K73 ["DragDetector"]
      452 GETTABLEKS                       R42 R2 K77 ["backgroundElement"]
      454 SETTABLEKS                       R42 R41 K74 ["Background"]
      456 GETUPVAL                         R43 4
      457 GETTABLEKS                       R42 R43 K33 ["createElement"]
      459 GETUPVAL                         R43 9
      460 DUPTABLE                         R44 K79 [{"Size", "Position", "cornerRadius", "stroke", "padding", "tag"}]
      461 GETUPVAL                         R47 6
      462 GETTABLEKS                       R46 R47 K38 ["FoundationInternalTextInputAutoSize"]
      464 JUMPIF                           R46 ; [+1]
      465 JUMPIFNOT                        R5 ; [+8]
      466 GETIMPORT                        R45 K54 [UDim2.new]
      468 LOADN                            R46 1
      469 LOADN                            R47 0
      470 LOADN                            R48 0
      471 MOVE                             R49 R32
      472 CALL                             R45 4 1
      473 JUMP                             ; [+7]
      474 GETIMPORT                        R45 K54 [UDim2.new]
      476 LOADN                            R46 1
      477 MINUS                            R47 R16
      478 LOADN                            R48 1
      479 MINUS                            R49 R16
      480 CALL                             R45 4 1
      481 SETTABLEKS                       R45 R44 K42 ["Size"]
      483 GETUPVAL                         R47 6
      484 GETTABLEKS                       R46 R47 K38 ["FoundationInternalTextInputAutoSize"]
      486 JUMPIF                           R46 ; [+1]
      487 JUMPIFNOT                        R5 ; [+2]
      488 LOADNIL                          R45
      489 JUMP                             ; [+5]
      490 GETIMPORT                        R45 K56 [UDim2.fromOffset]
      492 DIVK                             R46 R16 K9 [2]
      493 DIVK                             R47 R16 K9 [2]
      494 CALL                             R45 2 1
      495 SETTABLEKS                       R45 R44 K43 ["Position"]
      497 GETIMPORT                        R45 K81 [UDim.new]
      499 LOADN                            R46 0
      500 GETTABLEKS                       R49 R6 K29 ["innerContainer"]
      502 GETTABLEKS                       R48 R49 K30 ["radius"]
      504 DIVK                             R49 R16 K9 [2]
      505 SUB                              R47 R48 R49
      506 CALL                             R45 2 1
      507 SETTABLEKS                       R45 R44 K78 ["cornerRadius"]
      509 GETTABLEKS                       R46 R2 K20 ["isDisabled"]
      511 JUMPIF                           R46 ; [+19]
      512 JUMPIF                           R9 ; [+1]
      513 JUMPIFNOT                        R11 ; [+17]
      514 DUPTABLE                         R45 K62 [{"Color", "Transparency", "Thickness"}]
      515 GETTABLEKS                       R49 R3 K59 ["Color"]
      517 GETTABLEKS                       R48 R49 K7 ["Stroke"]
      519 GETTABLEKS                       R47 R48 K67 ["Emphasis"]
      521 GETTABLEKS                       R46 R47 K66 ["Color3"]
      523 SETTABLEKS                       R46 R45 K59 ["Color"]
      525 LOADK                            R46 K82 [0.88]
      526 SETTABLEKS                       R46 R45 K60 ["Transparency"]
      528 SETTABLEKS                       R15 R45 K61 ["Thickness"]
      530 JUMP                             ; [+1]
      531 LOADNIL                          R45
      532 SETTABLEKS                       R45 R44 K46 ["stroke"]
      534 GETTABLEKS                       R46 R2 K83 ["horizontalPadding"]
      536 JUMPIFNOT                        R46 ; [+14]
      537 DUPTABLE                         R45 K86 [{"left", "right"}]
      538 GETTABLEKS                       R47 R2 K83 ["horizontalPadding"]
      540 GETTABLEKS                       R46 R47 K84 ["left"]
      542 SETTABLEKS                       R46 R45 K84 ["left"]
      544 GETTABLEKS                       R47 R2 K83 ["horizontalPadding"]
      546 GETTABLEKS                       R46 R47 K85 ["right"]
      548 SETTABLEKS                       R46 R45 K85 ["right"]
      550 JUMP                             ; [+1]
      551 LOADNIL                          R45
      552 SETTABLEKS                       R45 R44 K35 ["padding"]
      554 GETTABLEKS                       R46 R6 K29 ["innerContainer"]
      556 GETTABLEKS                       R45 R46 K27 ["tag"]
      558 SETTABLEKS                       R45 R44 K27 ["tag"]
      560 DUPTABLE                         R45 K90 [{"Leading", "TextBoxWrapper", "Trailing"}]
      561 GETTABLEKS                       R47 R2 K91 ["leadingElement"]
      563 JUMPIFNOT                        R47 ; [+15]
      564 GETUPVAL                         R47 4
      565 GETTABLEKS                       R46 R47 K33 ["createElement"]
      567 GETUPVAL                         R47 9
      568 DUPTABLE                         R48 K93 [{"LayoutOrder", "tag"}]
      569 LOADN                            R49 1
      570 SETTABLEKS                       R49 R48 K92 ["LayoutOrder"]
      572 LOADK                            R49 K94 ["size-0-full auto-x"]
      573 SETTABLEKS                       R49 R48 K27 ["tag"]
      575 GETTABLEKS                       R49 R2 K91 ["leadingElement"]
      577 CALL                             R46 3 1
      578 JUMP                             ; [+1]
      579 LOADNIL                          R46
      580 SETTABLEKS                       R46 R45 K87 ["Leading"]
      582 GETUPVAL                         R47 4
      583 GETTABLEKS                       R46 R47 K33 ["createElement"]
      585 GETUPVAL                         R47 9
      586 DUPTABLE                         R48 K95 [{"LayoutOrder", "padding", "tag"}]
      587 LOADN                            R49 2
      588 SETTABLEKS                       R49 R48 K92 ["LayoutOrder"]
      590 GETUPVAL                         R51 6
      591 GETTABLEKS                       R50 R51 K38 ["FoundationInternalTextInputAutoSize"]
      593 JUMPIF                           R50 ; [+1]
      594 JUMPIFNOT                        R5 ; [+2]
      595 MOVE                             R49 R31
      596 JUMP                             ; [+1]
      597 LOADNIL                          R49
      598 SETTABLEKS                       R49 R48 K35 ["padding"]
      600 LOADK                            R49 K96 ["size-full fill"]
      601 SETTABLEKS                       R49 R48 K27 ["tag"]
      603 DUPTABLE                         R49 K98 [{"TextBox"}]
      604 GETUPVAL                         R51 4
      605 GETTABLEKS                       R50 R51 K33 ["createElement"]
      607 LOADK                            R51 K97 ["TextBox"]
      608 NEWTABLE                         R52 32 0
      610 SETTABLEKS                       R7 R52 K99 ["ref"]
      612 GETTABLEKS                       R53 R2 K100 ["text"]
      614 SETTABLEKS                       R53 R52 K101 ["Text"]
      616 GETUPVAL                         R54 13
      617 CALL                             R54 0 1
      618 JUMPIFNOT                        R54 ; [+3]
      619 GETTABLEKS                       R53 R2 K102 ["textInputType"]
      621 JUMP                             ; [+1]
      622 LOADNIL                          R53
      623 SETTABLEKS                       R53 R52 K103 ["TextInputType"]
      625 LOADB                            R53 0
      626 SETTABLEKS                       R53 R52 K104 ["ClearTextOnFocus"]
      628 GETTABLEKS                       R54 R2 K20 ["isDisabled"]
      630 NOT                              R53 R54
      631 SETTABLEKS                       R53 R52 K105 ["TextEditable"]
      633 GETTABLEKS                       R53 R2 K106 ["placeholder"]
      635 SETTABLEKS                       R53 R52 K107 ["PlaceholderText"]
      637 LOADB                            R53 0
      638 SETTABLEKS                       R53 R52 K57 ["Selectable"]
      640 GETUPVAL                         R55 6
      641 GETTABLEKS                       R54 R55 K38 ["FoundationInternalTextInputAutoSize"]
      643 JUMPIFNOT                        R54 ; [+2]
      644 MOVE                             R53 R5
      645 JUMP                             ; [+1]
      646 LOADNIL                          R53
      647 SETTABLEKS                       R53 R52 K108 ["MultiLine"]
      649 SETTABLEKS                       R18 R52 K15 ["LineHeight"]
      651 GETIMPORT                        R53 K110 [UDim2.fromScale]
      653 LOADN                            R54 1
      654 LOADN                            R55 1
      655 CALL                             R53 2 1
      656 SETTABLEKS                       R53 R52 K42 ["Size"]
      658 LOADN                            R53 1
      659 SETTABLEKS                       R53 R52 K111 ["BackgroundTransparency"]
      661 LOADB                            R53 1
      662 SETTABLEKS                       R53 R52 K112 ["ClipsDescendants"]
      664 SETTABLEKS                       R5 R52 K113 ["TextWrapped"]
      666 GETIMPORT                        R53 K117 [Enum.TextXAlignment.Left]
      668 SETTABLEKS                       R53 R52 K115 ["TextXAlignment"]
      670 JUMPIFNOT                        R5 ; [+3]
      671 GETIMPORT                        R53 K120 [Enum.TextYAlignment.Top]
      673 JUMP                             ; [+2]
      674 GETIMPORT                        R53 K122 [Enum.TextYAlignment.Center]
      676 SETTABLEKS                       R53 R52 K118 ["TextYAlignment"]
      678 GETTABLEKS                       R54 R6 K13 ["textBox"]
      680 GETTABLEKS                       R53 R54 K123 ["Font"]
      682 SETTABLEKS                       R53 R52 K123 ["Font"]
      684 SETTABLEKS                       R17 R52 K124 ["TextSize"]
      686 GETTABLEKS                       R56 R3 K59 ["Color"]
      688 GETTABLEKS                       R55 R56 K125 ["Content"]
      690 GETTABLEKS                       R54 R55 K67 ["Emphasis"]
      692 GETTABLEKS                       R53 R54 K66 ["Color3"]
      694 SETTABLEKS                       R53 R52 K126 ["TextColor3"]
      696 GETTABLEKS                       R56 R3 K59 ["Color"]
      698 GETTABLEKS                       R55 R56 K125 ["Content"]
      700 GETTABLEKS                       R54 R55 K67 ["Emphasis"]
      702 GETTABLEKS                       R53 R54 K60 ["Transparency"]
      704 SETTABLEKS                       R53 R52 K127 ["TextTransparency"]
      706 GETUPVAL                         R54 4
      707 GETTABLEKS                       R53 R54 K128 ["Tag"]
      709 SETTABLE                         R29 R52 R53
      710 GETUPVAL                         R55 4
      711 GETTABLEKS                       R54 R55 K129 ["Event"]
      713 GETTABLEKS                       R53 R54 K130 ["Focused"]
      715 SETTABLE                         R23 R52 R53
      716 GETUPVAL                         R55 4
      717 GETTABLEKS                       R54 R55 K129 ["Event"]
      719 GETTABLEKS                       R53 R54 K131 ["FocusLost"]
      721 SETTABLE                         R24 R52 R53
      722 GETUPVAL                         R55 4
      723 GETTABLEKS                       R54 R55 K132 ["Change"]
      725 GETTABLEKS                       R53 R54 K101 ["Text"]
      727 SETTABLE                         R22 R52 R53
      728 DUPTABLE                         R53 K133 [{"DragDetector"}]
      729 SETTABLEKS                       R33 R53 K73 ["DragDetector"]
      731 CALL                             R50 3 1
      732 SETTABLEKS                       R50 R49 K97 ["TextBox"]
      734 CALL                             R46 3 1
      735 SETTABLEKS                       R46 R45 K88 ["TextBoxWrapper"]
      737 GETTABLEKS                       R47 R2 K134 ["trailingElement"]
      739 JUMPIFNOT                        R47 ; [+15]
      740 GETUPVAL                         R47 4
      741 GETTABLEKS                       R46 R47 K33 ["createElement"]
      743 GETUPVAL                         R47 9
      744 DUPTABLE                         R48 K93 [{"LayoutOrder", "tag"}]
      745 LOADN                            R49 3
      746 SETTABLEKS                       R49 R48 K92 ["LayoutOrder"]
      748 LOADK                            R49 K94 ["size-0-full auto-x"]
      749 SETTABLEKS                       R49 R48 K27 ["tag"]
      751 GETTABLEKS                       R49 R2 K134 ["trailingElement"]
      753 CALL                             R46 3 1
      754 JUMP                             ; [+1]
      755 LOADNIL                          R46
      756 SETTABLEKS                       R46 R45 K89 ["Trailing"]
      758 CALL                             R42 3 1
      759 SETTABLEKS                       R42 R41 K75 ["BorderFrame"]
      761 CALL                             R38 3 1
      762 SETTABLEKS                       R38 R37 K40 ["Input"]
      764 CALL                             R34 3 -1
      765 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K10 ["Components"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["View"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R4 K12 ["Types"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Constants"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R10 R4 K14 ["TextInput"]
       42 GETTABLEKS                       R9 R10 K15 ["useTextInputVariants"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R12 R0 K16 ["Providers"]
       49 GETTABLEKS                       R11 R12 K17 ["Style"]
       51 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R13 R0 K16 ["Providers"]
       58 GETTABLEKS                       R12 R13 K17 ["Style"]
       60 GETTABLEKS                       R11 R12 K19 ["useStyleTags"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R13 R0 K7 ["Utility"]
       67 GETTABLEKS                       R12 R13 K20 ["withDefaults"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R14 R0 K7 ["Utility"]
       74 GETTABLEKS                       R13 R14 K21 ["withCommonProps"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R15 R0 K7 ["Utility"]
       81 GETTABLEKS                       R14 R15 K22 ["isPluginSecurity"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K6 [require]
       86 GETTABLEKS                       R16 R0 K7 ["Utility"]
       88 GETTABLEKS                       R15 R16 K23 ["getMultiLineTextHeight"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R17 R0 K24 ["Enums"]
       95 GETTABLEKS                       R16 R17 K25 ["InputSize"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R18 R0 K24 ["Enums"]
      102 GETTABLEKS                       R17 R18 K26 ["StateLayerAffordance"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R19 R0 K24 ["Enums"]
      109 GETTABLEKS                       R18 R19 K27 ["ControlState"]
      111 CALL                             R17 1 1
      112 DUPTABLE                         R18 K31 [{"size", "maxLines", "testId"}]
      113 GETTABLEKS                       R19 R15 K32 ["Large"]
      115 SETTABLEKS                       R19 R18 K28 ["size"]
      117 LOADN                            R19 1
      118 SETTABLEKS                       R19 R18 K29 ["maxLines"]
      120 LOADK                            R19 K33 ["--foundation-internal-text-input"]
      121 SETTABLEKS                       R19 R18 K30 ["testId"]
      123 DUPCLOSURE                       R19 K34 [PROTO_14]
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R13
      138 GETTABLEKS                       R20 R3 K35 ["memo"]
      140 GETTABLEKS                       R21 R3 K36 ["forwardRef"]
      142 MOVE                             R22 R19
      143 CALL                             R21 1 -1
      144 CALL                             R20 -1 -1
      145 RETURN                           R20 -1
