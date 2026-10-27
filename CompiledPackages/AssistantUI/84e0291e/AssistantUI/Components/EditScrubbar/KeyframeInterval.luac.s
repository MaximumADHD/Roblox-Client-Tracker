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
        0 GETTABLEKS                       R2 R0 K0 ["onResizeInputBegan"]
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
        8 LOADK                            R5 K1 ["Frame"]
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
       38 GETTABLEKS                       R8 R0 K17 ["onInputBegan"]
       40 JUMPIFNOTEQKNIL                  R8 ; [+2]
       42 LOADB                            R7 0 +1
       43 LOADB                            R7 1
       44 SETTABLEKS                       R7 R6 K18 ["Active"]
       46 GETTABLEKS                       R7 R0 K19 ["zIndex"]
       48 SETTABLEKS                       R7 R6 K20 ["ZIndex"]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K21 ["Event"]
       53 GETTABLEKS                       R7 R7 K22 ["InputBegan"]
       55 GETTABLEKS                       R9 R0 K17 ["onInputBegan"]
       57 JUMPIFNOTEQKNIL                  R9 ; [+3]
       59 LOADNIL                          R8
       60 JUMP                             ; [+2]
       61 NEWCLOSURE                       R8 P0
       62 CAPTURE                          VAL R9
       63 SETTABLE                         R8 R6 R7
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K21 ["Event"]
       67 GETTABLEKS                       R7 R7 K23 ["MouseEnter"]
       69 NEWCLOSURE                       R8 P1
       70 CAPTURE                          VAL R3
       71 SETTABLE                         R8 R6 R7
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K21 ["Event"]
       75 GETTABLEKS                       R7 R7 K24 ["MouseLeave"]
       77 NEWCLOSURE                       R8 P2
       78 CAPTURE                          VAL R3
       79 SETTABLE                         R8 R6 R7
       80 DUPTABLE                         R7 K27 [{"MaximumWidth", "Highlight"}]
       81 GETTABLEKS                       R9 R0 K28 ["maxWidth"]
       83 JUMPIFEQKNIL                     R9 ; [+14]
       85 GETUPVAL                         R8 2
       86 LOADK                            R9 K29 ["UISizeConstraint"]
       87 DUPTABLE                         R10 K31 [{"MaxSize"}]
       88 GETIMPORT                        R11 K12 [Vector2.new]
       90 GETTABLEKS                       R12 R0 K28 ["maxWidth"]
       92 LOADK                            R13 K32 [Infinity]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K30 ["MaxSize"]
       96 CALL                             R8 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R8
       99 SETTABLEKS                       R8 R7 K25 ["MaximumWidth"]
      101 JUMPIF                           R2 ; [+3]
      102 GETTABLEKS                       R9 R0 K33 ["isDragging"]
      104 JUMPIFNOT                        R9 ; [+50]
      105 GETTABLEKS                       R9 R0 K17 ["onInputBegan"]
      107 JUMPIFEQKNIL                     R9 ; [+47]
      109 GETUPVAL                         R8 2
      110 LOADK                            R9 K1 ["Frame"]
      111 DUPTABLE                         R10 K38 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.2, ["BorderSizePixel"] = 0, ["ZIndex"]}]
      112 GETIMPORT                        R11 K40 [UDim2.fromOffset]
      114 LOADN                            R12 6
      115 LOADN                            R13 14
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K8 ["Size"]
      119 GETIMPORT                        R11 K4 [UDim2.new]
      121 GETTABLEKS                       R12 R0 K41 ["lineOffset"]
      123 GETIMPORT                        R13 K7 [UDim.new]
      125 LOADK                            R14 K14 [0.5]
      126 LOADN                            R15 0
      127 CALL                             R13 2 -1
      128 CALL                             R11 -1 1
      129 SETTABLEKS                       R11 R10 K10 ["Position"]
      131 GETIMPORT                        R11 K12 [Vector2.new]
      133 GETTABLEKS                       R12 R0 K42 ["highlightAnchorX"]
      135 LOADK                            R13 K14 [0.5]
      136 CALL                             R11 2 1
      137 SETTABLEKS                       R11 R10 K15 ["AnchorPoint"]
      139 GETTABLEKS                       R11 R1 K43 ["Color"]
      141 GETTABLEKS                       R11 R11 K44 ["System"]
      143 GETTABLEKS                       R11 R11 K45 ["Emphasis"]
      145 GETTABLEKS                       R11 R11 K46 ["Color3"]
      147 SETTABLEKS                       R11 R10 K34 ["BackgroundColor3"]
      149 GETTABLEKS                       R11 R0 K19 ["zIndex"]
      151 SETTABLEKS                       R11 R10 K20 ["ZIndex"]
      153 CALL                             R8 2 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R8
      156 SETTABLEKS                       R8 R7 K26 ["Highlight"]
      158 CALL                             R4 3 -1
      159 RETURN                           R4 -1

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
       14 DUPTABLE                         R6 K11 [{["width"], ["position"], ["anchorX"] = 0, ["lineOffset"], ["highlightAnchorX"], ["isDragging"], ["zIndex"], ["onInputBegan"]}]
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
       54 GETTABLEKS                       R7 R0 K10 ["onInputBegan"]
       56 SETTABLEKS                       R7 R6 K10 ["onInputBegan"]
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
       89 LOADK                            R5 K33 ["CanvasGroup"]
       90 NEWTABLE                         R6 8 0
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
      129 GETTABLEKS                       R7 R0 K38 ["zIndex"]
      131 SETTABLEKS                       R7 R6 K39 ["ZIndex"]
      133 GETUPVAL                         R7 0
      134 GETTABLEKS                       R7 R7 K40 ["Change"]
      136 GETTABLEKS                       R7 R7 K41 ["AbsoluteSize"]
      138 NEWCLOSURE                       R8 P0
      139 CAPTURE                          VAL R2
      140 SETTABLE                         R8 R6 R7
      141 DUPTABLE                         R7 K43 [{"Fill"}]
      142 SETTABLEKS                       R3 R7 K42 ["Fill"]
      144 CALL                             R4 3 -1
      145 RETURN                           R4 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["isStart"]
        2 GETTABLEKS                       R3 R0 K1 ["hasFade"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADN                            R2 5
        6 JUMP                             ; [+1]
        7 LOADN                            R2 1
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 1
       10 DUPTABLE                         R5 K12 [{["width"], ["maxWidth"], ["position"], ["anchorX"], ["lineOffset"], ["highlightAnchorX"] = 0.5, ["isDragging"], ["zIndex"], ["onInputBegan"]}]
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
       65 GETTABLEKS                       R6 R0 K11 ["onInputBegan"]
       67 SETTABLEKS                       R6 R5 K11 ["onInputBegan"]
       69 CALL                             R3 2 -1
       70 RETURN                           R3 -1

PROTO_12:
        0 LOADN                            R1 2
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 ADD                              R0 R1 R2
        4 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETTABLEKS                       R4 R0 K1 ["bounds"]
        9 GETTABLEKS                       R5 R0 K2 ["duration"]
       11 GETTABLEKS                       R6 R0 K3 ["isSelected"]
       13 GETTABLEKS                       R7 R1 K4 ["Color"]
       15 GETTABLEKS                       R7 R7 K5 ["Content"]
       17 GETTABLEKS                       R7 R7 K6 ["Muted"]
       19 GETTABLEKS                       R7 R7 K7 ["Color3"]
       21 GETTABLEKS                       R8 R1 K4 ["Color"]
       23 GETTABLEKS                       R8 R8 K8 ["Surface"]
       25 GETTABLEKS                       R8 R8 K9 ["Surface_0"]
       27 GETTABLEKS                       R8 R8 K7 ["Color3"]
       29 GETTABLEKS                       R10 R4 K10 ["startTime"]
       31 LOADN                            R15 -1
       32 GETUPVAL                         R16 2
       33 MUL                              R14 R15 R16
       34 ADD                              R13 R10 R14
       35 DIV                              R12 R13 R5
       36 LOADN                            R13 0
       37 LOADN                            R14 1
       38 FASTCALL                         MATH_CLAMP ; [+2]
       39 GETIMPORT                        R11 K13 [math.clamp]
       41 CALL                             R11 3 1
       42 MOVE                             R9 R11
       43 GETTABLEKS                       R11 R4 K14 ["endTime"]
       45 LOADN                            R16 1
       46 GETUPVAL                         R17 2
       47 MUL                              R15 R16 R17
       48 ADD                              R14 R11 R15
       49 DIV                              R13 R14 R5
       50 LOADN                            R14 0
       51 LOADN                            R15 1
       52 FASTCALL                         MATH_CLAMP ; [+2]
       53 GETIMPORT                        R12 K13 [math.clamp]
       55 CALL                             R12 3 1
       56 MOVE                             R10 R12
       57 GETTABLEKS                       R12 R4 K15 ["holdStartTime"]
       59 LOADN                            R17 -1
       60 GETUPVAL                         R18 2
       61 MUL                              R16 R17 R18
       62 ADD                              R15 R12 R16
       63 DIV                              R14 R15 R5
       64 LOADN                            R15 0
       65 LOADN                            R16 1
       66 FASTCALL                         MATH_CLAMP ; [+2]
       67 GETIMPORT                        R13 K13 [math.clamp]
       69 CALL                             R13 3 1
       70 MOVE                             R11 R13
       71 GETTABLEKS                       R13 R4 K16 ["holdEndTime"]
       73 LOADN                            R18 1
       74 GETUPVAL                         R19 2
       75 MUL                              R17 R18 R19
       76 ADD                              R16 R13 R17
       77 DIV                              R15 R16 R5
       78 LOADN                            R16 0
       79 LOADN                            R17 1
       80 FASTCALL                         MATH_CLAMP ; [+2]
       81 GETIMPORT                        R14 K13 [math.clamp]
       83 CALL                             R14 3 1
       84 MOVE                             R12 R14
       85 GETTABLEKS                       R14 R4 K10 ["startTime"]
       87 GETTABLEKS                       R15 R4 K15 ["holdStartTime"]
       89 JUMPIFLT                         R14 R15 ; [+2]
       91 LOADB                            R13 0 +1
       92 LOADB                            R13 1
       93 GETTABLEKS                       R15 R4 K14 ["endTime"]
       95 GETTABLEKS                       R16 R4 K16 ["holdEndTime"]
       97 JUMPIFLT                         R16 R15 ; [+2]
       99 LOADB                            R14 0 +1
      100 LOADB                            R14 1
      101 JUMPIFNOT                        R2 ; [+14]
      102 JUMPIF                           R6 ; [+13]
      103 GETTABLEKS                       R15 R0 K17 ["color"]
      105 GETIMPORT                        R17 K19 [Color3.new]
      107 LOADN                            R18 1
      108 LOADN                            R19 1
      109 LOADN                            R20 1
      110 CALL                             R17 3 1
      111 LOADK                            R18 K20 [0.25]
      112 NAMECALL                         R15 R15 K21 ["Lerp"]
      114 CALL                             R15 3 1
      115 JUMP                             ; [+2]
      116 GETTABLEKS                       R15 R0 K17 ["color"]
      118 GETTABLEKS                       R17 R0 K22 ["onMoveInputBegan"]
      120 JUMPIFNOTEQKNIL                  R17 ; [+2]
      122 LOADB                            R16 0 +1
      123 LOADB                            R16 1
      124 JUMPIFNOT                        R16 ; [+2]
      125 LOADN                            R17 0
      126 JUMP                             ; [+1]
      127 LOADK                            R17 K23 [0.5]
      128 GETUPVAL                         R18 3
      129 CALL                             R18 0 1
      130 NEWCLOSURE                       R19 P0
      131 CAPTURE                          VAL R18
      132 GETUPVAL                         R20 4
      133 GETUPVAL                         R21 1
      134 GETTABLEKS                       R21 R21 K24 ["Fragment"]
      136 LOADNIL                          R22
      137 DUPTABLE                         R23 K32 [{"Box", "StartFade", "EndFade", "Hold", "HoldHitArea", "StartCap", "EndCap"}]
      138 JUMPIFNOT                        R6 ; [+72]
      139 GETUPVAL                         R24 4
      140 LOADK                            R25 K33 ["Frame"]
      141 NEWTABLE                         R26 8 0
      143 GETIMPORT                        R27 K35 [UDim2.new]
      145 SUB                              R28 R10 R9
      146 LOADN                            R29 0
      147 LOADN                            R30 0
      148 LOADN                            R31 14
      149 CALL                             R27 4 1
      150 SETTABLEKS                       R27 R26 K36 ["Size"]
      152 GETIMPORT                        R27 K35 [UDim2.new]
      154 MOVE                             R28 R9
      155 LOADN                            R29 0
      156 LOADN                            R30 0
      157 GETTABLEKS                       R31 R0 K37 ["yCenter"]
      159 CALL                             R27 4 1
      160 SETTABLEKS                       R27 R26 K38 ["Position"]
      162 GETIMPORT                        R27 K40 [Vector2.new]
      164 LOADN                            R28 0
      165 LOADK                            R29 K23 [0.5]
      166 CALL                             R27 2 1
      167 SETTABLEKS                       R27 R26 K41 ["AnchorPoint"]
      169 SETTABLEKS                       R8 R26 K42 ["BackgroundColor3"]
      171 LOADN                            R27 0
      172 SETTABLEKS                       R27 R26 K43 ["BorderSizePixel"]
      174 SETTABLEKS                       R16 R26 K44 ["Active"]
      176 LOADN                            R28 2
      177 MOVE                             R29 R18
      178 CALL                             R29 0 1
      179 ADD                              R27 R28 R29
      180 SETTABLEKS                       R27 R26 K45 ["ZIndex"]
      182 GETUPVAL                         R27 1
      183 GETTABLEKS                       R27 R27 K46 ["Event"]
      185 GETTABLEKS                       R27 R27 K47 ["InputBegan"]
      187 GETTABLEKS                       R29 R0 K22 ["onMoveInputBegan"]
      189 JUMPIFNOTEQKNIL                  R29 ; [+3]
      191 LOADNIL                          R28
      192 JUMP                             ; [+2]
      193 NEWCLOSURE                       R28 P1
      194 CAPTURE                          VAL R29
      195 SETTABLE                         R28 R26 R27
      196 DUPTABLE                         R27 K49 [{"Outline"}]
      197 GETUPVAL                         R28 4
      198 LOADK                            R29 K50 ["UIStroke"]
      199 DUPTABLE                         R30 K54 [{["Color"], ["Thickness"] = 2, ["ApplyStrokeMode"]}]
      200 SETTABLEKS                       R7 R30 K4 ["Color"]
      202 GETIMPORT                        R31 K57 [Enum.ApplyStrokeMode.Border]
      204 SETTABLEKS                       R31 R30 K53 ["ApplyStrokeMode"]
      206 CALL                             R28 2 1
      207 SETTABLEKS                       R28 R27 K48 ["Outline"]
      209 CALL                             R24 3 1
      210 JUMP                             ; [+1]
      211 LOADNIL                          R24
      212 SETTABLEKS                       R24 R23 K25 ["Box"]
      214 JUMPIFNOT                        R6 ; [+24]
      215 JUMPIFNOT                        R13 ; [+23]
      216 GETUPVAL                         R24 4
      217 GETUPVAL                         R25 5
      218 DUPTABLE                         R26 K64 [{["startScale"], ["endScale"], ["yCenter"], ["slopesUp"] = True, ["color"], ["transparency"], ["zIndex"]}]
      219 SETTABLEKS                       R9 R26 K58 ["startScale"]
      221 SETTABLEKS                       R11 R26 K59 ["endScale"]
      223 GETTABLEKS                       R27 R0 K37 ["yCenter"]
      225 SETTABLEKS                       R27 R26 K37 ["yCenter"]
      227 SETTABLEKS                       R15 R26 K17 ["color"]
      229 SETTABLEKS                       R17 R26 K62 ["transparency"]
      231 LOADN                            R28 2
      232 MOVE                             R29 R18
      233 CALL                             R29 0 1
      234 ADD                              R27 R28 R29
      235 SETTABLEKS                       R27 R26 K63 ["zIndex"]
      237 CALL                             R24 2 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R24
      240 SETTABLEKS                       R24 R23 K26 ["StartFade"]
      242 JUMPIFNOT                        R6 ; [+24]
      243 JUMPIFNOT                        R14 ; [+23]
      244 GETUPVAL                         R24 4
      245 GETUPVAL                         R25 5
      246 DUPTABLE                         R26 K66 [{["startScale"], ["endScale"], ["yCenter"], ["slopesUp"] = False, ["color"], ["transparency"], ["zIndex"]}]
      247 SETTABLEKS                       R12 R26 K58 ["startScale"]
      249 SETTABLEKS                       R10 R26 K59 ["endScale"]
      251 GETTABLEKS                       R27 R0 K37 ["yCenter"]
      253 SETTABLEKS                       R27 R26 K37 ["yCenter"]
      255 SETTABLEKS                       R15 R26 K17 ["color"]
      257 SETTABLEKS                       R17 R26 K62 ["transparency"]
      259 LOADN                            R28 2
      260 MOVE                             R29 R18
      261 CALL                             R29 0 1
      262 ADD                              R27 R28 R29
      263 SETTABLEKS                       R27 R26 K63 ["zIndex"]
      265 CALL                             R24 2 1
      266 JUMP                             ; [+1]
      267 LOADNIL                          R24
      268 SETTABLEKS                       R24 R23 K27 ["EndFade"]
      270 GETUPVAL                         R24 4
      271 LOADK                            R25 K33 ["Frame"]
      272 NEWTABLE                         R26 16 0
      274 GETIMPORT                        R27 K35 [UDim2.new]
      276 SUB                              R28 R12 R11
      277 LOADN                            R29 0
      278 LOADN                            R30 0
      279 LOADN                            R31 14
      280 CALL                             R27 4 1
      281 SETTABLEKS                       R27 R26 K36 ["Size"]
      283 GETIMPORT                        R27 K35 [UDim2.new]
      285 MOVE                             R28 R11
      286 LOADN                            R29 0
      287 LOADN                            R30 0
      288 GETTABLEKS                       R31 R0 K37 ["yCenter"]
      290 CALL                             R27 4 1
      291 SETTABLEKS                       R27 R26 K38 ["Position"]
      293 GETIMPORT                        R27 K40 [Vector2.new]
      295 LOADN                            R28 0
      296 LOADK                            R29 K23 [0.5]
      297 CALL                             R27 2 1
      298 SETTABLEKS                       R27 R26 K41 ["AnchorPoint"]
      300 SETTABLEKS                       R15 R26 K42 ["BackgroundColor3"]
      302 SETTABLEKS                       R17 R26 K67 ["BackgroundTransparency"]
      304 LOADN                            R27 0
      305 SETTABLEKS                       R27 R26 K43 ["BorderSizePixel"]
      307 SETTABLEKS                       R16 R26 K44 ["Active"]
      309 LOADN                            R28 2
      310 MOVE                             R29 R18
      311 CALL                             R29 0 1
      312 ADD                              R27 R28 R29
      313 SETTABLEKS                       R27 R26 K45 ["ZIndex"]
      315 GETUPVAL                         R27 1
      316 GETTABLEKS                       R27 R27 K46 ["Event"]
      318 GETTABLEKS                       R27 R27 K47 ["InputBegan"]
      320 GETTABLEKS                       R29 R0 K22 ["onMoveInputBegan"]
      322 JUMPIFNOTEQKNIL                  R29 ; [+3]
      324 LOADNIL                          R28
      325 JUMP                             ; [+2]
      326 NEWCLOSURE                       R28 P1
      327 CAPTURE                          VAL R29
      328 SETTABLE                         R28 R26 R27
      329 GETUPVAL                         R27 1
      330 GETTABLEKS                       R27 R27 K46 ["Event"]
      332 GETTABLEKS                       R27 R27 K68 ["MouseEnter"]
      334 NEWCLOSURE                       R28 P2
      335 CAPTURE                          VAL R3
      336 SETTABLE                         R28 R26 R27
      337 GETUPVAL                         R27 1
      338 GETTABLEKS                       R27 R27 K46 ["Event"]
      340 GETTABLEKS                       R27 R27 K69 ["MouseLeave"]
      342 NEWCLOSURE                       R28 P3
      343 CAPTURE                          VAL R3
      344 SETTABLE                         R28 R26 R27
      345 DUPTABLE                         R27 K72 [{"Border", "HoldStartEdge", "HoldEndEdge"}]
      346 JUMPIFNOT                        R6 ; [+19]
      347 GETUPVAL                         R28 4
      348 LOADK                            R29 K50 ["UIStroke"]
      349 DUPTABLE                         R30 K54 [{["Color"], ["Thickness"] = 2, ["ApplyStrokeMode"]}]
      350 GETTABLEKS                       R31 R1 K4 ["Color"]
      352 GETTABLEKS                       R31 R31 K5 ["Content"]
      354 GETTABLEKS                       R31 R31 K73 ["Emphasis"]
      356 GETTABLEKS                       R31 R31 K7 ["Color3"]
      358 SETTABLEKS                       R31 R30 K4 ["Color"]
      360 GETIMPORT                        R31 K57 [Enum.ApplyStrokeMode.Border]
      362 SETTABLEKS                       R31 R30 K53 ["ApplyStrokeMode"]
      364 CALL                             R28 2 1
      365 JUMP                             ; [+1]
      366 LOADNIL                          R28
      367 SETTABLEKS                       R28 R27 K56 ["Border"]
      369 JUMPIFNOT                        R6 ; [+33]
      370 GETUPVAL                         R28 4
      371 GETUPVAL                         R29 6
      372 DUPTABLE                         R30 K78 [{["isStart"] = True, ["hasFade"], ["isDragging"], ["zIndex"], ["onInputBegan"]}]
      373 SETTABLEKS                       R13 R30 K75 ["hasFade"]
      375 GETTABLEKS                       R32 R0 K79 ["draggedEdge"]
      377 JUMPIFEQKS                       R32 K80 ["holdStart"] ; [+2]
      379 LOADB                            R31 0 +1
      380 LOADB                            R31 1
      381 SETTABLEKS                       R31 R30 K76 ["isDragging"]
      383 LOADN                            R32 2
      384 MOVE                             R33 R18
      385 CALL                             R33 0 1
      386 ADD                              R31 R32 R33
      387 SETTABLEKS                       R31 R30 K63 ["zIndex"]
      389 GETTABLEKS                       R32 R0 K81 ["onResizeInputBegan"]
      391 JUMPIFNOTEQKNIL                  R32 ; [+3]
      393 LOADNIL                          R31
      394 JUMP                             ; [+4]
      395 LOADK                            R33 K80 ["holdStart"]
      396 NEWCLOSURE                       R31 P4
      397 CAPTURE                          VAL R32
      398 CAPTURE                          VAL R33
      399 SETTABLEKS                       R31 R30 K77 ["onInputBegan"]
      401 CALL                             R28 2 1
      402 JUMP                             ; [+1]
      403 LOADNIL                          R28
      404 SETTABLEKS                       R28 R27 K70 ["HoldStartEdge"]
      406 JUMPIFNOT                        R6 ; [+33]
      407 GETUPVAL                         R28 4
      408 GETUPVAL                         R29 6
      409 DUPTABLE                         R30 K82 [{["isStart"] = False, ["hasFade"], ["isDragging"], ["zIndex"], ["onInputBegan"]}]
      410 SETTABLEKS                       R14 R30 K75 ["hasFade"]
      412 GETTABLEKS                       R32 R0 K79 ["draggedEdge"]
      414 JUMPIFEQKS                       R32 K83 ["holdEnd"] ; [+2]
      416 LOADB                            R31 0 +1
      417 LOADB                            R31 1
      418 SETTABLEKS                       R31 R30 K76 ["isDragging"]
      420 LOADN                            R32 2
      421 MOVE                             R33 R18
      422 CALL                             R33 0 1
      423 ADD                              R31 R32 R33
      424 SETTABLEKS                       R31 R30 K63 ["zIndex"]
      426 GETTABLEKS                       R32 R0 K81 ["onResizeInputBegan"]
      428 JUMPIFNOTEQKNIL                  R32 ; [+3]
      430 LOADNIL                          R31
      431 JUMP                             ; [+4]
      432 LOADK                            R33 K83 ["holdEnd"]
      433 NEWCLOSURE                       R31 P4
      434 CAPTURE                          VAL R32
      435 CAPTURE                          VAL R33
      436 SETTABLEKS                       R31 R30 K77 ["onInputBegan"]
      438 CALL                             R28 2 1
      439 JUMP                             ; [+1]
      440 LOADNIL                          R28
      441 SETTABLEKS                       R28 R27 K71 ["HoldEndEdge"]
      443 CALL                             R24 3 1
      444 SETTABLEKS                       R24 R23 K28 ["Hold"]
      446 JUMPIF                           R6 ; [+88]
      447 GETUPVAL                         R24 4
      448 LOADK                            R25 K33 ["Frame"]
      449 NEWTABLE                         R26 16 0
      451 GETIMPORT                        R27 K35 [UDim2.new]
      453 SUB                              R28 R12 R11
      454 LOADN                            R29 0
      455 LOADN                            R30 0
      456 LOADN                            R31 16
      457 CALL                             R27 4 1
      458 SETTABLEKS                       R27 R26 K36 ["Size"]
      460 GETIMPORT                        R27 K35 [UDim2.new]
      462 ADD                              R29 R11 R12
      463 DIVK                             R28 R29 K52 [2]
      464 LOADN                            R29 0
      465 LOADN                            R30 0
      466 GETTABLEKS                       R31 R0 K37 ["yCenter"]
      468 CALL                             R27 4 1
      469 SETTABLEKS                       R27 R26 K38 ["Position"]
      471 GETIMPORT                        R27 K40 [Vector2.new]
      473 LOADK                            R28 K23 [0.5]
      474 LOADK                            R29 K23 [0.5]
      475 CALL                             R27 2 1
      476 SETTABLEKS                       R27 R26 K41 ["AnchorPoint"]
      478 LOADN                            R27 1
      479 SETTABLEKS                       R27 R26 K67 ["BackgroundTransparency"]
      481 SETTABLEKS                       R16 R26 K44 ["Active"]
      483 LOADN                            R28 2
      484 MOVE                             R29 R18
      485 CALL                             R29 0 1
      486 ADD                              R27 R28 R29
      487 SETTABLEKS                       R27 R26 K45 ["ZIndex"]
      489 GETUPVAL                         R27 1
      490 GETTABLEKS                       R27 R27 K46 ["Event"]
      492 GETTABLEKS                       R27 R27 K47 ["InputBegan"]
      494 GETTABLEKS                       R29 R0 K22 ["onMoveInputBegan"]
      496 JUMPIFNOTEQKNIL                  R29 ; [+3]
      498 LOADNIL                          R28
      499 JUMP                             ; [+2]
      500 NEWCLOSURE                       R28 P1
      501 CAPTURE                          VAL R29
      502 SETTABLE                         R28 R26 R27
      503 GETUPVAL                         R27 1
      504 GETTABLEKS                       R27 R27 K46 ["Event"]
      506 GETTABLEKS                       R27 R27 K68 ["MouseEnter"]
      508 NEWCLOSURE                       R28 P5
      509 CAPTURE                          VAL R3
      510 SETTABLE                         R28 R26 R27
      511 GETUPVAL                         R27 1
      512 GETTABLEKS                       R27 R27 K46 ["Event"]
      514 GETTABLEKS                       R27 R27 K69 ["MouseLeave"]
      516 NEWCLOSURE                       R28 P6
      517 CAPTURE                          VAL R3
      518 SETTABLE                         R28 R26 R27
      519 DUPTABLE                         R27 K85 [{"MinimumWidth"}]
      520 GETUPVAL                         R28 4
      521 LOADK                            R29 K86 ["UISizeConstraint"]
      522 DUPTABLE                         R30 K88 [{"MinSize"}]
      523 GETIMPORT                        R31 K40 [Vector2.new]
      525 LOADN                            R32 16
      526 LOADN                            R33 0
      527 CALL                             R31 2 1
      528 SETTABLEKS                       R31 R30 K87 ["MinSize"]
      530 CALL                             R28 2 1
      531 SETTABLEKS                       R28 R27 K84 ["MinimumWidth"]
      533 CALL                             R24 3 1
      534 JUMP                             ; [+1]
      535 LOADNIL                          R24
      536 SETTABLEKS                       R24 R23 K29 ["HoldHitArea"]
      538 JUMPIFNOT                        R6 ; [+39]
      539 GETUPVAL                         R24 4
      540 GETUPVAL                         R25 7
      541 DUPTABLE                         R26 K90 [{["isStart"] = True, ["hasFade"], ["isDragging"], ["xScale"], ["yCenter"], ["zIndex"], ["onInputBegan"]}]
      542 SETTABLEKS                       R13 R26 K75 ["hasFade"]
      544 GETTABLEKS                       R28 R0 K79 ["draggedEdge"]
      546 JUMPIFEQKS                       R28 K91 ["start"] ; [+2]
      548 LOADB                            R27 0 +1
      549 LOADB                            R27 1
      550 SETTABLEKS                       R27 R26 K76 ["isDragging"]
      552 SETTABLEKS                       R9 R26 K89 ["xScale"]
      554 GETTABLEKS                       R27 R0 K37 ["yCenter"]
      556 SETTABLEKS                       R27 R26 K37 ["yCenter"]
      558 LOADN                            R28 2
      559 MOVE                             R29 R18
      560 CALL                             R29 0 1
      561 ADD                              R27 R28 R29
      562 SETTABLEKS                       R27 R26 K63 ["zIndex"]
      564 GETTABLEKS                       R28 R0 K81 ["onResizeInputBegan"]
      566 JUMPIFNOTEQKNIL                  R28 ; [+3]
      568 LOADNIL                          R27
      569 JUMP                             ; [+4]
      570 LOADK                            R29 K91 ["start"]
      571 NEWCLOSURE                       R27 P4
      572 CAPTURE                          VAL R28
      573 CAPTURE                          VAL R29
      574 SETTABLEKS                       R27 R26 K77 ["onInputBegan"]
      576 CALL                             R24 2 1
      577 JUMP                             ; [+1]
      578 LOADNIL                          R24
      579 SETTABLEKS                       R24 R23 K30 ["StartCap"]
      581 JUMPIFNOT                        R6 ; [+39]
      582 GETUPVAL                         R24 4
      583 GETUPVAL                         R25 7
      584 DUPTABLE                         R26 K92 [{["isStart"] = False, ["hasFade"], ["isDragging"], ["xScale"], ["yCenter"], ["zIndex"], ["onInputBegan"]}]
      585 SETTABLEKS                       R14 R26 K75 ["hasFade"]
      587 GETTABLEKS                       R28 R0 K79 ["draggedEdge"]
      589 JUMPIFEQKS                       R28 K93 ["end"] ; [+2]
      591 LOADB                            R27 0 +1
      592 LOADB                            R27 1
      593 SETTABLEKS                       R27 R26 K76 ["isDragging"]
      595 SETTABLEKS                       R10 R26 K89 ["xScale"]
      597 GETTABLEKS                       R27 R0 K37 ["yCenter"]
      599 SETTABLEKS                       R27 R26 K37 ["yCenter"]
      601 LOADN                            R28 2
      602 MOVE                             R29 R18
      603 CALL                             R29 0 1
      604 ADD                              R27 R28 R29
      605 SETTABLEKS                       R27 R26 K63 ["zIndex"]
      607 GETTABLEKS                       R28 R0 K81 ["onResizeInputBegan"]
      609 JUMPIFNOTEQKNIL                  R28 ; [+3]
      611 LOADNIL                          R27
      612 JUMP                             ; [+4]
      613 LOADK                            R29 K93 ["end"]
      614 NEWCLOSURE                       R27 P4
      615 CAPTURE                          VAL R28
      616 CAPTURE                          VAL R29
      617 SETTABLEKS                       R27 R26 K77 ["onInputBegan"]
      619 CALL                             R24 2 1
      620 JUMP                             ; [+1]
      621 LOADNIL                          R24
      622 SETTABLEKS                       R24 R23 K31 ["EndCap"]
      624 CALL                             R20 3 -1
      625 RETURN                           R20 -1

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
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Util"]
       27 GETTABLEKS                       R5 R5 K8 ["AnimationGen"]
       29 GETTABLEKS                       R5 R5 K11 ["Posing"]
       31 GETTABLEKS                       R5 R5 K12 ["PoseInterval"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K13 ["React"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K14 ["ReactUtils"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R6 K15 ["createNextOrder"]
       46 GETTABLEKS                       R8 R3 K16 ["Hooks"]
       48 GETTABLEKS                       R8 R8 K17 ["useTokens"]
       50 GETTABLEKS                       R9 R5 K18 ["createElement"]
       52 GETTABLEKS                       R11 R2 K20 ["DEFAULT_GENERATION_FPS"]
       54 DIVRK                            R10 K19 [0.5] R11
       55 DUPCLOSURE                       R11 K21 [PROTO_1]
       56 DUPCLOSURE                       R12 K22 [PROTO_3]
       57 DUPCLOSURE                       R13 K23 [PROTO_4]
       58 CAPTURE                          VAL R10
       59 DUPCLOSURE                       R14 K24 [PROTO_7]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R9
       63 DUPCLOSURE                       R15 K25 [PROTO_8]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R14
       66 DUPCLOSURE                       R16 K26 [PROTO_10]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R9
       69 DUPCLOSURE                       R17 K27 [PROTO_11]
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R14
       72 DUPCLOSURE                       R18 K28 [PROTO_17]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R16
       79 CAPTURE                          VAL R17
       80 CAPTURE                          VAL R15
       81 RETURN                           R18 1
