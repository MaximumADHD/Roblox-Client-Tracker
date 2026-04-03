PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["isBoundsChecker"]
        2 GETTABLEKS                       R4 R0 K1 ["isMultiLine"]
        4 OR                               R3 R4 R2
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["createElement"]
        8 LOADK                            R5 K3 ["TextBox"]
        9 NEWTABLE                         R6 32 0
       11 LOADB                            R7 0
       12 SETTABLEKS                       R7 R6 K4 ["ClearTextOnFocus"]
       14 LOADB                            R7 0
       15 SETTABLEKS                       R7 R6 K5 ["Selectable"]
       17 JUMPIFNOT                        R2 ; [+2]
       18 LOADB                            R7 0
       19 JUMP                             ; [+1]
       20 LOADNIL                          R7
       21 SETTABLEKS                       R7 R6 K6 ["Active"]
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADB                            R7 0
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 SETTABLEKS                       R7 R6 K7 ["Visible"]
       29 LOADN                            R7 1
       30 SETTABLEKS                       R7 R6 K8 ["BackgroundTransparency"]
       32 LOADB                            R7 1
       33 SETTABLEKS                       R7 R6 K9 ["ClipsDescendants"]
       35 GETIMPORT                        R7 K13 [Enum.TextXAlignment.Left]
       37 SETTABLEKS                       R7 R6 K11 ["TextXAlignment"]
       39 GETTABLEKS                       R8 R0 K14 ["fontStyle"]
       41 GETTABLEKS                       R7 R8 K15 ["Font"]
       43 SETTABLEKS                       R7 R6 K15 ["Font"]
       45 GETTABLEKS                       R8 R0 K14 ["fontStyle"]
       47 GETTABLEKS                       R7 R8 K16 ["FontSize"]
       49 SETTABLEKS                       R7 R6 K17 ["TextSize"]
       51 GETTABLEKS                       R8 R0 K14 ["fontStyle"]
       53 GETTABLEKS                       R7 R8 K18 ["LineHeight"]
       55 SETTABLEKS                       R7 R6 K18 ["LineHeight"]
       57 GETTABLEKS                       R8 R0 K19 ["textStyle"]
       59 GETTABLEKS                       R7 R8 K20 ["Color3"]
       61 SETTABLEKS                       R7 R6 K21 ["TextColor3"]
       63 GETTABLEKS                       R8 R0 K19 ["textStyle"]
       65 GETTABLEKS                       R7 R8 K22 ["Transparency"]
       67 SETTABLEKS                       R7 R6 K23 ["TextTransparency"]
       69 SETTABLEKS                       R3 R6 K24 ["MultiLine"]
       71 SETTABLEKS                       R3 R6 K25 ["TextWrapped"]
       73 JUMPIFNOT                        R3 ; [+3]
       74 GETIMPORT                        R7 K28 [Enum.TextYAlignment.Top]
       76 JUMP                             ; [+2]
       77 GETIMPORT                        R7 K30 [Enum.TextYAlignment.Center]
       79 SETTABLEKS                       R7 R6 K26 ["TextYAlignment"]
       81 JUMPIFNOT                        R2 ; [+2]
       82 LOADB                            R7 0
       83 JUMP                             ; [+3]
       84 GETTABLEKS                       R8 R0 K31 ["isDisabled"]
       86 NOT                              R7 R8
       87 SETTABLEKS                       R7 R6 K32 ["TextEditable"]
       89 GETTABLEKS                       R7 R0 K33 ["placeholder"]
       91 SETTABLEKS                       R7 R6 K34 ["PlaceholderText"]
       93 GETUPVAL                         R8 1
       94 CALL                             R8 0 1
       95 JUMPIFNOT                        R8 ; [+3]
       96 GETTABLEKS                       R7 R0 K35 ["textInputType"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R7
      100 SETTABLEKS                       R7 R6 K36 ["TextInputType"]
      102 GETTABLEKS                       R8 R0 K37 ["Size"]
      104 JUMPIFEQKNIL                     R8 ; [+4]
      106 GETTABLEKS                       R7 R0 K37 ["Size"]
      108 JUMP                             ; [+5]
      109 GETIMPORT                        R7 K40 [UDim2.fromScale]
      111 LOADN                            R8 1
      112 LOADN                            R9 1
      113 CALL                             R7 2 1
      114 SETTABLEKS                       R7 R6 K37 ["Size"]
      116 GETTABLEKS                       R7 R0 K41 ["automaticSize"]
      118 SETTABLEKS                       R7 R6 K42 ["AutomaticSize"]
      120 JUMPIFNOT                        R2 ; [+2]
      121 LOADNIL                          R7
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R7 R0 K43 ["text"]
      125 SETTABLEKS                       R7 R6 K44 ["Text"]
      127 SETTABLEKS                       R1 R6 K45 ["ref"]
      129 GETUPVAL                         R8 0
      130 GETTABLEKS                       R7 R8 K46 ["Tag"]
      132 GETTABLEKS                       R8 R0 K47 ["tag"]
      134 SETTABLE                         R8 R6 R7
      135 GETUPVAL                         R9 0
      136 GETTABLEKS                       R8 R9 K48 ["Change"]
      138 GETTABLEKS                       R7 R8 K44 ["Text"]
      140 GETTABLEKS                       R8 R0 K49 ["onTextChanged"]
      142 SETTABLE                         R8 R6 R7
      143 GETUPVAL                         R9 0
      144 GETTABLEKS                       R8 R9 K48 ["Change"]
      146 GETTABLEKS                       R7 R8 K50 ["CursorPosition"]
      148 GETTABLEKS                       R8 R0 K51 ["onCursorPositionChanged"]
      150 SETTABLE                         R8 R6 R7
      151 GETUPVAL                         R9 0
      152 GETTABLEKS                       R8 R9 K52 ["Event"]
      154 GETTABLEKS                       R7 R8 K53 ["Focused"]
      156 GETTABLEKS                       R8 R0 K54 ["onFocusGained"]
      158 SETTABLE                         R8 R6 R7
      159 GETUPVAL                         R9 0
      160 GETTABLEKS                       R8 R9 K52 ["Event"]
      162 GETTABLEKS                       R7 R8 K55 ["FocusLost"]
      164 GETTABLEKS                       R8 R0 K56 ["onFocusLost"]
      166 SETTABLE                         R8 R6 R7
      167 GETTABLEKS                       R8 R0 K57 ["padding"]
      169 JUMPIFNOT                        R8 ; [+14]
      170 DUPTABLE                         R7 K59 [{"Padding"}]
      171 GETUPVAL                         R9 0
      172 GETTABLEKS                       R8 R9 K2 ["createElement"]
      174 GETUPVAL                         R9 2
      175 DUPTABLE                         R10 K61 [{"value"}]
      176 GETTABLEKS                       R11 R0 K57 ["padding"]
      178 SETTABLEKS                       R11 R10 K60 ["value"]
      180 CALL                             R8 2 1
      181 SETTABLEKS                       R8 R7 K58 ["Padding"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R7
      185 GETTABLEKS                       R8 R0 K62 ["children"]
      187 CALL                             R4 4 -1
      188 RETURN                           R4 -1

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
        0 JUMPIFEQKNIL                     R0 ; [+10]
        2 GETTABLEKS                       R1 R0 K0 ["Parent"]
        4 JUMPIFEQKNIL                     R1 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["current"]
        9 JUMPIFEQKS                       R1 K2 [""] ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K3 ["Text"]
       14 GETUPVAL                         R2 1
       15 JUMPIFNOT                        R2 ; [+9]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K1 ["current"]
       19 JUMPIFNOT                        R2 ; [+5]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K1 ["current"]
       23 SETTABLEKS                       R1 R2 K3 ["Text"]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R2 R3 K4 ["onChanged"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

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
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K1 ["onReturnPressed"]
       21 JUMPIFNOT                        R3 ; [+4]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K1 ["onReturnPressed"]
       25 CALL                             R3 0 0
       26 RETURN                           R0 0

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
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R3
       21 GETTABLEKS                       R8 R2 K4 ["size"]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R9 4
       25 GETTABLEKS                       R8 R9 K5 ["FoundationDisableStylingPolyfill"]
       27 JUMPIFNOT                        R8 ; [+7]
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R9 R6 K6 ["textBox"]
       31 GETTABLEKS                       R8 R9 K7 ["tag"]
       33 CALL                             R7 1 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R8 R9 K8 ["useRef"]
       39 LOADNIL                          R9
       40 CALL                             R8 1 1
       41 GETUPVAL                         R10 6
       42 GETTABLEKS                       R9 R10 K8 ["useRef"]
       44 LOADNIL                          R10
       45 CALL                             R9 1 1
       46 GETUPVAL                         R11 6
       47 GETTABLEKS                       R10 R11 K8 ["useRef"]
       49 LOADNIL                          R11
       50 CALL                             R10 1 1
       51 GETUPVAL                         R12 6
       52 GETTABLEKS                       R11 R12 K8 ["useRef"]
       54 LOADK                            R12 K9 [""]
       55 CALL                             R11 1 1
       56 GETUPVAL                         R13 6
       57 GETTABLEKS                       R12 R13 K8 ["useRef"]
       59 LOADNIL                          R13
       60 CALL                             R12 1 1
       61 GETUPVAL                         R14 6
       62 GETTABLEKS                       R13 R14 K8 ["useRef"]
       64 GETIMPORT                        R14 K12 [Vector2.zero]
       66 CALL                             R13 1 1
       67 GETUPVAL                         R15 6
       68 GETTABLEKS                       R14 R15 K13 ["useState"]
       70 LOADB                            R15 0
       71 CALL                             R14 1 2
       72 GETUPVAL                         R17 6
       73 GETTABLEKS                       R16 R17 K13 ["useState"]
       75 LOADB                            R17 0
       76 CALL                             R16 1 2
       77 GETUPVAL                         R18 7
       78 CALL                             R18 0 1
       79 GETUPVAL                         R20 6
       80 GETTABLEKS                       R19 R20 K13 ["useState"]
       82 LOADB                            R20 0
       83 CALL                             R19 1 2
       84 GETIMPORT                        R22 K17 [Enum.PreferredInput.Touch]
       86 JUMPIFEQ                         R18 R22 ; [+2]
       88 LOADB                            R21 0 +1
       89 LOADB                            R21 1
       90 GETTABLEKS                       R23 R3 K18 ["Stroke"]
       92 GETTABLEKS                       R22 R23 K19 ["Standard"]
       94 FASTCALL1                        MATH_CEIL R22 ; [+3]
       95 MOVE                             R25 R22
       96 GETIMPORT                        R24 K22 [math.ceil]
       98 CALL                             R24 1 1
       99 MULK                             R23 R24 K20 [2]
      100 GETTABLEKS                       R25 R3 K18 ["Stroke"]
      102 GETTABLEKS                       R24 R25 K23 ["Thick"]
      104 FASTCALL1                        MATH_CEIL R24 ; [+3]
      105 MOVE                             R27 R24
      106 GETIMPORT                        R26 K22 [math.ceil]
      108 CALL                             R26 1 1
      109 MULK                             R25 R26 K20 [2]
      110 GETTABLEKS                       R28 R3 K24 ["Color"]
      112 GETTABLEKS                       R27 R28 K25 ["Content"]
      114 GETTABLEKS                       R26 R27 K26 ["Emphasis"]
      116 GETTABLEKS                       R28 R6 K6 ["textBox"]
      118 GETTABLEKS                       R27 R28 K27 ["fontStyle"]
      120 GETTABLEKS                       R28 R27 K28 ["FontSize"]
      122 GETTABLEKS                       R29 R27 K29 ["LineHeight"]
      124 GETUPVAL                         R31 6
      125 GETTABLEKS                       R30 R31 K30 ["useCallback"]
      127 NEWCLOSURE                       R31 P0
      128 CAPTURE                          VAL R8
      129 NEWTABLE                         R32 0 0
      131 CALL                             R30 2 1
      132 GETUPVAL                         R32 6
      133 GETTABLEKS                       R31 R32 K30 ["useCallback"]
      135 NEWCLOSURE                       R32 P1
      136 CAPTURE                          VAL R8
      137 NEWTABLE                         R33 0 0
      139 CALL                             R31 2 1
      140 GETUPVAL                         R33 6
      141 GETTABLEKS                       R32 R33 K30 ["useCallback"]
      143 NEWCLOSURE                       R33 P2
      144 CAPTURE                          VAL R8
      145 NEWTABLE                         R34 0 0
      147 CALL                             R32 2 1
      148 GETUPVAL                         R34 6
      149 GETTABLEKS                       R33 R34 K30 ["useCallback"]
      151 NEWCLOSURE                       R34 P3
      152 CAPTURE                          VAL R8
      153 NEWTABLE                         R35 0 0
      155 CALL                             R33 2 1
      156 GETUPVAL                         R35 6
      157 GETTABLEKS                       R34 R35 K30 ["useCallback"]
      159 NEWCLOSURE                       R35 P4
      160 CAPTURE                          VAL R8
      161 NEWTABLE                         R36 0 0
      163 CALL                             R34 2 1
      164 GETUPVAL                         R36 6
      165 GETTABLEKS                       R35 R36 K30 ["useCallback"]
      167 NEWCLOSURE                       R36 P5
      168 CAPTURE                          VAL R8
      169 NEWTABLE                         R37 0 0
      171 CALL                             R35 2 1
      172 GETUPVAL                         R37 6
      173 GETTABLEKS                       R36 R37 K30 ["useCallback"]
      175 NEWCLOSURE                       R37 P6
      176 CAPTURE                          VAL R8
      177 NEWTABLE                         R38 0 0
      179 CALL                             R36 2 1
      180 GETUPVAL                         R38 6
      181 GETTABLEKS                       R37 R38 K31 ["useImperativeHandle"]
      183 MOVE                             R38 R1
      184 NEWCLOSURE                       R39 P7
      185 CAPTURE                          VAL R32
      186 CAPTURE                          VAL R30
      187 CAPTURE                          VAL R31
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R33
      190 CAPTURE                          VAL R34
      191 CAPTURE                          VAL R36
      192 CAPTURE                          VAL R35
      193 NEWTABLE                         R40 0 7
      195 MOVE                             R41 R34
      196 MOVE                             R42 R32
      197 MOVE                             R43 R33
      198 MOVE                             R44 R30
      199 MOVE                             R45 R31
      200 MOVE                             R46 R36
      201 MOVE                             R47 R35
      202 SETLIST                          R40 R41 7 [1]
      204 CALL                             R37 3 0
      205 GETUPVAL                         R38 6
      206 GETTABLEKS                       R37 R38 K30 ["useCallback"]
      208 NEWCLOSURE                       R38 P8
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R2
      213 NEWTABLE                         R39 0 3
      215 GETTABLEKS                       R40 R2 K32 ["onChanged"]
      217 MOVE                             R41 R5
      218 MOVE                             R42 R19
      219 SETLIST                          R39 R40 3 [1]
      221 CALL                             R37 2 1
      222 GETUPVAL                         R39 6
      223 GETTABLEKS                       R38 R39 K30 ["useCallback"]
      225 NEWCLOSURE                       R39 P9
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R17
      233 NEWTABLE                         R40 0 4
      235 GETTABLEKS                       R41 R2 K33 ["onFocus"]
      237 GETTABLEKS                       R42 R2 K34 ["isDisabled"]
      239 MOVE                             R43 R21
      240 MOVE                             R44 R5
      241 SETLIST                          R40 R41 4 [1]
      243 CALL                             R38 2 1
      244 GETUPVAL                         R40 6
      245 GETTABLEKS                       R39 R40 K30 ["useCallback"]
      247 NEWCLOSURE                       R40 P10
      248 CAPTURE                          VAL R17
      249 CAPTURE                          VAL R5
      250 CAPTURE                          VAL R20
      251 CAPTURE                          VAL R2
      252 NEWTABLE                         R41 0 3
      254 GETTABLEKS                       R42 R2 K35 ["onReturnPressed"]
      256 MOVE                             R43 R5
      257 GETTABLEKS                       R44 R2 K36 ["onFocusLost"]
      259 SETLIST                          R41 R42 3 [1]
      261 CALL                             R39 2 1
      262 GETUPVAL                         R41 6
      263 GETTABLEKS                       R40 R41 K30 ["useCallback"]
      265 NEWCLOSURE                       R41 P11
      266 CAPTURE                          VAL R15
      267 CAPTURE                          UPVAL U8
      268 NEWTABLE                         R42 0 0
      270 CALL                             R40 2 1
      271 GETUPVAL                         R42 6
      272 GETTABLEKS                       R41 R42 K30 ["useCallback"]
      274 NEWCLOSURE                       R42 P12
      275 CAPTURE                          VAL R12
      276 CAPTURE                          VAL R2
      277 NEWTABLE                         R43 0 1
      279 GETTABLEKS                       R44 R2 K37 ["onDragStarted"]
      281 SETLIST                          R43 R44 1 [1]
      283 CALL                             R41 2 1
      284 GETUPVAL                         R43 6
      285 GETTABLEKS                       R42 R43 K30 ["useCallback"]
      287 NEWCLOSURE                       R43 P13
      288 CAPTURE                          VAL R2
      289 NEWTABLE                         R44 0 1
      291 GETTABLEKS                       R45 R2 K38 ["onDrag"]
      293 SETLIST                          R44 R45 1 [1]
      295 CALL                             R42 2 1
      296 GETUPVAL                         R44 6
      297 GETTABLEKS                       R43 R44 K30 ["useCallback"]
      299 NEWCLOSURE                       R44 P14
      300 CAPTURE                          VAL R12
      301 CAPTURE                          VAL R30
      302 CAPTURE                          VAL R31
      303 CAPTURE                          VAL R17
      304 CAPTURE                          VAL R2
      305 NEWTABLE                         R45 0 1
      307 GETTABLEKS                       R46 R2 K39 ["onDragEnded"]
      309 SETLIST                          R45 R46 1 [1]
      311 CALL                             R43 2 1
      312 GETUPVAL                         R45 6
      313 GETTABLEKS                       R44 R45 K40 ["useMemo"]
      315 NEWCLOSURE                       R45 P15
      316 CAPTURE                          VAL R6
      317 CAPTURE                          VAL R3
      318 NEWTABLE                         R46 0 2
      320 MOVE                             R47 R3
      321 GETTABLEKS                       R49 R6 K41 ["innerContainer"]
      323 GETTABLEKS                       R48 R49 K42 ["radius"]
      325 SETLIST                          R46 R47 2 [1]
      327 CALL                             R44 2 1
      328 GETUPVAL                         R46 6
      329 GETTABLEKS                       R45 R46 K40 ["useMemo"]
      331 NEWCLOSURE                       R46 P16
      332 CAPTURE                          UPVAL U9
      333 CAPTURE                          VAL R28
      334 CAPTURE                          VAL R4
      335 CAPTURE                          VAL R29
      336 NEWTABLE                         R47 0 3
      338 MOVE                             R48 R28
      339 MOVE                             R49 R4
      340 MOVE                             R50 R29
      341 SETLIST                          R47 R48 3 [1]
      343 CALL                             R45 2 1
      344 GETUPVAL                         R47 6
      345 GETTABLEKS                       R46 R47 K40 ["useMemo"]
      347 NEWCLOSURE                       R47 P17
      348 CAPTURE                          UPVAL U4
      349 CAPTURE                          VAL R6
      350 CAPTURE                          VAL R23
      351 CAPTURE                          UPVAL U9
      352 CAPTURE                          VAL R28
      353 CAPTURE                          VAL R29
      354 CAPTURE                          VAL R25
      355 CAPTURE                          VAL R45
      356 NEWTABLE                         R48 0 7
      358 GETTABLEKS                       R50 R6 K43 ["outerContainer"]
      360 GETTABLEKS                       R49 R50 K44 ["minHeight"]
      362 MOVE                             R50 R23
      363 MOVE                             R51 R25
      364 MOVE                             R52 R28
      365 MOVE                             R53 R45
      366 GETUPVAL                         R55 4
      367 GETTABLEKS                       R54 R55 K45 ["FoundationUIStrokeInner"]
      369 MOVE                             R55 R29
      370 SETLIST                          R48 R49 7 [1]
      372 CALL                             R46 2 2
      373 GETTABLEKS                       R50 R46 K46 ["bottom"]
      375 GETTABLEKS                       R49 R50 K47 ["Offset"]
      377 GETTABLEKS                       R51 R46 K48 ["top"]
      379 GETTABLEKS                       R50 R51 K47 ["Offset"]
      381 ADD                              R48 R49 R50
      382 GETIMPORT                        R49 K51 [UDim2.new]
      384 LOADN                            R50 1
      385 LOADN                            R51 0
      386 LOADN                            R52 0
      387 ADD                              R53 R45 R48
      388 CALL                             R49 4 1
      389 GETUPVAL                         R51 6
      390 GETTABLEKS                       R50 R51 K40 ["useMemo"]
      392 NEWCLOSURE                       R51 P18
      393 CAPTURE                          VAL R5
      394 NEWTABLE                         R52 0 1
      396 MOVE                             R53 R5
      397 SETLIST                          R52 R53 1 [1]
      399 CALL                             R50 2 1
      400 GETUPVAL                         R52 6
      401 GETTABLEKS                       R51 R52 K40 ["useMemo"]
      403 NEWCLOSURE                       R52 P19
      404 CAPTURE                          VAL R5
      405 NEWTABLE                         R53 0 1
      407 MOVE                             R54 R5
      408 SETLIST                          R53 R54 1 [1]
      410 CALL                             R51 2 1
      411 GETUPVAL                         R53 6
      412 GETTABLEKS                       R52 R53 K30 ["useCallback"]
      414 NEWCLOSURE                       R53 P20
      415 CAPTURE                          VAL R10
      416 CAPTURE                          VAL R9
      417 CAPTURE                          UPVAL U10
      418 CAPTURE                          VAL R46
      419 NEWTABLE                         R54 0 1
      421 MOVE                             R55 R46
      422 SETLIST                          R54 R55 1 [1]
      424 CALL                             R52 2 1
      425 GETUPVAL                         R54 6
      426 GETTABLEKS                       R53 R54 K30 ["useCallback"]
      428 NEWCLOSURE                       R54 P21
      429 CAPTURE                          VAL R10
      430 CAPTURE                          VAL R13
      431 NEWTABLE                         R55 0 0
      433 CALL                             R53 2 1
      434 GETUPVAL                         R55 6
      435 GETTABLEKS                       R54 R55 K30 ["useCallback"]
      437 NEWCLOSURE                       R55 P22
      438 CAPTURE                          VAL R11
      439 NEWTABLE                         R56 0 0
      441 CALL                             R54 2 1
      442 GETUPVAL                         R56 6
      443 GETTABLEKS                       R55 R56 K30 ["useCallback"]
      445 NEWCLOSURE                       R56 P23
      446 CAPTURE                          VAL R13
      447 NEWTABLE                         R57 0 0
      449 CALL                             R55 2 1
      450 GETUPVAL                         R57 6
      451 GETTABLEKS                       R56 R57 K40 ["useMemo"]
      453 NEWCLOSURE                       R57 P24
      454 CAPTURE                          VAL R2
      455 CAPTURE                          UPVAL U6
      456 CAPTURE                          VAL R41
      457 CAPTURE                          VAL R42
      458 CAPTURE                          VAL R43
      459 CAPTURE                          VAL R16
      460 NEWTABLE                         R58 0 5
      462 MOVE                             R59 R41
      463 MOVE                             R60 R42
      464 MOVE                             R61 R43
      465 MOVE                             R62 R16
      466 GETTABLEKS                       R63 R2 K34 ["isDisabled"]
      468 SETLIST                          R58 R59 5 [1]
      470 CALL                             R56 2 1
      471 LOADNIL                          R57
      472 LOADNIL                          R58
      473 GETUPVAL                         R60 4
      474 GETTABLEKS                       R59 R60 K45 ["FoundationUIStrokeInner"]
      476 JUMPIFNOT                        R59 ; [+44]
      477 GETUPVAL                         R59 11
      478 GETTABLEKS                       R61 R2 K52 ["horizontalPadding"]
      480 JUMPIFNOT                        R61 ; [+11]
      481 GETTABLEKS                       R61 R2 K52 ["horizontalPadding"]
      483 GETTABLEKS                       R60 R61 K53 ["left"]
      485 JUMPIF                           R60 ; [+11]
      486 GETIMPORT                        R60 K55 [UDim.new]
      488 LOADN                            R61 0
      489 LOADN                            R62 0
      490 CALL                             R60 2 1
      491 JUMP                             ; [+5]
      492 GETIMPORT                        R60 K55 [UDim.new]
      494 LOADN                            R61 0
      495 LOADN                            R62 0
      496 CALL                             R60 2 1
      497 CALL                             R59 1 1
      498 MOVE                             R57 R59
      499 GETUPVAL                         R59 11
      500 GETTABLEKS                       R61 R2 K52 ["horizontalPadding"]
      502 JUMPIFNOT                        R61 ; [+11]
      503 GETTABLEKS                       R61 R2 K52 ["horizontalPadding"]
      505 GETTABLEKS                       R60 R61 K56 ["right"]
      507 JUMPIF                           R60 ; [+11]
      508 GETIMPORT                        R60 K55 [UDim.new]
      510 LOADN                            R61 0
      511 LOADN                            R62 0
      512 CALL                             R60 2 1
      513 JUMP                             ; [+5]
      514 GETIMPORT                        R60 K55 [UDim.new]
      516 LOADN                            R61 0
      517 LOADN                            R62 0
      518 CALL                             R60 2 1
      519 CALL                             R59 1 1
      520 MOVE                             R58 R59
      521 DUPTABLE                         R59 K68 [{"GroupTransparency", "Size", "selection", "cursor", "stroke", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      522 GETUPVAL                         R62 4
      523 GETTABLEKS                       R61 R62 K45 ["FoundationUIStrokeInner"]
      525 JUMPIFNOT                        R61 ; [+7]
      526 GETTABLEKS                       R61 R2 K34 ["isDisabled"]
      528 JUMPIFNOT                        R61 ; [+4]
      529 GETUPVAL                         R61 12
      530 GETTABLEKS                       R60 R61 K69 ["DISABLED_TRANSPARENCY"]
      532 JUMP                             ; [+1]
      533 LOADNIL                          R60
      534 SETTABLEKS                       R60 R59 K57 ["GroupTransparency"]
      536 GETUPVAL                         R62 4
      537 GETTABLEKS                       R61 R62 K45 ["FoundationUIStrokeInner"]
      539 JUMPIFNOT                        R61 ; [+8]
      540 GETIMPORT                        R60 K51 [UDim2.new]
      542 LOADN                            R61 1
      543 LOADN                            R62 0
      544 LOADN                            R63 0
      545 MOVE                             R64 R47
      546 CALL                             R60 4 1
      547 JUMP                             ; [+1]
      548 LOADNIL                          R60
      549 SETTABLEKS                       R60 R59 K58 ["Size"]
      551 DUPTABLE                         R60 K71 [{"Selectable"}]
      552 GETTABLEKS                       R62 R2 K34 ["isDisabled"]
      554 NOT                              R61 R62
      555 SETTABLEKS                       R61 R60 K70 ["Selectable"]
      557 SETTABLEKS                       R60 R59 K59 ["selection"]
      559 SETTABLEKS                       R44 R59 K60 ["cursor"]
      561 DUPTABLE                         R60 K75 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      562 GETTABLEKS                       R62 R2 K76 ["hasError"]
      564 JUMPIFNOT                        R62 ; [+9]
      565 GETTABLEKS                       R64 R3 K24 ["Color"]
      567 GETTABLEKS                       R63 R64 K77 ["System"]
      569 GETTABLEKS                       R62 R63 K78 ["Alert"]
      571 GETTABLEKS                       R61 R62 K79 ["Color3"]
      573 JUMP                             ; [+8]
      574 GETTABLEKS                       R64 R3 K24 ["Color"]
      576 GETTABLEKS                       R63 R64 K18 ["Stroke"]
      578 GETTABLEKS                       R62 R63 K26 ["Emphasis"]
      580 GETTABLEKS                       R61 R62 K79 ["Color3"]
      582 SETTABLEKS                       R61 R60 K24 ["Color"]
      584 GETTABLEKS                       R62 R2 K76 ["hasError"]
      586 JUMPIFNOT                        R62 ; [+9]
      587 GETTABLEKS                       R64 R3 K24 ["Color"]
      589 GETTABLEKS                       R63 R64 K77 ["System"]
      591 GETTABLEKS                       R62 R63 K78 ["Alert"]
      593 GETTABLEKS                       R61 R62 K72 ["Transparency"]
      595 JUMP                             ; [+11]
      596 JUMPIFNOT                        R16 ; [+2]
      597 LOADN                            R61 0
      598 JUMP                             ; [+8]
      599 GETTABLEKS                       R64 R3 K24 ["Color"]
      601 GETTABLEKS                       R63 R64 K18 ["Stroke"]
      603 GETTABLEKS                       R62 R63 K26 ["Emphasis"]
      605 GETTABLEKS                       R61 R62 K72 ["Transparency"]
      607 SETTABLEKS                       R61 R60 K72 ["Transparency"]
      609 SETTABLEKS                       R22 R60 K73 ["Thickness"]
      611 GETUPVAL                         R63 4
      612 GETTABLEKS                       R62 R63 K45 ["FoundationUIStrokeInner"]
      614 JUMPIFNOT                        R62 ; [+3]
      615 GETIMPORT                        R61 K81 [Enum.BorderStrokePosition.Inner]
      617 JUMP                             ; [+1]
      618 LOADNIL                          R61
      619 SETTABLEKS                       R61 R60 K74 ["BorderStrokePosition"]
      621 SETTABLEKS                       R60 R59 K61 ["stroke"]
      623 GETUPVAL                         R62 4
      624 GETTABLEKS                       R61 R62 K45 ["FoundationUIStrokeInner"]
      626 JUMPIFNOT                        R61 ; [+30]
      627 DUPTABLE                         R60 K82 [{"left", "right", "top", "bottom"}]
      628 NEWCLOSURE                       R63 P25
      629 CAPTURE                          VAL R22
      630 NAMECALL                         R61 R57 K83 ["map"]
      632 CALL                             R61 2 1
      633 SETTABLEKS                       R61 R60 K53 ["left"]
      635 NEWCLOSURE                       R63 P26
      636 CAPTURE                          VAL R22
      637 NAMECALL                         R61 R58 K83 ["map"]
      639 CALL                             R61 2 1
      640 SETTABLEKS                       R61 R60 K56 ["right"]
      642 GETIMPORT                        R61 K55 [UDim.new]
      644 LOADN                            R62 0
      645 MOVE                             R63 R22
      646 CALL                             R61 2 1
      647 SETTABLEKS                       R61 R60 K48 ["top"]
      649 GETIMPORT                        R61 K55 [UDim.new]
      651 LOADN                            R62 0
      652 MOVE                             R63 R22
      653 CALL                             R61 2 1
      654 SETTABLEKS                       R61 R60 K46 ["bottom"]
      656 JUMP                             ; [+1]
      657 DIVK                             R60 R25 K20 [2]
      658 SETTABLEKS                       R60 R59 K62 ["padding"]
      660 GETTABLEKS                       R61 R2 K34 ["isDisabled"]
      662 JUMPIFNOT                        R61 ; [+4]
      663 GETUPVAL                         R62 4
      664 GETTABLEKS                       R61 R62 K45 ["FoundationUIStrokeInner"]
      666 JUMPIF                           R61 ; [+2]
      667 MOVE                             R60 R30
      668 JUMP                             ; [+1]
      669 LOADNIL                          R60
      670 SETTABLEKS                       R60 R59 K63 ["onActivated"]
      672 SETTABLEKS                       R40 R59 K64 ["onStateChanged"]
      674 GETUPVAL                         R62 4
      675 GETTABLEKS                       R61 R62 K45 ["FoundationUIStrokeInner"]
      677 JUMPIFNOT                        R61 ; [+3]
      678 GETTABLEKS                       R60 R2 K34 ["isDisabled"]
      680 JUMP                             ; [+1]
      681 LOADNIL                          R60
      682 SETTABLEKS                       R60 R59 K34 ["isDisabled"]
      684 GETUPVAL                         R62 4
      685 GETTABLEKS                       R61 R62 K84 ["FoundationNumberInputFixScrubbableBG"]
      687 JUMPIFNOT                        R61 ; [+23]
      688 DUPTABLE                         R60 K85 [{"Color3", "Transparency"}]
      689 GETTABLEKS                       R63 R6 K86 ["outerView"]
      691 GETTABLEKS                       R62 R63 K87 ["bgStyle"]
      693 GETTABLEKS                       R61 R62 K79 ["Color3"]
      695 SETTABLEKS                       R61 R60 K79 ["Color3"]
      697 GETTABLEKS                       R62 R2 K88 ["backgroundGradient"]
      699 JUMPIFNOT                        R62 ; [+2]
      700 LOADN                            R61 0
      701 JUMP                             ; [+6]
      702 GETTABLEKS                       R63 R6 K86 ["outerView"]
      704 GETTABLEKS                       R62 R63 K87 ["bgStyle"]
      706 GETTABLEKS                       R61 R62 K72 ["Transparency"]
      708 SETTABLEKS                       R61 R60 K72 ["Transparency"]
      710 JUMP                             ; [+1]
      711 LOADNIL                          R60
      712 SETTABLEKS                       R60 R59 K65 ["backgroundStyle"]
      714 DUPTABLE                         R60 K90 [{"affordance"}]
      715 GETUPVAL                         R62 13
      716 GETTABLEKS                       R61 R62 K91 ["None"]
      718 SETTABLEKS                       R61 R60 K89 ["affordance"]
      720 SETTABLEKS                       R60 R59 K66 ["stateLayer"]
      722 GETUPVAL                         R62 4
      723 GETTABLEKS                       R61 R62 K45 ["FoundationUIStrokeInner"]
      725 JUMPIFNOT                        R61 ; [+5]
      726 GETTABLEKS                       R61 R6 K86 ["outerView"]
      728 GETTABLEKS                       R60 R61 K7 ["tag"]
      730 JUMP                             ; [+4]
      731 GETTABLEKS                       R61 R6 K43 ["outerContainer"]
      733 GETTABLEKS                       R60 R61 K7 ["tag"]
      735 SETTABLEKS                       R60 R59 K7 ["tag"]
      737 LOADK                            R61 K92 ["%*--outer-container"]
      738 GETTABLEKS                       R63 R2 K67 ["testId"]
      740 NAMECALL                         R61 R61 K93 ["format"]
      742 CALL                             R61 2 1
      743 MOVE                             R60 R61
      744 SETTABLEKS                       R60 R59 K67 ["testId"]
      746 GETUPVAL                         R61 6
      747 GETTABLEKS                       R60 R61 K94 ["createElement"]
      749 GETUPVAL                         R63 4
      750 GETTABLEKS                       R62 R63 K45 ["FoundationUIStrokeInner"]
      752 JUMPIFNOT                        R62 ; [+4]
      753 GETUPVAL                         R62 6
      754 GETTABLEKS                       R61 R62 K95 ["Fragment"]
      756 JUMP                             ; [+1]
      757 GETUPVAL                         R61 14
      758 GETUPVAL                         R64 4
      759 GETTABLEKS                       R63 R64 K45 ["FoundationUIStrokeInner"]
      761 JUMPIFNOT                        R63 ; [+3]
      762 NEWTABLE                         R62 0 0
      764 JUMP                             ; [+23]
      765 GETUPVAL                         R62 15
      766 MOVE                             R63 R2
      767 DUPTABLE                         R64 K96 [{"GroupTransparency", "padding", "tag"}]
      768 GETTABLEKS                       R66 R2 K34 ["isDisabled"]
      770 JUMPIFNOT                        R66 ; [+4]
      771 GETUPVAL                         R66 12
      772 GETTABLEKS                       R65 R66 K69 ["DISABLED_TRANSPARENCY"]
      774 JUMP                             ; [+1]
      775 LOADNIL                          R65
      776 SETTABLEKS                       R65 R64 K57 ["GroupTransparency"]
      778 DIVK                             R65 R23 K20 [2]
      779 SETTABLEKS                       R65 R64 K62 ["padding"]
      781 GETTABLEKS                       R66 R6 K97 ["canvas"]
      783 GETTABLEKS                       R65 R66 K7 ["tag"]
      785 SETTABLEKS                       R65 R64 K7 ["tag"]
      787 CALL                             R62 2 1
      788 DUPTABLE                         R63 K99 [{"Input"}]
      789 GETUPVAL                         R65 6
      790 GETTABLEKS                       R64 R65 K94 ["createElement"]
      792 GETUPVAL                         R65 14
      793 GETUPVAL                         R68 4
      794 GETTABLEKS                       R67 R68 K45 ["FoundationUIStrokeInner"]
      796 JUMPIFNOT                        R67 ; [+5]
      797 GETUPVAL                         R66 15
      798 MOVE                             R67 R2
      799 MOVE                             R68 R59
      800 CALL                             R66 2 1
      801 JUMP                             ; [+1]
      802 MOVE                             R66 R59
      803 DUPTABLE                         R67 K104 [{"DragDetector", "Background", "HoverStroke", "BorderFrame"}]
      804 SETTABLEKS                       R56 R67 K100 ["DragDetector"]
      806 GETUPVAL                         R70 4
      807 GETTABLEKS                       R69 R70 K84 ["FoundationNumberInputFixScrubbableBG"]
      809 JUMPIFNOT                        R69 ; [+3]
      810 GETTABLEKS                       R68 R2 K88 ["backgroundGradient"]
      812 JUMP                             ; [+2]
      813 GETTABLEKS                       R68 R2 K105 ["backgroundElement"]
      815 SETTABLEKS                       R68 R67 K101 ["Background"]
      817 GETUPVAL                         R70 4
      818 GETTABLEKS                       R69 R70 K45 ["FoundationUIStrokeInner"]
      820 JUMPIFNOT                        R69 ; [+46]
      821 GETTABLEKS                       R69 R2 K34 ["isDisabled"]
      823 JUMPIF                           R69 ; [+43]
      824 JUMPIF                           R14 ; [+1]
      825 JUMPIFNOT                        R16 ; [+41]
      826 GETUPVAL                         R69 6
      827 GETTABLEKS                       R68 R69 K94 ["createElement"]
      829 LOADK                            R69 K106 ["UIStroke"]
      830 DUPTABLE                         R70 K108 [{"Color", "Transparency", "Thickness", "BorderStrokePosition", "BorderOffset"}]
      831 GETTABLEKS                       R74 R3 K24 ["Color"]
      833 GETTABLEKS                       R73 R74 K18 ["Stroke"]
      835 GETTABLEKS                       R72 R73 K26 ["Emphasis"]
      837 GETTABLEKS                       R71 R72 K79 ["Color3"]
      839 SETTABLEKS                       R71 R70 K24 ["Color"]
      841 GETTABLEKS                       R74 R3 K24 ["Color"]
      843 GETTABLEKS                       R73 R74 K18 ["Stroke"]
      845 GETTABLEKS                       R72 R73 K26 ["Emphasis"]
      847 GETTABLEKS                       R71 R72 K72 ["Transparency"]
      849 SETTABLEKS                       R71 R70 K72 ["Transparency"]
      851 SETTABLEKS                       R24 R70 K73 ["Thickness"]
      853 GETIMPORT                        R71 K81 [Enum.BorderStrokePosition.Inner]
      855 SETTABLEKS                       R71 R70 K74 ["BorderStrokePosition"]
      857 GETIMPORT                        R71 K55 [UDim.new]
      859 LOADN                            R72 0
      860 MINUS                            R74 R25
      861 DIVK                             R73 R74 K20 [2]
      862 CALL                             R71 2 1
      863 SETTABLEKS                       R71 R70 K107 ["BorderOffset"]
      865 CALL                             R68 2 1
      866 JUMP                             ; [+1]
      867 LOADNIL                          R68
      868 SETTABLEKS                       R68 R67 K102 ["HoverStroke"]
      870 GETUPVAL                         R69 6
      871 GETTABLEKS                       R68 R69 K94 ["createElement"]
      873 GETUPVAL                         R71 4
      874 GETTABLEKS                       R70 R71 K45 ["FoundationUIStrokeInner"]
      876 JUMPIFNOT                        R70 ; [+4]
      877 GETUPVAL                         R70 6
      878 GETTABLEKS                       R69 R70 K95 ["Fragment"]
      880 JUMP                             ; [+1]
      881 GETUPVAL                         R69 14
      882 GETUPVAL                         R72 4
      883 GETTABLEKS                       R71 R72 K45 ["FoundationUIStrokeInner"]
      885 JUMPIFNOT                        R71 ; [+3]
      886 NEWTABLE                         R70 0 0
      888 JUMP                             ; [+96]
      889 DUPTABLE                         R70 K110 [{"Size", "cornerRadius", "stroke", "padding", "tag"}]
      890 GETIMPORT                        R71 K51 [UDim2.new]
      892 LOADN                            R72 1
      893 LOADN                            R73 0
      894 LOADN                            R74 0
      895 MOVE                             R75 R47
      896 CALL                             R71 4 1
      897 SETTABLEKS                       R71 R70 K58 ["Size"]
      899 GETIMPORT                        R71 K55 [UDim.new]
      901 LOADN                            R72 0
      902 GETTABLEKS                       R75 R6 K41 ["innerContainer"]
      904 GETTABLEKS                       R74 R75 K42 ["radius"]
      906 DIVK                             R75 R25 K20 [2]
      907 SUB                              R73 R74 R75
      908 CALL                             R71 2 1
      909 SETTABLEKS                       R71 R70 K109 ["cornerRadius"]
      911 GETTABLEKS                       R72 R2 K34 ["isDisabled"]
      913 JUMPIF                           R72 ; [+42]
      914 JUMPIF                           R14 ; [+1]
      915 JUMPIFNOT                        R16 ; [+40]
      916 DUPTABLE                         R71 K75 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      917 GETTABLEKS                       R75 R3 K24 ["Color"]
      919 GETTABLEKS                       R74 R75 K18 ["Stroke"]
      921 GETTABLEKS                       R73 R74 K26 ["Emphasis"]
      923 GETTABLEKS                       R72 R73 K79 ["Color3"]
      925 SETTABLEKS                       R72 R71 K24 ["Color"]
      927 GETUPVAL                         R74 4
      928 GETTABLEKS                       R73 R74 K45 ["FoundationUIStrokeInner"]
      930 JUMPIFNOT                        R73 ; [+9]
      931 GETTABLEKS                       R75 R3 K24 ["Color"]
      933 GETTABLEKS                       R74 R75 K18 ["Stroke"]
      935 GETTABLEKS                       R73 R74 K26 ["Emphasis"]
      937 GETTABLEKS                       R72 R73 K72 ["Transparency"]
      939 JUMP                             ; [+1]
      940 LOADK                            R72 K111 [0.88]
      941 SETTABLEKS                       R72 R71 K72 ["Transparency"]
      943 SETTABLEKS                       R24 R71 K73 ["Thickness"]
      945 GETUPVAL                         R74 4
      946 GETTABLEKS                       R73 R74 K45 ["FoundationUIStrokeInner"]
      948 JUMPIFNOT                        R73 ; [+3]
      949 GETIMPORT                        R72 K81 [Enum.BorderStrokePosition.Inner]
      951 JUMP                             ; [+1]
      952 LOADNIL                          R72
      953 SETTABLEKS                       R72 R71 K74 ["BorderStrokePosition"]
      955 JUMP                             ; [+1]
      956 LOADNIL                          R71
      957 SETTABLEKS                       R71 R70 K61 ["stroke"]
      959 GETTABLEKS                       R72 R2 K52 ["horizontalPadding"]
      961 JUMPIFNOT                        R72 ; [+14]
      962 DUPTABLE                         R71 K112 [{"left", "right"}]
      963 GETTABLEKS                       R73 R2 K52 ["horizontalPadding"]
      965 GETTABLEKS                       R72 R73 K53 ["left"]
      967 SETTABLEKS                       R72 R71 K53 ["left"]
      969 GETTABLEKS                       R73 R2 K52 ["horizontalPadding"]
      971 GETTABLEKS                       R72 R73 K56 ["right"]
      973 SETTABLEKS                       R72 R71 K56 ["right"]
      975 JUMP                             ; [+1]
      976 LOADNIL                          R71
      977 SETTABLEKS                       R71 R70 K62 ["padding"]
      979 GETTABLEKS                       R72 R6 K41 ["innerContainer"]
      981 GETTABLEKS                       R71 R72 K7 ["tag"]
      983 SETTABLEKS                       R71 R70 K7 ["tag"]
      985 DUPTABLE                         R71 K116 [{"Leading", "TextBoxWrapper", "Trailing"}]
      986 GETTABLEKS                       R73 R2 K117 ["leadingElement"]
      988 JUMPIFNOT                        R73 ; [+24]
      989 GETUPVAL                         R73 6
      990 GETTABLEKS                       R72 R73 K94 ["createElement"]
      992 GETUPVAL                         R73 14
      993 DUPTABLE                         R74 K119 [{"LayoutOrder", "tag", "testId"}]
      994 LOADN                            R75 1
      995 SETTABLEKS                       R75 R74 K118 ["LayoutOrder"]
      997 LOADK                            R75 K120 ["size-0-full auto-x"]
      998 SETTABLEKS                       R75 R74 K7 ["tag"]
     1000 LOADK                            R76 K121 ["%*--leading"]
     1001 GETTABLEKS                       R78 R2 K67 ["testId"]
     1003 NAMECALL                         R76 R76 K93 ["format"]
     1005 CALL                             R76 2 1
     1006 MOVE                             R75 R76
     1007 SETTABLEKS                       R75 R74 K67 ["testId"]
     1009 GETTABLEKS                       R75 R2 K117 ["leadingElement"]
     1011 CALL                             R72 3 1
     1012 JUMP                             ; [+1]
     1013 LOADNIL                          R72
     1014 SETTABLEKS                       R72 R71 K113 ["Leading"]
     1016 GETUPVAL                         R73 6
     1017 GETTABLEKS                       R72 R73 K94 ["createElement"]
     1019 JUMPIFNOT                        R5 ; [+2]
     1020 GETUPVAL                         R73 16
     1021 JUMP                             ; [+1]
     1022 GETUPVAL                         R73 14
     1023 DUPTABLE                         R74 K126 [{"LayoutOrder", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
     1024 LOADN                            R75 2
     1025 SETTABLEKS                       R75 R74 K118 ["LayoutOrder"]
     1027 SETTABLEKS                       R51 R74 K122 ["scroll"]
     1029 SETTABLEKS                       R50 R74 K123 ["layout"]
     1031 JUMPIFNOT                        R5 ; [+2]
     1032 MOVE                             R75 R55
     1033 JUMP                             ; [+1]
     1034 LOADNIL                          R75
     1035 SETTABLEKS                       R75 R74 K124 ["onCanvasPositionChanged"]
     1037 JUMPIFNOT                        R5 ; [+2]
     1038 MOVE                             R75 R53
     1039 JUMP                             ; [+1]
     1040 LOADNIL                          R75
     1041 SETTABLEKS                       R75 R74 K125 ["scrollingFrameRef"]
     1043 LOADK                            R75 K127 ["size-full fill clip"]
     1044 SETTABLEKS                       R75 R74 K7 ["tag"]
     1046 DUPTABLE                         R75 K130 [{"TextBox", "MobileTextBox"}]
     1047 JUMPIF                           R19 ; [+110]
     1048 GETUPVAL                         R77 6
     1049 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1051 GETUPVAL                         R77 17
     1052 DUPTABLE                         R78 K141 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1053 GETTABLEKS                       R79 R2 K131 ["text"]
     1055 SETTABLEKS                       R79 R78 K131 ["text"]
     1057 GETTABLEKS                       R79 R2 K132 ["placeholder"]
     1059 SETTABLEKS                       R79 R78 K132 ["placeholder"]
     1061 GETTABLEKS                       R79 R2 K133 ["textInputType"]
     1063 SETTABLEKS                       R79 R78 K133 ["textInputType"]
     1065 SETTABLEKS                       R27 R78 K27 ["fontStyle"]
     1067 SETTABLEKS                       R26 R78 K134 ["textStyle"]
     1069 SETTABLEKS                       R5 R78 K135 ["isMultiLine"]
     1071 GETTABLEKS                       R79 R2 K34 ["isDisabled"]
     1073 SETTABLEKS                       R79 R78 K34 ["isDisabled"]
     1075 SETTABLEKS                       R8 R78 K136 ["ref"]
     1077 LOADK                            R80 K142 ["%* data-testid=%*--textbox"]
     1078 ORK                              R82 R7 K9 [""]
     1079 GETTABLEKS                       R83 R2 K67 ["testId"]
     1081 NAMECALL                         R80 R80 K93 ["format"]
     1083 CALL                             R80 3 1
     1084 MOVE                             R79 R80
     1085 SETTABLEKS                       R79 R78 K7 ["tag"]
     1087 JUMPIFNOT                        R5 ; [+2]
     1088 MOVE                             R79 R49
     1089 JUMP                             ; [+1]
     1090 LOADNIL                          R79
     1091 SETTABLEKS                       R79 R78 K58 ["Size"]
     1093 JUMPIFNOT                        R5 ; [+8]
     1094 JUMPIF                           R19 ; [+7]
     1095 GETTABLEKS                       R80 R2 K131 ["text"]
     1097 JUMPIFEQKS                       R80 K9 [""] ; [+4]
     1099 GETIMPORT                        R79 K145 [Enum.AutomaticSize.Y]
     1101 JUMP                             ; [+1]
     1102 LOADNIL                          R79
     1103 SETTABLEKS                       R79 R78 K137 ["automaticSize"]
     1105 SETTABLEKS                       R46 R78 K62 ["padding"]
     1107 SETTABLEKS                       R38 R78 K138 ["onFocusGained"]
     1109 JUMPIFNOT                        R5 ; [+3]
     1110 JUMPIFNOT                        R21 ; [+2]
     1111 LOADNIL                          R79
     1112 JUMP                             ; [+1]
     1113 MOVE                             R79 R39
     1114 SETTABLEKS                       R79 R78 K36 ["onFocusLost"]
     1116 SETTABLEKS                       R37 R78 K139 ["onTextChanged"]
     1118 JUMPIFNOT                        R5 ; [+2]
     1119 MOVE                             R79 R52
     1120 JUMP                             ; [+1]
     1121 LOADNIL                          R79
     1122 SETTABLEKS                       R79 R78 K140 ["onCursorPositionChanged"]
     1124 DUPTABLE                         R79 K147 [{"DragDetector", "BoundsChecker"}]
     1125 SETTABLEKS                       R56 R79 K100 ["DragDetector"]
     1127 JUMPIFNOT                        R5 ; [+25]
     1128 GETUPVAL                         R81 6
     1129 GETTABLEKS                       R80 R81 K94 ["createElement"]
     1131 GETUPVAL                         R81 17
     1132 DUPTABLE                         R82 K149 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
     1133 LOADB                            R83 1
     1134 SETTABLEKS                       R83 R82 K148 ["isBoundsChecker"]
     1136 SETTABLEKS                       R27 R82 K27 ["fontStyle"]
     1138 SETTABLEKS                       R26 R82 K134 ["textStyle"]
     1140 GETIMPORT                        R83 K51 [UDim2.new]
     1142 LOADN                            R84 1
     1143 LOADN                            R85 0
     1144 LOADN                            R86 1
     1145 MOVE                             R87 R48
     1146 CALL                             R83 4 1
     1147 SETTABLEKS                       R83 R82 K58 ["Size"]
     1149 SETTABLEKS                       R9 R82 K136 ["ref"]
     1151 CALL                             R80 2 1
     1152 JUMP                             ; [+1]
     1153 LOADNIL                          R80
     1154 SETTABLEKS                       R80 R79 K146 ["BoundsChecker"]
     1156 CALL                             R76 3 1
     1157 JUMP                             ; [+1]
     1158 LOADNIL                          R76
     1159 SETTABLEKS                       R76 R75 K128 ["TextBox"]
     1161 JUMPIFNOT                        R5 ; [+61]
     1162 JUMPIFNOT                        R19 ; [+60]
     1163 GETUPVAL                         R77 6
     1164 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1166 GETUPVAL                         R77 17
     1167 DUPTABLE                         R78 K150 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1168 GETTABLEKS                       R79 R2 K131 ["text"]
     1170 SETTABLEKS                       R79 R78 K131 ["text"]
     1172 GETTABLEKS                       R79 R2 K132 ["placeholder"]
     1174 SETTABLEKS                       R79 R78 K132 ["placeholder"]
     1176 GETTABLEKS                       R79 R2 K133 ["textInputType"]
     1178 SETTABLEKS                       R79 R78 K133 ["textInputType"]
     1180 SETTABLEKS                       R27 R78 K27 ["fontStyle"]
     1182 SETTABLEKS                       R26 R78 K134 ["textStyle"]
     1184 SETTABLEKS                       R5 R78 K135 ["isMultiLine"]
     1186 GETTABLEKS                       R79 R2 K34 ["isDisabled"]
     1188 SETTABLEKS                       R79 R78 K34 ["isDisabled"]
     1190 SETTABLEKS                       R46 R78 K62 ["padding"]
     1192 SETTABLEKS                       R54 R78 K136 ["ref"]
     1194 LOADK                            R80 K151 ["%* data-testid=%*--mobile-textbox"]
     1195 ORK                              R82 R7 K9 [""]
     1196 GETTABLEKS                       R83 R2 K67 ["testId"]
     1198 NAMECALL                         R80 R80 K93 ["format"]
     1200 CALL                             R80 3 1
     1201 MOVE                             R79 R80
     1202 SETTABLEKS                       R79 R78 K7 ["tag"]
     1204 SETTABLEKS                       R49 R78 K58 ["Size"]
     1206 JUMPIFNOT                        R5 ; [+3]
     1207 JUMPIFNOT                        R21 ; [+2]
     1208 MOVE                             R79 R39
     1209 JUMP                             ; [+1]
     1210 LOADNIL                          R79
     1211 SETTABLEKS                       R79 R78 K36 ["onFocusLost"]
     1213 SETTABLEKS                       R37 R78 K139 ["onTextChanged"]
     1215 JUMPIFNOT                        R5 ; [+2]
     1216 MOVE                             R79 R52
     1217 JUMP                             ; [+1]
     1218 LOADNIL                          R79
     1219 SETTABLEKS                       R79 R78 K140 ["onCursorPositionChanged"]
     1221 CALL                             R76 2 1
     1222 JUMP                             ; [+1]
     1223 LOADNIL                          R76
     1224 SETTABLEKS                       R76 R75 K129 ["MobileTextBox"]
     1226 CALL                             R72 3 1
     1227 SETTABLEKS                       R72 R71 K114 ["TextBoxWrapper"]
     1229 GETTABLEKS                       R73 R2 K152 ["trailingElement"]
     1231 JUMPIFNOT                        R73 ; [+24]
     1232 GETUPVAL                         R73 6
     1233 GETTABLEKS                       R72 R73 K94 ["createElement"]
     1235 GETUPVAL                         R73 14
     1236 DUPTABLE                         R74 K119 [{"LayoutOrder", "tag", "testId"}]
     1237 LOADN                            R75 3
     1238 SETTABLEKS                       R75 R74 K118 ["LayoutOrder"]
     1240 LOADK                            R75 K120 ["size-0-full auto-x"]
     1241 SETTABLEKS                       R75 R74 K7 ["tag"]
     1243 LOADK                            R76 K153 ["%*--trailing"]
     1244 GETTABLEKS                       R78 R2 K67 ["testId"]
     1246 NAMECALL                         R76 R76 K93 ["format"]
     1248 CALL                             R76 2 1
     1249 MOVE                             R75 R76
     1250 SETTABLEKS                       R75 R74 K67 ["testId"]
     1252 GETTABLEKS                       R75 R2 K152 ["trailingElement"]
     1254 CALL                             R72 3 1
     1255 JUMP                             ; [+1]
     1256 LOADNIL                          R72
     1257 SETTABLEKS                       R72 R71 K115 ["Trailing"]
     1259 CALL                             R68 3 1
     1260 SETTABLEKS                       R68 R67 K103 ["BorderFrame"]
     1262 CALL                             R64 3 1
     1263 SETTABLEKS                       R64 R63 K98 ["Input"]
     1265 CALL                             R60 3 -1
     1266 RETURN                           R60 -1

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
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R5
      164 CALL                             R25 1 -1
      165 CALL                             R24 -1 1
      166 DUPCLOSURE                       R25 K42 [PROTO_28]
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R24
      185 GETTABLEKS                       R26 R3 K39 ["memo"]
      187 GETTABLEKS                       R27 R3 K40 ["forwardRef"]
      189 MOVE                             R28 R25
      190 CALL                             R27 1 -1
      191 CALL                             R26 -1 -1
      192 RETURN                           R26 -1
