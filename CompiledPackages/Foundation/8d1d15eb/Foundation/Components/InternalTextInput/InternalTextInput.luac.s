PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["isBoundsChecker"]
        2 GETTABLEKS                       R4 R0 K1 ["isMultiLine"]
        4 OR                               R3 R4 R2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["createElement"]
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
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K8 ["FoundationCleanupTextInputPolyfill"]
       32 JUMPIFNOT                        R8 ; [+2]
       33 LOADNIL                          R7
       34 JUMP                             ; [+1]
       35 LOADN                            R7 1
       36 SETTABLEKS                       R7 R6 K9 ["BackgroundTransparency"]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K8 ["FoundationCleanupTextInputPolyfill"]
       41 JUMPIFNOT                        R8 ; [+2]
       42 LOADNIL                          R7
       43 JUMP                             ; [+1]
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R6 K10 ["ClipsDescendants"]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K8 ["FoundationCleanupTextInputPolyfill"]
       50 JUMPIFNOT                        R8 ; [+2]
       51 LOADNIL                          R7
       52 JUMP                             ; [+2]
       53 GETIMPORT                        R7 K14 [Enum.TextXAlignment.Left]
       55 SETTABLEKS                       R7 R6 K12 ["TextXAlignment"]
       57 GETTABLEKS                       R7 R0 K15 ["fontStyle"]
       59 GETTABLEKS                       R7 R7 K16 ["Font"]
       61 SETTABLEKS                       R7 R6 K16 ["Font"]
       63 GETTABLEKS                       R7 R0 K15 ["fontStyle"]
       65 GETTABLEKS                       R7 R7 K17 ["FontSize"]
       67 SETTABLEKS                       R7 R6 K18 ["TextSize"]
       69 GETTABLEKS                       R7 R0 K15 ["fontStyle"]
       71 GETTABLEKS                       R7 R7 K19 ["LineHeight"]
       73 SETTABLEKS                       R7 R6 K19 ["LineHeight"]
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K8 ["FoundationCleanupTextInputPolyfill"]
       78 JUMPIF                           R8 ; [+8]
       79 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       81 JUMPIFNOT                        R8 ; [+5]
       82 GETTABLEKS                       R7 R0 K20 ["textStyle"]
       84 GETTABLEKS                       R7 R7 K21 ["Color3"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R7
       88 SETTABLEKS                       R7 R6 K22 ["TextColor3"]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K8 ["FoundationCleanupTextInputPolyfill"]
       93 JUMPIF                           R8 ; [+8]
       94 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       96 JUMPIFNOT                        R8 ; [+5]
       97 GETTABLEKS                       R7 R0 K20 ["textStyle"]
       99 GETTABLEKS                       R7 R7 K23 ["Transparency"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R7
      103 SETTABLEKS                       R7 R6 K24 ["TextTransparency"]
      105 SETTABLEKS                       R3 R6 K25 ["MultiLine"]
      107 SETTABLEKS                       R3 R6 K26 ["TextWrapped"]
      109 JUMPIFNOT                        R3 ; [+3]
      110 GETIMPORT                        R7 K29 [Enum.TextYAlignment.Top]
      112 JUMP                             ; [+2]
      113 GETIMPORT                        R7 K31 [Enum.TextYAlignment.Center]
      115 SETTABLEKS                       R7 R6 K27 ["TextYAlignment"]
      117 JUMPIFNOT                        R2 ; [+2]
      118 LOADB                            R7 0
      119 JUMP                             ; [+3]
      120 GETTABLEKS                       R8 R0 K32 ["isDisabled"]
      122 NOT                              R7 R8
      123 SETTABLEKS                       R7 R6 K33 ["TextEditable"]
      125 GETTABLEKS                       R7 R0 K34 ["placeholder"]
      127 SETTABLEKS                       R7 R6 K35 ["PlaceholderText"]
      129 GETUPVAL                         R8 2
      130 CALL                             R8 0 1
      131 JUMPIFNOT                        R8 ; [+3]
      132 GETTABLEKS                       R7 R0 K36 ["textInputType"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R7
      136 SETTABLEKS                       R7 R6 K37 ["TextInputType"]
      138 GETTABLEKS                       R8 R0 K38 ["Size"]
      140 JUMPIFEQKNIL                     R8 ; [+4]
      142 GETTABLEKS                       R7 R0 K38 ["Size"]
      144 JUMP                             ; [+5]
      145 GETIMPORT                        R7 K41 [UDim2.fromScale]
      147 LOADN                            R8 1
      148 LOADN                            R9 1
      149 CALL                             R7 2 1
      150 SETTABLEKS                       R7 R6 K38 ["Size"]
      152 GETTABLEKS                       R7 R0 K42 ["automaticSize"]
      154 SETTABLEKS                       R7 R6 K43 ["AutomaticSize"]
      156 JUMPIFNOT                        R2 ; [+2]
      157 LOADNIL                          R7
      158 JUMP                             ; [+2]
      159 GETTABLEKS                       R7 R0 K44 ["text"]
      161 SETTABLEKS                       R7 R6 K45 ["Text"]
      163 SETTABLEKS                       R1 R6 K46 ["ref"]
      165 GETUPVAL                         R7 0
      166 GETTABLEKS                       R7 R7 K47 ["Tag"]
      168 GETTABLEKS                       R8 R0 K48 ["tag"]
      170 SETTABLE                         R8 R6 R7
      171 GETUPVAL                         R7 0
      172 GETTABLEKS                       R7 R7 K49 ["Change"]
      174 GETTABLEKS                       R7 R7 K45 ["Text"]
      176 GETTABLEKS                       R8 R0 K50 ["onTextChanged"]
      178 SETTABLE                         R8 R6 R7
      179 GETUPVAL                         R7 0
      180 GETTABLEKS                       R7 R7 K49 ["Change"]
      182 GETTABLEKS                       R7 R7 K51 ["CursorPosition"]
      184 GETTABLEKS                       R8 R0 K52 ["onCursorPositionChanged"]
      186 SETTABLE                         R8 R6 R7
      187 GETUPVAL                         R7 0
      188 GETTABLEKS                       R7 R7 K53 ["Event"]
      190 GETTABLEKS                       R7 R7 K54 ["Focused"]
      192 GETTABLEKS                       R8 R0 K55 ["onFocusGained"]
      194 SETTABLE                         R8 R6 R7
      195 GETUPVAL                         R7 0
      196 GETTABLEKS                       R7 R7 K53 ["Event"]
      198 GETTABLEKS                       R7 R7 K56 ["FocusLost"]
      200 GETTABLEKS                       R8 R0 K57 ["onFocusLost"]
      202 SETTABLE                         R8 R6 R7
      203 GETTABLEKS                       R8 R0 K58 ["padding"]
      205 JUMPIFNOT                        R8 ; [+14]
      206 DUPTABLE                         R7 K60 [{"Padding"}]
      207 GETUPVAL                         R8 0
      208 GETTABLEKS                       R8 R8 K2 ["createElement"]
      210 GETUPVAL                         R9 3
      211 DUPTABLE                         R10 K62 [{"value"}]
      212 GETTABLEKS                       R11 R0 K58 ["padding"]
      214 SETTABLEKS                       R11 R10 K61 ["value"]
      216 CALL                             R8 2 1
      217 SETTABLEKS                       R8 R7 K59 ["Padding"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R7
      221 GETTABLEKS                       R8 R0 K63 ["children"]
      223 CALL                             R4 4 -1
      224 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["ReleaseFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["IsFocused"]
        9 CALL                             R0 1 1
       10 RETURN                           R0 1
       11 LOADNIL                          R0
       12 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["SelectionStart"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["CursorPosition"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["SelectionStart"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
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
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 JUMPIFEQKS                       R1 K2 [""] ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K3 ["Text"]
       14 GETUPVAL                         R2 1
       15 JUMPIFNOT                        R2 ; [+9]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K1 ["current"]
       19 JUMPIFNOT                        R2 ; [+5]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K1 ["current"]
       23 SETTABLEKS                       R1 R2 K3 ["Text"]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K4 ["onChanged"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+23]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+21]
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 JUMPIFNOT                        R0 ; [+14]
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K1 ["current"]
       16 GETTABLEKS                       R0 R0 K2 ["Parent"]
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETUPVAL                         R0 4
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K1 ["current"]
       23 GETTABLEKS                       R1 R1 K3 ["Text"]
       25 SETTABLEKS                       R1 R0 K1 ["current"]
       27 GETUPVAL                         R0 5
       28 LOADB                            R1 1
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 6
       31 LOADB                            R1 1
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K4 ["onFocus"]
       36 JUMPIFNOT                        R0 ; [+4]
       37 GETUPVAL                         R0 0
       38 GETTABLEKS                       R0 R0 K4 ["onFocus"]
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
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K0 ["onFocusLost"]
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K0 ["onFocusLost"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K1 ["onReturnPressed"]
       21 JUMPIFNOT                        R3 ; [+4]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K1 ["onReturnPressed"]
       25 CALL                             R3 0 0
       26 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["onDragStarted"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["onDragStarted"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onDrag"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["onDrag"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
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
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K1 ["onDragEnded"]
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K1 ["onDragEnded"]
       24 MOVE                             R3 R0
       25 MOVE                             R4 R1
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["innerContainer"]
        7 GETTABLEKS                       R3 R3 K0 ["radius"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K8 ["Stroke"]
       15 GETTABLEKS                       R1 R1 K9 ["Thick"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K8 ["Stroke"]
       22 GETTABLEKS                       R1 R1 K9 ["Thick"]
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
        1 GETTABLEKS                       R5 R5 K1 ["outerContainer"]
        3 GETTABLEKS                       R5 R5 K2 ["minHeight"]
        5 GETUPVAL                         R6 1
        6 SUB                              R4 R5 R6
        7 GETUPVAL                         R5 2
        8 GETUPVAL                         R6 3
        9 LOADN                            R7 1
       10 GETUPVAL                         R8 4
       11 CALL                             R5 3 1
       12 SUB                              R3 R4 R5
       13 MULK                             R2 R3 K0 [2]
       14 FASTCALL1                        MATH_ROUND R2 ; [+2]
       15 GETIMPORT                        R1 K5 [math.round]
       17 CALL                             R1 1 1
       18 DIVK                             R0 R1 K0 [2]
       19 GETIMPORT                        R1 K8 [UDim.new]
       21 LOADN                            R2 0
       22 DIVK                             R4 R0 K0 [2]
       23 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       24 GETIMPORT                        R3 K10 [math.floor]
       26 CALL                             R3 1 1
       27 CALL                             R1 2 1
       28 GETIMPORT                        R2 K8 [UDim.new]
       30 LOADN                            R3 0
       31 DIVK                             R5 R0 K0 [2]
       32 FASTCALL1                        MATH_CEIL R5 ; [+2]
       33 GETIMPORT                        R4 K12 [math.ceil]
       35 CALL                             R4 1 1
       36 CALL                             R2 2 1
       37 GETUPVAL                         R5 5
       38 FASTCALL1                        MATH_ROUND R0 ; [+3]
       39 MOVE                             R7 R0
       40 GETIMPORT                        R6 K5 [math.round]
       42 CALL                             R6 1 1
       43 ADD                              R4 R5 R6
       44 GETUPVAL                         R5 1
       45 ADD                              R3 R4 R5
       46 DUPTABLE                         R4 K17 [{"top", "bottom", "left", "right"}]
       47 SETTABLEKS                       R1 R4 K13 ["top"]
       49 SETTABLEKS                       R2 R4 K14 ["bottom"]
       51 GETIMPORT                        R5 K8 [UDim.new]
       53 LOADN                            R6 0
       54 LOADN                            R7 0
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K15 ["left"]
       58 GETIMPORT                        R5 K8 [UDim.new]
       60 LOADN                            R6 0
       61 LOADN                            R7 0
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K16 ["right"]
       65 MOVE                             R5 R3
       66 RETURN                           R4 2

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 JUMPIFEQKNIL                     R1 ; [+3]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R0 K1 ["TextSize"]
       13 GETTABLEKS                       R5 R0 K2 ["LineHeight"]
       15 MUL                              R3 R4 R5
       16 GETTABLEKS                       R4 R1 K3 ["CanvasPosition"]
       18 GETTABLEKS                       R4 R4 K4 ["Y"]
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R0
       22 CALL                             R5 1 1
       23 SETTABLEKS                       R5 R2 K5 ["Text"]
       25 GETTABLEKS                       R5 R2 K6 ["TextBounds"]
       27 GETTABLEKS                       R5 R5 K4 ["Y"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K7 ["top"]
       32 GETTABLEKS                       R8 R8 K8 ["Offset"]
       34 SUB                              R7 R4 R8
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R8 R8 K9 ["bottom"]
       38 GETTABLEKS                       R8 R8 K8 ["Offset"]
       40 ADD                              R6 R7 R8
       41 GETTABLEKS                       R10 R1 K10 ["AbsoluteSize"]
       43 GETTABLEKS                       R10 R10 K4 ["Y"]
       45 ADD                              R9 R4 R10
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K7 ["top"]
       49 GETTABLEKS                       R10 R10 K8 ["Offset"]
       51 SUB                              R8 R9 R10
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K9 ["bottom"]
       55 GETTABLEKS                       R9 R9 K8 ["Offset"]
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
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 SETTABLEKS                       R1 R0 K2 ["CanvasPosition"]
       14 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDragStarted"]
        3 JUMPIF                           R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onDrag"]
        7 JUMPIF                           R0 ; [+6]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["onDragEnded"]
       11 JUMPIF                           R0 ; [+2]
       12 LOADNIL                          R0
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K3 ["createElement"]
       17 LOADK                            R1 K4 ["UIDragDetector"]
       18 NEWTABLE                         R2 8 0
       20 GETIMPORT                        R3 K8 [Enum.UIDragDetectorDragStyle.Scriptable]
       22 SETTABLEKS                       R3 R2 K9 ["DragStyle"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K10 ["Event"]
       27 GETTABLEKS                       R3 R3 K11 ["DragStart"]
       29 GETUPVAL                         R4 2
       30 SETTABLE                         R4 R2 R3
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K10 ["Event"]
       34 GETTABLEKS                       R3 R3 K12 ["DragContinue"]
       36 GETUPVAL                         R4 3
       37 SETTABLE                         R4 R2 R3
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K10 ["Event"]
       41 GETTABLEKS                       R3 R3 K13 ["DragEnd"]
       43 GETUPVAL                         R4 4
       44 SETTABLE                         R4 R2 R3
       45 GETUPVAL                         R4 5
       46 NOT                              R3 R4
       47 JUMPIFNOT                        R3 ; [+4]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K14 ["isDisabled"]
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
       20 GETTABLEKS                       R6 R6 K4 ["useRef"]
       22 LOADNIL                          R7
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K4 ["useRef"]
       27 LOADNIL                          R8
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K4 ["useRef"]
       32 LOADNIL                          R9
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 3
       35 GETTABLEKS                       R9 R9 K4 ["useRef"]
       37 LOADK                            R10 K5 [""]
       38 CALL                             R9 1 1
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R10 R10 K4 ["useRef"]
       42 LOADNIL                          R11
       43 CALL                             R10 1 1
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R11 R11 K4 ["useRef"]
       47 GETIMPORT                        R12 K8 [Vector2.zero]
       49 CALL                             R11 1 1
       50 GETUPVAL                         R12 3
       51 GETTABLEKS                       R12 R12 K9 ["useState"]
       53 LOADB                            R13 0
       54 CALL                             R12 1 2
       55 GETUPVAL                         R14 3
       56 GETTABLEKS                       R14 R14 K9 ["useState"]
       58 LOADB                            R15 0
       59 CALL                             R14 1 2
       60 GETUPVAL                         R16 4
       61 GETTABLEKS                       R16 R16 K10 ["FoundationInternalTextInputVariants"]
       63 JUMPIFNOT                        R16 ; [+11]
       64 GETTABLEKS                       R17 R2 K11 ["variant"]
       66 JUMPIFNOT                        R17 ; [+3]
       67 GETTABLEKS                       R16 R2 K11 ["variant"]
       69 JUMP                             ; [+3]
       70 GETUPVAL                         R16 5
       71 GETTABLEKS                       R16 R16 K12 ["Standard"]
       73 SETTABLEKS                       R16 R2 K11 ["variant"]
       75 GETUPVAL                         R16 6
       76 MOVE                             R17 R3
       77 GETTABLEKS                       R18 R2 K13 ["size"]
       79 GETUPVAL                         R20 4
       80 GETTABLEKS                       R20 R20 K10 ["FoundationInternalTextInputVariants"]
       82 JUMPIFNOT                        R20 ; [+3]
       83 GETTABLEKS                       R19 R2 K11 ["variant"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R19
       87 GETUPVAL                         R21 4
       88 GETTABLEKS                       R21 R21 K14 ["FoundationInternalTextInputCornerRadius"]
       90 JUMPIFNOT                        R21 ; [+3]
       91 GETTABLEKS                       R20 R2 K15 ["radius"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R20
       95 GETUPVAL                         R22 4
       96 GETTABLEKS                       R22 R22 K16 ["FoundationTextInputAlignStrokeBehavior"]
       98 JUMPIFNOT                        R22 ; [+2]
       99 MOVE                             R21 R14
      100 JUMP                             ; [+1]
      101 LOADNIL                          R21
      102 GETUPVAL                         R23 4
      103 GETTABLEKS                       R23 R23 K16 ["FoundationTextInputAlignStrokeBehavior"]
      105 JUMPIFNOT                        R23 ; [+2]
      106 MOVE                             R22 R12
      107 JUMP                             ; [+1]
      108 LOADNIL                          R22
      109 GETUPVAL                         R24 4
      110 GETTABLEKS                       R24 R24 K16 ["FoundationTextInputAlignStrokeBehavior"]
      112 JUMPIFNOT                        R24 ; [+3]
      113 GETTABLEKS                       R23 R2 K17 ["hasError"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R23
      117 CALL                             R16 7 1
      118 GETUPVAL                         R17 7
      119 GETTABLEKS                       R18 R16 K18 ["textBox"]
      121 GETTABLEKS                       R18 R18 K19 ["tag"]
      123 CALL                             R17 1 1
      124 GETUPVAL                         R18 8
      125 CALL                             R18 0 1
      126 GETUPVAL                         R19 3
      127 GETTABLEKS                       R19 R19 K9 ["useState"]
      129 LOADB                            R20 0
      130 CALL                             R19 1 2
      131 GETIMPORT                        R22 K23 [Enum.PreferredInput.Touch]
      133 JUMPIFEQ                         R18 R22 ; [+2]
      135 LOADB                            R21 0 +1
      136 LOADB                            R21 1
      137 GETTABLEKS                       R22 R3 K24 ["Stroke"]
      139 GETTABLEKS                       R22 R22 K12 ["Standard"]
      141 FASTCALL1                        MATH_CEIL R22 ; [+3]
      142 MOVE                             R25 R22
      143 GETIMPORT                        R24 K27 [math.ceil]
      145 CALL                             R24 1 1
      146 MULK                             R23 R24 K25 [2]
      147 GETTABLEKS                       R24 R3 K24 ["Stroke"]
      149 GETTABLEKS                       R24 R24 K28 ["Thick"]
      151 FASTCALL1                        MATH_CEIL R24 ; [+3]
      152 MOVE                             R27 R24
      153 GETIMPORT                        R26 K27 [math.ceil]
      155 CALL                             R26 1 1
      156 MULK                             R25 R26 K25 [2]
      157 GETUPVAL                         R27 4
      158 GETTABLEKS                       R27 R27 K29 ["FoundationCleanupTextInputPolyfill"]
      160 JUMPIFNOT                        R27 ; [+2]
      161 LOADNIL                          R26
      162 JUMP                             ; [+6]
      163 GETTABLEKS                       R26 R3 K30 ["Color"]
      165 GETTABLEKS                       R26 R26 K31 ["Content"]
      167 GETTABLEKS                       R26 R26 K32 ["Emphasis"]
      169 GETTABLEKS                       R27 R16 K18 ["textBox"]
      171 GETTABLEKS                       R27 R27 K33 ["fontStyle"]
      173 GETTABLEKS                       R28 R27 K34 ["FontSize"]
      175 GETTABLEKS                       R29 R27 K35 ["LineHeight"]
      177 GETUPVAL                         R30 3
      178 GETTABLEKS                       R30 R30 K36 ["useCallback"]
      180 NEWCLOSURE                       R31 P0
      181 CAPTURE                          VAL R6
      182 NEWTABLE                         R32 0 0
      184 CALL                             R30 2 1
      185 GETUPVAL                         R31 3
      186 GETTABLEKS                       R31 R31 K36 ["useCallback"]
      188 NEWCLOSURE                       R32 P1
      189 CAPTURE                          VAL R6
      190 NEWTABLE                         R33 0 0
      192 CALL                             R31 2 1
      193 GETUPVAL                         R32 3
      194 GETTABLEKS                       R32 R32 K36 ["useCallback"]
      196 NEWCLOSURE                       R33 P2
      197 CAPTURE                          VAL R6
      198 NEWTABLE                         R34 0 0
      200 CALL                             R32 2 1
      201 GETUPVAL                         R33 3
      202 GETTABLEKS                       R33 R33 K36 ["useCallback"]
      204 NEWCLOSURE                       R34 P3
      205 CAPTURE                          VAL R6
      206 NEWTABLE                         R35 0 0
      208 CALL                             R33 2 1
      209 GETUPVAL                         R34 3
      210 GETTABLEKS                       R34 R34 K36 ["useCallback"]
      212 NEWCLOSURE                       R35 P4
      213 CAPTURE                          VAL R6
      214 NEWTABLE                         R36 0 0
      216 CALL                             R34 2 1
      217 GETUPVAL                         R35 3
      218 GETTABLEKS                       R35 R35 K36 ["useCallback"]
      220 NEWCLOSURE                       R36 P5
      221 CAPTURE                          VAL R6
      222 NEWTABLE                         R37 0 0
      224 CALL                             R35 2 1
      225 GETUPVAL                         R36 3
      226 GETTABLEKS                       R36 R36 K36 ["useCallback"]
      228 NEWCLOSURE                       R37 P6
      229 CAPTURE                          VAL R6
      230 NEWTABLE                         R38 0 0
      232 CALL                             R36 2 1
      233 GETUPVAL                         R37 3
      234 GETTABLEKS                       R37 R37 K37 ["useImperativeHandle"]
      236 MOVE                             R38 R1
      237 NEWCLOSURE                       R39 P7
      238 CAPTURE                          VAL R32
      239 CAPTURE                          VAL R30
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R13
      242 CAPTURE                          VAL R33
      243 CAPTURE                          VAL R34
      244 CAPTURE                          VAL R36
      245 CAPTURE                          VAL R35
      246 NEWTABLE                         R40 0 7
      248 MOVE                             R41 R34
      249 MOVE                             R42 R32
      250 MOVE                             R43 R33
      251 MOVE                             R44 R30
      252 MOVE                             R45 R31
      253 MOVE                             R46 R36
      254 MOVE                             R47 R35
      255 SETLIST                          R40 R41 7 [1]
      257 CALL                             R37 3 0
      258 GETUPVAL                         R37 3
      259 GETTABLEKS                       R37 R37 K36 ["useCallback"]
      261 NEWCLOSURE                       R38 P8
      262 CAPTURE                          VAL R9
      263 CAPTURE                          VAL R5
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R2
      266 NEWTABLE                         R39 0 3
      268 GETTABLEKS                       R40 R2 K38 ["onChanged"]
      270 MOVE                             R41 R5
      271 MOVE                             R42 R19
      272 SETLIST                          R39 R40 3 [1]
      274 CALL                             R37 2 1
      275 GETUPVAL                         R38 3
      276 GETTABLEKS                       R38 R38 K36 ["useCallback"]
      278 NEWCLOSURE                       R39 P9
      279 CAPTURE                          VAL R2
      280 CAPTURE                          VAL R5
      281 CAPTURE                          VAL R21
      282 CAPTURE                          VAL R6
      283 CAPTURE                          VAL R9
      284 CAPTURE                          VAL R20
      285 CAPTURE                          VAL R15
      286 NEWTABLE                         R40 0 4
      288 GETTABLEKS                       R41 R2 K39 ["onFocus"]
      290 GETTABLEKS                       R42 R2 K40 ["isDisabled"]
      292 MOVE                             R43 R21
      293 MOVE                             R44 R5
      294 SETLIST                          R40 R41 4 [1]
      296 CALL                             R38 2 1
      297 GETUPVAL                         R39 3
      298 GETTABLEKS                       R39 R39 K36 ["useCallback"]
      300 NEWCLOSURE                       R40 P10
      301 CAPTURE                          VAL R15
      302 CAPTURE                          VAL R5
      303 CAPTURE                          VAL R20
      304 CAPTURE                          VAL R2
      305 NEWTABLE                         R41 0 3
      307 GETTABLEKS                       R42 R2 K41 ["onReturnPressed"]
      309 MOVE                             R43 R5
      310 GETTABLEKS                       R44 R2 K42 ["onFocusLost"]
      312 SETLIST                          R41 R42 3 [1]
      314 CALL                             R39 2 1
      315 GETUPVAL                         R40 3
      316 GETTABLEKS                       R40 R40 K36 ["useCallback"]
      318 NEWCLOSURE                       R41 P11
      319 CAPTURE                          VAL R13
      320 CAPTURE                          UPVAL U9
      321 NEWTABLE                         R42 0 0
      323 CALL                             R40 2 1
      324 GETUPVAL                         R41 3
      325 GETTABLEKS                       R41 R41 K36 ["useCallback"]
      327 NEWCLOSURE                       R42 P12
      328 CAPTURE                          VAL R10
      329 CAPTURE                          VAL R2
      330 NEWTABLE                         R43 0 1
      332 GETTABLEKS                       R44 R2 K43 ["onDragStarted"]
      334 SETLIST                          R43 R44 1 [1]
      336 CALL                             R41 2 1
      337 GETUPVAL                         R42 3
      338 GETTABLEKS                       R42 R42 K36 ["useCallback"]
      340 NEWCLOSURE                       R43 P13
      341 CAPTURE                          VAL R2
      342 NEWTABLE                         R44 0 1
      344 GETTABLEKS                       R45 R2 K44 ["onDrag"]
      346 SETLIST                          R44 R45 1 [1]
      348 CALL                             R42 2 1
      349 GETUPVAL                         R43 3
      350 GETTABLEKS                       R43 R43 K36 ["useCallback"]
      352 NEWCLOSURE                       R44 P14
      353 CAPTURE                          VAL R10
      354 CAPTURE                          VAL R30
      355 CAPTURE                          VAL R31
      356 CAPTURE                          VAL R15
      357 CAPTURE                          VAL R2
      358 NEWTABLE                         R45 0 1
      360 GETTABLEKS                       R46 R2 K45 ["onDragEnded"]
      362 SETLIST                          R45 R46 1 [1]
      364 CALL                             R43 2 1
      365 GETUPVAL                         R44 3
      366 GETTABLEKS                       R44 R44 K46 ["useMemo"]
      368 NEWCLOSURE                       R45 P15
      369 CAPTURE                          VAL R16
      370 CAPTURE                          VAL R3
      371 NEWTABLE                         R46 0 2
      373 MOVE                             R47 R3
      374 GETTABLEKS                       R48 R16 K47 ["innerContainer"]
      376 GETTABLEKS                       R48 R48 K15 ["radius"]
      378 SETLIST                          R46 R47 2 [1]
      380 CALL                             R44 2 1
      381 GETUPVAL                         R45 3
      382 GETTABLEKS                       R45 R45 K46 ["useMemo"]
      384 NEWCLOSURE                       R46 P16
      385 CAPTURE                          UPVAL U10
      386 CAPTURE                          VAL R28
      387 CAPTURE                          VAL R4
      388 CAPTURE                          VAL R29
      389 NEWTABLE                         R47 0 3
      391 MOVE                             R48 R28
      392 MOVE                             R49 R4
      393 MOVE                             R50 R29
      394 SETLIST                          R47 R48 3 [1]
      396 CALL                             R45 2 1
      397 GETUPVAL                         R46 3
      398 GETTABLEKS                       R46 R46 K46 ["useMemo"]
      400 NEWCLOSURE                       R47 P17
      401 CAPTURE                          VAL R16
      402 CAPTURE                          VAL R23
      403 CAPTURE                          UPVAL U10
      404 CAPTURE                          VAL R28
      405 CAPTURE                          VAL R29
      406 CAPTURE                          VAL R45
      407 NEWTABLE                         R48 0 6
      409 GETTABLEKS                       R49 R16 K48 ["outerContainer"]
      411 GETTABLEKS                       R49 R49 K49 ["minHeight"]
      413 MOVE                             R50 R23
      414 MOVE                             R51 R25
      415 MOVE                             R52 R28
      416 MOVE                             R53 R45
      417 MOVE                             R54 R29
      418 SETLIST                          R48 R49 6 [1]
      420 CALL                             R46 2 2
      421 GETTABLEKS                       R49 R46 K50 ["bottom"]
      423 GETTABLEKS                       R49 R49 K51 ["Offset"]
      425 GETTABLEKS                       R50 R46 K52 ["top"]
      427 GETTABLEKS                       R50 R50 K51 ["Offset"]
      429 ADD                              R48 R49 R50
      430 GETIMPORT                        R49 K55 [UDim2.new]
      432 LOADN                            R50 1
      433 LOADN                            R51 0
      434 LOADN                            R52 0
      435 ADD                              R53 R45 R48
      436 CALL                             R49 4 1
      437 GETUPVAL                         R50 3
      438 GETTABLEKS                       R50 R50 K46 ["useMemo"]
      440 NEWCLOSURE                       R51 P18
      441 CAPTURE                          VAL R5
      442 NEWTABLE                         R52 0 1
      444 MOVE                             R53 R5
      445 SETLIST                          R52 R53 1 [1]
      447 CALL                             R50 2 1
      448 GETUPVAL                         R51 3
      449 GETTABLEKS                       R51 R51 K46 ["useMemo"]
      451 NEWCLOSURE                       R52 P19
      452 CAPTURE                          VAL R5
      453 NEWTABLE                         R53 0 1
      455 MOVE                             R54 R5
      456 SETLIST                          R53 R54 1 [1]
      458 CALL                             R51 2 1
      459 GETUPVAL                         R52 3
      460 GETTABLEKS                       R52 R52 K36 ["useCallback"]
      462 NEWCLOSURE                       R53 P20
      463 CAPTURE                          VAL R8
      464 CAPTURE                          VAL R7
      465 CAPTURE                          UPVAL U11
      466 CAPTURE                          VAL R46
      467 NEWTABLE                         R54 0 1
      469 MOVE                             R55 R46
      470 SETLIST                          R54 R55 1 [1]
      472 CALL                             R52 2 1
      473 GETUPVAL                         R53 3
      474 GETTABLEKS                       R53 R53 K36 ["useCallback"]
      476 NEWCLOSURE                       R54 P21
      477 CAPTURE                          VAL R8
      478 CAPTURE                          VAL R11
      479 NEWTABLE                         R55 0 0
      481 CALL                             R53 2 1
      482 GETUPVAL                         R54 3
      483 GETTABLEKS                       R54 R54 K36 ["useCallback"]
      485 NEWCLOSURE                       R55 P22
      486 CAPTURE                          VAL R9
      487 NEWTABLE                         R56 0 0
      489 CALL                             R54 2 1
      490 GETUPVAL                         R55 3
      491 GETTABLEKS                       R55 R55 K36 ["useCallback"]
      493 NEWCLOSURE                       R56 P23
      494 CAPTURE                          VAL R11
      495 NEWTABLE                         R57 0 0
      497 CALL                             R55 2 1
      498 GETUPVAL                         R56 3
      499 GETTABLEKS                       R56 R56 K46 ["useMemo"]
      501 NEWCLOSURE                       R57 P24
      502 CAPTURE                          VAL R2
      503 CAPTURE                          UPVAL U3
      504 CAPTURE                          VAL R41
      505 CAPTURE                          VAL R42
      506 CAPTURE                          VAL R43
      507 CAPTURE                          VAL R14
      508 NEWTABLE                         R58 0 5
      510 MOVE                             R59 R41
      511 MOVE                             R60 R42
      512 MOVE                             R61 R43
      513 MOVE                             R62 R14
      514 GETTABLEKS                       R63 R2 K40 ["isDisabled"]
      516 SETLIST                          R58 R59 5 [1]
      518 CALL                             R56 2 1
      519 GETUPVAL                         R57 12
      520 GETTABLEKS                       R59 R2 K56 ["horizontalPadding"]
      522 JUMPIFNOT                        R59 ; [+11]
      523 GETTABLEKS                       R58 R2 K56 ["horizontalPadding"]
      525 GETTABLEKS                       R58 R58 K57 ["left"]
      527 JUMPIF                           R58 ; [+11]
      528 GETIMPORT                        R58 K59 [UDim.new]
      530 LOADN                            R59 0
      531 LOADN                            R60 0
      532 CALL                             R58 2 1
      533 JUMP                             ; [+5]
      534 GETIMPORT                        R58 K59 [UDim.new]
      536 LOADN                            R59 0
      537 LOADN                            R60 0
      538 CALL                             R58 2 1
      539 CALL                             R57 1 1
      540 GETUPVAL                         R58 12
      541 GETTABLEKS                       R60 R2 K56 ["horizontalPadding"]
      543 JUMPIFNOT                        R60 ; [+11]
      544 GETTABLEKS                       R59 R2 K56 ["horizontalPadding"]
      546 GETTABLEKS                       R59 R59 K60 ["right"]
      548 JUMPIF                           R59 ; [+11]
      549 GETIMPORT                        R59 K59 [UDim.new]
      551 LOADN                            R60 0
      552 LOADN                            R61 0
      553 CALL                             R59 2 1
      554 JUMP                             ; [+5]
      555 GETIMPORT                        R59 K59 [UDim.new]
      557 LOADN                            R60 0
      558 LOADN                            R61 0
      559 CALL                             R59 2 1
      560 CALL                             R58 1 1
      561 GETUPVAL                         R59 3
      562 GETTABLEKS                       R59 R59 K61 ["createElement"]
      564 GETUPVAL                         R60 13
      565 GETUPVAL                         R61 14
      566 MOVE                             R62 R2
      567 DUPTABLE                         R63 K73 [{"GroupTransparency", "Size", "selection", "cursor", "stroke", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      568 GETTABLEKS                       R65 R2 K40 ["isDisabled"]
      570 JUMPIFNOT                        R65 ; [+4]
      571 GETUPVAL                         R64 15
      572 GETTABLEKS                       R64 R64 K74 ["DISABLED_TRANSPARENCY"]
      574 JUMP                             ; [+1]
      575 LOADNIL                          R64
      576 SETTABLEKS                       R64 R63 K62 ["GroupTransparency"]
      578 GETIMPORT                        R64 K55 [UDim2.new]
      580 LOADN                            R65 1
      581 LOADN                            R66 0
      582 LOADN                            R67 0
      583 MOVE                             R68 R47
      584 CALL                             R64 4 1
      585 SETTABLEKS                       R64 R63 K63 ["Size"]
      587 DUPTABLE                         R64 K76 [{"Selectable"}]
      588 GETTABLEKS                       R66 R2 K40 ["isDisabled"]
      590 NOT                              R65 R66
      591 SETTABLEKS                       R65 R64 K75 ["Selectable"]
      593 SETTABLEKS                       R64 R63 K64 ["selection"]
      595 SETTABLEKS                       R44 R63 K65 ["cursor"]
      597 GETUPVAL                         R65 4
      598 GETTABLEKS                       R65 R65 K16 ["FoundationTextInputAlignStrokeBehavior"]
      600 JUMPIFNOT                        R65 ; [+10]
      601 GETTABLEKS                       R65 R16 K77 ["outerView"]
      603 GETTABLEKS                       R65 R65 K78 ["strokeStyle"]
      605 JUMPIFNOT                        R65 ; [+116]
      606 GETTABLEKS                       R65 R16 K77 ["outerView"]
      608 GETTABLEKS                       R65 R65 K79 ["strokeThickness"]
      610 JUMPIFNOT                        R65 ; [+111]
      611 DUPTABLE                         R64 K83 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      612 GETUPVAL                         R66 4
      613 GETTABLEKS                       R66 R66 K16 ["FoundationTextInputAlignStrokeBehavior"]
      615 JUMPIFNOT                        R66 ; [+7]
      616 GETTABLEKS                       R65 R16 K77 ["outerView"]
      618 GETTABLEKS                       R65 R65 K78 ["strokeStyle"]
      620 GETTABLEKS                       R65 R65 K84 ["Color3"]
      622 JUMP                             ; [+20]
      623 GETTABLEKS                       R66 R2 K17 ["hasError"]
      625 JUMPIFNOT                        R66 ; [+9]
      626 GETTABLEKS                       R65 R3 K30 ["Color"]
      628 GETTABLEKS                       R65 R65 K85 ["System"]
      630 GETTABLEKS                       R65 R65 K86 ["Alert"]
      632 GETTABLEKS                       R65 R65 K84 ["Color3"]
      634 JUMP                             ; [+8]
      635 GETTABLEKS                       R65 R3 K30 ["Color"]
      637 GETTABLEKS                       R65 R65 K24 ["Stroke"]
      639 GETTABLEKS                       R65 R65 K32 ["Emphasis"]
      641 GETTABLEKS                       R65 R65 K84 ["Color3"]
      643 SETTABLEKS                       R65 R64 K30 ["Color"]
      645 GETUPVAL                         R66 4
      646 GETTABLEKS                       R66 R66 K16 ["FoundationTextInputAlignStrokeBehavior"]
      648 JUMPIFNOT                        R66 ; [+22]
      649 GETTABLEKS                       R66 R2 K40 ["isDisabled"]
      651 JUMPIFNOT                        R66 ; [+12]
      652 GETUPVAL                         R65 16
      653 GETTABLEKS                       R66 R16 K77 ["outerView"]
      655 GETTABLEKS                       R66 R66 K78 ["strokeStyle"]
      657 GETTABLEKS                       R66 R66 K80 ["Transparency"]
      659 GETUPVAL                         R67 17
      660 GETTABLEKS                       R67 R67 K74 ["DISABLED_TRANSPARENCY"]
      662 CALL                             R65 2 1
      663 JUMP                             ; [+30]
      664 GETTABLEKS                       R65 R16 K77 ["outerView"]
      666 GETTABLEKS                       R65 R65 K78 ["strokeStyle"]
      668 GETTABLEKS                       R65 R65 K80 ["Transparency"]
      670 JUMP                             ; [+23]
      671 GETTABLEKS                       R66 R2 K17 ["hasError"]
      673 JUMPIFNOT                        R66 ; [+9]
      674 GETTABLEKS                       R65 R3 K30 ["Color"]
      676 GETTABLEKS                       R65 R65 K85 ["System"]
      678 GETTABLEKS                       R65 R65 K86 ["Alert"]
      680 GETTABLEKS                       R65 R65 K80 ["Transparency"]
      682 JUMP                             ; [+11]
      683 JUMPIFNOT                        R14 ; [+2]
      684 LOADN                            R65 0
      685 JUMP                             ; [+8]
      686 GETTABLEKS                       R65 R3 K30 ["Color"]
      688 GETTABLEKS                       R65 R65 K24 ["Stroke"]
      690 GETTABLEKS                       R65 R65 K32 ["Emphasis"]
      692 GETTABLEKS                       R65 R65 K80 ["Transparency"]
      694 SETTABLEKS                       R65 R64 K80 ["Transparency"]
      696 GETUPVAL                         R66 4
      697 GETTABLEKS                       R66 R66 K16 ["FoundationTextInputAlignStrokeBehavior"]
      699 JUMPIFNOT                        R66 ; [+5]
      700 GETTABLEKS                       R65 R16 K77 ["outerView"]
      702 GETTABLEKS                       R65 R65 K79 ["strokeThickness"]
      704 JUMP                             ; [+1]
      705 MOVE                             R65 R22
      706 SETTABLEKS                       R65 R64 K81 ["Thickness"]
      708 GETUPVAL                         R66 4
      709 GETTABLEKS                       R66 R66 K16 ["FoundationTextInputAlignStrokeBehavior"]
      711 JUMPIFNOT                        R66 ; [+5]
      712 JUMPIF                           R14 ; [+1]
      713 JUMPIFNOT                        R12 ; [+3]
      714 GETIMPORT                        R65 K88 [Enum.BorderStrokePosition.Center]
      716 JUMP                             ; [+2]
      717 GETIMPORT                        R65 K90 [Enum.BorderStrokePosition.Inner]
      719 SETTABLEKS                       R65 R64 K82 ["BorderStrokePosition"]
      721 JUMP                             ; [+1]
      722 LOADNIL                          R64
      723 SETTABLEKS                       R64 R63 K66 ["stroke"]
      725 DUPTABLE                         R64 K91 [{"left", "right", "top", "bottom"}]
      726 NEWCLOSURE                       R67 P25
      727 CAPTURE                          VAL R22
      728 NAMECALL                         R65 R57 K92 ["map"]
      730 CALL                             R65 2 1
      731 SETTABLEKS                       R65 R64 K57 ["left"]
      733 NEWCLOSURE                       R67 P26
      734 CAPTURE                          VAL R22
      735 NAMECALL                         R65 R58 K92 ["map"]
      737 CALL                             R65 2 1
      738 SETTABLEKS                       R65 R64 K60 ["right"]
      740 GETIMPORT                        R65 K59 [UDim.new]
      742 LOADN                            R66 0
      743 MOVE                             R67 R22
      744 CALL                             R65 2 1
      745 SETTABLEKS                       R65 R64 K52 ["top"]
      747 GETIMPORT                        R65 K59 [UDim.new]
      749 LOADN                            R66 0
      750 MOVE                             R67 R22
      751 CALL                             R65 2 1
      752 SETTABLEKS                       R65 R64 K50 ["bottom"]
      754 SETTABLEKS                       R64 R63 K67 ["padding"]
      756 GETTABLEKS                       R65 R2 K40 ["isDisabled"]
      758 JUMPIF                           R65 ; [+2]
      759 MOVE                             R64 R30
      760 JUMP                             ; [+1]
      761 LOADNIL                          R64
      762 SETTABLEKS                       R64 R63 K68 ["onActivated"]
      764 SETTABLEKS                       R40 R63 K69 ["onStateChanged"]
      766 GETTABLEKS                       R64 R2 K40 ["isDisabled"]
      768 SETTABLEKS                       R64 R63 K40 ["isDisabled"]
      770 GETUPVAL                         R65 4
      771 GETTABLEKS                       R65 R65 K10 ["FoundationInternalTextInputVariants"]
      773 JUMPIFNOT                        R65 ; [+5]
      774 GETTABLEKS                       R65 R16 K77 ["outerView"]
      776 GETTABLEKS                       R65 R65 K93 ["bgStyle"]
      778 JUMPIFNOT                        R65 ; [+23]
      779 DUPTABLE                         R64 K94 [{"Color3", "Transparency"}]
      780 GETTABLEKS                       R65 R16 K77 ["outerView"]
      782 GETTABLEKS                       R65 R65 K93 ["bgStyle"]
      784 GETTABLEKS                       R65 R65 K84 ["Color3"]
      786 SETTABLEKS                       R65 R64 K84 ["Color3"]
      788 GETTABLEKS                       R66 R2 K95 ["backgroundGradient"]
      790 JUMPIFNOT                        R66 ; [+2]
      791 LOADN                            R65 0
      792 JUMP                             ; [+6]
      793 GETTABLEKS                       R65 R16 K77 ["outerView"]
      795 GETTABLEKS                       R65 R65 K93 ["bgStyle"]
      797 GETTABLEKS                       R65 R65 K80 ["Transparency"]
      799 SETTABLEKS                       R65 R64 K80 ["Transparency"]
      801 JUMP                             ; [+1]
      802 LOADNIL                          R64
      803 SETTABLEKS                       R64 R63 K70 ["backgroundStyle"]
      805 DUPTABLE                         R64 K97 [{"affordance"}]
      806 GETUPVAL                         R65 18
      807 GETTABLEKS                       R65 R65 K98 ["None"]
      809 SETTABLEKS                       R65 R64 K96 ["affordance"]
      811 SETTABLEKS                       R64 R63 K71 ["stateLayer"]
      813 GETTABLEKS                       R64 R16 K77 ["outerView"]
      815 GETTABLEKS                       R64 R64 K19 ["tag"]
      817 SETTABLEKS                       R64 R63 K19 ["tag"]
      819 LOADK                            R65 K99 ["%*--outer-container"]
      820 GETTABLEKS                       R67 R2 K72 ["testId"]
      822 NAMECALL                         R65 R65 K100 ["format"]
      824 CALL                             R65 2 1
      825 MOVE                             R64 R65
      826 SETTABLEKS                       R64 R63 K72 ["testId"]
      828 CALL                             R61 2 1
      829 DUPTABLE                         R62 K107 [{"DragDetector", "Background", "HoverStroke", "Leading", "TextBoxWrapper", "Trailing"}]
      830 SETTABLEKS                       R56 R62 K101 ["DragDetector"]
      832 GETTABLEKS                       R63 R2 K95 ["backgroundGradient"]
      834 SETTABLEKS                       R63 R62 K102 ["Background"]
      836 GETUPVAL                         R64 4
      837 GETTABLEKS                       R64 R64 K16 ["FoundationTextInputAlignStrokeBehavior"]
      839 JUMPIF                           R64 ; [+46]
      840 GETTABLEKS                       R64 R2 K40 ["isDisabled"]
      842 JUMPIF                           R64 ; [+43]
      843 JUMPIF                           R12 ; [+1]
      844 JUMPIFNOT                        R14 ; [+41]
      845 GETUPVAL                         R63 3
      846 GETTABLEKS                       R63 R63 K61 ["createElement"]
      848 LOADK                            R64 K108 ["UIStroke"]
      849 DUPTABLE                         R65 K110 [{"Color", "Transparency", "Thickness", "BorderStrokePosition", "BorderOffset"}]
      850 GETTABLEKS                       R66 R3 K30 ["Color"]
      852 GETTABLEKS                       R66 R66 K24 ["Stroke"]
      854 GETTABLEKS                       R66 R66 K32 ["Emphasis"]
      856 GETTABLEKS                       R66 R66 K84 ["Color3"]
      858 SETTABLEKS                       R66 R65 K30 ["Color"]
      860 GETTABLEKS                       R66 R3 K30 ["Color"]
      862 GETTABLEKS                       R66 R66 K24 ["Stroke"]
      864 GETTABLEKS                       R66 R66 K32 ["Emphasis"]
      866 GETTABLEKS                       R66 R66 K80 ["Transparency"]
      868 SETTABLEKS                       R66 R65 K80 ["Transparency"]
      870 SETTABLEKS                       R24 R65 K81 ["Thickness"]
      872 GETIMPORT                        R66 K90 [Enum.BorderStrokePosition.Inner]
      874 SETTABLEKS                       R66 R65 K82 ["BorderStrokePosition"]
      876 GETIMPORT                        R66 K59 [UDim.new]
      878 LOADN                            R67 0
      879 MINUS                            R69 R25
      880 DIVK                             R68 R69 K25 [2]
      881 CALL                             R66 2 1
      882 SETTABLEKS                       R66 R65 K109 ["BorderOffset"]
      884 CALL                             R63 2 1
      885 JUMP                             ; [+1]
      886 LOADNIL                          R63
      887 SETTABLEKS                       R63 R62 K103 ["HoverStroke"]
      889 GETTABLEKS                       R64 R2 K111 ["leadingElement"]
      891 JUMPIFNOT                        R64 ; [+18]
      892 GETUPVAL                         R63 3
      893 GETTABLEKS                       R63 R63 K61 ["createElement"]
      895 GETUPVAL                         R64 13
      896 DUPTABLE                         R65 K115 [{["LayoutOrder"] = 1, ["tag"] = "size-0-full auto-x", ["testId"]}]
      897 LOADK                            R67 K116 ["%*--leading"]
      898 GETTABLEKS                       R69 R2 K72 ["testId"]
      900 NAMECALL                         R67 R67 K100 ["format"]
      902 CALL                             R67 2 1
      903 MOVE                             R66 R67
      904 SETTABLEKS                       R66 R65 K72 ["testId"]
      906 GETTABLEKS                       R66 R2 K111 ["leadingElement"]
      908 CALL                             R63 3 1
      909 JUMP                             ; [+1]
      910 LOADNIL                          R63
      911 SETTABLEKS                       R63 R62 K104 ["Leading"]
      913 GETUPVAL                         R63 3
      914 GETTABLEKS                       R63 R63 K61 ["createElement"]
      916 JUMPIFNOT                        R5 ; [+2]
      917 GETUPVAL                         R64 19
      918 JUMP                             ; [+1]
      919 GETUPVAL                         R64 13
      920 DUPTABLE                         R65 K122 [{["LayoutOrder"] = 2, ["scroll"], ["layout"], ["onCanvasPositionChanged"], ["scrollingFrameRef"], ["tag"] = "size-full fill clip"}]
      921 SETTABLEKS                       R51 R65 K117 ["scroll"]
      923 SETTABLEKS                       R50 R65 K118 ["layout"]
      925 JUMPIFNOT                        R5 ; [+2]
      926 MOVE                             R66 R55
      927 JUMP                             ; [+1]
      928 LOADNIL                          R66
      929 SETTABLEKS                       R66 R65 K119 ["onCanvasPositionChanged"]
      931 JUMPIFNOT                        R5 ; [+2]
      932 MOVE                             R66 R53
      933 JUMP                             ; [+1]
      934 LOADNIL                          R66
      935 SETTABLEKS                       R66 R65 K120 ["scrollingFrameRef"]
      937 DUPTABLE                         R66 K125 [{"TextBox", "MobileTextBox"}]
      938 JUMPIF                           R19 ; [+121]
      939 GETUPVAL                         R67 3
      940 GETTABLEKS                       R67 R67 K61 ["createElement"]
      942 GETUPVAL                         R68 20
      943 DUPTABLE                         R69 K136 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
      944 GETTABLEKS                       R70 R2 K126 ["text"]
      946 SETTABLEKS                       R70 R69 K126 ["text"]
      948 GETTABLEKS                       R70 R2 K127 ["placeholder"]
      950 SETTABLEKS                       R70 R69 K127 ["placeholder"]
      952 GETTABLEKS                       R70 R2 K128 ["textInputType"]
      954 SETTABLEKS                       R70 R69 K128 ["textInputType"]
      956 SETTABLEKS                       R27 R69 K33 ["fontStyle"]
      958 GETUPVAL                         R71 4
      959 GETTABLEKS                       R71 R71 K29 ["FoundationCleanupTextInputPolyfill"]
      961 JUMPIFNOT                        R71 ; [+2]
      962 LOADNIL                          R70
      963 JUMP                             ; [+1]
      964 MOVE                             R70 R26
      965 SETTABLEKS                       R70 R69 K129 ["textStyle"]
      967 SETTABLEKS                       R5 R69 K130 ["isMultiLine"]
      969 GETTABLEKS                       R70 R2 K40 ["isDisabled"]
      971 SETTABLEKS                       R70 R69 K40 ["isDisabled"]
      973 SETTABLEKS                       R6 R69 K131 ["ref"]
      975 LOADK                            R71 K137 ["%* data-testid=%*--textbox"]
      976 ORK                              R73 R17 K5 [""]
      977 GETTABLEKS                       R74 R2 K72 ["testId"]
      979 NAMECALL                         R71 R71 K100 ["format"]
      981 CALL                             R71 3 1
      982 MOVE                             R70 R71
      983 SETTABLEKS                       R70 R69 K19 ["tag"]
      985 JUMPIFNOT                        R5 ; [+2]
      986 MOVE                             R70 R49
      987 JUMP                             ; [+1]
      988 LOADNIL                          R70
      989 SETTABLEKS                       R70 R69 K63 ["Size"]
      991 JUMPIFNOT                        R5 ; [+8]
      992 JUMPIF                           R19 ; [+7]
      993 GETTABLEKS                       R71 R2 K126 ["text"]
      995 JUMPIFEQKS                       R71 K5 [""] ; [+4]
      997 GETIMPORT                        R70 K140 [Enum.AutomaticSize.Y]
      999 JUMP                             ; [+1]
     1000 LOADNIL                          R70
     1001 SETTABLEKS                       R70 R69 K132 ["automaticSize"]
     1003 SETTABLEKS                       R46 R69 K67 ["padding"]
     1005 SETTABLEKS                       R38 R69 K133 ["onFocusGained"]
     1007 JUMPIFNOT                        R5 ; [+3]
     1008 JUMPIFNOT                        R21 ; [+2]
     1009 LOADNIL                          R70
     1010 JUMP                             ; [+1]
     1011 MOVE                             R70 R39
     1012 SETTABLEKS                       R70 R69 K42 ["onFocusLost"]
     1014 SETTABLEKS                       R37 R69 K134 ["onTextChanged"]
     1016 JUMPIFNOT                        R5 ; [+2]
     1017 MOVE                             R70 R52
     1018 JUMP                             ; [+1]
     1019 LOADNIL                          R70
     1020 SETTABLEKS                       R70 R69 K135 ["onCursorPositionChanged"]
     1022 DUPTABLE                         R70 K142 [{"DragDetector", "BoundsChecker"}]
     1023 SETTABLEKS                       R56 R70 K101 ["DragDetector"]
     1025 JUMPIFNOT                        R5 ; [+29]
     1026 GETUPVAL                         R71 3
     1027 GETTABLEKS                       R71 R71 K61 ["createElement"]
     1029 GETUPVAL                         R72 20
     1030 DUPTABLE                         R73 K145 [{["isBoundsChecker"] = True, ["fontStyle"], ["textStyle"], ["Size"], ["ref"]}]
     1031 SETTABLEKS                       R27 R73 K33 ["fontStyle"]
     1033 GETUPVAL                         R75 4
     1034 GETTABLEKS                       R75 R75 K29 ["FoundationCleanupTextInputPolyfill"]
     1036 JUMPIFNOT                        R75 ; [+2]
     1037 LOADNIL                          R74
     1038 JUMP                             ; [+1]
     1039 MOVE                             R74 R26
     1040 SETTABLEKS                       R74 R73 K129 ["textStyle"]
     1042 GETIMPORT                        R74 K55 [UDim2.new]
     1044 LOADN                            R75 1
     1045 LOADN                            R76 0
     1046 LOADN                            R77 1
     1047 MOVE                             R78 R48
     1048 CALL                             R74 4 1
     1049 SETTABLEKS                       R74 R73 K63 ["Size"]
     1051 SETTABLEKS                       R7 R73 K131 ["ref"]
     1053 CALL                             R71 2 1
     1054 JUMP                             ; [+1]
     1055 LOADNIL                          R71
     1056 SETTABLEKS                       R71 R70 K141 ["BoundsChecker"]
     1058 CALL                             R67 3 1
     1059 JUMP                             ; [+1]
     1060 LOADNIL                          R67
     1061 SETTABLEKS                       R67 R66 K123 ["TextBox"]
     1063 JUMPIFNOT                        R5 ; [+68]
     1064 JUMPIFNOT                        R19 ; [+67]
     1065 GETUPVAL                         R67 3
     1066 GETTABLEKS                       R67 R67 K61 ["createElement"]
     1068 GETUPVAL                         R68 20
     1069 DUPTABLE                         R69 K146 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1070 GETTABLEKS                       R70 R2 K126 ["text"]
     1072 SETTABLEKS                       R70 R69 K126 ["text"]
     1074 GETTABLEKS                       R70 R2 K127 ["placeholder"]
     1076 SETTABLEKS                       R70 R69 K127 ["placeholder"]
     1078 GETTABLEKS                       R70 R2 K128 ["textInputType"]
     1080 SETTABLEKS                       R70 R69 K128 ["textInputType"]
     1082 SETTABLEKS                       R27 R69 K33 ["fontStyle"]
     1084 GETUPVAL                         R71 4
     1085 GETTABLEKS                       R71 R71 K29 ["FoundationCleanupTextInputPolyfill"]
     1087 JUMPIFNOT                        R71 ; [+2]
     1088 LOADNIL                          R70
     1089 JUMP                             ; [+1]
     1090 MOVE                             R70 R26
     1091 SETTABLEKS                       R70 R69 K129 ["textStyle"]
     1093 SETTABLEKS                       R5 R69 K130 ["isMultiLine"]
     1095 GETTABLEKS                       R70 R2 K40 ["isDisabled"]
     1097 SETTABLEKS                       R70 R69 K40 ["isDisabled"]
     1099 SETTABLEKS                       R46 R69 K67 ["padding"]
     1101 SETTABLEKS                       R54 R69 K131 ["ref"]
     1103 LOADK                            R71 K147 ["%* data-testid=%*--mobile-textbox"]
     1104 ORK                              R73 R17 K5 [""]
     1105 GETTABLEKS                       R74 R2 K72 ["testId"]
     1107 NAMECALL                         R71 R71 K100 ["format"]
     1109 CALL                             R71 3 1
     1110 MOVE                             R70 R71
     1111 SETTABLEKS                       R70 R69 K19 ["tag"]
     1113 SETTABLEKS                       R49 R69 K63 ["Size"]
     1115 JUMPIFNOT                        R5 ; [+3]
     1116 JUMPIFNOT                        R21 ; [+2]
     1117 MOVE                             R70 R39
     1118 JUMP                             ; [+1]
     1119 LOADNIL                          R70
     1120 SETTABLEKS                       R70 R69 K42 ["onFocusLost"]
     1122 SETTABLEKS                       R37 R69 K134 ["onTextChanged"]
     1124 JUMPIFNOT                        R5 ; [+2]
     1125 MOVE                             R70 R52
     1126 JUMP                             ; [+1]
     1127 LOADNIL                          R70
     1128 SETTABLEKS                       R70 R69 K135 ["onCursorPositionChanged"]
     1130 CALL                             R67 2 1
     1131 JUMP                             ; [+1]
     1132 LOADNIL                          R67
     1133 SETTABLEKS                       R67 R66 K124 ["MobileTextBox"]
     1135 CALL                             R63 3 1
     1136 SETTABLEKS                       R63 R62 K105 ["TextBoxWrapper"]
     1138 GETTABLEKS                       R64 R2 K148 ["trailingElement"]
     1140 JUMPIFNOT                        R64 ; [+18]
     1141 GETUPVAL                         R63 3
     1142 GETTABLEKS                       R63 R63 K61 ["createElement"]
     1144 GETUPVAL                         R64 13
     1145 DUPTABLE                         R65 K150 [{["LayoutOrder"] = 3, ["tag"] = "size-0-full auto-x", ["testId"]}]
     1146 LOADK                            R67 K151 ["%*--trailing"]
     1147 GETTABLEKS                       R69 R2 K72 ["testId"]
     1149 NAMECALL                         R67 R67 K100 ["format"]
     1151 CALL                             R67 2 1
     1152 MOVE                             R66 R67
     1153 SETTABLEKS                       R66 R65 K72 ["testId"]
     1155 GETTABLEKS                       R66 R2 K148 ["trailingElement"]
     1157 CALL                             R63 3 1
     1158 JUMP                             ; [+1]
     1159 LOADNIL                          R63
     1160 SETTABLEKS                       R63 R62 K106 ["Trailing"]
     1162 CALL                             R59 3 -1
     1163 RETURN                           R59 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K8 ["Components"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R3 K9 ["Padding"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R3 K10 ["ScrollView"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R3 K11 ["Types"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R3 K12 ["View"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R0 K13 ["Constants"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R0 K14 ["Utility"]
       45 GETTABLEKS                       R10 R10 K15 ["Flags"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K13 ["Constants"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETTABLEKS                       R12 R0 K14 ["Utility"]
       57 GETTABLEKS                       R12 R12 K16 ["blendTransparencies"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R13 R0 K14 ["Utility"]
       64 GETTABLEKS                       R13 R13 K17 ["getMultiLineTextHeight"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R14 R0 K14 ["Utility"]
       71 GETTABLEKS                       R14 R14 K18 ["isPluginSecurity"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETIMPORT                        R15 K1 [script]
       78 GETTABLEKS                       R15 R15 K4 ["Parent"]
       80 GETTABLEKS                       R15 R15 K19 ["truncateTextToCursor"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETTABLEKS                       R16 R0 K14 ["Utility"]
       87 GETTABLEKS                       R16 R16 K20 ["useBindable"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R17 R0 K14 ["Utility"]
       94 GETTABLEKS                       R17 R17 K21 ["usePreferredInput"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R18 R0 K22 ["Providers"]
      101 GETTABLEKS                       R18 R18 K23 ["Style"]
      103 GETTABLEKS                       R18 R18 K24 ["useStyleTags"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K6 [require]
      108 GETTABLEKS                       R19 R3 K25 ["TextInput"]
      110 GETTABLEKS                       R19 R19 K26 ["useTextInputVariants"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K6 [require]
      115 GETTABLEKS                       R20 R0 K22 ["Providers"]
      117 GETTABLEKS                       R20 R20 K23 ["Style"]
      119 GETTABLEKS                       R20 R20 K27 ["useTokens"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K6 [require]
      124 GETTABLEKS                       R21 R0 K14 ["Utility"]
      126 GETTABLEKS                       R21 R21 K28 ["withCommonProps"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K6 [require]
      131 GETTABLEKS                       R22 R0 K14 ["Utility"]
      133 GETTABLEKS                       R22 R22 K29 ["withDefaults"]
      135 CALL                             R21 1 1
      136 GETIMPORT                        R22 K6 [require]
      138 GETTABLEKS                       R23 R0 K30 ["Enums"]
      140 GETTABLEKS                       R23 R23 K31 ["InputSize"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K6 [require]
      145 GETTABLEKS                       R24 R0 K30 ["Enums"]
      147 GETTABLEKS                       R24 R24 K32 ["InputVariant"]
      149 CALL                             R23 1 1
      150 GETIMPORT                        R24 K6 [require]
      152 GETTABLEKS                       R25 R0 K30 ["Enums"]
      154 GETTABLEKS                       R25 R25 K33 ["Radius"]
      156 CALL                             R24 1 1
      157 GETIMPORT                        R25 K6 [require]
      159 GETTABLEKS                       R26 R0 K30 ["Enums"]
      161 GETTABLEKS                       R26 R26 K34 ["ControlState"]
      163 CALL                             R25 1 1
      164 GETIMPORT                        R26 K6 [require]
      166 GETTABLEKS                       R27 R0 K30 ["Enums"]
      168 GETTABLEKS                       R27 R27 K35 ["StateLayerAffordance"]
      170 CALL                             R26 1 1
      171 DUPTABLE                         R27 K42 [{["size"], ["variant"], ["numLines"] = 1, ["testId"] = "--foundation-internal-text-input"}]
      172 GETTABLEKS                       R28 R22 K43 ["Large"]
      174 SETTABLEKS                       R28 R27 K36 ["size"]
      176 GETTABLEKS                       R29 R9 K44 ["FoundationInternalTextInputVariants"]
      178 JUMPIFNOT                        R29 ; [+3]
      179 GETTABLEKS                       R28 R23 K45 ["Standard"]
      181 JUMP                             ; [+1]
      182 LOADNIL                          R28
      183 SETTABLEKS                       R28 R27 K37 ["variant"]
      185 GETTABLEKS                       R28 R2 K46 ["memo"]
      187 GETTABLEKS                       R29 R2 K47 ["forwardRef"]
      189 DUPCLOSURE                       R30 K48 [PROTO_0]
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R4
      194 CALL                             R29 1 -1
      195 CALL                             R28 -1 1
      196 DUPCLOSURE                       R29 K49 [PROTO_28]
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R27
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R23
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R28
      218 GETTABLEKS                       R30 R2 K46 ["memo"]
      220 GETTABLEKS                       R31 R2 K47 ["forwardRef"]
      222 MOVE                             R32 R29
      223 CALL                             R31 1 -1
      224 CALL                             R30 -1 -1
      225 RETURN                           R30 -1
