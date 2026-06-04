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
      158 GETTABLEKS                       R27 R27 K29 ["FoundationInternalTextInputDisabledTransparency"]
      160 JUMPIFNOT                        R27 ; [+11]
      161 GETUPVAL                         R26 9
      162 GETTABLEKS                       R27 R3 K30 ["Color"]
      164 GETTABLEKS                       R27 R27 K31 ["Content"]
      166 GETTABLEKS                       R27 R27 K32 ["Emphasis"]
      168 GETTABLEKS                       R28 R2 K33 ["isDisabled"]
      170 CALL                             R26 2 1
      171 JUMP                             ; [+6]
      172 GETTABLEKS                       R26 R3 K30 ["Color"]
      174 GETTABLEKS                       R26 R26 K31 ["Content"]
      176 GETTABLEKS                       R26 R26 K32 ["Emphasis"]
      178 GETTABLEKS                       R27 R16 K18 ["textBox"]
      180 GETTABLEKS                       R27 R27 K34 ["fontStyle"]
      182 GETTABLEKS                       R28 R27 K35 ["FontSize"]
      184 GETTABLEKS                       R29 R27 K36 ["LineHeight"]
      186 GETUPVAL                         R30 3
      187 GETTABLEKS                       R30 R30 K37 ["useCallback"]
      189 NEWCLOSURE                       R31 P0
      190 CAPTURE                          VAL R6
      191 NEWTABLE                         R32 0 0
      193 CALL                             R30 2 1
      194 GETUPVAL                         R31 3
      195 GETTABLEKS                       R31 R31 K37 ["useCallback"]
      197 NEWCLOSURE                       R32 P1
      198 CAPTURE                          VAL R6
      199 NEWTABLE                         R33 0 0
      201 CALL                             R31 2 1
      202 GETUPVAL                         R32 3
      203 GETTABLEKS                       R32 R32 K37 ["useCallback"]
      205 NEWCLOSURE                       R33 P2
      206 CAPTURE                          VAL R6
      207 NEWTABLE                         R34 0 0
      209 CALL                             R32 2 1
      210 GETUPVAL                         R33 3
      211 GETTABLEKS                       R33 R33 K37 ["useCallback"]
      213 NEWCLOSURE                       R34 P3
      214 CAPTURE                          VAL R6
      215 NEWTABLE                         R35 0 0
      217 CALL                             R33 2 1
      218 GETUPVAL                         R34 3
      219 GETTABLEKS                       R34 R34 K37 ["useCallback"]
      221 NEWCLOSURE                       R35 P4
      222 CAPTURE                          VAL R6
      223 NEWTABLE                         R36 0 0
      225 CALL                             R34 2 1
      226 GETUPVAL                         R35 3
      227 GETTABLEKS                       R35 R35 K37 ["useCallback"]
      229 NEWCLOSURE                       R36 P5
      230 CAPTURE                          VAL R6
      231 NEWTABLE                         R37 0 0
      233 CALL                             R35 2 1
      234 GETUPVAL                         R36 3
      235 GETTABLEKS                       R36 R36 K37 ["useCallback"]
      237 NEWCLOSURE                       R37 P6
      238 CAPTURE                          VAL R6
      239 NEWTABLE                         R38 0 0
      241 CALL                             R36 2 1
      242 GETUPVAL                         R37 3
      243 GETTABLEKS                       R37 R37 K38 ["useImperativeHandle"]
      245 MOVE                             R38 R1
      246 NEWCLOSURE                       R39 P7
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R30
      249 CAPTURE                          VAL R31
      250 CAPTURE                          VAL R13
      251 CAPTURE                          VAL R33
      252 CAPTURE                          VAL R34
      253 CAPTURE                          VAL R36
      254 CAPTURE                          VAL R35
      255 NEWTABLE                         R40 0 7
      257 MOVE                             R41 R34
      258 MOVE                             R42 R32
      259 MOVE                             R43 R33
      260 MOVE                             R44 R30
      261 MOVE                             R45 R31
      262 MOVE                             R46 R36
      263 MOVE                             R47 R35
      264 SETLIST                          R40 R41 7 [1]
      266 CALL                             R37 3 0
      267 GETUPVAL                         R37 3
      268 GETTABLEKS                       R37 R37 K37 ["useCallback"]
      270 NEWCLOSURE                       R38 P8
      271 CAPTURE                          VAL R9
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R7
      274 CAPTURE                          VAL R2
      275 NEWTABLE                         R39 0 3
      277 GETTABLEKS                       R40 R2 K39 ["onChanged"]
      279 MOVE                             R41 R5
      280 MOVE                             R42 R19
      281 SETLIST                          R39 R40 3 [1]
      283 CALL                             R37 2 1
      284 GETUPVAL                         R38 3
      285 GETTABLEKS                       R38 R38 K37 ["useCallback"]
      287 NEWCLOSURE                       R39 P9
      288 CAPTURE                          VAL R2
      289 CAPTURE                          VAL R5
      290 CAPTURE                          VAL R21
      291 CAPTURE                          VAL R6
      292 CAPTURE                          VAL R9
      293 CAPTURE                          VAL R20
      294 CAPTURE                          VAL R15
      295 NEWTABLE                         R40 0 4
      297 GETTABLEKS                       R41 R2 K40 ["onFocus"]
      299 GETTABLEKS                       R42 R2 K33 ["isDisabled"]
      301 MOVE                             R43 R21
      302 MOVE                             R44 R5
      303 SETLIST                          R40 R41 4 [1]
      305 CALL                             R38 2 1
      306 GETUPVAL                         R39 3
      307 GETTABLEKS                       R39 R39 K37 ["useCallback"]
      309 NEWCLOSURE                       R40 P10
      310 CAPTURE                          VAL R15
      311 CAPTURE                          VAL R5
      312 CAPTURE                          VAL R20
      313 CAPTURE                          VAL R2
      314 NEWTABLE                         R41 0 3
      316 GETTABLEKS                       R42 R2 K41 ["onReturnPressed"]
      318 MOVE                             R43 R5
      319 GETTABLEKS                       R44 R2 K42 ["onFocusLost"]
      321 SETLIST                          R41 R42 3 [1]
      323 CALL                             R39 2 1
      324 GETUPVAL                         R40 3
      325 GETTABLEKS                       R40 R40 K37 ["useCallback"]
      327 NEWCLOSURE                       R41 P11
      328 CAPTURE                          VAL R13
      329 CAPTURE                          UPVAL U10
      330 NEWTABLE                         R42 0 0
      332 CALL                             R40 2 1
      333 GETUPVAL                         R41 3
      334 GETTABLEKS                       R41 R41 K37 ["useCallback"]
      336 NEWCLOSURE                       R42 P12
      337 CAPTURE                          VAL R10
      338 CAPTURE                          VAL R2
      339 NEWTABLE                         R43 0 1
      341 GETTABLEKS                       R44 R2 K43 ["onDragStarted"]
      343 SETLIST                          R43 R44 1 [1]
      345 CALL                             R41 2 1
      346 GETUPVAL                         R42 3
      347 GETTABLEKS                       R42 R42 K37 ["useCallback"]
      349 NEWCLOSURE                       R43 P13
      350 CAPTURE                          VAL R2
      351 NEWTABLE                         R44 0 1
      353 GETTABLEKS                       R45 R2 K44 ["onDrag"]
      355 SETLIST                          R44 R45 1 [1]
      357 CALL                             R42 2 1
      358 GETUPVAL                         R43 3
      359 GETTABLEKS                       R43 R43 K37 ["useCallback"]
      361 NEWCLOSURE                       R44 P14
      362 CAPTURE                          VAL R10
      363 CAPTURE                          VAL R30
      364 CAPTURE                          VAL R31
      365 CAPTURE                          VAL R15
      366 CAPTURE                          VAL R2
      367 NEWTABLE                         R45 0 1
      369 GETTABLEKS                       R46 R2 K45 ["onDragEnded"]
      371 SETLIST                          R45 R46 1 [1]
      373 CALL                             R43 2 1
      374 GETUPVAL                         R44 3
      375 GETTABLEKS                       R44 R44 K46 ["useMemo"]
      377 NEWCLOSURE                       R45 P15
      378 CAPTURE                          VAL R16
      379 CAPTURE                          VAL R3
      380 NEWTABLE                         R46 0 2
      382 MOVE                             R47 R3
      383 GETTABLEKS                       R48 R16 K47 ["innerContainer"]
      385 GETTABLEKS                       R48 R48 K15 ["radius"]
      387 SETLIST                          R46 R47 2 [1]
      389 CALL                             R44 2 1
      390 GETUPVAL                         R45 3
      391 GETTABLEKS                       R45 R45 K46 ["useMemo"]
      393 NEWCLOSURE                       R46 P16
      394 CAPTURE                          UPVAL U11
      395 CAPTURE                          VAL R28
      396 CAPTURE                          VAL R4
      397 CAPTURE                          VAL R29
      398 NEWTABLE                         R47 0 3
      400 MOVE                             R48 R28
      401 MOVE                             R49 R4
      402 MOVE                             R50 R29
      403 SETLIST                          R47 R48 3 [1]
      405 CALL                             R45 2 1
      406 GETUPVAL                         R46 3
      407 GETTABLEKS                       R46 R46 K46 ["useMemo"]
      409 NEWCLOSURE                       R47 P17
      410 CAPTURE                          VAL R16
      411 CAPTURE                          VAL R23
      412 CAPTURE                          UPVAL U11
      413 CAPTURE                          VAL R28
      414 CAPTURE                          VAL R29
      415 CAPTURE                          VAL R45
      416 NEWTABLE                         R48 0 6
      418 GETTABLEKS                       R49 R16 K48 ["outerContainer"]
      420 GETTABLEKS                       R49 R49 K49 ["minHeight"]
      422 MOVE                             R50 R23
      423 MOVE                             R51 R25
      424 MOVE                             R52 R28
      425 MOVE                             R53 R45
      426 MOVE                             R54 R29
      427 SETLIST                          R48 R49 6 [1]
      429 CALL                             R46 2 2
      430 GETTABLEKS                       R49 R46 K50 ["bottom"]
      432 GETTABLEKS                       R49 R49 K51 ["Offset"]
      434 GETTABLEKS                       R50 R46 K52 ["top"]
      436 GETTABLEKS                       R50 R50 K51 ["Offset"]
      438 ADD                              R48 R49 R50
      439 GETIMPORT                        R49 K55 [UDim2.new]
      441 LOADN                            R50 1
      442 LOADN                            R51 0
      443 LOADN                            R52 0
      444 ADD                              R53 R45 R48
      445 CALL                             R49 4 1
      446 GETUPVAL                         R50 3
      447 GETTABLEKS                       R50 R50 K46 ["useMemo"]
      449 NEWCLOSURE                       R51 P18
      450 CAPTURE                          VAL R5
      451 NEWTABLE                         R52 0 1
      453 MOVE                             R53 R5
      454 SETLIST                          R52 R53 1 [1]
      456 CALL                             R50 2 1
      457 GETUPVAL                         R51 3
      458 GETTABLEKS                       R51 R51 K46 ["useMemo"]
      460 NEWCLOSURE                       R52 P19
      461 CAPTURE                          VAL R5
      462 NEWTABLE                         R53 0 1
      464 MOVE                             R54 R5
      465 SETLIST                          R53 R54 1 [1]
      467 CALL                             R51 2 1
      468 GETUPVAL                         R52 3
      469 GETTABLEKS                       R52 R52 K37 ["useCallback"]
      471 NEWCLOSURE                       R53 P20
      472 CAPTURE                          VAL R8
      473 CAPTURE                          VAL R7
      474 CAPTURE                          UPVAL U12
      475 CAPTURE                          VAL R46
      476 NEWTABLE                         R54 0 1
      478 MOVE                             R55 R46
      479 SETLIST                          R54 R55 1 [1]
      481 CALL                             R52 2 1
      482 GETUPVAL                         R53 3
      483 GETTABLEKS                       R53 R53 K37 ["useCallback"]
      485 NEWCLOSURE                       R54 P21
      486 CAPTURE                          VAL R8
      487 CAPTURE                          VAL R11
      488 NEWTABLE                         R55 0 0
      490 CALL                             R53 2 1
      491 GETUPVAL                         R54 3
      492 GETTABLEKS                       R54 R54 K37 ["useCallback"]
      494 NEWCLOSURE                       R55 P22
      495 CAPTURE                          VAL R9
      496 NEWTABLE                         R56 0 0
      498 CALL                             R54 2 1
      499 GETUPVAL                         R55 3
      500 GETTABLEKS                       R55 R55 K37 ["useCallback"]
      502 NEWCLOSURE                       R56 P23
      503 CAPTURE                          VAL R11
      504 NEWTABLE                         R57 0 0
      506 CALL                             R55 2 1
      507 GETUPVAL                         R56 3
      508 GETTABLEKS                       R56 R56 K46 ["useMemo"]
      510 NEWCLOSURE                       R57 P24
      511 CAPTURE                          VAL R2
      512 CAPTURE                          UPVAL U3
      513 CAPTURE                          VAL R41
      514 CAPTURE                          VAL R42
      515 CAPTURE                          VAL R43
      516 CAPTURE                          VAL R14
      517 NEWTABLE                         R58 0 5
      519 MOVE                             R59 R41
      520 MOVE                             R60 R42
      521 MOVE                             R61 R43
      522 MOVE                             R62 R14
      523 GETTABLEKS                       R63 R2 K33 ["isDisabled"]
      525 SETLIST                          R58 R59 5 [1]
      527 CALL                             R56 2 1
      528 GETUPVAL                         R57 13
      529 GETTABLEKS                       R59 R2 K56 ["horizontalPadding"]
      531 JUMPIFNOT                        R59 ; [+11]
      532 GETTABLEKS                       R58 R2 K56 ["horizontalPadding"]
      534 GETTABLEKS                       R58 R58 K57 ["left"]
      536 JUMPIF                           R58 ; [+11]
      537 GETIMPORT                        R58 K59 [UDim.new]
      539 LOADN                            R59 0
      540 LOADN                            R60 0
      541 CALL                             R58 2 1
      542 JUMP                             ; [+5]
      543 GETIMPORT                        R58 K59 [UDim.new]
      545 LOADN                            R59 0
      546 LOADN                            R60 0
      547 CALL                             R58 2 1
      548 CALL                             R57 1 1
      549 GETUPVAL                         R58 13
      550 GETTABLEKS                       R60 R2 K56 ["horizontalPadding"]
      552 JUMPIFNOT                        R60 ; [+11]
      553 GETTABLEKS                       R59 R2 K56 ["horizontalPadding"]
      555 GETTABLEKS                       R59 R59 K60 ["right"]
      557 JUMPIF                           R59 ; [+11]
      558 GETIMPORT                        R59 K59 [UDim.new]
      560 LOADN                            R60 0
      561 LOADN                            R61 0
      562 CALL                             R59 2 1
      563 JUMP                             ; [+5]
      564 GETIMPORT                        R59 K59 [UDim.new]
      566 LOADN                            R60 0
      567 LOADN                            R61 0
      568 CALL                             R59 2 1
      569 CALL                             R58 1 1
      570 GETUPVAL                         R59 3
      571 GETTABLEKS                       R59 R59 K61 ["createElement"]
      573 GETUPVAL                         R60 14
      574 GETUPVAL                         R61 15
      575 MOVE                             R62 R2
      576 DUPTABLE                         R63 K74 [{"GroupTransparency", "Size", "selection", "cursor", "stroke", "cornerRadius", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      577 GETUPVAL                         R65 4
      578 GETTABLEKS                       R65 R65 K29 ["FoundationInternalTextInputDisabledTransparency"]
      580 JUMPIF                           R65 ; [+7]
      581 GETTABLEKS                       R65 R2 K33 ["isDisabled"]
      583 JUMPIFNOT                        R65 ; [+4]
      584 GETUPVAL                         R64 16
      585 GETTABLEKS                       R64 R64 K75 ["DISABLED_TRANSPARENCY"]
      587 JUMP                             ; [+1]
      588 LOADNIL                          R64
      589 SETTABLEKS                       R64 R63 K62 ["GroupTransparency"]
      591 GETIMPORT                        R64 K55 [UDim2.new]
      593 LOADN                            R65 1
      594 LOADN                            R66 0
      595 LOADN                            R67 0
      596 MOVE                             R68 R47
      597 CALL                             R64 4 1
      598 SETTABLEKS                       R64 R63 K63 ["Size"]
      600 DUPTABLE                         R64 K77 [{"Selectable"}]
      601 GETTABLEKS                       R66 R2 K33 ["isDisabled"]
      603 NOT                              R65 R66
      604 SETTABLEKS                       R65 R64 K76 ["Selectable"]
      606 SETTABLEKS                       R64 R63 K64 ["selection"]
      608 SETTABLEKS                       R44 R63 K65 ["cursor"]
      610 GETUPVAL                         R65 4
      611 GETTABLEKS                       R65 R65 K16 ["FoundationTextInputAlignStrokeBehavior"]
      613 JUMPIFNOT                        R65 ; [+10]
      614 GETTABLEKS                       R65 R16 K78 ["outerView"]
      616 GETTABLEKS                       R65 R65 K79 ["strokeStyle"]
      618 JUMPIFNOT                        R65 ; [+116]
      619 GETTABLEKS                       R65 R16 K78 ["outerView"]
      621 GETTABLEKS                       R65 R65 K80 ["strokeThickness"]
      623 JUMPIFNOT                        R65 ; [+111]
      624 DUPTABLE                         R64 K84 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      625 GETUPVAL                         R66 4
      626 GETTABLEKS                       R66 R66 K16 ["FoundationTextInputAlignStrokeBehavior"]
      628 JUMPIFNOT                        R66 ; [+7]
      629 GETTABLEKS                       R65 R16 K78 ["outerView"]
      631 GETTABLEKS                       R65 R65 K79 ["strokeStyle"]
      633 GETTABLEKS                       R65 R65 K85 ["Color3"]
      635 JUMP                             ; [+20]
      636 GETTABLEKS                       R66 R2 K17 ["hasError"]
      638 JUMPIFNOT                        R66 ; [+9]
      639 GETTABLEKS                       R65 R3 K30 ["Color"]
      641 GETTABLEKS                       R65 R65 K86 ["System"]
      643 GETTABLEKS                       R65 R65 K87 ["Alert"]
      645 GETTABLEKS                       R65 R65 K85 ["Color3"]
      647 JUMP                             ; [+8]
      648 GETTABLEKS                       R65 R3 K30 ["Color"]
      650 GETTABLEKS                       R65 R65 K24 ["Stroke"]
      652 GETTABLEKS                       R65 R65 K32 ["Emphasis"]
      654 GETTABLEKS                       R65 R65 K85 ["Color3"]
      656 SETTABLEKS                       R65 R64 K30 ["Color"]
      658 GETUPVAL                         R66 4
      659 GETTABLEKS                       R66 R66 K16 ["FoundationTextInputAlignStrokeBehavior"]
      661 JUMPIFNOT                        R66 ; [+22]
      662 GETTABLEKS                       R66 R2 K33 ["isDisabled"]
      664 JUMPIFNOT                        R66 ; [+12]
      665 GETUPVAL                         R65 17
      666 GETTABLEKS                       R66 R16 K78 ["outerView"]
      668 GETTABLEKS                       R66 R66 K79 ["strokeStyle"]
      670 GETTABLEKS                       R66 R66 K81 ["Transparency"]
      672 GETUPVAL                         R67 16
      673 GETTABLEKS                       R67 R67 K75 ["DISABLED_TRANSPARENCY"]
      675 CALL                             R65 2 1
      676 JUMP                             ; [+30]
      677 GETTABLEKS                       R65 R16 K78 ["outerView"]
      679 GETTABLEKS                       R65 R65 K79 ["strokeStyle"]
      681 GETTABLEKS                       R65 R65 K81 ["Transparency"]
      683 JUMP                             ; [+23]
      684 GETTABLEKS                       R66 R2 K17 ["hasError"]
      686 JUMPIFNOT                        R66 ; [+9]
      687 GETTABLEKS                       R65 R3 K30 ["Color"]
      689 GETTABLEKS                       R65 R65 K86 ["System"]
      691 GETTABLEKS                       R65 R65 K87 ["Alert"]
      693 GETTABLEKS                       R65 R65 K81 ["Transparency"]
      695 JUMP                             ; [+11]
      696 JUMPIFNOT                        R14 ; [+2]
      697 LOADN                            R65 0
      698 JUMP                             ; [+8]
      699 GETTABLEKS                       R65 R3 K30 ["Color"]
      701 GETTABLEKS                       R65 R65 K24 ["Stroke"]
      703 GETTABLEKS                       R65 R65 K32 ["Emphasis"]
      705 GETTABLEKS                       R65 R65 K81 ["Transparency"]
      707 SETTABLEKS                       R65 R64 K81 ["Transparency"]
      709 GETUPVAL                         R66 4
      710 GETTABLEKS                       R66 R66 K16 ["FoundationTextInputAlignStrokeBehavior"]
      712 JUMPIFNOT                        R66 ; [+5]
      713 GETTABLEKS                       R65 R16 K78 ["outerView"]
      715 GETTABLEKS                       R65 R65 K80 ["strokeThickness"]
      717 JUMP                             ; [+1]
      718 MOVE                             R65 R22
      719 SETTABLEKS                       R65 R64 K82 ["Thickness"]
      721 GETUPVAL                         R66 4
      722 GETTABLEKS                       R66 R66 K16 ["FoundationTextInputAlignStrokeBehavior"]
      724 JUMPIFNOT                        R66 ; [+5]
      725 JUMPIF                           R14 ; [+1]
      726 JUMPIFNOT                        R12 ; [+3]
      727 GETIMPORT                        R65 K89 [Enum.BorderStrokePosition.Center]
      729 JUMP                             ; [+2]
      730 GETIMPORT                        R65 K91 [Enum.BorderStrokePosition.Inner]
      732 SETTABLEKS                       R65 R64 K83 ["BorderStrokePosition"]
      734 JUMP                             ; [+1]
      735 LOADNIL                          R64
      736 SETTABLEKS                       R64 R63 K66 ["stroke"]
      738 GETUPVAL                         R65 4
      739 GETTABLEKS                       R65 R65 K92 ["FoundationTextInputSingleLineCircleRadius"]
      741 JUMPIFNOT                        R65 ; [+21]
      742 GETTABLEKS                       R65 R2 K15 ["radius"]
      744 GETUPVAL                         R66 18
      745 GETTABLEKS                       R66 R66 K93 ["Circle"]
      747 JUMPIFNOTEQ                      R65 R66 ; [+15]
      749 GETIMPORT                        R64 K59 [UDim.new]
      751 LOADN                            R65 0
      752 GETTABLEKS                       R68 R16 K48 ["outerContainer"]
      754 GETTABLEKS                       R68 R68 K49 ["minHeight"]
      756 DIVK                             R67 R68 K25 [2]
      757 FASTCALL1                        MATH_CEIL R67 ; [+2]
      758 GETIMPORT                        R66 K27 [math.ceil]
      760 CALL                             R66 1 1
      761 CALL                             R64 2 1
      762 JUMP                             ; [+1]
      763 LOADNIL                          R64
      764 SETTABLEKS                       R64 R63 K67 ["cornerRadius"]
      766 DUPTABLE                         R64 K94 [{"left", "right", "top", "bottom"}]
      767 NEWCLOSURE                       R67 P25
      768 CAPTURE                          VAL R22
      769 NAMECALL                         R65 R57 K95 ["map"]
      771 CALL                             R65 2 1
      772 SETTABLEKS                       R65 R64 K57 ["left"]
      774 NEWCLOSURE                       R67 P26
      775 CAPTURE                          VAL R22
      776 NAMECALL                         R65 R58 K95 ["map"]
      778 CALL                             R65 2 1
      779 SETTABLEKS                       R65 R64 K60 ["right"]
      781 GETIMPORT                        R65 K59 [UDim.new]
      783 LOADN                            R66 0
      784 MOVE                             R67 R22
      785 CALL                             R65 2 1
      786 SETTABLEKS                       R65 R64 K52 ["top"]
      788 GETIMPORT                        R65 K59 [UDim.new]
      790 LOADN                            R66 0
      791 MOVE                             R67 R22
      792 CALL                             R65 2 1
      793 SETTABLEKS                       R65 R64 K50 ["bottom"]
      795 SETTABLEKS                       R64 R63 K68 ["padding"]
      797 GETTABLEKS                       R65 R2 K33 ["isDisabled"]
      799 JUMPIF                           R65 ; [+2]
      800 MOVE                             R64 R30
      801 JUMP                             ; [+1]
      802 LOADNIL                          R64
      803 SETTABLEKS                       R64 R63 K69 ["onActivated"]
      805 SETTABLEKS                       R40 R63 K70 ["onStateChanged"]
      807 GETTABLEKS                       R64 R2 K33 ["isDisabled"]
      809 SETTABLEKS                       R64 R63 K33 ["isDisabled"]
      811 GETUPVAL                         R65 4
      812 GETTABLEKS                       R65 R65 K10 ["FoundationInternalTextInputVariants"]
      814 JUMPIFNOT                        R65 ; [+5]
      815 GETTABLEKS                       R65 R16 K78 ["outerView"]
      817 GETTABLEKS                       R65 R65 K96 ["bgStyle"]
      819 JUMPIFNOT                        R65 ; [+54]
      820 GETUPVAL                         R65 4
      821 GETTABLEKS                       R65 R65 K29 ["FoundationInternalTextInputDisabledTransparency"]
      823 JUMPIFNOT                        R65 ; [+27]
      824 GETUPVAL                         R64 9
      825 DUPTABLE                         R65 K97 [{"Color3", "Transparency"}]
      826 GETTABLEKS                       R66 R16 K78 ["outerView"]
      828 GETTABLEKS                       R66 R66 K96 ["bgStyle"]
      830 GETTABLEKS                       R66 R66 K85 ["Color3"]
      832 SETTABLEKS                       R66 R65 K85 ["Color3"]
      834 GETTABLEKS                       R67 R2 K98 ["backgroundGradient"]
      836 JUMPIFNOT                        R67 ; [+2]
      837 LOADN                            R66 0
      838 JUMP                             ; [+6]
      839 GETTABLEKS                       R66 R16 K78 ["outerView"]
      841 GETTABLEKS                       R66 R66 K96 ["bgStyle"]
      843 GETTABLEKS                       R66 R66 K81 ["Transparency"]
      845 SETTABLEKS                       R66 R65 K81 ["Transparency"]
      847 GETTABLEKS                       R66 R2 K33 ["isDisabled"]
      849 CALL                             R64 2 1
      850 JUMP                             ; [+24]
      851 DUPTABLE                         R64 K97 [{"Color3", "Transparency"}]
      852 GETTABLEKS                       R65 R16 K78 ["outerView"]
      854 GETTABLEKS                       R65 R65 K96 ["bgStyle"]
      856 GETTABLEKS                       R65 R65 K85 ["Color3"]
      858 SETTABLEKS                       R65 R64 K85 ["Color3"]
      860 GETTABLEKS                       R66 R2 K98 ["backgroundGradient"]
      862 JUMPIFNOT                        R66 ; [+2]
      863 LOADN                            R65 0
      864 JUMP                             ; [+6]
      865 GETTABLEKS                       R65 R16 K78 ["outerView"]
      867 GETTABLEKS                       R65 R65 K96 ["bgStyle"]
      869 GETTABLEKS                       R65 R65 K81 ["Transparency"]
      871 SETTABLEKS                       R65 R64 K81 ["Transparency"]
      873 JUMP                             ; [+1]
      874 LOADNIL                          R64
      875 SETTABLEKS                       R64 R63 K71 ["backgroundStyle"]
      877 DUPTABLE                         R64 K100 [{"affordance"}]
      878 GETUPVAL                         R65 19
      879 GETTABLEKS                       R65 R65 K101 ["None"]
      881 SETTABLEKS                       R65 R64 K99 ["affordance"]
      883 SETTABLEKS                       R64 R63 K72 ["stateLayer"]
      885 GETTABLEKS                       R64 R16 K78 ["outerView"]
      887 GETTABLEKS                       R64 R64 K19 ["tag"]
      889 SETTABLEKS                       R64 R63 K19 ["tag"]
      891 LOADK                            R65 K102 ["%*--outer-container"]
      892 GETTABLEKS                       R67 R2 K73 ["testId"]
      894 NAMECALL                         R65 R65 K103 ["format"]
      896 CALL                             R65 2 1
      897 MOVE                             R64 R65
      898 SETTABLEKS                       R64 R63 K73 ["testId"]
      900 CALL                             R61 2 1
      901 DUPTABLE                         R62 K110 [{"DragDetector", "Background", "HoverStroke", "Leading", "TextBoxWrapper", "Trailing"}]
      902 SETTABLEKS                       R56 R62 K104 ["DragDetector"]
      904 GETTABLEKS                       R63 R2 K98 ["backgroundGradient"]
      906 SETTABLEKS                       R63 R62 K105 ["Background"]
      908 GETUPVAL                         R64 4
      909 GETTABLEKS                       R64 R64 K16 ["FoundationTextInputAlignStrokeBehavior"]
      911 JUMPIF                           R64 ; [+46]
      912 GETTABLEKS                       R64 R2 K33 ["isDisabled"]
      914 JUMPIF                           R64 ; [+43]
      915 JUMPIF                           R12 ; [+1]
      916 JUMPIFNOT                        R14 ; [+41]
      917 GETUPVAL                         R63 3
      918 GETTABLEKS                       R63 R63 K61 ["createElement"]
      920 LOADK                            R64 K111 ["UIStroke"]
      921 DUPTABLE                         R65 K113 [{"Color", "Transparency", "Thickness", "BorderStrokePosition", "BorderOffset"}]
      922 GETTABLEKS                       R66 R3 K30 ["Color"]
      924 GETTABLEKS                       R66 R66 K24 ["Stroke"]
      926 GETTABLEKS                       R66 R66 K32 ["Emphasis"]
      928 GETTABLEKS                       R66 R66 K85 ["Color3"]
      930 SETTABLEKS                       R66 R65 K30 ["Color"]
      932 GETTABLEKS                       R66 R3 K30 ["Color"]
      934 GETTABLEKS                       R66 R66 K24 ["Stroke"]
      936 GETTABLEKS                       R66 R66 K32 ["Emphasis"]
      938 GETTABLEKS                       R66 R66 K81 ["Transparency"]
      940 SETTABLEKS                       R66 R65 K81 ["Transparency"]
      942 SETTABLEKS                       R24 R65 K82 ["Thickness"]
      944 GETIMPORT                        R66 K91 [Enum.BorderStrokePosition.Inner]
      946 SETTABLEKS                       R66 R65 K83 ["BorderStrokePosition"]
      948 GETIMPORT                        R66 K59 [UDim.new]
      950 LOADN                            R67 0
      951 MINUS                            R69 R25
      952 DIVK                             R68 R69 K25 [2]
      953 CALL                             R66 2 1
      954 SETTABLEKS                       R66 R65 K112 ["BorderOffset"]
      956 CALL                             R63 2 1
      957 JUMP                             ; [+1]
      958 LOADNIL                          R63
      959 SETTABLEKS                       R63 R62 K106 ["HoverStroke"]
      961 GETTABLEKS                       R64 R2 K114 ["leadingElement"]
      963 JUMPIFNOT                        R64 ; [+38]
      964 GETUPVAL                         R63 3
      965 GETTABLEKS                       R63 R63 K61 ["createElement"]
      967 GETUPVAL                         R64 14
      968 DUPTABLE                         R65 K116 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
      969 GETUPVAL                         R67 4
      970 GETTABLEKS                       R67 R67 K29 ["FoundationInternalTextInputDisabledTransparency"]
      972 JUMPIFNOT                        R67 ; [+7]
      973 GETTABLEKS                       R67 R2 K33 ["isDisabled"]
      975 JUMPIFNOT                        R67 ; [+4]
      976 GETUPVAL                         R66 16
      977 GETTABLEKS                       R66 R66 K75 ["DISABLED_TRANSPARENCY"]
      979 JUMP                             ; [+1]
      980 LOADNIL                          R66
      981 SETTABLEKS                       R66 R65 K62 ["GroupTransparency"]
      983 LOADN                            R66 1
      984 SETTABLEKS                       R66 R65 K115 ["LayoutOrder"]
      986 LOADK                            R66 K117 ["size-0-full auto-x"]
      987 SETTABLEKS                       R66 R65 K19 ["tag"]
      989 LOADK                            R67 K118 ["%*--leading"]
      990 GETTABLEKS                       R69 R2 K73 ["testId"]
      992 NAMECALL                         R67 R67 K103 ["format"]
      994 CALL                             R67 2 1
      995 MOVE                             R66 R67
      996 SETTABLEKS                       R66 R65 K73 ["testId"]
      998 GETTABLEKS                       R66 R2 K114 ["leadingElement"]
     1000 CALL                             R63 3 1
     1001 JUMP                             ; [+1]
     1002 LOADNIL                          R63
     1003 SETTABLEKS                       R63 R62 K107 ["Leading"]
     1005 GETUPVAL                         R63 3
     1006 GETTABLEKS                       R63 R63 K61 ["createElement"]
     1008 JUMPIFNOT                        R5 ; [+2]
     1009 GETUPVAL                         R64 20
     1010 JUMP                             ; [+1]
     1011 GETUPVAL                         R64 14
     1012 DUPTABLE                         R65 K123 [{"LayoutOrder", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
     1013 LOADN                            R66 2
     1014 SETTABLEKS                       R66 R65 K115 ["LayoutOrder"]
     1016 SETTABLEKS                       R51 R65 K119 ["scroll"]
     1018 SETTABLEKS                       R50 R65 K120 ["layout"]
     1020 JUMPIFNOT                        R5 ; [+2]
     1021 MOVE                             R66 R55
     1022 JUMP                             ; [+1]
     1023 LOADNIL                          R66
     1024 SETTABLEKS                       R66 R65 K121 ["onCanvasPositionChanged"]
     1026 JUMPIFNOT                        R5 ; [+2]
     1027 MOVE                             R66 R53
     1028 JUMP                             ; [+1]
     1029 LOADNIL                          R66
     1030 SETTABLEKS                       R66 R65 K122 ["scrollingFrameRef"]
     1032 LOADK                            R66 K124 ["size-full fill clip"]
     1033 SETTABLEKS                       R66 R65 K19 ["tag"]
     1035 DUPTABLE                         R66 K127 [{"TextBox", "MobileTextBox"}]
     1036 JUMPIF                           R19 ; [+110]
     1037 GETUPVAL                         R67 3
     1038 GETTABLEKS                       R67 R67 K61 ["createElement"]
     1040 GETUPVAL                         R68 21
     1041 DUPTABLE                         R69 K138 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1042 GETTABLEKS                       R70 R2 K128 ["text"]
     1044 SETTABLEKS                       R70 R69 K128 ["text"]
     1046 GETTABLEKS                       R70 R2 K129 ["placeholder"]
     1048 SETTABLEKS                       R70 R69 K129 ["placeholder"]
     1050 GETTABLEKS                       R70 R2 K130 ["textInputType"]
     1052 SETTABLEKS                       R70 R69 K130 ["textInputType"]
     1054 SETTABLEKS                       R27 R69 K34 ["fontStyle"]
     1056 SETTABLEKS                       R26 R69 K131 ["textStyle"]
     1058 SETTABLEKS                       R5 R69 K132 ["isMultiLine"]
     1060 GETTABLEKS                       R70 R2 K33 ["isDisabled"]
     1062 SETTABLEKS                       R70 R69 K33 ["isDisabled"]
     1064 SETTABLEKS                       R6 R69 K133 ["ref"]
     1066 LOADK                            R71 K139 ["%* data-testid=%*--textbox"]
     1067 ORK                              R73 R17 K5 [""]
     1068 GETTABLEKS                       R74 R2 K73 ["testId"]
     1070 NAMECALL                         R71 R71 K103 ["format"]
     1072 CALL                             R71 3 1
     1073 MOVE                             R70 R71
     1074 SETTABLEKS                       R70 R69 K19 ["tag"]
     1076 JUMPIFNOT                        R5 ; [+2]
     1077 MOVE                             R70 R49
     1078 JUMP                             ; [+1]
     1079 LOADNIL                          R70
     1080 SETTABLEKS                       R70 R69 K63 ["Size"]
     1082 JUMPIFNOT                        R5 ; [+8]
     1083 JUMPIF                           R19 ; [+7]
     1084 GETTABLEKS                       R71 R2 K128 ["text"]
     1086 JUMPIFEQKS                       R71 K5 [""] ; [+4]
     1088 GETIMPORT                        R70 K142 [Enum.AutomaticSize.Y]
     1090 JUMP                             ; [+1]
     1091 LOADNIL                          R70
     1092 SETTABLEKS                       R70 R69 K134 ["automaticSize"]
     1094 SETTABLEKS                       R46 R69 K68 ["padding"]
     1096 SETTABLEKS                       R38 R69 K135 ["onFocusGained"]
     1098 JUMPIFNOT                        R5 ; [+3]
     1099 JUMPIFNOT                        R21 ; [+2]
     1100 LOADNIL                          R70
     1101 JUMP                             ; [+1]
     1102 MOVE                             R70 R39
     1103 SETTABLEKS                       R70 R69 K42 ["onFocusLost"]
     1105 SETTABLEKS                       R37 R69 K136 ["onTextChanged"]
     1107 JUMPIFNOT                        R5 ; [+2]
     1108 MOVE                             R70 R52
     1109 JUMP                             ; [+1]
     1110 LOADNIL                          R70
     1111 SETTABLEKS                       R70 R69 K137 ["onCursorPositionChanged"]
     1113 DUPTABLE                         R70 K144 [{"DragDetector", "BoundsChecker"}]
     1114 SETTABLEKS                       R56 R70 K104 ["DragDetector"]
     1116 JUMPIFNOT                        R5 ; [+25]
     1117 GETUPVAL                         R71 3
     1118 GETTABLEKS                       R71 R71 K61 ["createElement"]
     1120 GETUPVAL                         R72 21
     1121 DUPTABLE                         R73 K146 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
     1122 LOADB                            R74 1
     1123 SETTABLEKS                       R74 R73 K145 ["isBoundsChecker"]
     1125 SETTABLEKS                       R27 R73 K34 ["fontStyle"]
     1127 SETTABLEKS                       R26 R73 K131 ["textStyle"]
     1129 GETIMPORT                        R74 K55 [UDim2.new]
     1131 LOADN                            R75 1
     1132 LOADN                            R76 0
     1133 LOADN                            R77 1
     1134 MOVE                             R78 R48
     1135 CALL                             R74 4 1
     1136 SETTABLEKS                       R74 R73 K63 ["Size"]
     1138 SETTABLEKS                       R7 R73 K133 ["ref"]
     1140 CALL                             R71 2 1
     1141 JUMP                             ; [+1]
     1142 LOADNIL                          R71
     1143 SETTABLEKS                       R71 R70 K143 ["BoundsChecker"]
     1145 CALL                             R67 3 1
     1146 JUMP                             ; [+1]
     1147 LOADNIL                          R67
     1148 SETTABLEKS                       R67 R66 K125 ["TextBox"]
     1150 JUMPIFNOT                        R5 ; [+61]
     1151 JUMPIFNOT                        R19 ; [+60]
     1152 GETUPVAL                         R67 3
     1153 GETTABLEKS                       R67 R67 K61 ["createElement"]
     1155 GETUPVAL                         R68 21
     1156 DUPTABLE                         R69 K147 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1157 GETTABLEKS                       R70 R2 K128 ["text"]
     1159 SETTABLEKS                       R70 R69 K128 ["text"]
     1161 GETTABLEKS                       R70 R2 K129 ["placeholder"]
     1163 SETTABLEKS                       R70 R69 K129 ["placeholder"]
     1165 GETTABLEKS                       R70 R2 K130 ["textInputType"]
     1167 SETTABLEKS                       R70 R69 K130 ["textInputType"]
     1169 SETTABLEKS                       R27 R69 K34 ["fontStyle"]
     1171 SETTABLEKS                       R26 R69 K131 ["textStyle"]
     1173 SETTABLEKS                       R5 R69 K132 ["isMultiLine"]
     1175 GETTABLEKS                       R70 R2 K33 ["isDisabled"]
     1177 SETTABLEKS                       R70 R69 K33 ["isDisabled"]
     1179 SETTABLEKS                       R46 R69 K68 ["padding"]
     1181 SETTABLEKS                       R54 R69 K133 ["ref"]
     1183 LOADK                            R71 K148 ["%* data-testid=%*--mobile-textbox"]
     1184 ORK                              R73 R17 K5 [""]
     1185 GETTABLEKS                       R74 R2 K73 ["testId"]
     1187 NAMECALL                         R71 R71 K103 ["format"]
     1189 CALL                             R71 3 1
     1190 MOVE                             R70 R71
     1191 SETTABLEKS                       R70 R69 K19 ["tag"]
     1193 SETTABLEKS                       R49 R69 K63 ["Size"]
     1195 JUMPIFNOT                        R5 ; [+3]
     1196 JUMPIFNOT                        R21 ; [+2]
     1197 MOVE                             R70 R39
     1198 JUMP                             ; [+1]
     1199 LOADNIL                          R70
     1200 SETTABLEKS                       R70 R69 K42 ["onFocusLost"]
     1202 SETTABLEKS                       R37 R69 K136 ["onTextChanged"]
     1204 JUMPIFNOT                        R5 ; [+2]
     1205 MOVE                             R70 R52
     1206 JUMP                             ; [+1]
     1207 LOADNIL                          R70
     1208 SETTABLEKS                       R70 R69 K137 ["onCursorPositionChanged"]
     1210 CALL                             R67 2 1
     1211 JUMP                             ; [+1]
     1212 LOADNIL                          R67
     1213 SETTABLEKS                       R67 R66 K126 ["MobileTextBox"]
     1215 CALL                             R63 3 1
     1216 SETTABLEKS                       R63 R62 K108 ["TextBoxWrapper"]
     1218 GETTABLEKS                       R64 R2 K149 ["trailingElement"]
     1220 JUMPIFNOT                        R64 ; [+38]
     1221 GETUPVAL                         R63 3
     1222 GETTABLEKS                       R63 R63 K61 ["createElement"]
     1224 GETUPVAL                         R64 14
     1225 DUPTABLE                         R65 K116 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
     1226 GETUPVAL                         R67 4
     1227 GETTABLEKS                       R67 R67 K29 ["FoundationInternalTextInputDisabledTransparency"]
     1229 JUMPIFNOT                        R67 ; [+7]
     1230 GETTABLEKS                       R67 R2 K33 ["isDisabled"]
     1232 JUMPIFNOT                        R67 ; [+4]
     1233 GETUPVAL                         R66 16
     1234 GETTABLEKS                       R66 R66 K75 ["DISABLED_TRANSPARENCY"]
     1236 JUMP                             ; [+1]
     1237 LOADNIL                          R66
     1238 SETTABLEKS                       R66 R65 K62 ["GroupTransparency"]
     1240 LOADN                            R66 3
     1241 SETTABLEKS                       R66 R65 K115 ["LayoutOrder"]
     1243 LOADK                            R66 K117 ["size-0-full auto-x"]
     1244 SETTABLEKS                       R66 R65 K19 ["tag"]
     1246 LOADK                            R67 K150 ["%*--trailing"]
     1247 GETTABLEKS                       R69 R2 K73 ["testId"]
     1249 NAMECALL                         R67 R67 K103 ["format"]
     1251 CALL                             R67 2 1
     1252 MOVE                             R66 R67
     1253 SETTABLEKS                       R66 R65 K73 ["testId"]
     1255 GETTABLEKS                       R66 R2 K149 ["trailingElement"]
     1257 CALL                             R63 3 1
     1258 JUMP                             ; [+1]
     1259 LOADNIL                          R63
     1260 SETTABLEKS                       R63 R62 K109 ["Trailing"]
     1262 CALL                             R59 3 -1
     1263 RETURN                           R59 -1

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
       50 GETTABLEKS                       R11 R0 K14 ["Utility"]
       52 GETTABLEKS                       R11 R11 K16 ["blendTransparencies"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R0 K14 ["Utility"]
       59 GETTABLEKS                       R12 R12 K17 ["getDisabledStyle"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R13 R0 K14 ["Utility"]
       66 GETTABLEKS                       R13 R13 K18 ["getMultiLineTextHeight"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R14 R0 K14 ["Utility"]
       73 GETTABLEKS                       R14 R14 K19 ["isPluginSecurity"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETIMPORT                        R15 K1 [script]
       80 GETTABLEKS                       R15 R15 K4 ["Parent"]
       82 GETTABLEKS                       R15 R15 K20 ["truncateTextToCursor"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R16 R0 K14 ["Utility"]
       89 GETTABLEKS                       R16 R16 K21 ["useBindable"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R17 R0 K14 ["Utility"]
       96 GETTABLEKS                       R17 R17 K22 ["usePreferredInput"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K6 [require]
      101 GETTABLEKS                       R18 R0 K23 ["Providers"]
      103 GETTABLEKS                       R18 R18 K24 ["Style"]
      105 GETTABLEKS                       R18 R18 K25 ["useStyleTags"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R19 R3 K26 ["TextInput"]
      112 GETTABLEKS                       R19 R19 K27 ["useTextInputVariants"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R20 R0 K23 ["Providers"]
      119 GETTABLEKS                       R20 R20 K24 ["Style"]
      121 GETTABLEKS                       R20 R20 K28 ["useTokens"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K6 [require]
      126 GETTABLEKS                       R21 R0 K14 ["Utility"]
      128 GETTABLEKS                       R21 R21 K29 ["withCommonProps"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K6 [require]
      133 GETTABLEKS                       R22 R0 K14 ["Utility"]
      135 GETTABLEKS                       R22 R22 K30 ["withDefaults"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K6 [require]
      140 GETTABLEKS                       R23 R0 K31 ["Enums"]
      142 GETTABLEKS                       R23 R23 K32 ["InputSize"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K6 [require]
      147 GETTABLEKS                       R24 R0 K31 ["Enums"]
      149 GETTABLEKS                       R24 R24 K33 ["InputVariant"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K6 [require]
      154 GETTABLEKS                       R25 R0 K31 ["Enums"]
      156 GETTABLEKS                       R25 R25 K34 ["Radius"]
      158 CALL                             R24 1 1
      159 GETIMPORT                        R25 K6 [require]
      161 GETTABLEKS                       R26 R0 K31 ["Enums"]
      163 GETTABLEKS                       R26 R26 K35 ["ControlState"]
      165 CALL                             R25 1 1
      166 GETIMPORT                        R26 K6 [require]
      168 GETTABLEKS                       R27 R0 K31 ["Enums"]
      170 GETTABLEKS                       R27 R27 K36 ["StateLayerAffordance"]
      172 CALL                             R26 1 1
      173 DUPTABLE                         R27 K41 [{"size", "variant", "numLines", "testId"}]
      174 GETTABLEKS                       R28 R22 K42 ["Large"]
      176 SETTABLEKS                       R28 R27 K37 ["size"]
      178 GETTABLEKS                       R29 R9 K43 ["FoundationInternalTextInputVariants"]
      180 JUMPIFNOT                        R29 ; [+3]
      181 GETTABLEKS                       R28 R23 K44 ["Standard"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R28
      185 SETTABLEKS                       R28 R27 K38 ["variant"]
      187 LOADN                            R28 1
      188 SETTABLEKS                       R28 R27 K39 ["numLines"]
      190 LOADK                            R28 K45 ["--foundation-internal-text-input"]
      191 SETTABLEKS                       R28 R27 K40 ["testId"]
      193 GETTABLEKS                       R28 R2 K46 ["memo"]
      195 GETTABLEKS                       R29 R2 K47 ["forwardRef"]
      197 DUPCLOSURE                       R30 K48 [PROTO_0]
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R4
      202 CALL                             R29 1 -1
      203 CALL                             R28 -1 1
      204 DUPCLOSURE                       R29 K49 [PROTO_28]
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R27
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R12
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R20
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R26
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R28
      227 GETTABLEKS                       R30 R2 K46 ["memo"]
      229 GETTABLEKS                       R31 R2 K47 ["forwardRef"]
      231 MOVE                             R32 R29
      232 CALL                             R31 1 -1
      233 CALL                             R30 -1 -1
      234 RETURN                           R30 -1
