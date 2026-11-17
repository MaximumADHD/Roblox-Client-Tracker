PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["onResizePressed"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R1
        9 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R7 0
        1 MUL                              R6 R1 R7
        2 ADD                              R5 R0 R6
        3 DIV                              R4 R5 R2
        4 LOADN                            R5 0
        5 LOADN                            R6 1
        6 FASTCALL                         MATH_CLAMP ; [+2]
        7 GETIMPORT                        R3 K2 [math.clamp]
        9 CALL                             R3 3 1
       10 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 2
        8 LOADK                            R5 K1 ["TextButton"]
        9 NEWTABLE                         R6 16 0
       11 GETIMPORT                        R7 K4 [UDim2.new]
       13 GETTABLEKS                       R8 R0 K5 ["width"]
       15 GETIMPORT                        R9 K7 [UDim.new]
       17 LOADN                            R10 0
       18 LOADN                            R11 16
       19 CALL                             R9 2 -1
       20 CALL                             R7 -1 1
       21 SETTABLEKS                       R7 R6 K8 ["Size"]
       23 GETTABLEKS                       R7 R0 K9 ["position"]
       25 SETTABLEKS                       R7 R6 K10 ["Position"]
       27 GETIMPORT                        R7 K12 [Vector2.new]
       29 GETTABLEKS                       R8 R0 K13 ["anchorX"]
       31 LOADK                            R9 K14 [0.5]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K15 ["AnchorPoint"]
       35 LOADN                            R7 1
       36 SETTABLEKS                       R7 R6 K16 ["BackgroundTransparency"]
       38 LOADK                            R7 K17 [""]
       39 SETTABLEKS                       R7 R6 K18 ["Text"]
       41 LOADB                            R7 0
       42 SETTABLEKS                       R7 R6 K19 ["AutoButtonColor"]
       44 GETTABLEKS                       R8 R0 K20 ["onPressed"]
       46 JUMPIFNOTEQKNIL                  R8 ; [+2]
       48 LOADB                            R7 0 +1
       49 LOADB                            R7 1
       50 SETTABLEKS                       R7 R6 K21 ["Active"]
       52 GETTABLEKS                       R7 R0 K22 ["zIndex"]
       54 SETTABLEKS                       R7 R6 K23 ["ZIndex"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K24 ["Event"]
       59 GETTABLEKS                       R7 R7 K25 ["MouseButton1Down"]
       61 GETTABLEKS                       R9 R0 K20 ["onPressed"]
       63 JUMPIFNOTEQKNIL                  R9 ; [+3]
       65 LOADNIL                          R8
       66 JUMP                             ; [+2]
       67 NEWCLOSURE                       R8 P0
       68 CAPTURE                          VAL R9
       69 SETTABLE                         R8 R6 R7
       70 GETUPVAL                         R7 1
       71 GETTABLEKS                       R7 R7 K24 ["Event"]
       73 GETTABLEKS                       R7 R7 K26 ["MouseEnter"]
       75 NEWCLOSURE                       R8 P1
       76 CAPTURE                          VAL R3
       77 SETTABLE                         R8 R6 R7
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R7 R7 K24 ["Event"]
       81 GETTABLEKS                       R7 R7 K27 ["MouseLeave"]
       83 NEWCLOSURE                       R8 P2
       84 CAPTURE                          VAL R3
       85 SETTABLE                         R8 R6 R7
       86 DUPTABLE                         R7 K30 [{"MaximumWidth", "Highlight"}]
       87 GETTABLEKS                       R9 R0 K31 ["maxWidth"]
       89 JUMPIFEQKNIL                     R9 ; [+14]
       91 GETUPVAL                         R8 2
       92 LOADK                            R9 K32 ["UISizeConstraint"]
       93 DUPTABLE                         R10 K34 [{"MaxSize"}]
       94 GETIMPORT                        R11 K12 [Vector2.new]
       96 GETTABLEKS                       R12 R0 K31 ["maxWidth"]
       98 LOADK                            R13 K35 [Infinity]
       99 CALL                             R11 2 1
      100 SETTABLEKS                       R11 R10 K33 ["MaxSize"]
      102 CALL                             R8 2 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R8
      105 SETTABLEKS                       R8 R7 K28 ["MaximumWidth"]
      107 JUMPIF                           R2 ; [+3]
      108 GETTABLEKS                       R9 R0 K36 ["isDragging"]
      110 JUMPIFNOT                        R9 ; [+50]
      111 GETTABLEKS                       R9 R0 K20 ["onPressed"]
      113 JUMPIFEQKNIL                     R9 ; [+47]
      115 GETUPVAL                         R8 2
      116 LOADK                            R9 K37 ["Frame"]
      117 DUPTABLE                         R10 K42 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.2, ["BorderSizePixel"] = 0, ["ZIndex"]}]
      118 GETIMPORT                        R11 K44 [UDim2.fromOffset]
      120 LOADN                            R12 6
      121 LOADN                            R13 14
      122 CALL                             R11 2 1
      123 SETTABLEKS                       R11 R10 K8 ["Size"]
      125 GETIMPORT                        R11 K4 [UDim2.new]
      127 GETTABLEKS                       R12 R0 K45 ["lineOffset"]
      129 GETIMPORT                        R13 K7 [UDim.new]
      131 LOADK                            R14 K14 [0.5]
      132 LOADN                            R15 0
      133 CALL                             R13 2 -1
      134 CALL                             R11 -1 1
      135 SETTABLEKS                       R11 R10 K10 ["Position"]
      137 GETIMPORT                        R11 K12 [Vector2.new]
      139 GETTABLEKS                       R12 R0 K46 ["highlightAnchorX"]
      141 LOADK                            R13 K14 [0.5]
      142 CALL                             R11 2 1
      143 SETTABLEKS                       R11 R10 K15 ["AnchorPoint"]
      145 GETTABLEKS                       R11 R1 K47 ["Color"]
      147 GETTABLEKS                       R11 R11 K48 ["System"]
      149 GETTABLEKS                       R11 R11 K49 ["Emphasis"]
      151 GETTABLEKS                       R11 R11 K50 ["Color3"]
      153 SETTABLEKS                       R11 R10 K38 ["BackgroundColor3"]
      155 GETTABLEKS                       R11 R0 K22 ["zIndex"]
      157 SETTABLEKS                       R11 R10 K23 ["ZIndex"]
      159 CALL                             R8 2 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R8
      162 SETTABLEKS                       R8 R7 K29 ["Highlight"]
      164 CALL                             R4 3 -1
      165 RETURN                           R4 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["isStart"]
        2 GETTABLEKS                       R3 R0 K1 ["hasFade"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADN                            R2 5
        6 JUMP                             ; [+1]
        7 LOADN                            R2 0
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADN                            R3 10
       10 JUMP                             ; [+1]
       11 MOVE                             R3 R2
       12 GETUPVAL                         R4 0
       13 GETUPVAL                         R5 1
       14 DUPTABLE                         R6 K11 [{["width"], ["position"], ["anchorX"] = 0, ["lineOffset"], ["highlightAnchorX"], ["isDragging"], ["zIndex"], ["onPressed"]}]
       15 GETIMPORT                        R7 K14 [UDim.new]
       17 LOADN                            R8 0
       18 ADDK                             R9 R2 K15 [10]
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R6 K2 ["width"]
       22 GETIMPORT                        R7 K17 [UDim2.new]
       24 GETTABLEKS                       R8 R0 K18 ["xScale"]
       26 MINUS                            R9 R3
       27 LOADN                            R10 0
       28 GETTABLEKS                       R11 R0 K19 ["yCenter"]
       30 CALL                             R7 4 1
       31 SETTABLEKS                       R7 R6 K3 ["position"]
       33 GETIMPORT                        R7 K14 [UDim.new]
       35 LOADN                            R8 0
       36 MOVE                             R9 R3
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K6 ["lineOffset"]
       40 JUMPIFNOT                        R1 ; [+2]
       41 LOADN                            R7 0
       42 JUMP                             ; [+1]
       43 LOADN                            R7 1
       44 SETTABLEKS                       R7 R6 K7 ["highlightAnchorX"]
       46 GETTABLEKS                       R7 R0 K8 ["isDragging"]
       48 SETTABLEKS                       R7 R6 K8 ["isDragging"]
       50 GETTABLEKS                       R7 R0 K9 ["zIndex"]
       52 SETTABLEKS                       R7 R6 K9 ["zIndex"]
       54 GETTABLEKS                       R7 R0 K10 ["onPressed"]
       56 SETTABLEKS                       R7 R6 K10 ["onPressed"]
       58 CALL                             R4 2 -1
       59 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K3 [Vector2.zero]
        5 CALL                             R1 1 2
        6 LOADNIL                          R3
        7 GETTABLEKS                       R4 R1 K4 ["X"]
        9 LOADN                            R5 0
       10 JUMPIFNOTLT                      R5 R4 ; [+77]
       12 GETTABLEKS                       R4 R1 K5 ["Y"]
       14 LOADN                            R5 0
       15 JUMPIFNOTLT                      R5 R4 ; [+72]
       17 GETTABLEKS                       R4 R1 K4 ["X"]
       19 GETTABLEKS                       R5 R1 K5 ["Y"]
       21 MUL                              R8 R4 R4
       22 MUL                              R9 R5 R5
       23 ADD                              R7 R8 R9
       24 FASTCALL1                        MATH_SQRT R7 ; [+2]
       25 GETIMPORT                        R6 K8 [math.sqrt]
       27 CALL                             R6 1 1
       28 FASTCALL2                        MATH_ATAN2 R5 R4 ; [+5]
       30 MOVE                             R9 R5
       31 MOVE                             R10 R4
       32 GETIMPORT                        R8 K10 [math.atan2]
       34 CALL                             R8 2 1
       35 FASTCALL1                        MATH_DEG R8 ; [+2]
       36 GETIMPORT                        R7 K12 [math.deg]
       38 CALL                             R7 1 1
       39 ADD                              R9 R4 R5
       40 DIVK                             R8 R9 K13 [2]
       41 GETUPVAL                         R9 1
       42 LOADK                            R10 K14 ["Frame"]
       43 DUPTABLE                         R11 K23 [{["Size"], ["Position"], ["AnchorPoint"], ["Rotation"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0}]
       44 GETIMPORT                        R12 K26 [UDim2.fromOffset]
       46 MOVE                             R13 R6
       47 MOVE                             R14 R6
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K15 ["Size"]
       51 GETIMPORT                        R12 K26 [UDim2.fromOffset]
       53 GETTABLEKS                       R14 R0 K27 ["slopesUp"]
       55 JUMPIFNOT                        R14 ; [+2]
       56 MOVE                             R13 R8
       57 JUMP                             ; [+1]
       58 SUB                              R13 R4 R8
       59 MOVE                             R14 R8
       60 CALL                             R12 2 1
       61 SETTABLEKS                       R12 R11 K16 ["Position"]
       63 GETIMPORT                        R12 K29 [Vector2.new]
       65 LOADK                            R13 K30 [0.5]
       66 LOADK                            R14 K30 [0.5]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K17 ["AnchorPoint"]
       70 GETTABLEKS                       R13 R0 K27 ["slopesUp"]
       72 JUMPIFNOT                        R13 ; [+2]
       73 MINUS                            R12 R7
       74 JUMP                             ; [+1]
       75 MOVE                             R12 R7
       76 SETTABLEKS                       R12 R11 K18 ["Rotation"]
       78 GETTABLEKS                       R12 R0 K31 ["color"]
       80 SETTABLEKS                       R12 R11 K19 ["BackgroundColor3"]
       82 GETTABLEKS                       R12 R0 K32 ["transparency"]
       84 SETTABLEKS                       R12 R11 K20 ["BackgroundTransparency"]
       86 CALL                             R9 2 1
       87 MOVE                             R3 R9
       88 GETUPVAL                         R4 1
       89 LOADK                            R5 K33 ["TextButton"]
       90 NEWTABLE                         R6 16 0
       92 GETIMPORT                        R7 K34 [UDim2.new]
       94 GETTABLEKS                       R9 R0 K35 ["endScale"]
       96 GETTABLEKS                       R10 R0 K36 ["startScale"]
       98 SUB                              R8 R9 R10
       99 LOADN                            R9 0
      100 LOADN                            R10 0
      101 LOADN                            R11 14
      102 CALL                             R7 4 1
      103 SETTABLEKS                       R7 R6 K15 ["Size"]
      105 GETIMPORT                        R7 K34 [UDim2.new]
      107 GETTABLEKS                       R8 R0 K36 ["startScale"]
      109 LOADN                            R9 0
      110 LOADN                            R10 0
      111 GETTABLEKS                       R11 R0 K37 ["yCenter"]
      113 CALL                             R7 4 1
      114 SETTABLEKS                       R7 R6 K16 ["Position"]
      116 GETIMPORT                        R7 K29 [Vector2.new]
      118 LOADN                            R8 0
      119 LOADK                            R9 K30 [0.5]
      120 CALL                             R7 2 1
      121 SETTABLEKS                       R7 R6 K17 ["AnchorPoint"]
      123 LOADN                            R7 1
      124 SETTABLEKS                       R7 R6 K20 ["BackgroundTransparency"]
      126 LOADN                            R7 0
      127 SETTABLEKS                       R7 R6 K21 ["BorderSizePixel"]
      129 LOADK                            R7 K38 [""]
      130 SETTABLEKS                       R7 R6 K39 ["Text"]
      132 LOADB                            R7 0
      133 SETTABLEKS                       R7 R6 K40 ["AutoButtonColor"]
      135 GETTABLEKS                       R8 R0 K41 ["onPressed"]
      137 JUMPIFNOTEQKNIL                  R8 ; [+2]
      139 LOADB                            R7 0 +1
      140 LOADB                            R7 1
      141 SETTABLEKS                       R7 R6 K42 ["Active"]
      143 GETTABLEKS                       R7 R0 K43 ["zIndex"]
      145 SETTABLEKS                       R7 R6 K44 ["ZIndex"]
      147 GETUPVAL                         R7 0
      148 GETTABLEKS                       R7 R7 K45 ["Event"]
      150 GETTABLEKS                       R7 R7 K46 ["MouseButton1Down"]
      152 GETTABLEKS                       R9 R0 K41 ["onPressed"]
      154 JUMPIFNOTEQKNIL                  R9 ; [+3]
      156 LOADNIL                          R8
      157 JUMP                             ; [+2]
      158 NEWCLOSURE                       R8 P0
      159 CAPTURE                          VAL R9
      160 SETTABLE                         R8 R6 R7
      161 GETUPVAL                         R7 0
      162 GETTABLEKS                       R7 R7 K45 ["Event"]
      164 GETTABLEKS                       R7 R7 K47 ["MouseEnter"]
      166 GETTABLEKS                       R8 R0 K48 ["onMouseEnter"]
      168 SETTABLE                         R8 R6 R7
      169 GETUPVAL                         R7 0
      170 GETTABLEKS                       R7 R7 K45 ["Event"]
      172 GETTABLEKS                       R7 R7 K49 ["MouseLeave"]
      174 GETTABLEKS                       R8 R0 K50 ["onMouseLeave"]
      176 SETTABLE                         R8 R6 R7
      177 DUPTABLE                         R7 K52 [{"Shape"}]
      178 GETUPVAL                         R8 1
      179 LOADK                            R9 K53 ["CanvasGroup"]
      180 NEWTABLE                         R10 4 0
      182 GETIMPORT                        R11 K55 [UDim2.fromScale]
      184 LOADN                            R12 1
      185 LOADN                            R13 1
      186 CALL                             R11 2 1
      187 SETTABLEKS                       R11 R10 K15 ["Size"]
      189 LOADN                            R11 1
      190 SETTABLEKS                       R11 R10 K20 ["BackgroundTransparency"]
      192 LOADN                            R11 0
      193 SETTABLEKS                       R11 R10 K21 ["BorderSizePixel"]
      195 GETUPVAL                         R11 0
      196 GETTABLEKS                       R11 R11 K56 ["Change"]
      198 GETTABLEKS                       R11 R11 K57 ["AbsoluteSize"]
      200 NEWCLOSURE                       R12 P1
      201 CAPTURE                          VAL R2
      202 SETTABLE                         R12 R10 R11
      203 DUPTABLE                         R11 K59 [{"Fill"}]
      204 SETTABLEKS                       R3 R11 K58 ["Fill"]
      206 CALL                             R8 3 1
      207 SETTABLEKS                       R8 R7 K51 ["Shape"]
      209 CALL                             R4 3 -1
      210 RETURN                           R4 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["isStart"]
        2 GETTABLEKS                       R3 R0 K1 ["hasFade"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADN                            R2 5
        6 JUMP                             ; [+1]
        7 LOADN                            R2 1
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 1
       10 DUPTABLE                         R5 K12 [{["width"], ["maxWidth"], ["position"], ["anchorX"], ["lineOffset"], ["highlightAnchorX"] = 0.5, ["isDragging"], ["zIndex"], ["onPressed"]}]
       11 GETIMPORT                        R6 K15 [UDim.new]
       13 LOADK                            R7 K16 [0.3]
       14 MOVE                             R8 R2
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K2 ["width"]
       18 ADDK                             R6 R2 K17 [6]
       19 SETTABLEKS                       R6 R5 K3 ["maxWidth"]
       21 GETIMPORT                        R6 K19 [UDim2.new]
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADN                            R7 0
       25 JUMP                             ; [+1]
       26 LOADN                            R7 1
       27 JUMPIFNOT                        R1 ; [+2]
       28 MINUS                            R8 R2
       29 JUMP                             ; [+1]
       30 MOVE                             R8 R2
       31 LOADK                            R9 K8 [0.5]
       32 LOADN                            R10 0
       33 CALL                             R6 4 1
       34 SETTABLEKS                       R6 R5 K4 ["position"]
       36 JUMPIFNOT                        R1 ; [+2]
       37 LOADN                            R6 0
       38 JUMP                             ; [+1]
       39 LOADN                            R6 1
       40 SETTABLEKS                       R6 R5 K5 ["anchorX"]
       42 JUMPIFNOT                        R1 ; [+6]
       43 GETIMPORT                        R6 K15 [UDim.new]
       45 LOADN                            R7 0
       46 SUBK                             R8 R2 K20 [1]
       47 CALL                             R6 2 1
       48 JUMP                             ; [+6]
       49 GETIMPORT                        R6 K15 [UDim.new]
       51 LOADN                            R7 1
       52 MINUS                            R9 R2
       53 ADDK                             R8 R9 K20 [1]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K6 ["lineOffset"]
       57 GETTABLEKS                       R6 R0 K9 ["isDragging"]
       59 SETTABLEKS                       R6 R5 K9 ["isDragging"]
       61 GETTABLEKS                       R6 R0 K10 ["zIndex"]
       63 SETTABLEKS                       R6 R5 K10 ["zIndex"]
       65 GETTABLEKS                       R6 R0 K11 ["onPressed"]
       67 SETTABLEKS                       R6 R5 K11 ["onPressed"]
       69 CALL                             R3 2 -1
       70 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onHoverChanged"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onHoverChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U0
        7 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Box"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Box"]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["StartFade"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StartFade"]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["EndFade"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["EndFade"]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Hold"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Hold"]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["HoldHitArea"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["HoldHitArea"]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETTABLEKS                       R4 R0 K1 ["bounds"]
        9 GETTABLEKS                       R5 R0 K2 ["duration"]
       11 GETTABLEKS                       R6 R0 K3 ["isSelected"]
       13 GETTABLEKS                       R7 R1 K4 ["Color"]
       15 GETTABLEKS                       R7 R7 K5 ["Content"]
       17 GETTABLEKS                       R7 R7 K6 ["Muted"]
       19 GETTABLEKS                       R7 R7 K7 ["Color3"]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       24 NEWCLOSURE                       R9 P0
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R10 0 1
       28 MOVE                             R11 R6
       29 SETLIST                          R10 R11 1 [1]
       31 CALL                             R8 2 0
       32 JUMPIFNOTEQKNIL                  R2 ; [+2]
       34 LOADB                            R8 0 +1
       35 LOADB                            R8 1
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       39 NEWCLOSURE                       R10 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R8
       42 NEWTABLE                         R11 0 1
       44 MOVE                             R12 R8
       45 SETLIST                          R11 R12 1 [1]
       47 CALL                             R9 2 0
       48 NEWCLOSURE                       R9 P2
       49 CAPTURE                          VAL R3
       50 GETTABLEKS                       R11 R4 K9 ["startTime"]
       52 LOADN                            R16 -1
       53 GETUPVAL                         R17 2
       54 MUL                              R15 R16 R17
       55 ADD                              R14 R11 R15
       56 DIV                              R13 R14 R5
       57 LOADN                            R14 0
       58 LOADN                            R15 1
       59 FASTCALL                         MATH_CLAMP ; [+2]
       60 GETIMPORT                        R12 K12 [math.clamp]
       62 CALL                             R12 3 1
       63 MOVE                             R10 R12
       64 GETTABLEKS                       R12 R4 K13 ["endTime"]
       66 LOADN                            R17 1
       67 GETUPVAL                         R18 2
       68 MUL                              R16 R17 R18
       69 ADD                              R15 R12 R16
       70 DIV                              R14 R15 R5
       71 LOADN                            R15 0
       72 LOADN                            R16 1
       73 FASTCALL                         MATH_CLAMP ; [+2]
       74 GETIMPORT                        R13 K12 [math.clamp]
       76 CALL                             R13 3 1
       77 MOVE                             R11 R13
       78 GETTABLEKS                       R13 R4 K14 ["holdStartTime"]
       80 LOADN                            R18 -1
       81 GETUPVAL                         R19 2
       82 MUL                              R17 R18 R19
       83 ADD                              R16 R13 R17
       84 DIV                              R15 R16 R5
       85 LOADN                            R16 0
       86 LOADN                            R17 1
       87 FASTCALL                         MATH_CLAMP ; [+2]
       88 GETIMPORT                        R14 K12 [math.clamp]
       90 CALL                             R14 3 1
       91 MOVE                             R12 R14
       92 GETTABLEKS                       R14 R4 K15 ["holdEndTime"]
       94 LOADN                            R19 1
       95 GETUPVAL                         R20 2
       96 MUL                              R18 R19 R20
       97 ADD                              R17 R14 R18
       98 DIV                              R16 R17 R5
       99 LOADN                            R17 0
      100 LOADN                            R18 1
      101 FASTCALL                         MATH_CLAMP ; [+2]
      102 GETIMPORT                        R15 K12 [math.clamp]
      104 CALL                             R15 3 1
      105 MOVE                             R13 R15
      106 GETTABLEKS                       R15 R4 K9 ["startTime"]
      108 GETTABLEKS                       R16 R4 K14 ["holdStartTime"]
      110 JUMPIFLT                         R15 R16 ; [+2]
      112 LOADB                            R14 0 +1
      113 LOADB                            R14 1
      114 GETTABLEKS                       R16 R4 K13 ["endTime"]
      116 GETTABLEKS                       R17 R4 K15 ["holdEndTime"]
      118 JUMPIFLT                         R17 R16 ; [+2]
      120 LOADB                            R15 0 +1
      121 LOADB                            R15 1
      122 GETTABLEKS                       R17 R0 K16 ["isHovered"]
      124 JUMPIFNOT                        R17 ; [+14]
      125 JUMPIF                           R6 ; [+13]
      126 GETTABLEKS                       R16 R0 K17 ["color"]
      128 GETIMPORT                        R18 K19 [Color3.new]
      130 LOADN                            R19 1
      131 LOADN                            R20 1
      132 LOADN                            R21 1
      133 CALL                             R18 3 1
      134 LOADK                            R19 K20 [0.25]
      135 NAMECALL                         R16 R16 K21 ["Lerp"]
      137 CALL                             R16 3 1
      138 JUMP                             ; [+2]
      139 GETTABLEKS                       R16 R0 K17 ["color"]
      141 GETTABLEKS                       R18 R0 K22 ["onMovePressed"]
      143 JUMPIFNOTEQKNIL                  R18 ; [+2]
      145 LOADB                            R17 0 +1
      146 LOADB                            R17 1
      147 MOVE                             R18 R6
      148 JUMPIF                           R18 ; [+3]
      149 GETUPVAL                         R18 3
      150 GETTABLEKS                       R18 R18 K23 ["FFlagAssistantAnimationGenAlwaysShowFades"]
      152 JUMPIFNOT                        R17 ; [+2]
      153 LOADN                            R19 0
      154 JUMP                             ; [+1]
      155 LOADK                            R19 K24 [0.5]
      156 GETUPVAL                         R20 4
      157 CALL                             R20 0 1
      158 GETUPVAL                         R21 5
      159 LOADK                            R22 K25 ["Frame"]
      160 DUPTABLE                         R23 K30 [{["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      161 GETIMPORT                        R24 K33 [UDim2.fromScale]
      163 LOADN                            R25 1
      164 LOADN                            R26 1
      165 CALL                             R24 2 1
      166 SETTABLEKS                       R24 R23 K26 ["Size"]
      168 GETTABLEKS                       R24 R0 K34 ["zIndex"]
      170 SETTABLEKS                       R24 R23 K29 ["ZIndex"]
      172 DUPTABLE                         R24 K42 [{"Box", "StartFade", "EndFade", "Hold", "HoldHitArea", "StartCap", "EndCap"}]
      173 JUMPIFNOT                        R6 ; [+93]
      174 GETUPVAL                         R25 5
      175 LOADK                            R26 K43 ["TextButton"]
      176 NEWTABLE                         R27 16 0
      178 GETIMPORT                        R28 K44 [UDim2.new]
      180 SUB                              R29 R11 R10
      181 LOADN                            R30 0
      182 LOADN                            R31 0
      183 LOADN                            R32 14
      184 CALL                             R28 4 1
      185 SETTABLEKS                       R28 R27 K26 ["Size"]
      187 GETIMPORT                        R28 K44 [UDim2.new]
      189 MOVE                             R29 R10
      190 LOADN                            R30 0
      191 LOADN                            R31 0
      192 GETTABLEKS                       R32 R0 K45 ["yCenter"]
      194 CALL                             R28 4 1
      195 SETTABLEKS                       R28 R27 K46 ["Position"]
      197 GETIMPORT                        R28 K48 [Vector2.new]
      199 LOADN                            R29 0
      200 LOADK                            R30 K24 [0.5]
      201 CALL                             R28 2 1
      202 SETTABLEKS                       R28 R27 K49 ["AnchorPoint"]
      204 LOADN                            R28 1
      205 SETTABLEKS                       R28 R27 K27 ["BackgroundTransparency"]
      207 LOADN                            R28 0
      208 SETTABLEKS                       R28 R27 K50 ["BorderSizePixel"]
      210 LOADK                            R28 K51 [""]
      211 SETTABLEKS                       R28 R27 K52 ["Text"]
      213 LOADB                            R28 0
      214 SETTABLEKS                       R28 R27 K53 ["AutoButtonColor"]
      216 SETTABLEKS                       R17 R27 K54 ["Active"]
      218 MOVE                             R28 R20
      219 CALL                             R28 0 1
      220 SETTABLEKS                       R28 R27 K29 ["ZIndex"]
      222 GETUPVAL                         R28 1
      223 GETTABLEKS                       R28 R28 K55 ["Event"]
      225 GETTABLEKS                       R28 R28 K56 ["MouseButton1Down"]
      227 GETTABLEKS                       R30 R0 K22 ["onMovePressed"]
      229 JUMPIFNOTEQKNIL                  R30 ; [+3]
      231 LOADNIL                          R29
      232 JUMP                             ; [+2]
      233 NEWCLOSURE                       R29 P3
      234 CAPTURE                          VAL R30
      235 SETTABLE                         R29 R27 R28
      236 GETUPVAL                         R28 1
      237 GETTABLEKS                       R28 R28 K55 ["Event"]
      239 GETTABLEKS                       R28 R28 K57 ["MouseEnter"]
      241 NEWCLOSURE                       R29 P4
      242 CAPTURE                          VAL R3
      243 SETTABLE                         R29 R27 R28
      244 GETUPVAL                         R28 1
      245 GETTABLEKS                       R28 R28 K55 ["Event"]
      247 GETTABLEKS                       R28 R28 K58 ["MouseLeave"]
      249 NEWCLOSURE                       R29 P5
      250 CAPTURE                          VAL R3
      251 SETTABLE                         R29 R27 R28
      252 DUPTABLE                         R28 K60 [{"Outline"}]
      253 GETUPVAL                         R29 5
      254 LOADK                            R30 K61 ["UIStroke"]
      255 DUPTABLE                         R31 K65 [{["Color"], ["Thickness"] = 2, ["ApplyStrokeMode"]}]
      256 SETTABLEKS                       R7 R31 K4 ["Color"]
      258 GETIMPORT                        R32 K68 [Enum.ApplyStrokeMode.Border]
      260 SETTABLEKS                       R32 R31 K64 ["ApplyStrokeMode"]
      262 CALL                             R29 2 1
      263 SETTABLEKS                       R29 R28 K59 ["Outline"]
      265 CALL                             R25 3 1
      266 JUMP                             ; [+1]
      267 LOADNIL                          R25
      268 SETTABLEKS                       R25 R24 K35 ["Box"]
      270 JUMPIFNOT                        R18 ; [+34]
      271 JUMPIFNOT                        R14 ; [+33]
      272 GETUPVAL                         R25 5
      273 GETUPVAL                         R26 6
      274 DUPTABLE                         R27 K77 [{["startScale"], ["endScale"], ["yCenter"], ["slopesUp"] = True, ["color"], ["transparency"], ["zIndex"], ["onPressed"], ["onMouseEnter"], ["onMouseLeave"]}]
      275 SETTABLEKS                       R10 R27 K69 ["startScale"]
      277 SETTABLEKS                       R12 R27 K70 ["endScale"]
      279 GETTABLEKS                       R28 R0 K45 ["yCenter"]
      281 SETTABLEKS                       R28 R27 K45 ["yCenter"]
      283 SETTABLEKS                       R16 R27 K17 ["color"]
      285 SETTABLEKS                       R19 R27 K73 ["transparency"]
      287 MOVE                             R28 R20
      288 CALL                             R28 0 1
      289 SETTABLEKS                       R28 R27 K34 ["zIndex"]
      291 GETTABLEKS                       R28 R0 K22 ["onMovePressed"]
      293 SETTABLEKS                       R28 R27 K74 ["onPressed"]
      295 NEWCLOSURE                       R28 P6
      296 CAPTURE                          VAL R3
      297 SETTABLEKS                       R28 R27 K75 ["onMouseEnter"]
      299 NEWCLOSURE                       R28 P7
      300 CAPTURE                          VAL R3
      301 SETTABLEKS                       R28 R27 K76 ["onMouseLeave"]
      303 CALL                             R25 2 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R25
      306 SETTABLEKS                       R25 R24 K36 ["StartFade"]
      308 JUMPIFNOT                        R18 ; [+34]
      309 JUMPIFNOT                        R15 ; [+33]
      310 GETUPVAL                         R25 5
      311 GETUPVAL                         R26 6
      312 DUPTABLE                         R27 K79 [{["startScale"], ["endScale"], ["yCenter"], ["slopesUp"] = False, ["color"], ["transparency"], ["zIndex"], ["onPressed"], ["onMouseEnter"], ["onMouseLeave"]}]
      313 SETTABLEKS                       R13 R27 K69 ["startScale"]
      315 SETTABLEKS                       R11 R27 K70 ["endScale"]
      317 GETTABLEKS                       R28 R0 K45 ["yCenter"]
      319 SETTABLEKS                       R28 R27 K45 ["yCenter"]
      321 SETTABLEKS                       R16 R27 K17 ["color"]
      323 SETTABLEKS                       R19 R27 K73 ["transparency"]
      325 MOVE                             R28 R20
      326 CALL                             R28 0 1
      327 SETTABLEKS                       R28 R27 K34 ["zIndex"]
      329 GETTABLEKS                       R28 R0 K22 ["onMovePressed"]
      331 SETTABLEKS                       R28 R27 K74 ["onPressed"]
      333 NEWCLOSURE                       R28 P8
      334 CAPTURE                          VAL R3
      335 SETTABLEKS                       R28 R27 K75 ["onMouseEnter"]
      337 NEWCLOSURE                       R28 P9
      338 CAPTURE                          VAL R3
      339 SETTABLEKS                       R28 R27 K76 ["onMouseLeave"]
      341 CALL                             R25 2 1
      342 JUMP                             ; [+1]
      343 LOADNIL                          R25
      344 SETTABLEKS                       R25 R24 K37 ["EndFade"]
      346 GETUPVAL                         R25 5
      347 LOADK                            R26 K43 ["TextButton"]
      348 NEWTABLE                         R27 16 0
      350 GETIMPORT                        R28 K44 [UDim2.new]
      352 SUB                              R29 R13 R12
      353 LOADN                            R30 0
      354 LOADN                            R31 0
      355 LOADN                            R32 14
      356 CALL                             R28 4 1
      357 SETTABLEKS                       R28 R27 K26 ["Size"]
      359 GETIMPORT                        R28 K44 [UDim2.new]
      361 MOVE                             R29 R12
      362 LOADN                            R30 0
      363 LOADN                            R31 0
      364 GETTABLEKS                       R32 R0 K45 ["yCenter"]
      366 CALL                             R28 4 1
      367 SETTABLEKS                       R28 R27 K46 ["Position"]
      369 GETIMPORT                        R28 K48 [Vector2.new]
      371 LOADN                            R29 0
      372 LOADK                            R30 K24 [0.5]
      373 CALL                             R28 2 1
      374 SETTABLEKS                       R28 R27 K49 ["AnchorPoint"]
      376 SETTABLEKS                       R16 R27 K80 ["BackgroundColor3"]
      378 SETTABLEKS                       R19 R27 K27 ["BackgroundTransparency"]
      380 LOADN                            R28 0
      381 SETTABLEKS                       R28 R27 K50 ["BorderSizePixel"]
      383 LOADK                            R28 K51 [""]
      384 SETTABLEKS                       R28 R27 K52 ["Text"]
      386 LOADB                            R28 0
      387 SETTABLEKS                       R28 R27 K53 ["AutoButtonColor"]
      389 SETTABLEKS                       R17 R27 K54 ["Active"]
      391 MOVE                             R28 R20
      392 CALL                             R28 0 1
      393 SETTABLEKS                       R28 R27 K29 ["ZIndex"]
      395 GETUPVAL                         R28 1
      396 GETTABLEKS                       R28 R28 K55 ["Event"]
      398 GETTABLEKS                       R28 R28 K56 ["MouseButton1Down"]
      400 GETTABLEKS                       R30 R0 K22 ["onMovePressed"]
      402 JUMPIFNOTEQKNIL                  R30 ; [+3]
      404 LOADNIL                          R29
      405 JUMP                             ; [+2]
      406 NEWCLOSURE                       R29 P3
      407 CAPTURE                          VAL R30
      408 SETTABLE                         R29 R27 R28
      409 GETUPVAL                         R28 1
      410 GETTABLEKS                       R28 R28 K55 ["Event"]
      412 GETTABLEKS                       R28 R28 K57 ["MouseEnter"]
      414 NEWCLOSURE                       R29 P10
      415 CAPTURE                          VAL R3
      416 SETTABLE                         R29 R27 R28
      417 GETUPVAL                         R28 1
      418 GETTABLEKS                       R28 R28 K55 ["Event"]
      420 GETTABLEKS                       R28 R28 K58 ["MouseLeave"]
      422 NEWCLOSURE                       R29 P11
      423 CAPTURE                          VAL R3
      424 SETTABLE                         R29 R27 R28
      425 DUPTABLE                         R28 K83 [{"Border", "HoldStartEdge", "HoldEndEdge"}]
      426 JUMPIFNOT                        R6 ; [+19]
      427 GETUPVAL                         R29 5
      428 LOADK                            R30 K61 ["UIStroke"]
      429 DUPTABLE                         R31 K65 [{["Color"], ["Thickness"] = 2, ["ApplyStrokeMode"]}]
      430 GETTABLEKS                       R32 R1 K4 ["Color"]
      432 GETTABLEKS                       R32 R32 K5 ["Content"]
      434 GETTABLEKS                       R32 R32 K84 ["Emphasis"]
      436 GETTABLEKS                       R32 R32 K7 ["Color3"]
      438 SETTABLEKS                       R32 R31 K4 ["Color"]
      440 GETIMPORT                        R32 K68 [Enum.ApplyStrokeMode.Border]
      442 SETTABLEKS                       R32 R31 K64 ["ApplyStrokeMode"]
      444 CALL                             R29 2 1
      445 JUMP                             ; [+1]
      446 LOADNIL                          R29
      447 SETTABLEKS                       R29 R28 K67 ["Border"]
      449 JUMPIFNOT                        R6 ; [+31]
      450 GETUPVAL                         R29 5
      451 GETUPVAL                         R30 7
      452 DUPTABLE                         R31 K88 [{["isStart"] = True, ["hasFade"], ["isDragging"], ["zIndex"], ["onPressed"]}]
      453 SETTABLEKS                       R14 R31 K86 ["hasFade"]
      455 GETTABLEKS                       R33 R0 K89 ["draggedEdge"]
      457 JUMPIFEQKS                       R33 K90 ["holdStart"] ; [+2]
      459 LOADB                            R32 0 +1
      460 LOADB                            R32 1
      461 SETTABLEKS                       R32 R31 K87 ["isDragging"]
      463 MOVE                             R32 R20
      464 CALL                             R32 0 1
      465 SETTABLEKS                       R32 R31 K34 ["zIndex"]
      467 GETTABLEKS                       R33 R0 K91 ["onResizePressed"]
      469 JUMPIFNOTEQKNIL                  R33 ; [+3]
      471 LOADNIL                          R32
      472 JUMP                             ; [+4]
      473 LOADK                            R34 K90 ["holdStart"]
      474 NEWCLOSURE                       R32 P12
      475 CAPTURE                          VAL R33
      476 CAPTURE                          VAL R34
      477 SETTABLEKS                       R32 R31 K74 ["onPressed"]
      479 CALL                             R29 2 1
      480 JUMP                             ; [+1]
      481 LOADNIL                          R29
      482 SETTABLEKS                       R29 R28 K81 ["HoldStartEdge"]
      484 JUMPIFNOT                        R6 ; [+31]
      485 GETUPVAL                         R29 5
      486 GETUPVAL                         R30 7
      487 DUPTABLE                         R31 K92 [{["isStart"] = False, ["hasFade"], ["isDragging"], ["zIndex"], ["onPressed"]}]
      488 SETTABLEKS                       R15 R31 K86 ["hasFade"]
      490 GETTABLEKS                       R33 R0 K89 ["draggedEdge"]
      492 JUMPIFEQKS                       R33 K93 ["holdEnd"] ; [+2]
      494 LOADB                            R32 0 +1
      495 LOADB                            R32 1
      496 SETTABLEKS                       R32 R31 K87 ["isDragging"]
      498 MOVE                             R32 R20
      499 CALL                             R32 0 1
      500 SETTABLEKS                       R32 R31 K34 ["zIndex"]
      502 GETTABLEKS                       R33 R0 K91 ["onResizePressed"]
      504 JUMPIFNOTEQKNIL                  R33 ; [+3]
      506 LOADNIL                          R32
      507 JUMP                             ; [+4]
      508 LOADK                            R34 K93 ["holdEnd"]
      509 NEWCLOSURE                       R32 P12
      510 CAPTURE                          VAL R33
      511 CAPTURE                          VAL R34
      512 SETTABLEKS                       R32 R31 K74 ["onPressed"]
      514 CALL                             R29 2 1
      515 JUMP                             ; [+1]
      516 LOADNIL                          R29
      517 SETTABLEKS                       R29 R28 K82 ["HoldEndEdge"]
      519 CALL                             R25 3 1
      520 SETTABLEKS                       R25 R24 K38 ["Hold"]
      522 JUMPIF                           R6 ; [+92]
      523 GETUPVAL                         R25 5
      524 LOADK                            R26 K43 ["TextButton"]
      525 NEWTABLE                         R27 16 0
      527 GETIMPORT                        R28 K44 [UDim2.new]
      529 SUB                              R29 R13 R12
      530 LOADN                            R30 0
      531 LOADN                            R31 0
      532 LOADN                            R32 16
      533 CALL                             R28 4 1
      534 SETTABLEKS                       R28 R27 K26 ["Size"]
      536 GETIMPORT                        R28 K44 [UDim2.new]
      538 ADD                              R30 R12 R13
      539 DIVK                             R29 R30 K63 [2]
      540 LOADN                            R30 0
      541 LOADN                            R31 0
      542 GETTABLEKS                       R32 R0 K45 ["yCenter"]
      544 CALL                             R28 4 1
      545 SETTABLEKS                       R28 R27 K46 ["Position"]
      547 GETIMPORT                        R28 K48 [Vector2.new]
      549 LOADK                            R29 K24 [0.5]
      550 LOADK                            R30 K24 [0.5]
      551 CALL                             R28 2 1
      552 SETTABLEKS                       R28 R27 K49 ["AnchorPoint"]
      554 LOADN                            R28 1
      555 SETTABLEKS                       R28 R27 K27 ["BackgroundTransparency"]
      557 LOADK                            R28 K51 [""]
      558 SETTABLEKS                       R28 R27 K52 ["Text"]
      560 LOADB                            R28 0
      561 SETTABLEKS                       R28 R27 K53 ["AutoButtonColor"]
      563 SETTABLEKS                       R17 R27 K54 ["Active"]
      565 MOVE                             R28 R20
      566 CALL                             R28 0 1
      567 SETTABLEKS                       R28 R27 K29 ["ZIndex"]
      569 GETUPVAL                         R28 1
      570 GETTABLEKS                       R28 R28 K55 ["Event"]
      572 GETTABLEKS                       R28 R28 K56 ["MouseButton1Down"]
      574 GETTABLEKS                       R30 R0 K22 ["onMovePressed"]
      576 JUMPIFNOTEQKNIL                  R30 ; [+3]
      578 LOADNIL                          R29
      579 JUMP                             ; [+2]
      580 NEWCLOSURE                       R29 P3
      581 CAPTURE                          VAL R30
      582 SETTABLE                         R29 R27 R28
      583 GETUPVAL                         R28 1
      584 GETTABLEKS                       R28 R28 K55 ["Event"]
      586 GETTABLEKS                       R28 R28 K57 ["MouseEnter"]
      588 NEWCLOSURE                       R29 P13
      589 CAPTURE                          VAL R3
      590 SETTABLE                         R29 R27 R28
      591 GETUPVAL                         R28 1
      592 GETTABLEKS                       R28 R28 K55 ["Event"]
      594 GETTABLEKS                       R28 R28 K58 ["MouseLeave"]
      596 NEWCLOSURE                       R29 P14
      597 CAPTURE                          VAL R3
      598 SETTABLE                         R29 R27 R28
      599 DUPTABLE                         R28 K95 [{"MinimumWidth"}]
      600 GETUPVAL                         R29 5
      601 LOADK                            R30 K96 ["UISizeConstraint"]
      602 DUPTABLE                         R31 K98 [{"MinSize"}]
      603 GETIMPORT                        R32 K48 [Vector2.new]
      605 LOADN                            R33 16
      606 LOADN                            R34 0
      607 CALL                             R32 2 1
      608 SETTABLEKS                       R32 R31 K97 ["MinSize"]
      610 CALL                             R29 2 1
      611 SETTABLEKS                       R29 R28 K94 ["MinimumWidth"]
      613 CALL                             R25 3 1
      614 JUMP                             ; [+1]
      615 LOADNIL                          R25
      616 SETTABLEKS                       R25 R24 K39 ["HoldHitArea"]
      618 JUMPIFNOT                        R6 ; [+37]
      619 GETUPVAL                         R25 5
      620 GETUPVAL                         R26 8
      621 DUPTABLE                         R27 K100 [{["isStart"] = True, ["hasFade"], ["isDragging"], ["xScale"], ["yCenter"], ["zIndex"], ["onPressed"]}]
      622 SETTABLEKS                       R14 R27 K86 ["hasFade"]
      624 GETTABLEKS                       R29 R0 K89 ["draggedEdge"]
      626 JUMPIFEQKS                       R29 K101 ["start"] ; [+2]
      628 LOADB                            R28 0 +1
      629 LOADB                            R28 1
      630 SETTABLEKS                       R28 R27 K87 ["isDragging"]
      632 SETTABLEKS                       R10 R27 K99 ["xScale"]
      634 GETTABLEKS                       R28 R0 K45 ["yCenter"]
      636 SETTABLEKS                       R28 R27 K45 ["yCenter"]
      638 MOVE                             R28 R20
      639 CALL                             R28 0 1
      640 SETTABLEKS                       R28 R27 K34 ["zIndex"]
      642 GETTABLEKS                       R29 R0 K91 ["onResizePressed"]
      644 JUMPIFNOTEQKNIL                  R29 ; [+3]
      646 LOADNIL                          R28
      647 JUMP                             ; [+4]
      648 LOADK                            R30 K101 ["start"]
      649 NEWCLOSURE                       R28 P12
      650 CAPTURE                          VAL R29
      651 CAPTURE                          VAL R30
      652 SETTABLEKS                       R28 R27 K74 ["onPressed"]
      654 CALL                             R25 2 1
      655 JUMP                             ; [+1]
      656 LOADNIL                          R25
      657 SETTABLEKS                       R25 R24 K40 ["StartCap"]
      659 JUMPIFNOT                        R6 ; [+37]
      660 GETUPVAL                         R25 5
      661 GETUPVAL                         R26 8
      662 DUPTABLE                         R27 K102 [{["isStart"] = False, ["hasFade"], ["isDragging"], ["xScale"], ["yCenter"], ["zIndex"], ["onPressed"]}]
      663 SETTABLEKS                       R15 R27 K86 ["hasFade"]
      665 GETTABLEKS                       R29 R0 K89 ["draggedEdge"]
      667 JUMPIFEQKS                       R29 K103 ["end"] ; [+2]
      669 LOADB                            R28 0 +1
      670 LOADB                            R28 1
      671 SETTABLEKS                       R28 R27 K87 ["isDragging"]
      673 SETTABLEKS                       R11 R27 K99 ["xScale"]
      675 GETTABLEKS                       R28 R0 K45 ["yCenter"]
      677 SETTABLEKS                       R28 R27 K45 ["yCenter"]
      679 MOVE                             R28 R20
      680 CALL                             R28 0 1
      681 SETTABLEKS                       R28 R27 K34 ["zIndex"]
      683 GETTABLEKS                       R29 R0 K91 ["onResizePressed"]
      685 JUMPIFNOTEQKNIL                  R29 ; [+3]
      687 LOADNIL                          R28
      688 JUMP                             ; [+4]
      689 LOADK                            R30 K103 ["end"]
      690 NEWCLOSURE                       R28 P12
      691 CAPTURE                          VAL R29
      692 CAPTURE                          VAL R30
      693 SETTABLEKS                       R28 R27 K74 ["onPressed"]
      695 CALL                             R25 2 1
      696 JUMP                             ; [+1]
      697 LOADNIL                          R25
      698 SETTABLEKS                       R25 R24 K41 ["EndCap"]
      700 CALL                             R21 3 -1
      701 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["AnimationGen"]
       15 GETTABLEKS                       R3 R3 K9 ["AnimationGenConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Flags"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["Foundation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K7 ["Util"]
       32 GETTABLEKS                       R6 R6 K8 ["AnimationGen"]
       34 GETTABLEKS                       R6 R6 K12 ["Posing"]
       36 GETTABLEKS                       R6 R6 K13 ["PoseInterval"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K14 ["React"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K15 ["ReactUtils"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R7 K16 ["createNextOrder"]
       51 GETTABLEKS                       R9 R4 K17 ["Hooks"]
       53 GETTABLEKS                       R9 R9 K18 ["useTokens"]
       55 GETTABLEKS                       R10 R6 K19 ["createElement"]
       57 GETTABLEKS                       R12 R2 K21 ["DEFAULT_GENERATION_FPS"]
       59 DIVRK                            R11 K20 [0.5] R12
       60 DUPCLOSURE                       R12 K22 [PROTO_1]
       61 DUPCLOSURE                       R13 K23 [PROTO_3]
       62 DUPCLOSURE                       R14 K24 [PROTO_4]
       63 CAPTURE                          VAL R11
       64 DUPCLOSURE                       R15 K25 [PROTO_7]
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R10
       68 DUPCLOSURE                       R16 K26 [PROTO_8]
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R15
       71 DUPCLOSURE                       R17 K27 [PROTO_10]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R10
       74 DUPCLOSURE                       R18 K28 [PROTO_11]
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R15
       77 DUPCLOSURE                       R19 K29 [PROTO_27]
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R17
       85 CAPTURE                          VAL R18
       86 CAPTURE                          VAL R16
       87 RETURN                           R19 1
