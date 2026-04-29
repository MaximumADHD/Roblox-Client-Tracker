PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationInternalTextInputScrolling"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETTABLEKS                       R2 R0 K1 ["isBoundsChecker"]
        6 GETTABLEKS                       R4 R0 K2 ["isMultiLine"]
        8 OR                               R3 R4 R2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 LOADK                            R5 K4 ["TextBox"]
       13 NEWTABLE                         R6 32 0
       15 LOADB                            R7 0
       16 SETTABLEKS                       R7 R6 K5 ["ClearTextOnFocus"]
       18 LOADB                            R7 0
       19 SETTABLEKS                       R7 R6 K6 ["Selectable"]
       21 JUMPIFNOT                        R2 ; [+2]
       22 LOADB                            R7 0
       23 JUMP                             ; [+1]
       24 LOADNIL                          R7
       25 SETTABLEKS                       R7 R6 K7 ["Active"]
       27 JUMPIFNOT                        R2 ; [+2]
       28 LOADB                            R7 0
       29 JUMP                             ; [+1]
       30 LOADNIL                          R7
       31 SETTABLEKS                       R7 R6 K8 ["Visible"]
       33 LOADN                            R7 1
       34 SETTABLEKS                       R7 R6 K9 ["BackgroundTransparency"]
       36 LOADB                            R7 1
       37 SETTABLEKS                       R7 R6 K10 ["ClipsDescendants"]
       39 GETIMPORT                        R7 K14 [Enum.TextXAlignment.Left]
       41 SETTABLEKS                       R7 R6 K12 ["TextXAlignment"]
       43 GETTABLEKS                       R8 R0 K15 ["fontStyle"]
       45 GETTABLEKS                       R7 R8 K16 ["Font"]
       47 SETTABLEKS                       R7 R6 K16 ["Font"]
       49 GETTABLEKS                       R8 R0 K15 ["fontStyle"]
       51 GETTABLEKS                       R7 R8 K17 ["FontSize"]
       53 SETTABLEKS                       R7 R6 K18 ["TextSize"]
       55 GETTABLEKS                       R8 R0 K15 ["fontStyle"]
       57 GETTABLEKS                       R7 R8 K19 ["LineHeight"]
       59 SETTABLEKS                       R7 R6 K19 ["LineHeight"]
       61 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       63 GETTABLEKS                       R7 R8 K21 ["Color3"]
       65 SETTABLEKS                       R7 R6 K22 ["TextColor3"]
       67 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       69 GETTABLEKS                       R7 R8 K23 ["Transparency"]
       71 SETTABLEKS                       R7 R6 K24 ["TextTransparency"]
       73 SETTABLEKS                       R3 R6 K25 ["MultiLine"]
       75 SETTABLEKS                       R3 R6 K26 ["TextWrapped"]
       77 JUMPIFNOT                        R3 ; [+3]
       78 GETIMPORT                        R7 K29 [Enum.TextYAlignment.Top]
       80 JUMP                             ; [+2]
       81 GETIMPORT                        R7 K31 [Enum.TextYAlignment.Center]
       83 SETTABLEKS                       R7 R6 K27 ["TextYAlignment"]
       85 JUMPIFNOT                        R2 ; [+2]
       86 LOADB                            R7 0
       87 JUMP                             ; [+3]
       88 GETTABLEKS                       R8 R0 K32 ["isDisabled"]
       90 NOT                              R7 R8
       91 SETTABLEKS                       R7 R6 K33 ["TextEditable"]
       93 GETTABLEKS                       R7 R0 K34 ["placeholder"]
       95 SETTABLEKS                       R7 R6 K35 ["PlaceholderText"]
       97 GETUPVAL                         R8 2
       98 CALL                             R8 0 1
       99 JUMPIFNOT                        R8 ; [+3]
      100 GETTABLEKS                       R7 R0 K36 ["textInputType"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R7
      104 SETTABLEKS                       R7 R6 K37 ["TextInputType"]
      106 GETUPVAL                         R9 0
      107 GETTABLEKS                       R8 R9 K0 ["FoundationInternalTextInputScrolling"]
      109 JUMPIFNOT                        R8 ; [+7]
      110 GETTABLEKS                       R8 R0 K38 ["Size"]
      112 JUMPIFEQKNIL                     R8 ; [+4]
      114 GETTABLEKS                       R7 R0 K38 ["Size"]
      116 JUMP                             ; [+5]
      117 GETIMPORT                        R7 K41 [UDim2.fromScale]
      119 LOADN                            R8 1
      120 LOADN                            R9 1
      121 CALL                             R7 2 1
      122 SETTABLEKS                       R7 R6 K38 ["Size"]
      124 GETTABLEKS                       R7 R0 K42 ["automaticSize"]
      126 SETTABLEKS                       R7 R6 K43 ["AutomaticSize"]
      128 JUMPIFNOT                        R2 ; [+2]
      129 LOADNIL                          R7
      130 JUMP                             ; [+2]
      131 GETTABLEKS                       R7 R0 K44 ["text"]
      133 SETTABLEKS                       R7 R6 K45 ["Text"]
      135 SETTABLEKS                       R1 R6 K46 ["ref"]
      137 GETUPVAL                         R8 1
      138 GETTABLEKS                       R7 R8 K47 ["Tag"]
      140 GETTABLEKS                       R8 R0 K48 ["tag"]
      142 SETTABLE                         R8 R6 R7
      143 GETUPVAL                         R9 1
      144 GETTABLEKS                       R8 R9 K49 ["Change"]
      146 GETTABLEKS                       R7 R8 K45 ["Text"]
      148 GETTABLEKS                       R8 R0 K50 ["onTextChanged"]
      150 SETTABLE                         R8 R6 R7
      151 GETUPVAL                         R9 1
      152 GETTABLEKS                       R8 R9 K49 ["Change"]
      154 GETTABLEKS                       R7 R8 K51 ["CursorPosition"]
      156 GETTABLEKS                       R8 R0 K52 ["onCursorPositionChanged"]
      158 SETTABLE                         R8 R6 R7
      159 GETUPVAL                         R9 1
      160 GETTABLEKS                       R8 R9 K53 ["Event"]
      162 GETTABLEKS                       R7 R8 K54 ["Focused"]
      164 GETTABLEKS                       R8 R0 K55 ["onFocusGained"]
      166 SETTABLE                         R8 R6 R7
      167 GETUPVAL                         R9 1
      168 GETTABLEKS                       R8 R9 K53 ["Event"]
      170 GETTABLEKS                       R7 R8 K56 ["FocusLost"]
      172 GETTABLEKS                       R8 R0 K57 ["onFocusLost"]
      174 SETTABLE                         R8 R6 R7
      175 GETUPVAL                         R9 0
      176 GETTABLEKS                       R8 R9 K0 ["FoundationInternalTextInputScrolling"]
      178 JUMPIFNOT                        R8 ; [+17]
      179 GETTABLEKS                       R8 R0 K58 ["padding"]
      181 JUMPIFNOT                        R8 ; [+14]
      182 DUPTABLE                         R7 K60 [{"Padding"}]
      183 GETUPVAL                         R9 1
      184 GETTABLEKS                       R8 R9 K3 ["createElement"]
      186 GETUPVAL                         R9 3
      187 DUPTABLE                         R10 K62 [{"value"}]
      188 GETTABLEKS                       R11 R0 K58 ["padding"]
      190 SETTABLEKS                       R11 R10 K61 ["value"]
      192 CALL                             R8 2 1
      193 SETTABLEKS                       R8 R7 K59 ["Padding"]
      195 JUMP                             ; [+1]
      196 LOADNIL                          R7
      197 GETTABLEKS                       R8 R0 K63 ["children"]
      199 CALL                             R4 4 -1
      200 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["ReleaseFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["SelectionStart"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["CursorPosition"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["SelectionStart"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["CursorPosition"]
        9 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K8 [{"getIsFocused", "focus", "releaseFocus", "setHover", "getSelectionStart", "getCursorPosition", "setCursorPosition", "setSelectionStart"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getIsFocused"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["focus"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["releaseFocus"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setHover"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["getSelectionStart"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["getCursorPosition"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["setCursorPosition"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setSelectionStart"]
       25 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationInternalTextInputScrolling"]
        3 JUMPIFNOT                        R1 ; [+31]
        4 JUMPIFEQKNIL                     R0 ; [+10]
        6 GETTABLEKS                       R1 R0 K1 ["Parent"]
        8 JUMPIFEQKNIL                     R1 ; [+6]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K2 ["current"]
       13 JUMPIFEQKS                       R1 K3 [""] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R1 R0 K4 ["Text"]
       18 GETUPVAL                         R2 2
       19 JUMPIFNOT                        R2 ; [+9]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K2 ["current"]
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R2 R3 K2 ["current"]
       27 SETTABLEKS                       R1 R2 K4 ["Text"]
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R2 R3 K5 ["onChanged"]
       32 MOVE                             R3 R1
       33 CALL                             R2 1 0
       34 RETURN                           R0 0
       35 JUMPIFNOTEQKNIL                  R0 ; [+7]
       37 GETUPVAL                         R2 4
       38 GETTABLEKS                       R1 R2 K5 ["onChanged"]
       40 LOADK                            R2 K3 [""]
       41 CALL                             R1 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R2 4
       44 GETTABLEKS                       R1 R2 K5 ["onChanged"]
       46 GETTABLEKS                       R2 R0 K4 ["Text"]
       48 CALL                             R1 1 0
       49 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+23]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+21]
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K1 ["current"]
       12 JUMPIFNOT                        R0 ; [+14]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R1 R2 K1 ["current"]
       16 GETTABLEKS                       R0 R1 K2 ["Parent"]
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETUPVAL                         R0 4
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K1 ["current"]
       23 GETTABLEKS                       R1 R2 K3 ["Text"]
       25 SETTABLEKS                       R1 R0 K1 ["current"]
       27 GETUPVAL                         R0 5
       28 LOADB                            R1 1
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 6
       31 LOADB                            R1 1
       32 CALL                             R0 1 0
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R0 R1 K4 ["onFocus"]
       36 JUMPIFNOT                        R0 ; [+4]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R0 R1 K4 ["onFocus"]
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETUPVAL                         R3 2
        6 LOADB                            R4 0
        7 CALL                             R3 1 0
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
       15 CALL                             R3 0 0
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K1 ["onReturnPressed"]
       20 JUMPIFNOT                        R3 ; [+4]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K1 ["onReturnPressed"]
       24 CALL                             R3 0 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["onDrag"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["onDrag"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["FoundationUIStrokeInner"]
        3 JUMPIFNOT                        R4 ; [+14]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K2 ["outerContainer"]
        7 GETTABLEKS                       R5 R6 K3 ["minHeight"]
        9 GETUPVAL                         R6 2
       10 SUB                              R4 R5 R6
       11 GETUPVAL                         R5 3
       12 GETUPVAL                         R6 4
       13 LOADN                            R7 1
       14 GETUPVAL                         R8 5
       15 CALL                             R5 3 1
       16 SUB                              R3 R4 R5
       17 JUMP                             ; [+15]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K2 ["outerContainer"]
       21 GETTABLEKS                       R6 R7 K3 ["minHeight"]
       23 GETUPVAL                         R7 2
       24 SUB                              R5 R6 R7
       25 GETUPVAL                         R6 6
       26 SUB                              R4 R5 R6
       27 GETUPVAL                         R6 4
       28 FASTCALL1                        MATH_CEIL R6 ; [+2]
       29 GETIMPORT                        R5 K6 [math.ceil]
       31 CALL                             R5 1 1
       32 SUB                              R3 R4 R5
       33 MULK                             R2 R3 K0 [2]
       34 FASTCALL1                        MATH_ROUND R2 ; [+2]
       35 GETIMPORT                        R1 K8 [math.round]
       37 CALL                             R1 1 1
       38 DIVK                             R0 R1 K0 [2]
       39 GETIMPORT                        R1 K11 [UDim.new]
       41 LOADN                            R2 0
       42 DIVK                             R4 R0 K0 [2]
       43 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       44 GETIMPORT                        R3 K13 [math.floor]
       46 CALL                             R3 1 1
       47 CALL                             R1 2 1
       48 GETIMPORT                        R2 K11 [UDim.new]
       50 LOADN                            R3 0
       51 DIVK                             R5 R0 K0 [2]
       52 FASTCALL1                        MATH_CEIL R5 ; [+2]
       53 GETIMPORT                        R4 K6 [math.ceil]
       55 CALL                             R4 1 1
       56 CALL                             R2 2 1
       57 GETUPVAL                         R5 0
       58 GETTABLEKS                       R4 R5 K1 ["FoundationUIStrokeInner"]
       60 JUMPIFNOT                        R4 ; [+10]
       61 GETUPVAL                         R5 7
       62 FASTCALL1                        MATH_ROUND R0 ; [+3]
       63 MOVE                             R7 R0
       64 GETIMPORT                        R6 K8 [math.round]
       66 CALL                             R6 1 1
       67 ADD                              R4 R5 R6
       68 GETUPVAL                         R5 2
       69 ADD                              R3 R4 R5
       70 JUMP                             ; [+7]
       71 GETUPVAL                         R4 7
       72 FASTCALL1                        MATH_ROUND R0 ; [+3]
       73 MOVE                             R6 R0
       74 GETIMPORT                        R5 K8 [math.round]
       76 CALL                             R5 1 1
       77 ADD                              R3 R4 R5
       78 DUPTABLE                         R4 K18 [{"top", "bottom", "left", "right"}]
       79 SETTABLEKS                       R1 R4 K14 ["top"]
       81 SETTABLEKS                       R2 R4 K15 ["bottom"]
       83 GETIMPORT                        R5 K11 [UDim.new]
       85 LOADN                            R6 0
       86 LOADN                            R7 0
       87 CALL                             R5 2 1
       88 SETTABLEKS                       R5 R4 K16 ["left"]
       90 GETIMPORT                        R5 K11 [UDim.new]
       92 LOADN                            R6 0
       93 LOADN                            R7 0
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K17 ["right"]
       97 MOVE                             R5 R3
       98 RETURN                           R4 2

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 DUPTABLE                         R0 K2 [{"FillDirection", "ItemLineAlignment"}]
        3 GETIMPORT                        R1 K5 [Enum.FillDirection.Vertical]
        5 SETTABLEKS                       R1 R0 K0 ["FillDirection"]
        7 GETIMPORT                        R1 K7 [Enum.ItemLineAlignment.Center]
        9 SETTABLEKS                       R1 R0 K1 ["ItemLineAlignment"]
       11 RETURN                           R0 1
       12 LOADNIL                          R0
       13 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+21]
        2 DUPTABLE                         R0 K4 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
        3 GETIMPORT                        R1 K8 [Enum.AutomaticSize.Y]
        5 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        7 GETIMPORT                        R1 K11 [UDim2.fromOffset]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K1 ["CanvasSize"]
       14 GETIMPORT                        R1 K12 [Enum.ScrollingDirection.Y]
       16 SETTABLEKS                       R1 R0 K2 ["ScrollingDirection"]
       18 GETIMPORT                        R1 K15 [Enum.ScrollBarInset.Always]
       20 SETTABLEKS                       R1 R0 K3 ["VerticalScrollBarInset"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["current"]
        6 JUMPIFEQKNIL                     R1 ; [+3]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R0 K1 ["TextSize"]
       13 GETTABLEKS                       R5 R0 K2 ["LineHeight"]
       15 MUL                              R3 R4 R5
       16 GETTABLEKS                       R5 R1 K3 ["CanvasPosition"]
       18 GETTABLEKS                       R4 R5 K4 ["Y"]
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R0
       22 CALL                             R5 1 1
       23 SETTABLEKS                       R5 R2 K5 ["Text"]
       25 GETTABLEKS                       R6 R2 K6 ["TextBounds"]
       27 GETTABLEKS                       R5 R6 K4 ["Y"]
       29 GETUPVAL                         R10 3
       30 GETTABLEKS                       R9 R10 K7 ["top"]
       32 GETTABLEKS                       R8 R9 K8 ["Offset"]
       34 SUB                              R7 R4 R8
       35 GETUPVAL                         R10 3
       36 GETTABLEKS                       R9 R10 K9 ["bottom"]
       38 GETTABLEKS                       R8 R9 K8 ["Offset"]
       40 ADD                              R6 R7 R8
       41 GETTABLEKS                       R11 R1 K10 ["AbsoluteSize"]
       43 GETTABLEKS                       R10 R11 K4 ["Y"]
       45 ADD                              R9 R4 R10
       46 GETUPVAL                         R12 3
       47 GETTABLEKS                       R11 R12 K7 ["top"]
       49 GETTABLEKS                       R10 R11 K8 ["Offset"]
       51 SUB                              R8 R9 R10
       52 GETUPVAL                         R11 3
       53 GETTABLEKS                       R10 R11 K9 ["bottom"]
       55 GETTABLEKS                       R9 R10 K8 ["Offset"]
       57 SUB                              R7 R8 R9
       58 SUB                              R8 R5 R3
       59 JUMPIFNOTLT                      R8 R6 ; [+12]
       61 GETTABLEKS                       R8 R1 K3 ["CanvasPosition"]
       63 GETIMPORT                        R9 K13 [Vector2.new]
       65 LOADN                            R10 0
       66 SUB                              R12 R5 R3
       67 SUB                              R11 R12 R6
       68 CALL                             R9 2 1
       69 ADD                              R8 R8 R9
       70 SETTABLEKS                       R8 R1 K3 ["CanvasPosition"]
       72 JUMPIFNOTLT                      R7 R5 ; [+11]
       74 GETTABLEKS                       R8 R1 K3 ["CanvasPosition"]
       76 GETIMPORT                        R9 K13 [Vector2.new]
       78 LOADN                            R10 0
       79 SUB                              R11 R5 R7
       80 CALL                             R9 2 1
       81 ADD                              R8 R8 R9
       82 SETTABLEKS                       R8 R1 K3 ["CanvasPosition"]
       84 RETURN                           R0 0

PROTO_22:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R0 R1 K0 ["current"]
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["ClipsDescendants"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K0 ["current"]
       12 SETTABLEKS                       R1 R0 K2 ["CanvasPosition"]
       14 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["current"]
        4 SETTABLEKS                       R1 R0 K1 ["Text"]
        6 GETUPVAL                         R1 0
        7 LOADK                            R2 K2 [""]
        8 SETTABLEKS                       R2 R1 K0 ["current"]
       10 NAMECALL                         R1 R0 K3 ["CaptureFocus"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 SETTABLEKS                       R2 R1 K1 ["current"]
        5 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_27:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 LOADN                            R5 1
        7 GETTABLEKS                       R6 R2 K0 ["numLines"]
        9 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       11 GETIMPORT                        R4 K3 [math.max]
       13 CALL                             R4 2 1
       14 LOADN                            R6 1
       15 JUMPIFLT                         R6 R4 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R7 R8 K4 ["FoundationInternalTextInputScrolling"]
       22 AND                              R6 R7 R5
       23 GETUPVAL                         R7 4
       24 MOVE                             R8 R3
       25 GETTABLEKS                       R9 R2 K5 ["size"]
       27 CALL                             R7 2 1
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R9 R10 K6 ["FoundationDisableStylingPolyfill"]
       31 JUMPIFNOT                        R9 ; [+7]
       32 GETUPVAL                         R8 5
       33 GETTABLEKS                       R10 R7 K7 ["textBox"]
       35 GETTABLEKS                       R9 R10 K8 ["tag"]
       37 CALL                             R8 1 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R8
       40 GETUPVAL                         R10 6
       41 GETTABLEKS                       R9 R10 K9 ["useRef"]
       43 LOADNIL                          R10
       44 CALL                             R9 1 1
       45 LOADNIL                          R10
       46 LOADNIL                          R11
       47 LOADNIL                          R12
       48 GETUPVAL                         R14 3
       49 GETTABLEKS                       R13 R14 K4 ["FoundationInternalTextInputScrolling"]
       51 JUMPIFNOT                        R13 ; [+18]
       52 GETUPVAL                         R14 6
       53 GETTABLEKS                       R13 R14 K9 ["useRef"]
       55 LOADNIL                          R14
       56 CALL                             R13 1 1
       57 MOVE                             R10 R13
       58 GETUPVAL                         R14 6
       59 GETTABLEKS                       R13 R14 K9 ["useRef"]
       61 LOADNIL                          R14
       62 CALL                             R13 1 1
       63 MOVE                             R11 R13
       64 GETUPVAL                         R14 6
       65 GETTABLEKS                       R13 R14 K9 ["useRef"]
       67 LOADK                            R14 K10 [""]
       68 CALL                             R13 1 1
       69 MOVE                             R12 R13
       70 GETUPVAL                         R14 6
       71 GETTABLEKS                       R13 R14 K9 ["useRef"]
       73 LOADNIL                          R14
       74 CALL                             R13 1 1
       75 LOADNIL                          R14
       76 GETUPVAL                         R16 3
       77 GETTABLEKS                       R15 R16 K4 ["FoundationInternalTextInputScrolling"]
       79 JUMPIFNOT                        R15 ; [+7]
       80 GETUPVAL                         R16 6
       81 GETTABLEKS                       R15 R16 K9 ["useRef"]
       83 GETIMPORT                        R16 K13 [Vector2.zero]
       85 CALL                             R15 1 1
       86 MOVE                             R14 R15
       87 GETUPVAL                         R16 6
       88 GETTABLEKS                       R15 R16 K14 ["useState"]
       90 LOADB                            R16 0
       91 CALL                             R15 1 2
       92 GETUPVAL                         R18 6
       93 GETTABLEKS                       R17 R18 K14 ["useState"]
       95 LOADB                            R18 0
       96 CALL                             R17 1 2
       97 LOADNIL                          R19
       98 LOADNIL                          R20
       99 LOADNIL                          R21
      100 LOADNIL                          R22
      101 GETUPVAL                         R24 3
      102 GETTABLEKS                       R23 R24 K4 ["FoundationInternalTextInputScrolling"]
      104 JUMPIFNOT                        R23 ; [+16]
      105 GETUPVAL                         R23 7
      106 CALL                             R23 0 1
      107 MOVE                             R19 R23
      108 GETUPVAL                         R24 6
      109 GETTABLEKS                       R23 R24 K14 ["useState"]
      111 LOADB                            R24 0
      112 CALL                             R23 1 2
      113 MOVE                             R20 R23
      114 MOVE                             R21 R24
      115 GETIMPORT                        R23 K18 [Enum.PreferredInput.Touch]
      117 JUMPIFEQ                         R19 R23 ; [+2]
      119 LOADB                            R22 0 +1
      120 LOADB                            R22 1
      121 GETTABLEKS                       R24 R3 K19 ["Stroke"]
      123 GETTABLEKS                       R23 R24 K20 ["Standard"]
      125 FASTCALL1                        MATH_CEIL R23 ; [+3]
      126 MOVE                             R26 R23
      127 GETIMPORT                        R25 K23 [math.ceil]
      129 CALL                             R25 1 1
      130 MULK                             R24 R25 K21 [2]
      131 GETTABLEKS                       R26 R3 K19 ["Stroke"]
      133 GETTABLEKS                       R25 R26 K24 ["Thick"]
      135 FASTCALL1                        MATH_CEIL R25 ; [+3]
      136 MOVE                             R28 R25
      137 GETIMPORT                        R27 K23 [math.ceil]
      139 CALL                             R27 1 1
      140 MULK                             R26 R27 K21 [2]
      141 GETTABLEKS                       R29 R3 K25 ["Color"]
      143 GETTABLEKS                       R28 R29 K26 ["Content"]
      145 GETTABLEKS                       R27 R28 K27 ["Emphasis"]
      147 GETTABLEKS                       R29 R7 K7 ["textBox"]
      149 GETTABLEKS                       R28 R29 K28 ["fontStyle"]
      151 GETTABLEKS                       R29 R28 K29 ["FontSize"]
      153 GETTABLEKS                       R30 R28 K30 ["LineHeight"]
      155 GETUPVAL                         R32 6
      156 GETTABLEKS                       R31 R32 K31 ["useCallback"]
      158 NEWCLOSURE                       R32 P0
      159 CAPTURE                          VAL R9
      160 NEWTABLE                         R33 0 0
      162 CALL                             R31 2 1
      163 GETUPVAL                         R33 6
      164 GETTABLEKS                       R32 R33 K31 ["useCallback"]
      166 NEWCLOSURE                       R33 P1
      167 CAPTURE                          VAL R9
      168 NEWTABLE                         R34 0 0
      170 CALL                             R32 2 1
      171 GETUPVAL                         R34 6
      172 GETTABLEKS                       R33 R34 K31 ["useCallback"]
      174 NEWCLOSURE                       R34 P2
      175 CAPTURE                          VAL R9
      176 NEWTABLE                         R35 0 0
      178 CALL                             R33 2 1
      179 GETUPVAL                         R35 6
      180 GETTABLEKS                       R34 R35 K31 ["useCallback"]
      182 NEWCLOSURE                       R35 P3
      183 CAPTURE                          VAL R9
      184 NEWTABLE                         R36 0 0
      186 CALL                             R34 2 1
      187 GETUPVAL                         R36 6
      188 GETTABLEKS                       R35 R36 K31 ["useCallback"]
      190 NEWCLOSURE                       R36 P4
      191 CAPTURE                          VAL R9
      192 NEWTABLE                         R37 0 0
      194 CALL                             R35 2 1
      195 GETUPVAL                         R37 6
      196 GETTABLEKS                       R36 R37 K31 ["useCallback"]
      198 NEWCLOSURE                       R37 P5
      199 CAPTURE                          VAL R9
      200 NEWTABLE                         R38 0 0
      202 CALL                             R36 2 1
      203 GETUPVAL                         R38 6
      204 GETTABLEKS                       R37 R38 K31 ["useCallback"]
      206 NEWCLOSURE                       R38 P6
      207 CAPTURE                          VAL R9
      208 NEWTABLE                         R39 0 0
      210 CALL                             R37 2 1
      211 GETUPVAL                         R39 6
      212 GETTABLEKS                       R38 R39 K32 ["useImperativeHandle"]
      214 MOVE                             R39 R1
      215 NEWCLOSURE                       R40 P7
      216 CAPTURE                          VAL R33
      217 CAPTURE                          VAL R31
      218 CAPTURE                          VAL R32
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R34
      221 CAPTURE                          VAL R35
      222 CAPTURE                          VAL R37
      223 CAPTURE                          VAL R36
      224 NEWTABLE                         R41 0 7
      226 MOVE                             R42 R35
      227 MOVE                             R43 R33
      228 MOVE                             R44 R34
      229 MOVE                             R45 R31
      230 MOVE                             R46 R32
      231 MOVE                             R47 R37
      232 MOVE                             R48 R36
      233 SETLIST                          R41 R42 7 [1]
      235 CALL                             R38 3 0
      236 GETUPVAL                         R39 6
      237 GETTABLEKS                       R38 R39 K31 ["useCallback"]
      239 NEWCLOSURE                       R39 P8
      240 CAPTURE                          UPVAL U3
      241 CAPTURE                          REF R12
      242 CAPTURE                          VAL R6
      243 CAPTURE                          REF R10
      244 CAPTURE                          VAL R2
      245 NEWTABLE                         R40 0 3
      247 GETTABLEKS                       R41 R2 K33 ["onChanged"]
      249 MOVE                             R42 R6
      250 MOVE                             R43 R20
      251 SETLIST                          R40 R41 3 [1]
      253 CALL                             R38 2 1
      254 GETUPVAL                         R40 6
      255 GETTABLEKS                       R39 R40 K31 ["useCallback"]
      257 NEWCLOSURE                       R40 P9
      258 CAPTURE                          VAL R2
      259 CAPTURE                          VAL R6
      260 CAPTURE                          REF R22
      261 CAPTURE                          VAL R9
      262 CAPTURE                          REF R12
      263 CAPTURE                          REF R21
      264 CAPTURE                          VAL R18
      265 NEWTABLE                         R41 0 4
      267 GETTABLEKS                       R42 R2 K34 ["onFocus"]
      269 GETTABLEKS                       R43 R2 K35 ["isDisabled"]
      271 MOVE                             R44 R22
      272 MOVE                             R45 R6
      273 SETLIST                          R41 R42 4 [1]
      275 CALL                             R39 2 1
      276 GETUPVAL                         R41 6
      277 GETTABLEKS                       R40 R41 K31 ["useCallback"]
      279 NEWCLOSURE                       R41 P10
      280 CAPTURE                          VAL R18
      281 CAPTURE                          VAL R6
      282 CAPTURE                          REF R21
      283 CAPTURE                          VAL R2
      284 NEWTABLE                         R42 0 3
      286 GETTABLEKS                       R43 R2 K36 ["onReturnPressed"]
      288 MOVE                             R44 R6
      289 GETTABLEKS                       R45 R2 K37 ["onFocusLost"]
      291 SETLIST                          R42 R43 3 [1]
      293 CALL                             R40 2 1
      294 GETUPVAL                         R42 6
      295 GETTABLEKS                       R41 R42 K31 ["useCallback"]
      297 NEWCLOSURE                       R42 P11
      298 CAPTURE                          VAL R16
      299 CAPTURE                          UPVAL U8
      300 NEWTABLE                         R43 0 0
      302 CALL                             R41 2 1
      303 GETUPVAL                         R43 6
      304 GETTABLEKS                       R42 R43 K31 ["useCallback"]
      306 NEWCLOSURE                       R43 P12
      307 CAPTURE                          VAL R13
      308 CAPTURE                          VAL R2
      309 NEWTABLE                         R44 0 1
      311 GETTABLEKS                       R45 R2 K38 ["onDragStarted"]
      313 SETLIST                          R44 R45 1 [1]
      315 CALL                             R42 2 1
      316 GETUPVAL                         R44 6
      317 GETTABLEKS                       R43 R44 K31 ["useCallback"]
      319 NEWCLOSURE                       R44 P13
      320 CAPTURE                          VAL R2
      321 NEWTABLE                         R45 0 1
      323 GETTABLEKS                       R46 R2 K39 ["onDrag"]
      325 SETLIST                          R45 R46 1 [1]
      327 CALL                             R43 2 1
      328 GETUPVAL                         R45 6
      329 GETTABLEKS                       R44 R45 K31 ["useCallback"]
      331 NEWCLOSURE                       R45 P14
      332 CAPTURE                          VAL R13
      333 CAPTURE                          VAL R31
      334 CAPTURE                          VAL R32
      335 CAPTURE                          VAL R18
      336 CAPTURE                          VAL R2
      337 NEWTABLE                         R46 0 1
      339 GETTABLEKS                       R47 R2 K40 ["onDragEnded"]
      341 SETLIST                          R46 R47 1 [1]
      343 CALL                             R44 2 1
      344 GETUPVAL                         R46 6
      345 GETTABLEKS                       R45 R46 K41 ["useMemo"]
      347 NEWCLOSURE                       R46 P15
      348 CAPTURE                          VAL R7
      349 CAPTURE                          VAL R3
      350 NEWTABLE                         R47 0 2
      352 MOVE                             R48 R3
      353 GETTABLEKS                       R50 R7 K42 ["innerContainer"]
      355 GETTABLEKS                       R49 R50 K43 ["radius"]
      357 SETLIST                          R47 R48 2 [1]
      359 CALL                             R45 2 1
      360 GETUPVAL                         R47 6
      361 GETTABLEKS                       R46 R47 K41 ["useMemo"]
      363 NEWCLOSURE                       R47 P16
      364 CAPTURE                          UPVAL U9
      365 CAPTURE                          VAL R29
      366 CAPTURE                          VAL R4
      367 CAPTURE                          VAL R30
      368 NEWTABLE                         R48 0 3
      370 MOVE                             R49 R29
      371 MOVE                             R50 R4
      372 MOVE                             R51 R30
      373 SETLIST                          R48 R49 3 [1]
      375 CALL                             R46 2 1
      376 GETUPVAL                         R48 6
      377 GETTABLEKS                       R47 R48 K41 ["useMemo"]
      379 NEWCLOSURE                       R48 P17
      380 CAPTURE                          UPVAL U3
      381 CAPTURE                          VAL R7
      382 CAPTURE                          VAL R24
      383 CAPTURE                          UPVAL U9
      384 CAPTURE                          VAL R29
      385 CAPTURE                          VAL R30
      386 CAPTURE                          VAL R26
      387 CAPTURE                          VAL R46
      388 NEWTABLE                         R49 0 7
      390 GETTABLEKS                       R51 R7 K44 ["outerContainer"]
      392 GETTABLEKS                       R50 R51 K45 ["minHeight"]
      394 MOVE                             R51 R24
      395 MOVE                             R52 R26
      396 MOVE                             R53 R29
      397 MOVE                             R54 R46
      398 GETUPVAL                         R56 3
      399 GETTABLEKS                       R55 R56 K46 ["FoundationUIStrokeInner"]
      401 MOVE                             R56 R30
      402 SETLIST                          R49 R50 7 [1]
      404 CALL                             R47 2 2
      405 LOADNIL                          R49
      406 LOADNIL                          R50
      407 LOADNIL                          R51
      408 LOADNIL                          R52
      409 LOADNIL                          R53
      410 LOADNIL                          R54
      411 LOADNIL                          R55
      412 LOADNIL                          R56
      413 GETUPVAL                         R58 3
      414 GETTABLEKS                       R57 R58 K4 ["FoundationInternalTextInputScrolling"]
      416 JUMPIFNOT                        R57 ; [+84]
      417 GETTABLEKS                       R58 R47 K47 ["bottom"]
      419 GETTABLEKS                       R57 R58 K48 ["Offset"]
      421 GETTABLEKS                       R59 R47 K49 ["top"]
      423 GETTABLEKS                       R58 R59 K48 ["Offset"]
      425 ADD                              R49 R57 R58
      426 GETIMPORT                        R57 K52 [UDim2.new]
      428 LOADN                            R58 1
      429 LOADN                            R59 0
      430 LOADN                            R60 0
      431 ADD                              R61 R46 R49
      432 CALL                             R57 4 1
      433 MOVE                             R50 R57
      434 GETUPVAL                         R58 6
      435 GETTABLEKS                       R57 R58 K41 ["useMemo"]
      437 NEWCLOSURE                       R58 P18
      438 CAPTURE                          VAL R6
      439 NEWTABLE                         R59 0 1
      441 MOVE                             R60 R6
      442 SETLIST                          R59 R60 1 [1]
      444 CALL                             R57 2 1
      445 MOVE                             R51 R57
      446 GETUPVAL                         R58 6
      447 GETTABLEKS                       R57 R58 K41 ["useMemo"]
      449 NEWCLOSURE                       R58 P19
      450 CAPTURE                          VAL R6
      451 NEWTABLE                         R59 0 1
      453 MOVE                             R60 R6
      454 SETLIST                          R59 R60 1 [1]
      456 CALL                             R57 2 1
      457 MOVE                             R52 R57
      458 GETUPVAL                         R58 6
      459 GETTABLEKS                       R57 R58 K31 ["useCallback"]
      461 NEWCLOSURE                       R58 P20
      462 CAPTURE                          REF R11
      463 CAPTURE                          REF R10
      464 CAPTURE                          UPVAL U10
      465 CAPTURE                          VAL R47
      466 NEWTABLE                         R59 0 1
      468 MOVE                             R60 R47
      469 SETLIST                          R59 R60 1 [1]
      471 CALL                             R57 2 1
      472 MOVE                             R53 R57
      473 GETUPVAL                         R58 6
      474 GETTABLEKS                       R57 R58 K31 ["useCallback"]
      476 NEWCLOSURE                       R58 P21
      477 CAPTURE                          REF R11
      478 CAPTURE                          REF R14
      479 NEWTABLE                         R59 0 0
      481 CALL                             R57 2 1
      482 MOVE                             R54 R57
      483 GETUPVAL                         R58 6
      484 GETTABLEKS                       R57 R58 K31 ["useCallback"]
      486 NEWCLOSURE                       R58 P22
      487 CAPTURE                          REF R12
      488 NEWTABLE                         R59 0 0
      490 CALL                             R57 2 1
      491 MOVE                             R55 R57
      492 GETUPVAL                         R58 6
      493 GETTABLEKS                       R57 R58 K31 ["useCallback"]
      495 NEWCLOSURE                       R58 P23
      496 CAPTURE                          REF R14
      497 NEWTABLE                         R59 0 0
      499 CALL                             R57 2 1
      500 MOVE                             R56 R57
      501 GETUPVAL                         R58 6
      502 GETTABLEKS                       R57 R58 K41 ["useMemo"]
      504 NEWCLOSURE                       R58 P24
      505 CAPTURE                          VAL R2
      506 CAPTURE                          UPVAL U6
      507 CAPTURE                          VAL R42
      508 CAPTURE                          VAL R43
      509 CAPTURE                          VAL R44
      510 CAPTURE                          VAL R17
      511 NEWTABLE                         R59 0 5
      513 MOVE                             R60 R42
      514 MOVE                             R61 R43
      515 MOVE                             R62 R44
      516 MOVE                             R63 R17
      517 GETTABLEKS                       R64 R2 K35 ["isDisabled"]
      519 SETLIST                          R59 R60 5 [1]
      521 CALL                             R57 2 1
      522 LOADNIL                          R58
      523 LOADNIL                          R59
      524 GETUPVAL                         R61 3
      525 GETTABLEKS                       R60 R61 K46 ["FoundationUIStrokeInner"]
      527 JUMPIFNOT                        R60 ; [+44]
      528 GETUPVAL                         R60 11
      529 GETTABLEKS                       R62 R2 K53 ["horizontalPadding"]
      531 JUMPIFNOT                        R62 ; [+11]
      532 GETTABLEKS                       R62 R2 K53 ["horizontalPadding"]
      534 GETTABLEKS                       R61 R62 K54 ["left"]
      536 JUMPIF                           R61 ; [+11]
      537 GETIMPORT                        R61 K56 [UDim.new]
      539 LOADN                            R62 0
      540 LOADN                            R63 0
      541 CALL                             R61 2 1
      542 JUMP                             ; [+5]
      543 GETIMPORT                        R61 K56 [UDim.new]
      545 LOADN                            R62 0
      546 LOADN                            R63 0
      547 CALL                             R61 2 1
      548 CALL                             R60 1 1
      549 MOVE                             R58 R60
      550 GETUPVAL                         R60 11
      551 GETTABLEKS                       R62 R2 K53 ["horizontalPadding"]
      553 JUMPIFNOT                        R62 ; [+11]
      554 GETTABLEKS                       R62 R2 K53 ["horizontalPadding"]
      556 GETTABLEKS                       R61 R62 K57 ["right"]
      558 JUMPIF                           R61 ; [+11]
      559 GETIMPORT                        R61 K56 [UDim.new]
      561 LOADN                            R62 0
      562 LOADN                            R63 0
      563 CALL                             R61 2 1
      564 JUMP                             ; [+5]
      565 GETIMPORT                        R61 K56 [UDim.new]
      567 LOADN                            R62 0
      568 LOADN                            R63 0
      569 CALL                             R61 2 1
      570 CALL                             R60 1 1
      571 MOVE                             R59 R60
      572 DUPTABLE                         R60 K68 [{"GroupTransparency", "Size", "selection", "cursor", "stroke", "padding", "onActivated", "onStateChanged", "stateLayer", "tag", "testId"}]
      573 GETUPVAL                         R63 3
      574 GETTABLEKS                       R62 R63 K46 ["FoundationUIStrokeInner"]
      576 JUMPIFNOT                        R62 ; [+7]
      577 GETTABLEKS                       R62 R2 K35 ["isDisabled"]
      579 JUMPIFNOT                        R62 ; [+4]
      580 GETUPVAL                         R62 12
      581 GETTABLEKS                       R61 R62 K69 ["DISABLED_TRANSPARENCY"]
      583 JUMP                             ; [+1]
      584 LOADNIL                          R61
      585 SETTABLEKS                       R61 R60 K58 ["GroupTransparency"]
      587 GETUPVAL                         R63 3
      588 GETTABLEKS                       R62 R63 K46 ["FoundationUIStrokeInner"]
      590 JUMPIFNOT                        R62 ; [+8]
      591 GETIMPORT                        R61 K52 [UDim2.new]
      593 LOADN                            R62 1
      594 LOADN                            R63 0
      595 LOADN                            R64 0
      596 MOVE                             R65 R48
      597 CALL                             R61 4 1
      598 JUMP                             ; [+1]
      599 LOADNIL                          R61
      600 SETTABLEKS                       R61 R60 K59 ["Size"]
      602 DUPTABLE                         R61 K71 [{"Selectable"}]
      603 GETTABLEKS                       R63 R2 K35 ["isDisabled"]
      605 NOT                              R62 R63
      606 SETTABLEKS                       R62 R61 K70 ["Selectable"]
      608 SETTABLEKS                       R61 R60 K60 ["selection"]
      610 SETTABLEKS                       R45 R60 K61 ["cursor"]
      612 DUPTABLE                         R61 K75 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      613 GETTABLEKS                       R63 R2 K76 ["hasError"]
      615 JUMPIFNOT                        R63 ; [+9]
      616 GETTABLEKS                       R65 R3 K25 ["Color"]
      618 GETTABLEKS                       R64 R65 K77 ["System"]
      620 GETTABLEKS                       R63 R64 K78 ["Alert"]
      622 GETTABLEKS                       R62 R63 K79 ["Color3"]
      624 JUMP                             ; [+8]
      625 GETTABLEKS                       R65 R3 K25 ["Color"]
      627 GETTABLEKS                       R64 R65 K19 ["Stroke"]
      629 GETTABLEKS                       R63 R64 K27 ["Emphasis"]
      631 GETTABLEKS                       R62 R63 K79 ["Color3"]
      633 SETTABLEKS                       R62 R61 K25 ["Color"]
      635 GETTABLEKS                       R63 R2 K76 ["hasError"]
      637 JUMPIFNOT                        R63 ; [+9]
      638 GETTABLEKS                       R65 R3 K25 ["Color"]
      640 GETTABLEKS                       R64 R65 K77 ["System"]
      642 GETTABLEKS                       R63 R64 K78 ["Alert"]
      644 GETTABLEKS                       R62 R63 K72 ["Transparency"]
      646 JUMP                             ; [+11]
      647 JUMPIFNOT                        R17 ; [+2]
      648 LOADN                            R62 0
      649 JUMP                             ; [+8]
      650 GETTABLEKS                       R65 R3 K25 ["Color"]
      652 GETTABLEKS                       R64 R65 K19 ["Stroke"]
      654 GETTABLEKS                       R63 R64 K27 ["Emphasis"]
      656 GETTABLEKS                       R62 R63 K72 ["Transparency"]
      658 SETTABLEKS                       R62 R61 K72 ["Transparency"]
      660 SETTABLEKS                       R23 R61 K73 ["Thickness"]
      662 GETUPVAL                         R64 3
      663 GETTABLEKS                       R63 R64 K46 ["FoundationUIStrokeInner"]
      665 JUMPIFNOT                        R63 ; [+3]
      666 GETIMPORT                        R62 K81 [Enum.BorderStrokePosition.Inner]
      668 JUMP                             ; [+1]
      669 LOADNIL                          R62
      670 SETTABLEKS                       R62 R61 K74 ["BorderStrokePosition"]
      672 SETTABLEKS                       R61 R60 K62 ["stroke"]
      674 GETUPVAL                         R63 3
      675 GETTABLEKS                       R62 R63 K46 ["FoundationUIStrokeInner"]
      677 JUMPIFNOT                        R62 ; [+30]
      678 DUPTABLE                         R61 K82 [{"left", "right", "top", "bottom"}]
      679 NEWCLOSURE                       R64 P25
      680 CAPTURE                          VAL R23
      681 NAMECALL                         R62 R58 K83 ["map"]
      683 CALL                             R62 2 1
      684 SETTABLEKS                       R62 R61 K54 ["left"]
      686 NEWCLOSURE                       R64 P26
      687 CAPTURE                          VAL R23
      688 NAMECALL                         R62 R59 K83 ["map"]
      690 CALL                             R62 2 1
      691 SETTABLEKS                       R62 R61 K57 ["right"]
      693 GETIMPORT                        R62 K56 [UDim.new]
      695 LOADN                            R63 0
      696 MOVE                             R64 R23
      697 CALL                             R62 2 1
      698 SETTABLEKS                       R62 R61 K49 ["top"]
      700 GETIMPORT                        R62 K56 [UDim.new]
      702 LOADN                            R63 0
      703 MOVE                             R64 R23
      704 CALL                             R62 2 1
      705 SETTABLEKS                       R62 R61 K47 ["bottom"]
      707 JUMP                             ; [+1]
      708 DIVK                             R61 R26 K21 [2]
      709 SETTABLEKS                       R61 R60 K63 ["padding"]
      711 GETTABLEKS                       R62 R2 K35 ["isDisabled"]
      713 JUMPIFNOT                        R62 ; [+4]
      714 GETUPVAL                         R63 3
      715 GETTABLEKS                       R62 R63 K46 ["FoundationUIStrokeInner"]
      717 JUMPIF                           R62 ; [+2]
      718 MOVE                             R61 R31
      719 JUMP                             ; [+1]
      720 LOADNIL                          R61
      721 SETTABLEKS                       R61 R60 K64 ["onActivated"]
      723 SETTABLEKS                       R41 R60 K65 ["onStateChanged"]
      725 DUPTABLE                         R61 K85 [{"affordance"}]
      726 GETUPVAL                         R63 13
      727 GETTABLEKS                       R62 R63 K86 ["None"]
      729 SETTABLEKS                       R62 R61 K84 ["affordance"]
      731 SETTABLEKS                       R61 R60 K66 ["stateLayer"]
      733 GETUPVAL                         R63 3
      734 GETTABLEKS                       R62 R63 K46 ["FoundationUIStrokeInner"]
      736 JUMPIFNOT                        R62 ; [+5]
      737 GETTABLEKS                       R62 R7 K87 ["outerView"]
      739 GETTABLEKS                       R61 R62 K8 ["tag"]
      741 JUMP                             ; [+4]
      742 GETTABLEKS                       R62 R7 K44 ["outerContainer"]
      744 GETTABLEKS                       R61 R62 K8 ["tag"]
      746 SETTABLEKS                       R61 R60 K8 ["tag"]
      748 LOADK                            R62 K88 ["%*--outer-container"]
      749 GETTABLEKS                       R64 R2 K67 ["testId"]
      751 NAMECALL                         R62 R62 K89 ["format"]
      753 CALL                             R62 2 1
      754 MOVE                             R61 R62
      755 SETTABLEKS                       R61 R60 K67 ["testId"]
      757 GETUPVAL                         R62 6
      758 GETTABLEKS                       R61 R62 K90 ["createElement"]
      760 GETUPVAL                         R64 3
      761 GETTABLEKS                       R63 R64 K46 ["FoundationUIStrokeInner"]
      763 JUMPIFNOT                        R63 ; [+4]
      764 GETUPVAL                         R63 6
      765 GETTABLEKS                       R62 R63 K91 ["Fragment"]
      767 JUMP                             ; [+1]
      768 GETUPVAL                         R62 14
      769 GETUPVAL                         R65 3
      770 GETTABLEKS                       R64 R65 K46 ["FoundationUIStrokeInner"]
      772 JUMPIFNOT                        R64 ; [+3]
      773 NEWTABLE                         R63 0 0
      775 JUMP                             ; [+23]
      776 GETUPVAL                         R63 15
      777 MOVE                             R64 R2
      778 DUPTABLE                         R65 K92 [{"GroupTransparency", "padding", "tag"}]
      779 GETTABLEKS                       R67 R2 K35 ["isDisabled"]
      781 JUMPIFNOT                        R67 ; [+4]
      782 GETUPVAL                         R67 12
      783 GETTABLEKS                       R66 R67 K69 ["DISABLED_TRANSPARENCY"]
      785 JUMP                             ; [+1]
      786 LOADNIL                          R66
      787 SETTABLEKS                       R66 R65 K58 ["GroupTransparency"]
      789 DIVK                             R66 R24 K21 [2]
      790 SETTABLEKS                       R66 R65 K63 ["padding"]
      792 GETTABLEKS                       R67 R7 K93 ["canvas"]
      794 GETTABLEKS                       R66 R67 K8 ["tag"]
      796 SETTABLEKS                       R66 R65 K8 ["tag"]
      798 CALL                             R63 2 1
      799 DUPTABLE                         R64 K95 [{"Input"}]
      800 GETUPVAL                         R66 6
      801 GETTABLEKS                       R65 R66 K90 ["createElement"]
      803 GETUPVAL                         R66 14
      804 GETUPVAL                         R69 3
      805 GETTABLEKS                       R68 R69 K46 ["FoundationUIStrokeInner"]
      807 JUMPIFNOT                        R68 ; [+5]
      808 GETUPVAL                         R67 15
      809 MOVE                             R68 R2
      810 MOVE                             R69 R60
      811 CALL                             R67 2 1
      812 JUMP                             ; [+1]
      813 MOVE                             R67 R60
      814 DUPTABLE                         R68 K100 [{"DragDetector", "Background", "HoverStroke", "BorderFrame"}]
      815 SETTABLEKS                       R57 R68 K96 ["DragDetector"]
      817 GETTABLEKS                       R69 R2 K101 ["backgroundElement"]
      819 SETTABLEKS                       R69 R68 K97 ["Background"]
      821 GETUPVAL                         R71 3
      822 GETTABLEKS                       R70 R71 K46 ["FoundationUIStrokeInner"]
      824 JUMPIFNOT                        R70 ; [+46]
      825 GETTABLEKS                       R70 R2 K35 ["isDisabled"]
      827 JUMPIF                           R70 ; [+43]
      828 JUMPIF                           R15 ; [+1]
      829 JUMPIFNOT                        R17 ; [+41]
      830 GETUPVAL                         R70 6
      831 GETTABLEKS                       R69 R70 K90 ["createElement"]
      833 LOADK                            R70 K102 ["UIStroke"]
      834 DUPTABLE                         R71 K104 [{"Color", "Transparency", "Thickness", "BorderStrokePosition", "BorderOffset"}]
      835 GETTABLEKS                       R75 R3 K25 ["Color"]
      837 GETTABLEKS                       R74 R75 K19 ["Stroke"]
      839 GETTABLEKS                       R73 R74 K27 ["Emphasis"]
      841 GETTABLEKS                       R72 R73 K79 ["Color3"]
      843 SETTABLEKS                       R72 R71 K25 ["Color"]
      845 GETTABLEKS                       R75 R3 K25 ["Color"]
      847 GETTABLEKS                       R74 R75 K19 ["Stroke"]
      849 GETTABLEKS                       R73 R74 K27 ["Emphasis"]
      851 GETTABLEKS                       R72 R73 K72 ["Transparency"]
      853 SETTABLEKS                       R72 R71 K72 ["Transparency"]
      855 SETTABLEKS                       R25 R71 K73 ["Thickness"]
      857 GETIMPORT                        R72 K81 [Enum.BorderStrokePosition.Inner]
      859 SETTABLEKS                       R72 R71 K74 ["BorderStrokePosition"]
      861 GETIMPORT                        R72 K56 [UDim.new]
      863 LOADN                            R73 0
      864 MINUS                            R75 R26
      865 DIVK                             R74 R75 K21 [2]
      866 CALL                             R72 2 1
      867 SETTABLEKS                       R72 R71 K103 ["BorderOffset"]
      869 CALL                             R69 2 1
      870 JUMP                             ; [+1]
      871 LOADNIL                          R69
      872 SETTABLEKS                       R69 R68 K98 ["HoverStroke"]
      874 GETUPVAL                         R70 6
      875 GETTABLEKS                       R69 R70 K90 ["createElement"]
      877 GETUPVAL                         R72 3
      878 GETTABLEKS                       R71 R72 K46 ["FoundationUIStrokeInner"]
      880 JUMPIFNOT                        R71 ; [+4]
      881 GETUPVAL                         R71 6
      882 GETTABLEKS                       R70 R71 K91 ["Fragment"]
      884 JUMP                             ; [+1]
      885 GETUPVAL                         R70 14
      886 GETUPVAL                         R73 3
      887 GETTABLEKS                       R72 R73 K46 ["FoundationUIStrokeInner"]
      889 JUMPIFNOT                        R72 ; [+3]
      890 NEWTABLE                         R71 0 0
      892 JUMP                             ; [+96]
      893 DUPTABLE                         R71 K106 [{"Size", "cornerRadius", "stroke", "padding", "tag"}]
      894 GETIMPORT                        R72 K52 [UDim2.new]
      896 LOADN                            R73 1
      897 LOADN                            R74 0
      898 LOADN                            R75 0
      899 MOVE                             R76 R48
      900 CALL                             R72 4 1
      901 SETTABLEKS                       R72 R71 K59 ["Size"]
      903 GETIMPORT                        R72 K56 [UDim.new]
      905 LOADN                            R73 0
      906 GETTABLEKS                       R76 R7 K42 ["innerContainer"]
      908 GETTABLEKS                       R75 R76 K43 ["radius"]
      910 DIVK                             R76 R26 K21 [2]
      911 SUB                              R74 R75 R76
      912 CALL                             R72 2 1
      913 SETTABLEKS                       R72 R71 K105 ["cornerRadius"]
      915 GETTABLEKS                       R73 R2 K35 ["isDisabled"]
      917 JUMPIF                           R73 ; [+42]
      918 JUMPIF                           R15 ; [+1]
      919 JUMPIFNOT                        R17 ; [+40]
      920 DUPTABLE                         R72 K75 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      921 GETTABLEKS                       R76 R3 K25 ["Color"]
      923 GETTABLEKS                       R75 R76 K19 ["Stroke"]
      925 GETTABLEKS                       R74 R75 K27 ["Emphasis"]
      927 GETTABLEKS                       R73 R74 K79 ["Color3"]
      929 SETTABLEKS                       R73 R72 K25 ["Color"]
      931 GETUPVAL                         R75 3
      932 GETTABLEKS                       R74 R75 K46 ["FoundationUIStrokeInner"]
      934 JUMPIFNOT                        R74 ; [+9]
      935 GETTABLEKS                       R76 R3 K25 ["Color"]
      937 GETTABLEKS                       R75 R76 K19 ["Stroke"]
      939 GETTABLEKS                       R74 R75 K27 ["Emphasis"]
      941 GETTABLEKS                       R73 R74 K72 ["Transparency"]
      943 JUMP                             ; [+1]
      944 LOADK                            R73 K107 [0.88]
      945 SETTABLEKS                       R73 R72 K72 ["Transparency"]
      947 SETTABLEKS                       R25 R72 K73 ["Thickness"]
      949 GETUPVAL                         R75 3
      950 GETTABLEKS                       R74 R75 K46 ["FoundationUIStrokeInner"]
      952 JUMPIFNOT                        R74 ; [+3]
      953 GETIMPORT                        R73 K81 [Enum.BorderStrokePosition.Inner]
      955 JUMP                             ; [+1]
      956 LOADNIL                          R73
      957 SETTABLEKS                       R73 R72 K74 ["BorderStrokePosition"]
      959 JUMP                             ; [+1]
      960 LOADNIL                          R72
      961 SETTABLEKS                       R72 R71 K62 ["stroke"]
      963 GETTABLEKS                       R73 R2 K53 ["horizontalPadding"]
      965 JUMPIFNOT                        R73 ; [+14]
      966 DUPTABLE                         R72 K108 [{"left", "right"}]
      967 GETTABLEKS                       R74 R2 K53 ["horizontalPadding"]
      969 GETTABLEKS                       R73 R74 K54 ["left"]
      971 SETTABLEKS                       R73 R72 K54 ["left"]
      973 GETTABLEKS                       R74 R2 K53 ["horizontalPadding"]
      975 GETTABLEKS                       R73 R74 K57 ["right"]
      977 SETTABLEKS                       R73 R72 K57 ["right"]
      979 JUMP                             ; [+1]
      980 LOADNIL                          R72
      981 SETTABLEKS                       R72 R71 K63 ["padding"]
      983 GETTABLEKS                       R73 R7 K42 ["innerContainer"]
      985 GETTABLEKS                       R72 R73 K8 ["tag"]
      987 SETTABLEKS                       R72 R71 K8 ["tag"]
      989 DUPTABLE                         R72 K112 [{"Leading", "TextBoxWrapper", "Trailing"}]
      990 GETTABLEKS                       R74 R2 K113 ["leadingElement"]
      992 JUMPIFNOT                        R74 ; [+24]
      993 GETUPVAL                         R74 6
      994 GETTABLEKS                       R73 R74 K90 ["createElement"]
      996 GETUPVAL                         R74 14
      997 DUPTABLE                         R75 K115 [{"LayoutOrder", "tag", "testId"}]
      998 LOADN                            R76 1
      999 SETTABLEKS                       R76 R75 K114 ["LayoutOrder"]
     1001 LOADK                            R76 K116 ["size-0-full auto-x"]
     1002 SETTABLEKS                       R76 R75 K8 ["tag"]
     1004 LOADK                            R77 K117 ["%*--leading"]
     1005 GETTABLEKS                       R79 R2 K67 ["testId"]
     1007 NAMECALL                         R77 R77 K89 ["format"]
     1009 CALL                             R77 2 1
     1010 MOVE                             R76 R77
     1011 SETTABLEKS                       R76 R75 K67 ["testId"]
     1013 GETTABLEKS                       R76 R2 K113 ["leadingElement"]
     1015 CALL                             R73 3 1
     1016 JUMP                             ; [+1]
     1017 LOADNIL                          R73
     1018 SETTABLEKS                       R73 R72 K109 ["Leading"]
     1020 GETUPVAL                         R74 6
     1021 GETTABLEKS                       R73 R74 K90 ["createElement"]
     1023 JUMPIFNOT                        R6 ; [+2]
     1024 GETUPVAL                         R74 16
     1025 JUMP                             ; [+1]
     1026 GETUPVAL                         R74 14
     1027 DUPTABLE                         R75 K122 [{"LayoutOrder", "padding", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
     1028 LOADN                            R76 2
     1029 SETTABLEKS                       R76 R75 K114 ["LayoutOrder"]
     1031 GETUPVAL                         R78 3
     1032 GETTABLEKS                       R77 R78 K4 ["FoundationInternalTextInputScrolling"]
     1034 JUMPIF                           R77 ; [+2]
     1035 MOVE                             R76 R47
     1036 JUMP                             ; [+1]
     1037 LOADNIL                          R76
     1038 SETTABLEKS                       R76 R75 K63 ["padding"]
     1040 SETTABLEKS                       R52 R75 K118 ["scroll"]
     1042 SETTABLEKS                       R51 R75 K119 ["layout"]
     1044 JUMPIFNOT                        R6 ; [+2]
     1045 MOVE                             R76 R56
     1046 JUMP                             ; [+1]
     1047 LOADNIL                          R76
     1048 SETTABLEKS                       R76 R75 K120 ["onCanvasPositionChanged"]
     1050 JUMPIFNOT                        R6 ; [+2]
     1051 MOVE                             R76 R54
     1052 JUMP                             ; [+1]
     1053 LOADNIL                          R76
     1054 SETTABLEKS                       R76 R75 K121 ["scrollingFrameRef"]
     1056 NEWTABLE                         R76 2 0
     1058 LOADB                            R77 1
     1059 SETTABLEKS                       R77 R76 K123 ["size-full fill"]
     1061 GETUPVAL                         R78 3
     1062 GETTABLEKS                       R77 R78 K4 ["FoundationInternalTextInputScrolling"]
     1064 SETTABLEKS                       R77 R76 K124 ["clip"]
     1066 SETTABLEKS                       R76 R75 K8 ["tag"]
     1068 DUPTABLE                         R76 K127 [{"TextBox", "MobileTextBox"}]
     1069 GETUPVAL                         R79 3
     1070 GETTABLEKS                       R78 R79 K4 ["FoundationInternalTextInputScrolling"]
     1072 JUMPIFNOT                        R78 ; [+1]
     1073 JUMPIF                           R20 ; [+117]
     1074 GETUPVAL                         R78 6
     1075 GETTABLEKS                       R77 R78 K90 ["createElement"]
     1077 GETUPVAL                         R78 17
     1078 DUPTABLE                         R79 K138 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1079 GETTABLEKS                       R80 R2 K128 ["text"]
     1081 SETTABLEKS                       R80 R79 K128 ["text"]
     1083 GETTABLEKS                       R80 R2 K129 ["placeholder"]
     1085 SETTABLEKS                       R80 R79 K129 ["placeholder"]
     1087 GETTABLEKS                       R80 R2 K130 ["textInputType"]
     1089 SETTABLEKS                       R80 R79 K130 ["textInputType"]
     1091 SETTABLEKS                       R28 R79 K28 ["fontStyle"]
     1093 SETTABLEKS                       R27 R79 K131 ["textStyle"]
     1095 SETTABLEKS                       R5 R79 K132 ["isMultiLine"]
     1097 GETTABLEKS                       R80 R2 K35 ["isDisabled"]
     1099 SETTABLEKS                       R80 R79 K35 ["isDisabled"]
     1101 SETTABLEKS                       R9 R79 K133 ["ref"]
     1103 LOADK                            R81 K139 ["%* data-testid=%*--textbox"]
     1104 ORK                              R83 R8 K10 [""]
     1105 GETTABLEKS                       R84 R2 K67 ["testId"]
     1107 NAMECALL                         R81 R81 K89 ["format"]
     1109 CALL                             R81 3 1
     1110 MOVE                             R80 R81
     1111 SETTABLEKS                       R80 R79 K8 ["tag"]
     1113 JUMPIFNOT                        R6 ; [+2]
     1114 MOVE                             R80 R50
     1115 JUMP                             ; [+1]
     1116 LOADNIL                          R80
     1117 SETTABLEKS                       R80 R79 K59 ["Size"]
     1119 JUMPIFNOT                        R6 ; [+8]
     1120 JUMPIF                           R20 ; [+7]
     1121 GETTABLEKS                       R81 R2 K128 ["text"]
     1123 JUMPIFEQKS                       R81 K10 [""] ; [+4]
     1125 GETIMPORT                        R80 K142 [Enum.AutomaticSize.Y]
     1127 JUMP                             ; [+1]
     1128 LOADNIL                          R80
     1129 SETTABLEKS                       R80 R79 K134 ["automaticSize"]
     1131 GETUPVAL                         R82 3
     1132 GETTABLEKS                       R81 R82 K4 ["FoundationInternalTextInputScrolling"]
     1134 JUMPIFNOT                        R81 ; [+2]
     1135 MOVE                             R80 R47
     1136 JUMP                             ; [+1]
     1137 LOADNIL                          R80
     1138 SETTABLEKS                       R80 R79 K63 ["padding"]
     1140 SETTABLEKS                       R39 R79 K135 ["onFocusGained"]
     1142 JUMPIFNOT                        R6 ; [+3]
     1143 JUMPIFNOT                        R22 ; [+2]
     1144 LOADNIL                          R80
     1145 JUMP                             ; [+1]
     1146 MOVE                             R80 R40
     1147 SETTABLEKS                       R80 R79 K37 ["onFocusLost"]
     1149 SETTABLEKS                       R38 R79 K136 ["onTextChanged"]
     1151 JUMPIFNOT                        R6 ; [+2]
     1152 MOVE                             R80 R53
     1153 JUMP                             ; [+1]
     1154 LOADNIL                          R80
     1155 SETTABLEKS                       R80 R79 K137 ["onCursorPositionChanged"]
     1157 DUPTABLE                         R80 K144 [{"DragDetector", "BoundsChecker"}]
     1158 SETTABLEKS                       R57 R80 K96 ["DragDetector"]
     1160 JUMPIFNOT                        R6 ; [+25]
     1161 GETUPVAL                         R82 6
     1162 GETTABLEKS                       R81 R82 K90 ["createElement"]
     1164 GETUPVAL                         R82 17
     1165 DUPTABLE                         R83 K146 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
     1166 LOADB                            R84 1
     1167 SETTABLEKS                       R84 R83 K145 ["isBoundsChecker"]
     1169 SETTABLEKS                       R28 R83 K28 ["fontStyle"]
     1171 SETTABLEKS                       R27 R83 K131 ["textStyle"]
     1173 GETIMPORT                        R84 K52 [UDim2.new]
     1175 LOADN                            R85 1
     1176 LOADN                            R86 0
     1177 LOADN                            R87 1
     1178 MOVE                             R88 R49
     1179 CALL                             R84 4 1
     1180 SETTABLEKS                       R84 R83 K59 ["Size"]
     1182 SETTABLEKS                       R10 R83 K133 ["ref"]
     1184 CALL                             R81 2 1
     1185 JUMP                             ; [+1]
     1186 LOADNIL                          R81
     1187 SETTABLEKS                       R81 R80 K143 ["BoundsChecker"]
     1189 CALL                             R77 3 1
     1190 JUMP                             ; [+1]
     1191 LOADNIL                          R77
     1192 SETTABLEKS                       R77 R76 K125 ["TextBox"]
     1194 JUMPIFNOT                        R6 ; [+68]
     1195 JUMPIFNOT                        R20 ; [+67]
     1196 GETUPVAL                         R78 6
     1197 GETTABLEKS                       R77 R78 K90 ["createElement"]
     1199 GETUPVAL                         R78 17
     1200 DUPTABLE                         R79 K147 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1201 GETTABLEKS                       R80 R2 K128 ["text"]
     1203 SETTABLEKS                       R80 R79 K128 ["text"]
     1205 GETTABLEKS                       R80 R2 K129 ["placeholder"]
     1207 SETTABLEKS                       R80 R79 K129 ["placeholder"]
     1209 GETTABLEKS                       R80 R2 K130 ["textInputType"]
     1211 SETTABLEKS                       R80 R79 K130 ["textInputType"]
     1213 SETTABLEKS                       R28 R79 K28 ["fontStyle"]
     1215 SETTABLEKS                       R27 R79 K131 ["textStyle"]
     1217 SETTABLEKS                       R5 R79 K132 ["isMultiLine"]
     1219 GETTABLEKS                       R80 R2 K35 ["isDisabled"]
     1221 SETTABLEKS                       R80 R79 K35 ["isDisabled"]
     1223 GETUPVAL                         R82 3
     1224 GETTABLEKS                       R81 R82 K4 ["FoundationInternalTextInputScrolling"]
     1226 JUMPIFNOT                        R81 ; [+2]
     1227 MOVE                             R80 R47
     1228 JUMP                             ; [+1]
     1229 LOADNIL                          R80
     1230 SETTABLEKS                       R80 R79 K63 ["padding"]
     1232 SETTABLEKS                       R55 R79 K133 ["ref"]
     1234 LOADK                            R81 K148 ["%* data-testid=%*--mobile-textbox"]
     1235 ORK                              R83 R8 K10 [""]
     1236 GETTABLEKS                       R84 R2 K67 ["testId"]
     1238 NAMECALL                         R81 R81 K89 ["format"]
     1240 CALL                             R81 3 1
     1241 MOVE                             R80 R81
     1242 SETTABLEKS                       R80 R79 K8 ["tag"]
     1244 SETTABLEKS                       R50 R79 K59 ["Size"]
     1246 JUMPIFNOT                        R6 ; [+3]
     1247 JUMPIFNOT                        R22 ; [+2]
     1248 MOVE                             R80 R40
     1249 JUMP                             ; [+1]
     1250 LOADNIL                          R80
     1251 SETTABLEKS                       R80 R79 K37 ["onFocusLost"]
     1253 SETTABLEKS                       R38 R79 K136 ["onTextChanged"]
     1255 JUMPIFNOT                        R6 ; [+2]
     1256 MOVE                             R80 R53
     1257 JUMP                             ; [+1]
     1258 LOADNIL                          R80
     1259 SETTABLEKS                       R80 R79 K137 ["onCursorPositionChanged"]
     1261 CALL                             R77 2 1
     1262 JUMP                             ; [+1]
     1263 LOADNIL                          R77
     1264 SETTABLEKS                       R77 R76 K126 ["MobileTextBox"]
     1266 CALL                             R73 3 1
     1267 SETTABLEKS                       R73 R72 K110 ["TextBoxWrapper"]
     1269 GETTABLEKS                       R74 R2 K149 ["trailingElement"]
     1271 JUMPIFNOT                        R74 ; [+24]
     1272 GETUPVAL                         R74 6
     1273 GETTABLEKS                       R73 R74 K90 ["createElement"]
     1275 GETUPVAL                         R74 14
     1276 DUPTABLE                         R75 K115 [{"LayoutOrder", "tag", "testId"}]
     1277 LOADN                            R76 3
     1278 SETTABLEKS                       R76 R75 K114 ["LayoutOrder"]
     1280 LOADK                            R76 K116 ["size-0-full auto-x"]
     1281 SETTABLEKS                       R76 R75 K8 ["tag"]
     1283 LOADK                            R77 K150 ["%*--trailing"]
     1284 GETTABLEKS                       R79 R2 K67 ["testId"]
     1286 NAMECALL                         R77 R77 K89 ["format"]
     1288 CALL                             R77 2 1
     1289 MOVE                             R76 R77
     1290 SETTABLEKS                       R76 R75 K67 ["testId"]
     1292 GETTABLEKS                       R76 R2 K149 ["trailingElement"]
     1294 CALL                             R73 3 1
     1295 JUMP                             ; [+1]
     1296 LOADNIL                          R73
     1297 SETTABLEKS                       R73 R72 K111 ["Trailing"]
     1299 CALL                             R69 3 1
     1300 SETTABLEKS                       R69 R68 K99 ["BorderFrame"]
     1302 CALL                             R65 3 1
     1303 SETTABLEKS                       R65 R64 K94 ["Input"]
     1305 CALL                             R61 3 -1
     1306 CLOSEUPVALS                      R10
     1307 RETURN                           R61 -1

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
       25 GETTABLEKS                       R6 R4 K11 ["Padding"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R4 K12 ["ScrollView"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R4 K13 ["Types"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R4 K14 ["View"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R12 R0 K7 ["Utility"]
       52 GETTABLEKS                       R11 R12 K16 ["getMultiLineTextHeight"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R13 R0 K7 ["Utility"]
       59 GETTABLEKS                       R12 R13 K17 ["isPluginSecurity"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETIMPORT                        R15 K1 [script]
       66 GETTABLEKS                       R14 R15 K4 ["Parent"]
       68 GETTABLEKS                       R13 R14 K18 ["truncateTextToCursor"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R15 R0 K7 ["Utility"]
       75 GETTABLEKS                       R14 R15 K19 ["useBindable"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R16 R0 K7 ["Utility"]
       82 GETTABLEKS                       R15 R16 K20 ["usePreferredInput"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R18 R0 K21 ["Providers"]
       89 GETTABLEKS                       R17 R18 K22 ["Style"]
       91 GETTABLEKS                       R16 R17 K23 ["useStyleTags"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R18 R4 K24 ["TextInput"]
       98 GETTABLEKS                       R17 R18 K25 ["useTextInputVariants"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R20 R0 K21 ["Providers"]
      105 GETTABLEKS                       R19 R20 K22 ["Style"]
      107 GETTABLEKS                       R18 R19 K26 ["useTokens"]
      109 CALL                             R17 1 1
      110 GETIMPORT                        R18 K6 [require]
      112 GETTABLEKS                       R20 R0 K7 ["Utility"]
      114 GETTABLEKS                       R19 R20 K27 ["withCommonProps"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K6 [require]
      119 GETTABLEKS                       R21 R0 K7 ["Utility"]
      121 GETTABLEKS                       R20 R21 K28 ["withDefaults"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K6 [require]
      126 GETTABLEKS                       R22 R0 K29 ["Enums"]
      128 GETTABLEKS                       R21 R22 K30 ["InputSize"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K6 [require]
      133 GETTABLEKS                       R23 R0 K29 ["Enums"]
      135 GETTABLEKS                       R22 R23 K31 ["ControlState"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K6 [require]
      140 GETTABLEKS                       R24 R0 K29 ["Enums"]
      142 GETTABLEKS                       R23 R24 K32 ["StateLayerAffordance"]
      144 CALL                             R22 1 1
      145 DUPTABLE                         R23 K36 [{"size", "numLines", "testId"}]
      146 GETTABLEKS                       R24 R20 K37 ["Large"]
      148 SETTABLEKS                       R24 R23 K33 ["size"]
      150 LOADN                            R24 1
      151 SETTABLEKS                       R24 R23 K34 ["numLines"]
      153 LOADK                            R24 K38 ["--foundation-internal-text-input"]
      154 SETTABLEKS                       R24 R23 K35 ["testId"]
      156 GETTABLEKS                       R24 R3 K39 ["memo"]
      158 GETTABLEKS                       R25 R3 K40 ["forwardRef"]
      160 DUPCLOSURE                       R26 K41 [PROTO_0]
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R5
      165 CALL                             R25 1 -1
      166 CALL                             R24 -1 1
      167 DUPCLOSURE                       R25 K42 [PROTO_28]
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R23
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R24
      186 GETTABLEKS                       R26 R3 K39 ["memo"]
      188 GETTABLEKS                       R27 R3 K40 ["forwardRef"]
      190 MOVE                             R28 R25
      191 CALL                             R27 1 -1
      192 CALL                             R26 -1 -1
      193 RETURN                           R26 -1
