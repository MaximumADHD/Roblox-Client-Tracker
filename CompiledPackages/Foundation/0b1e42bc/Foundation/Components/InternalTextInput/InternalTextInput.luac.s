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
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R8 R9 K8 ["FoundationCleanupTextInputPolyfill"]
       32 JUMPIFNOT                        R8 ; [+2]
       33 LOADNIL                          R7
       34 JUMP                             ; [+1]
       35 LOADN                            R7 1
       36 SETTABLEKS                       R7 R6 K9 ["BackgroundTransparency"]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R8 R9 K8 ["FoundationCleanupTextInputPolyfill"]
       41 JUMPIFNOT                        R8 ; [+2]
       42 LOADNIL                          R7
       43 JUMP                             ; [+1]
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R6 K10 ["ClipsDescendants"]
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R8 R9 K8 ["FoundationCleanupTextInputPolyfill"]
       50 JUMPIFNOT                        R8 ; [+2]
       51 LOADNIL                          R7
       52 JUMP                             ; [+2]
       53 GETIMPORT                        R7 K14 [Enum.TextXAlignment.Left]
       55 SETTABLEKS                       R7 R6 K12 ["TextXAlignment"]
       57 GETTABLEKS                       R8 R0 K15 ["fontStyle"]
       59 GETTABLEKS                       R7 R8 K16 ["Font"]
       61 SETTABLEKS                       R7 R6 K16 ["Font"]
       63 GETTABLEKS                       R8 R0 K15 ["fontStyle"]
       65 GETTABLEKS                       R7 R8 K17 ["FontSize"]
       67 SETTABLEKS                       R7 R6 K18 ["TextSize"]
       69 GETTABLEKS                       R8 R0 K15 ["fontStyle"]
       71 GETTABLEKS                       R7 R8 K19 ["LineHeight"]
       73 SETTABLEKS                       R7 R6 K19 ["LineHeight"]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R8 R9 K8 ["FoundationCleanupTextInputPolyfill"]
       78 JUMPIF                           R8 ; [+8]
       79 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       81 JUMPIFNOT                        R8 ; [+5]
       82 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       84 GETTABLEKS                       R7 R8 K21 ["Color3"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R7
       88 SETTABLEKS                       R7 R6 K22 ["TextColor3"]
       90 GETUPVAL                         R9 1
       91 GETTABLEKS                       R8 R9 K8 ["FoundationCleanupTextInputPolyfill"]
       93 JUMPIF                           R8 ; [+8]
       94 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       96 JUMPIFNOT                        R8 ; [+5]
       97 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       99 GETTABLEKS                       R7 R8 K23 ["Transparency"]
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
      165 GETUPVAL                         R8 0
      166 GETTABLEKS                       R7 R8 K47 ["Tag"]
      168 GETTABLEKS                       R8 R0 K48 ["tag"]
      170 SETTABLE                         R8 R6 R7
      171 GETUPVAL                         R9 0
      172 GETTABLEKS                       R8 R9 K49 ["Change"]
      174 GETTABLEKS                       R7 R8 K45 ["Text"]
      176 GETTABLEKS                       R8 R0 K50 ["onTextChanged"]
      178 SETTABLE                         R8 R6 R7
      179 GETUPVAL                         R9 0
      180 GETTABLEKS                       R8 R9 K49 ["Change"]
      182 GETTABLEKS                       R7 R8 K51 ["CursorPosition"]
      184 GETTABLEKS                       R8 R0 K52 ["onCursorPositionChanged"]
      186 SETTABLE                         R8 R6 R7
      187 GETUPVAL                         R9 0
      188 GETTABLEKS                       R8 R9 K53 ["Event"]
      190 GETTABLEKS                       R7 R8 K54 ["Focused"]
      192 GETTABLEKS                       R8 R0 K55 ["onFocusGained"]
      194 SETTABLE                         R8 R6 R7
      195 GETUPVAL                         R9 0
      196 GETTABLEKS                       R8 R9 K53 ["Event"]
      198 GETTABLEKS                       R7 R8 K56 ["FocusLost"]
      200 GETTABLEKS                       R8 R0 K57 ["onFocusLost"]
      202 SETTABLE                         R8 R6 R7
      203 GETTABLEKS                       R8 R0 K58 ["padding"]
      205 JUMPIFNOT                        R8 ; [+14]
      206 DUPTABLE                         R7 K60 [{"Padding"}]
      207 GETUPVAL                         R9 0
      208 GETTABLEKS                       R8 R9 K2 ["createElement"]
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
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K1 ["outerContainer"]
        3 GETTABLEKS                       R5 R6 K2 ["minHeight"]
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
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R6 R7 K4 ["useRef"]
       22 LOADNIL                          R7
       23 CALL                             R6 1 1
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R7 R8 K4 ["useRef"]
       27 LOADNIL                          R8
       28 CALL                             R7 1 1
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R8 R9 K4 ["useRef"]
       32 LOADNIL                          R9
       33 CALL                             R8 1 1
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R9 R10 K4 ["useRef"]
       37 LOADK                            R10 K5 [""]
       38 CALL                             R9 1 1
       39 GETUPVAL                         R11 3
       40 GETTABLEKS                       R10 R11 K4 ["useRef"]
       42 LOADNIL                          R11
       43 CALL                             R10 1 1
       44 GETUPVAL                         R12 3
       45 GETTABLEKS                       R11 R12 K4 ["useRef"]
       47 GETIMPORT                        R12 K8 [Vector2.zero]
       49 CALL                             R11 1 1
       50 GETUPVAL                         R13 3
       51 GETTABLEKS                       R12 R13 K9 ["useState"]
       53 LOADB                            R13 0
       54 CALL                             R12 1 2
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R14 R15 K9 ["useState"]
       58 LOADB                            R15 0
       59 CALL                             R14 1 2
       60 GETUPVAL                         R17 4
       61 GETTABLEKS                       R16 R17 K10 ["FoundationInternalTextInputVariants"]
       63 JUMPIF                           R16 ; [+3]
       64 GETTABLEKS                       R16 R2 K11 ["forceEnableFlagsForSearchInput"]
       66 JUMPIFNOT                        R16 ; [+11]
       67 GETTABLEKS                       R17 R2 K12 ["variant"]
       69 JUMPIFNOT                        R17 ; [+3]
       70 GETTABLEKS                       R16 R2 K12 ["variant"]
       72 JUMP                             ; [+3]
       73 GETUPVAL                         R17 5
       74 GETTABLEKS                       R16 R17 K13 ["Standard"]
       76 SETTABLEKS                       R16 R2 K12 ["variant"]
       78 GETUPVAL                         R16 6
       79 MOVE                             R17 R3
       80 GETTABLEKS                       R18 R2 K14 ["size"]
       82 GETUPVAL                         R21 4
       83 GETTABLEKS                       R20 R21 K10 ["FoundationInternalTextInputVariants"]
       85 JUMPIF                           R20 ; [+3]
       86 GETTABLEKS                       R20 R2 K11 ["forceEnableFlagsForSearchInput"]
       88 JUMPIFNOT                        R20 ; [+3]
       89 GETTABLEKS                       R19 R2 K12 ["variant"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R19
       93 GETUPVAL                         R22 4
       94 GETTABLEKS                       R21 R22 K15 ["FoundationInternalTextInputCornerRadius"]
       96 JUMPIF                           R21 ; [+3]
       97 GETTABLEKS                       R21 R2 K11 ["forceEnableFlagsForSearchInput"]
       99 JUMPIFNOT                        R21 ; [+3]
      100 GETTABLEKS                       R20 R2 K16 ["radius"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R20
      104 GETUPVAL                         R23 4
      105 GETTABLEKS                       R22 R23 K17 ["FoundationTextInputAlignStrokeBehavior"]
      107 JUMPIF                           R22 ; [+3]
      108 GETTABLEKS                       R22 R2 K11 ["forceEnableFlagsForSearchInput"]
      110 JUMPIFNOT                        R22 ; [+2]
      111 MOVE                             R21 R14
      112 JUMP                             ; [+1]
      113 LOADNIL                          R21
      114 GETUPVAL                         R24 4
      115 GETTABLEKS                       R23 R24 K17 ["FoundationTextInputAlignStrokeBehavior"]
      117 JUMPIF                           R23 ; [+3]
      118 GETTABLEKS                       R23 R2 K11 ["forceEnableFlagsForSearchInput"]
      120 JUMPIFNOT                        R23 ; [+2]
      121 MOVE                             R22 R12
      122 JUMP                             ; [+1]
      123 LOADNIL                          R22
      124 GETUPVAL                         R25 4
      125 GETTABLEKS                       R24 R25 K17 ["FoundationTextInputAlignStrokeBehavior"]
      127 JUMPIF                           R24 ; [+3]
      128 GETTABLEKS                       R24 R2 K11 ["forceEnableFlagsForSearchInput"]
      130 JUMPIFNOT                        R24 ; [+3]
      131 GETTABLEKS                       R23 R2 K18 ["hasError"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R23
      135 GETTABLEKS                       R24 R2 K11 ["forceEnableFlagsForSearchInput"]
      137 CALL                             R16 8 1
      138 GETUPVAL                         R17 7
      139 GETTABLEKS                       R19 R16 K19 ["textBox"]
      141 GETTABLEKS                       R18 R19 K20 ["tag"]
      143 CALL                             R17 1 1
      144 GETUPVAL                         R18 8
      145 CALL                             R18 0 1
      146 GETUPVAL                         R20 3
      147 GETTABLEKS                       R19 R20 K9 ["useState"]
      149 LOADB                            R20 0
      150 CALL                             R19 1 2
      151 GETIMPORT                        R22 K24 [Enum.PreferredInput.Touch]
      153 JUMPIFEQ                         R18 R22 ; [+2]
      155 LOADB                            R21 0 +1
      156 LOADB                            R21 1
      157 GETTABLEKS                       R23 R3 K25 ["Stroke"]
      159 GETTABLEKS                       R22 R23 K13 ["Standard"]
      161 FASTCALL1                        MATH_CEIL R22 ; [+3]
      162 MOVE                             R25 R22
      163 GETIMPORT                        R24 K28 [math.ceil]
      165 CALL                             R24 1 1
      166 MULK                             R23 R24 K26 [2]
      167 GETTABLEKS                       R25 R3 K25 ["Stroke"]
      169 GETTABLEKS                       R24 R25 K29 ["Thick"]
      171 FASTCALL1                        MATH_CEIL R24 ; [+3]
      172 MOVE                             R27 R24
      173 GETIMPORT                        R26 K28 [math.ceil]
      175 CALL                             R26 1 1
      176 MULK                             R25 R26 K26 [2]
      177 GETUPVAL                         R28 4
      178 GETTABLEKS                       R27 R28 K30 ["FoundationInternalTextInputDisabledTransparency"]
      180 JUMPIFNOT                        R27 ; [+11]
      181 GETUPVAL                         R26 9
      182 GETTABLEKS                       R29 R3 K31 ["Color"]
      184 GETTABLEKS                       R28 R29 K32 ["Content"]
      186 GETTABLEKS                       R27 R28 K33 ["Emphasis"]
      188 GETTABLEKS                       R28 R2 K34 ["isDisabled"]
      190 CALL                             R26 2 1
      191 JUMP                             ; [+6]
      192 GETTABLEKS                       R28 R3 K31 ["Color"]
      194 GETTABLEKS                       R27 R28 K32 ["Content"]
      196 GETTABLEKS                       R26 R27 K33 ["Emphasis"]
      198 GETTABLEKS                       R28 R16 K19 ["textBox"]
      200 GETTABLEKS                       R27 R28 K35 ["fontStyle"]
      202 GETTABLEKS                       R28 R27 K36 ["FontSize"]
      204 GETTABLEKS                       R29 R27 K37 ["LineHeight"]
      206 GETUPVAL                         R31 3
      207 GETTABLEKS                       R30 R31 K38 ["useCallback"]
      209 NEWCLOSURE                       R31 P0
      210 CAPTURE                          VAL R6
      211 NEWTABLE                         R32 0 0
      213 CALL                             R30 2 1
      214 GETUPVAL                         R32 3
      215 GETTABLEKS                       R31 R32 K38 ["useCallback"]
      217 NEWCLOSURE                       R32 P1
      218 CAPTURE                          VAL R6
      219 NEWTABLE                         R33 0 0
      221 CALL                             R31 2 1
      222 GETUPVAL                         R33 3
      223 GETTABLEKS                       R32 R33 K38 ["useCallback"]
      225 NEWCLOSURE                       R33 P2
      226 CAPTURE                          VAL R6
      227 NEWTABLE                         R34 0 0
      229 CALL                             R32 2 1
      230 GETUPVAL                         R34 3
      231 GETTABLEKS                       R33 R34 K38 ["useCallback"]
      233 NEWCLOSURE                       R34 P3
      234 CAPTURE                          VAL R6
      235 NEWTABLE                         R35 0 0
      237 CALL                             R33 2 1
      238 GETUPVAL                         R35 3
      239 GETTABLEKS                       R34 R35 K38 ["useCallback"]
      241 NEWCLOSURE                       R35 P4
      242 CAPTURE                          VAL R6
      243 NEWTABLE                         R36 0 0
      245 CALL                             R34 2 1
      246 GETUPVAL                         R36 3
      247 GETTABLEKS                       R35 R36 K38 ["useCallback"]
      249 NEWCLOSURE                       R36 P5
      250 CAPTURE                          VAL R6
      251 NEWTABLE                         R37 0 0
      253 CALL                             R35 2 1
      254 GETUPVAL                         R37 3
      255 GETTABLEKS                       R36 R37 K38 ["useCallback"]
      257 NEWCLOSURE                       R37 P6
      258 CAPTURE                          VAL R6
      259 NEWTABLE                         R38 0 0
      261 CALL                             R36 2 1
      262 GETUPVAL                         R38 3
      263 GETTABLEKS                       R37 R38 K39 ["useImperativeHandle"]
      265 MOVE                             R38 R1
      266 NEWCLOSURE                       R39 P7
      267 CAPTURE                          VAL R32
      268 CAPTURE                          VAL R30
      269 CAPTURE                          VAL R31
      270 CAPTURE                          VAL R13
      271 CAPTURE                          VAL R33
      272 CAPTURE                          VAL R34
      273 CAPTURE                          VAL R36
      274 CAPTURE                          VAL R35
      275 NEWTABLE                         R40 0 7
      277 MOVE                             R41 R34
      278 MOVE                             R42 R32
      279 MOVE                             R43 R33
      280 MOVE                             R44 R30
      281 MOVE                             R45 R31
      282 MOVE                             R46 R36
      283 MOVE                             R47 R35
      284 SETLIST                          R40 R41 7 [1]
      286 CALL                             R37 3 0
      287 GETUPVAL                         R38 3
      288 GETTABLEKS                       R37 R38 K38 ["useCallback"]
      290 NEWCLOSURE                       R38 P8
      291 CAPTURE                          VAL R9
      292 CAPTURE                          VAL R5
      293 CAPTURE                          VAL R7
      294 CAPTURE                          VAL R2
      295 NEWTABLE                         R39 0 3
      297 GETTABLEKS                       R40 R2 K40 ["onChanged"]
      299 MOVE                             R41 R5
      300 MOVE                             R42 R19
      301 SETLIST                          R39 R40 3 [1]
      303 CALL                             R37 2 1
      304 GETUPVAL                         R39 3
      305 GETTABLEKS                       R38 R39 K38 ["useCallback"]
      307 NEWCLOSURE                       R39 P9
      308 CAPTURE                          VAL R2
      309 CAPTURE                          VAL R5
      310 CAPTURE                          VAL R21
      311 CAPTURE                          VAL R6
      312 CAPTURE                          VAL R9
      313 CAPTURE                          VAL R20
      314 CAPTURE                          VAL R15
      315 NEWTABLE                         R40 0 4
      317 GETTABLEKS                       R41 R2 K41 ["onFocus"]
      319 GETTABLEKS                       R42 R2 K34 ["isDisabled"]
      321 MOVE                             R43 R21
      322 MOVE                             R44 R5
      323 SETLIST                          R40 R41 4 [1]
      325 CALL                             R38 2 1
      326 GETUPVAL                         R40 3
      327 GETTABLEKS                       R39 R40 K38 ["useCallback"]
      329 NEWCLOSURE                       R40 P10
      330 CAPTURE                          VAL R15
      331 CAPTURE                          VAL R5
      332 CAPTURE                          VAL R20
      333 CAPTURE                          VAL R2
      334 NEWTABLE                         R41 0 3
      336 GETTABLEKS                       R42 R2 K42 ["onReturnPressed"]
      338 MOVE                             R43 R5
      339 GETTABLEKS                       R44 R2 K43 ["onFocusLost"]
      341 SETLIST                          R41 R42 3 [1]
      343 CALL                             R39 2 1
      344 GETUPVAL                         R41 3
      345 GETTABLEKS                       R40 R41 K38 ["useCallback"]
      347 NEWCLOSURE                       R41 P11
      348 CAPTURE                          VAL R13
      349 CAPTURE                          UPVAL U10
      350 NEWTABLE                         R42 0 0
      352 CALL                             R40 2 1
      353 GETUPVAL                         R42 3
      354 GETTABLEKS                       R41 R42 K38 ["useCallback"]
      356 NEWCLOSURE                       R42 P12
      357 CAPTURE                          VAL R10
      358 CAPTURE                          VAL R2
      359 NEWTABLE                         R43 0 1
      361 GETTABLEKS                       R44 R2 K44 ["onDragStarted"]
      363 SETLIST                          R43 R44 1 [1]
      365 CALL                             R41 2 1
      366 GETUPVAL                         R43 3
      367 GETTABLEKS                       R42 R43 K38 ["useCallback"]
      369 NEWCLOSURE                       R43 P13
      370 CAPTURE                          VAL R2
      371 NEWTABLE                         R44 0 1
      373 GETTABLEKS                       R45 R2 K45 ["onDrag"]
      375 SETLIST                          R44 R45 1 [1]
      377 CALL                             R42 2 1
      378 GETUPVAL                         R44 3
      379 GETTABLEKS                       R43 R44 K38 ["useCallback"]
      381 NEWCLOSURE                       R44 P14
      382 CAPTURE                          VAL R10
      383 CAPTURE                          VAL R30
      384 CAPTURE                          VAL R31
      385 CAPTURE                          VAL R15
      386 CAPTURE                          VAL R2
      387 NEWTABLE                         R45 0 1
      389 GETTABLEKS                       R46 R2 K46 ["onDragEnded"]
      391 SETLIST                          R45 R46 1 [1]
      393 CALL                             R43 2 1
      394 GETUPVAL                         R45 3
      395 GETTABLEKS                       R44 R45 K47 ["useMemo"]
      397 NEWCLOSURE                       R45 P15
      398 CAPTURE                          VAL R16
      399 CAPTURE                          VAL R3
      400 NEWTABLE                         R46 0 2
      402 MOVE                             R47 R3
      403 GETTABLEKS                       R49 R16 K48 ["innerContainer"]
      405 GETTABLEKS                       R48 R49 K16 ["radius"]
      407 SETLIST                          R46 R47 2 [1]
      409 CALL                             R44 2 1
      410 GETUPVAL                         R46 3
      411 GETTABLEKS                       R45 R46 K47 ["useMemo"]
      413 NEWCLOSURE                       R46 P16
      414 CAPTURE                          UPVAL U11
      415 CAPTURE                          VAL R28
      416 CAPTURE                          VAL R4
      417 CAPTURE                          VAL R29
      418 NEWTABLE                         R47 0 3
      420 MOVE                             R48 R28
      421 MOVE                             R49 R4
      422 MOVE                             R50 R29
      423 SETLIST                          R47 R48 3 [1]
      425 CALL                             R45 2 1
      426 GETUPVAL                         R47 3
      427 GETTABLEKS                       R46 R47 K47 ["useMemo"]
      429 NEWCLOSURE                       R47 P17
      430 CAPTURE                          VAL R16
      431 CAPTURE                          VAL R23
      432 CAPTURE                          UPVAL U11
      433 CAPTURE                          VAL R28
      434 CAPTURE                          VAL R29
      435 CAPTURE                          VAL R45
      436 NEWTABLE                         R48 0 6
      438 GETTABLEKS                       R50 R16 K49 ["outerContainer"]
      440 GETTABLEKS                       R49 R50 K50 ["minHeight"]
      442 MOVE                             R50 R23
      443 MOVE                             R51 R25
      444 MOVE                             R52 R28
      445 MOVE                             R53 R45
      446 MOVE                             R54 R29
      447 SETLIST                          R48 R49 6 [1]
      449 CALL                             R46 2 2
      450 GETTABLEKS                       R50 R46 K51 ["bottom"]
      452 GETTABLEKS                       R49 R50 K52 ["Offset"]
      454 GETTABLEKS                       R51 R46 K53 ["top"]
      456 GETTABLEKS                       R50 R51 K52 ["Offset"]
      458 ADD                              R48 R49 R50
      459 GETIMPORT                        R49 K56 [UDim2.new]
      461 LOADN                            R50 1
      462 LOADN                            R51 0
      463 LOADN                            R52 0
      464 ADD                              R53 R45 R48
      465 CALL                             R49 4 1
      466 GETUPVAL                         R51 3
      467 GETTABLEKS                       R50 R51 K47 ["useMemo"]
      469 NEWCLOSURE                       R51 P18
      470 CAPTURE                          VAL R5
      471 NEWTABLE                         R52 0 1
      473 MOVE                             R53 R5
      474 SETLIST                          R52 R53 1 [1]
      476 CALL                             R50 2 1
      477 GETUPVAL                         R52 3
      478 GETTABLEKS                       R51 R52 K47 ["useMemo"]
      480 NEWCLOSURE                       R52 P19
      481 CAPTURE                          VAL R5
      482 NEWTABLE                         R53 0 1
      484 MOVE                             R54 R5
      485 SETLIST                          R53 R54 1 [1]
      487 CALL                             R51 2 1
      488 GETUPVAL                         R53 3
      489 GETTABLEKS                       R52 R53 K38 ["useCallback"]
      491 NEWCLOSURE                       R53 P20
      492 CAPTURE                          VAL R8
      493 CAPTURE                          VAL R7
      494 CAPTURE                          UPVAL U12
      495 CAPTURE                          VAL R46
      496 NEWTABLE                         R54 0 1
      498 MOVE                             R55 R46
      499 SETLIST                          R54 R55 1 [1]
      501 CALL                             R52 2 1
      502 GETUPVAL                         R54 3
      503 GETTABLEKS                       R53 R54 K38 ["useCallback"]
      505 NEWCLOSURE                       R54 P21
      506 CAPTURE                          VAL R8
      507 CAPTURE                          VAL R11
      508 NEWTABLE                         R55 0 0
      510 CALL                             R53 2 1
      511 GETUPVAL                         R55 3
      512 GETTABLEKS                       R54 R55 K38 ["useCallback"]
      514 NEWCLOSURE                       R55 P22
      515 CAPTURE                          VAL R9
      516 NEWTABLE                         R56 0 0
      518 CALL                             R54 2 1
      519 GETUPVAL                         R56 3
      520 GETTABLEKS                       R55 R56 K38 ["useCallback"]
      522 NEWCLOSURE                       R56 P23
      523 CAPTURE                          VAL R11
      524 NEWTABLE                         R57 0 0
      526 CALL                             R55 2 1
      527 GETUPVAL                         R57 3
      528 GETTABLEKS                       R56 R57 K47 ["useMemo"]
      530 NEWCLOSURE                       R57 P24
      531 CAPTURE                          VAL R2
      532 CAPTURE                          UPVAL U3
      533 CAPTURE                          VAL R41
      534 CAPTURE                          VAL R42
      535 CAPTURE                          VAL R43
      536 CAPTURE                          VAL R14
      537 NEWTABLE                         R58 0 5
      539 MOVE                             R59 R41
      540 MOVE                             R60 R42
      541 MOVE                             R61 R43
      542 MOVE                             R62 R14
      543 GETTABLEKS                       R63 R2 K34 ["isDisabled"]
      545 SETLIST                          R58 R59 5 [1]
      547 CALL                             R56 2 1
      548 GETUPVAL                         R57 13
      549 GETTABLEKS                       R59 R2 K57 ["horizontalPadding"]
      551 JUMPIFNOT                        R59 ; [+11]
      552 GETTABLEKS                       R59 R2 K57 ["horizontalPadding"]
      554 GETTABLEKS                       R58 R59 K58 ["left"]
      556 JUMPIF                           R58 ; [+11]
      557 GETIMPORT                        R58 K60 [UDim.new]
      559 LOADN                            R59 0
      560 LOADN                            R60 0
      561 CALL                             R58 2 1
      562 JUMP                             ; [+5]
      563 GETIMPORT                        R58 K60 [UDim.new]
      565 LOADN                            R59 0
      566 LOADN                            R60 0
      567 CALL                             R58 2 1
      568 CALL                             R57 1 1
      569 GETUPVAL                         R58 13
      570 GETTABLEKS                       R60 R2 K57 ["horizontalPadding"]
      572 JUMPIFNOT                        R60 ; [+11]
      573 GETTABLEKS                       R60 R2 K57 ["horizontalPadding"]
      575 GETTABLEKS                       R59 R60 K61 ["right"]
      577 JUMPIF                           R59 ; [+11]
      578 GETIMPORT                        R59 K60 [UDim.new]
      580 LOADN                            R60 0
      581 LOADN                            R61 0
      582 CALL                             R59 2 1
      583 JUMP                             ; [+5]
      584 GETIMPORT                        R59 K60 [UDim.new]
      586 LOADN                            R60 0
      587 LOADN                            R61 0
      588 CALL                             R59 2 1
      589 CALL                             R58 1 1
      590 GETUPVAL                         R60 3
      591 GETTABLEKS                       R59 R60 K62 ["createElement"]
      593 GETUPVAL                         R60 14
      594 GETUPVAL                         R61 15
      595 MOVE                             R62 R2
      596 DUPTABLE                         R63 K75 [{"GroupTransparency", "Size", "selection", "cursor", "stroke", "cornerRadius", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      597 GETUPVAL                         R66 4
      598 GETTABLEKS                       R65 R66 K30 ["FoundationInternalTextInputDisabledTransparency"]
      600 JUMPIF                           R65 ; [+7]
      601 GETTABLEKS                       R65 R2 K34 ["isDisabled"]
      603 JUMPIFNOT                        R65 ; [+4]
      604 GETUPVAL                         R65 16
      605 GETTABLEKS                       R64 R65 K76 ["DISABLED_TRANSPARENCY"]
      607 JUMP                             ; [+1]
      608 LOADNIL                          R64
      609 SETTABLEKS                       R64 R63 K63 ["GroupTransparency"]
      611 GETIMPORT                        R64 K56 [UDim2.new]
      613 LOADN                            R65 1
      614 LOADN                            R66 0
      615 LOADN                            R67 0
      616 MOVE                             R68 R47
      617 CALL                             R64 4 1
      618 SETTABLEKS                       R64 R63 K64 ["Size"]
      620 DUPTABLE                         R64 K78 [{"Selectable"}]
      621 GETTABLEKS                       R66 R2 K34 ["isDisabled"]
      623 NOT                              R65 R66
      624 SETTABLEKS                       R65 R64 K77 ["Selectable"]
      626 SETTABLEKS                       R64 R63 K65 ["selection"]
      628 SETTABLEKS                       R44 R63 K66 ["cursor"]
      630 GETUPVAL                         R66 4
      631 GETTABLEKS                       R65 R66 K17 ["FoundationTextInputAlignStrokeBehavior"]
      633 JUMPIF                           R65 ; [+3]
      634 GETTABLEKS                       R65 R2 K11 ["forceEnableFlagsForSearchInput"]
      636 JUMPIFNOT                        R65 ; [+10]
      637 GETTABLEKS                       R66 R16 K79 ["outerView"]
      639 GETTABLEKS                       R65 R66 K80 ["strokeStyle"]
      641 JUMPIFNOT                        R65 ; [+128]
      642 GETTABLEKS                       R66 R16 K79 ["outerView"]
      644 GETTABLEKS                       R65 R66 K81 ["strokeThickness"]
      646 JUMPIFNOT                        R65 ; [+123]
      647 DUPTABLE                         R64 K85 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      648 GETUPVAL                         R67 4
      649 GETTABLEKS                       R66 R67 K17 ["FoundationTextInputAlignStrokeBehavior"]
      651 JUMPIF                           R66 ; [+3]
      652 GETTABLEKS                       R66 R2 K11 ["forceEnableFlagsForSearchInput"]
      654 JUMPIFNOT                        R66 ; [+7]
      655 GETTABLEKS                       R67 R16 K79 ["outerView"]
      657 GETTABLEKS                       R66 R67 K80 ["strokeStyle"]
      659 GETTABLEKS                       R65 R66 K86 ["Color3"]
      661 JUMP                             ; [+20]
      662 GETTABLEKS                       R66 R2 K18 ["hasError"]
      664 JUMPIFNOT                        R66 ; [+9]
      665 GETTABLEKS                       R68 R3 K31 ["Color"]
      667 GETTABLEKS                       R67 R68 K87 ["System"]
      669 GETTABLEKS                       R66 R67 K88 ["Alert"]
      671 GETTABLEKS                       R65 R66 K86 ["Color3"]
      673 JUMP                             ; [+8]
      674 GETTABLEKS                       R68 R3 K31 ["Color"]
      676 GETTABLEKS                       R67 R68 K25 ["Stroke"]
      678 GETTABLEKS                       R66 R67 K33 ["Emphasis"]
      680 GETTABLEKS                       R65 R66 K86 ["Color3"]
      682 SETTABLEKS                       R65 R64 K31 ["Color"]
      684 GETUPVAL                         R67 4
      685 GETTABLEKS                       R66 R67 K17 ["FoundationTextInputAlignStrokeBehavior"]
      687 JUMPIF                           R66 ; [+3]
      688 GETTABLEKS                       R66 R2 K11 ["forceEnableFlagsForSearchInput"]
      690 JUMPIFNOT                        R66 ; [+22]
      691 GETTABLEKS                       R66 R2 K34 ["isDisabled"]
      693 JUMPIFNOT                        R66 ; [+12]
      694 GETUPVAL                         R65 17
      695 GETTABLEKS                       R68 R16 K79 ["outerView"]
      697 GETTABLEKS                       R67 R68 K80 ["strokeStyle"]
      699 GETTABLEKS                       R66 R67 K82 ["Transparency"]
      701 GETUPVAL                         R68 16
      702 GETTABLEKS                       R67 R68 K76 ["DISABLED_TRANSPARENCY"]
      704 CALL                             R65 2 1
      705 JUMP                             ; [+30]
      706 GETTABLEKS                       R67 R16 K79 ["outerView"]
      708 GETTABLEKS                       R66 R67 K80 ["strokeStyle"]
      710 GETTABLEKS                       R65 R66 K82 ["Transparency"]
      712 JUMP                             ; [+23]
      713 GETTABLEKS                       R66 R2 K18 ["hasError"]
      715 JUMPIFNOT                        R66 ; [+9]
      716 GETTABLEKS                       R68 R3 K31 ["Color"]
      718 GETTABLEKS                       R67 R68 K87 ["System"]
      720 GETTABLEKS                       R66 R67 K88 ["Alert"]
      722 GETTABLEKS                       R65 R66 K82 ["Transparency"]
      724 JUMP                             ; [+11]
      725 JUMPIFNOT                        R14 ; [+2]
      726 LOADN                            R65 0
      727 JUMP                             ; [+8]
      728 GETTABLEKS                       R68 R3 K31 ["Color"]
      730 GETTABLEKS                       R67 R68 K25 ["Stroke"]
      732 GETTABLEKS                       R66 R67 K33 ["Emphasis"]
      734 GETTABLEKS                       R65 R66 K82 ["Transparency"]
      736 SETTABLEKS                       R65 R64 K82 ["Transparency"]
      738 GETUPVAL                         R67 4
      739 GETTABLEKS                       R66 R67 K17 ["FoundationTextInputAlignStrokeBehavior"]
      741 JUMPIF                           R66 ; [+3]
      742 GETTABLEKS                       R66 R2 K11 ["forceEnableFlagsForSearchInput"]
      744 JUMPIFNOT                        R66 ; [+5]
      745 GETTABLEKS                       R66 R16 K79 ["outerView"]
      747 GETTABLEKS                       R65 R66 K81 ["strokeThickness"]
      749 JUMP                             ; [+1]
      750 MOVE                             R65 R22
      751 SETTABLEKS                       R65 R64 K83 ["Thickness"]
      753 GETUPVAL                         R67 4
      754 GETTABLEKS                       R66 R67 K17 ["FoundationTextInputAlignStrokeBehavior"]
      756 JUMPIF                           R66 ; [+3]
      757 GETTABLEKS                       R66 R2 K11 ["forceEnableFlagsForSearchInput"]
      759 JUMPIFNOT                        R66 ; [+5]
      760 JUMPIF                           R14 ; [+1]
      761 JUMPIFNOT                        R12 ; [+3]
      762 GETIMPORT                        R65 K90 [Enum.BorderStrokePosition.Center]
      764 JUMP                             ; [+2]
      765 GETIMPORT                        R65 K92 [Enum.BorderStrokePosition.Inner]
      767 SETTABLEKS                       R65 R64 K84 ["BorderStrokePosition"]
      769 JUMP                             ; [+1]
      770 LOADNIL                          R64
      771 SETTABLEKS                       R64 R63 K67 ["stroke"]
      773 GETUPVAL                         R66 4
      774 GETTABLEKS                       R65 R66 K93 ["FoundationTextInputSingleLineCircleRadius"]
      776 JUMPIFNOT                        R65 ; [+21]
      777 GETTABLEKS                       R65 R2 K16 ["radius"]
      779 GETUPVAL                         R67 18
      780 GETTABLEKS                       R66 R67 K94 ["Circle"]
      782 JUMPIFNOTEQ                      R65 R66 ; [+15]
      784 GETIMPORT                        R64 K60 [UDim.new]
      786 LOADN                            R65 0
      787 GETTABLEKS                       R69 R16 K49 ["outerContainer"]
      789 GETTABLEKS                       R68 R69 K50 ["minHeight"]
      791 DIVK                             R67 R68 K26 [2]
      792 FASTCALL1                        MATH_CEIL R67 ; [+2]
      793 GETIMPORT                        R66 K28 [math.ceil]
      795 CALL                             R66 1 1
      796 CALL                             R64 2 1
      797 JUMP                             ; [+1]
      798 LOADNIL                          R64
      799 SETTABLEKS                       R64 R63 K68 ["cornerRadius"]
      801 DUPTABLE                         R64 K95 [{"left", "right", "top", "bottom"}]
      802 NEWCLOSURE                       R67 P25
      803 CAPTURE                          VAL R22
      804 NAMECALL                         R65 R57 K96 ["map"]
      806 CALL                             R65 2 1
      807 SETTABLEKS                       R65 R64 K58 ["left"]
      809 NEWCLOSURE                       R67 P26
      810 CAPTURE                          VAL R22
      811 NAMECALL                         R65 R58 K96 ["map"]
      813 CALL                             R65 2 1
      814 SETTABLEKS                       R65 R64 K61 ["right"]
      816 GETIMPORT                        R65 K60 [UDim.new]
      818 LOADN                            R66 0
      819 MOVE                             R67 R22
      820 CALL                             R65 2 1
      821 SETTABLEKS                       R65 R64 K53 ["top"]
      823 GETIMPORT                        R65 K60 [UDim.new]
      825 LOADN                            R66 0
      826 MOVE                             R67 R22
      827 CALL                             R65 2 1
      828 SETTABLEKS                       R65 R64 K51 ["bottom"]
      830 SETTABLEKS                       R64 R63 K69 ["padding"]
      832 GETTABLEKS                       R65 R2 K34 ["isDisabled"]
      834 JUMPIF                           R65 ; [+2]
      835 MOVE                             R64 R30
      836 JUMP                             ; [+1]
      837 LOADNIL                          R64
      838 SETTABLEKS                       R64 R63 K70 ["onActivated"]
      840 SETTABLEKS                       R40 R63 K71 ["onStateChanged"]
      842 GETTABLEKS                       R64 R2 K34 ["isDisabled"]
      844 SETTABLEKS                       R64 R63 K34 ["isDisabled"]
      846 GETUPVAL                         R66 4
      847 GETTABLEKS                       R65 R66 K10 ["FoundationInternalTextInputVariants"]
      849 JUMPIF                           R65 ; [+3]
      850 GETTABLEKS                       R65 R2 K11 ["forceEnableFlagsForSearchInput"]
      852 JUMPIFNOT                        R65 ; [+5]
      853 GETTABLEKS                       R66 R16 K79 ["outerView"]
      855 GETTABLEKS                       R65 R66 K97 ["bgStyle"]
      857 JUMPIFNOT                        R65 ; [+54]
      858 GETUPVAL                         R66 4
      859 GETTABLEKS                       R65 R66 K30 ["FoundationInternalTextInputDisabledTransparency"]
      861 JUMPIFNOT                        R65 ; [+27]
      862 GETUPVAL                         R64 9
      863 DUPTABLE                         R65 K98 [{"Color3", "Transparency"}]
      864 GETTABLEKS                       R68 R16 K79 ["outerView"]
      866 GETTABLEKS                       R67 R68 K97 ["bgStyle"]
      868 GETTABLEKS                       R66 R67 K86 ["Color3"]
      870 SETTABLEKS                       R66 R65 K86 ["Color3"]
      872 GETTABLEKS                       R67 R2 K99 ["backgroundGradient"]
      874 JUMPIFNOT                        R67 ; [+2]
      875 LOADN                            R66 0
      876 JUMP                             ; [+6]
      877 GETTABLEKS                       R68 R16 K79 ["outerView"]
      879 GETTABLEKS                       R67 R68 K97 ["bgStyle"]
      881 GETTABLEKS                       R66 R67 K82 ["Transparency"]
      883 SETTABLEKS                       R66 R65 K82 ["Transparency"]
      885 GETTABLEKS                       R66 R2 K34 ["isDisabled"]
      887 CALL                             R64 2 1
      888 JUMP                             ; [+24]
      889 DUPTABLE                         R64 K98 [{"Color3", "Transparency"}]
      890 GETTABLEKS                       R67 R16 K79 ["outerView"]
      892 GETTABLEKS                       R66 R67 K97 ["bgStyle"]
      894 GETTABLEKS                       R65 R66 K86 ["Color3"]
      896 SETTABLEKS                       R65 R64 K86 ["Color3"]
      898 GETTABLEKS                       R66 R2 K99 ["backgroundGradient"]
      900 JUMPIFNOT                        R66 ; [+2]
      901 LOADN                            R65 0
      902 JUMP                             ; [+6]
      903 GETTABLEKS                       R67 R16 K79 ["outerView"]
      905 GETTABLEKS                       R66 R67 K97 ["bgStyle"]
      907 GETTABLEKS                       R65 R66 K82 ["Transparency"]
      909 SETTABLEKS                       R65 R64 K82 ["Transparency"]
      911 JUMP                             ; [+1]
      912 LOADNIL                          R64
      913 SETTABLEKS                       R64 R63 K72 ["backgroundStyle"]
      915 DUPTABLE                         R64 K101 [{"affordance"}]
      916 GETUPVAL                         R66 19
      917 GETTABLEKS                       R65 R66 K102 ["None"]
      919 SETTABLEKS                       R65 R64 K100 ["affordance"]
      921 SETTABLEKS                       R64 R63 K73 ["stateLayer"]
      923 GETTABLEKS                       R65 R16 K79 ["outerView"]
      925 GETTABLEKS                       R64 R65 K20 ["tag"]
      927 SETTABLEKS                       R64 R63 K20 ["tag"]
      929 LOADK                            R65 K103 ["%*--outer-container"]
      930 GETTABLEKS                       R67 R2 K74 ["testId"]
      932 NAMECALL                         R65 R65 K104 ["format"]
      934 CALL                             R65 2 1
      935 MOVE                             R64 R65
      936 SETTABLEKS                       R64 R63 K74 ["testId"]
      938 CALL                             R61 2 1
      939 DUPTABLE                         R62 K111 [{"DragDetector", "Background", "HoverStroke", "Leading", "TextBoxWrapper", "Trailing"}]
      940 SETTABLEKS                       R56 R62 K105 ["DragDetector"]
      942 GETTABLEKS                       R63 R2 K99 ["backgroundGradient"]
      944 SETTABLEKS                       R63 R62 K106 ["Background"]
      946 GETUPVAL                         R65 4
      947 GETTABLEKS                       R64 R65 K17 ["FoundationTextInputAlignStrokeBehavior"]
      949 JUMPIF                           R64 ; [+49]
      950 GETTABLEKS                       R64 R2 K11 ["forceEnableFlagsForSearchInput"]
      952 JUMPIF                           R64 ; [+46]
      953 GETTABLEKS                       R64 R2 K34 ["isDisabled"]
      955 JUMPIF                           R64 ; [+43]
      956 JUMPIF                           R12 ; [+1]
      957 JUMPIFNOT                        R14 ; [+41]
      958 GETUPVAL                         R64 3
      959 GETTABLEKS                       R63 R64 K62 ["createElement"]
      961 LOADK                            R64 K112 ["UIStroke"]
      962 DUPTABLE                         R65 K114 [{"Color", "Transparency", "Thickness", "BorderStrokePosition", "BorderOffset"}]
      963 GETTABLEKS                       R69 R3 K31 ["Color"]
      965 GETTABLEKS                       R68 R69 K25 ["Stroke"]
      967 GETTABLEKS                       R67 R68 K33 ["Emphasis"]
      969 GETTABLEKS                       R66 R67 K86 ["Color3"]
      971 SETTABLEKS                       R66 R65 K31 ["Color"]
      973 GETTABLEKS                       R69 R3 K31 ["Color"]
      975 GETTABLEKS                       R68 R69 K25 ["Stroke"]
      977 GETTABLEKS                       R67 R68 K33 ["Emphasis"]
      979 GETTABLEKS                       R66 R67 K82 ["Transparency"]
      981 SETTABLEKS                       R66 R65 K82 ["Transparency"]
      983 SETTABLEKS                       R24 R65 K83 ["Thickness"]
      985 GETIMPORT                        R66 K92 [Enum.BorderStrokePosition.Inner]
      987 SETTABLEKS                       R66 R65 K84 ["BorderStrokePosition"]
      989 GETIMPORT                        R66 K60 [UDim.new]
      991 LOADN                            R67 0
      992 MINUS                            R69 R25
      993 DIVK                             R68 R69 K26 [2]
      994 CALL                             R66 2 1
      995 SETTABLEKS                       R66 R65 K113 ["BorderOffset"]
      997 CALL                             R63 2 1
      998 JUMP                             ; [+1]
      999 LOADNIL                          R63
     1000 SETTABLEKS                       R63 R62 K107 ["HoverStroke"]
     1002 GETTABLEKS                       R64 R2 K115 ["leadingElement"]
     1004 JUMPIFNOT                        R64 ; [+38]
     1005 GETUPVAL                         R64 3
     1006 GETTABLEKS                       R63 R64 K62 ["createElement"]
     1008 GETUPVAL                         R64 14
     1009 DUPTABLE                         R65 K117 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
     1010 GETUPVAL                         R68 4
     1011 GETTABLEKS                       R67 R68 K30 ["FoundationInternalTextInputDisabledTransparency"]
     1013 JUMPIFNOT                        R67 ; [+7]
     1014 GETTABLEKS                       R67 R2 K34 ["isDisabled"]
     1016 JUMPIFNOT                        R67 ; [+4]
     1017 GETUPVAL                         R67 16
     1018 GETTABLEKS                       R66 R67 K76 ["DISABLED_TRANSPARENCY"]
     1020 JUMP                             ; [+1]
     1021 LOADNIL                          R66
     1022 SETTABLEKS                       R66 R65 K63 ["GroupTransparency"]
     1024 LOADN                            R66 1
     1025 SETTABLEKS                       R66 R65 K116 ["LayoutOrder"]
     1027 LOADK                            R66 K118 ["size-0-full auto-x"]
     1028 SETTABLEKS                       R66 R65 K20 ["tag"]
     1030 LOADK                            R67 K119 ["%*--leading"]
     1031 GETTABLEKS                       R69 R2 K74 ["testId"]
     1033 NAMECALL                         R67 R67 K104 ["format"]
     1035 CALL                             R67 2 1
     1036 MOVE                             R66 R67
     1037 SETTABLEKS                       R66 R65 K74 ["testId"]
     1039 GETTABLEKS                       R66 R2 K115 ["leadingElement"]
     1041 CALL                             R63 3 1
     1042 JUMP                             ; [+1]
     1043 LOADNIL                          R63
     1044 SETTABLEKS                       R63 R62 K108 ["Leading"]
     1046 GETUPVAL                         R64 3
     1047 GETTABLEKS                       R63 R64 K62 ["createElement"]
     1049 JUMPIFNOT                        R5 ; [+2]
     1050 GETUPVAL                         R64 20
     1051 JUMP                             ; [+1]
     1052 GETUPVAL                         R64 14
     1053 DUPTABLE                         R65 K124 [{"LayoutOrder", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
     1054 LOADN                            R66 2
     1055 SETTABLEKS                       R66 R65 K116 ["LayoutOrder"]
     1057 SETTABLEKS                       R51 R65 K120 ["scroll"]
     1059 SETTABLEKS                       R50 R65 K121 ["layout"]
     1061 JUMPIFNOT                        R5 ; [+2]
     1062 MOVE                             R66 R55
     1063 JUMP                             ; [+1]
     1064 LOADNIL                          R66
     1065 SETTABLEKS                       R66 R65 K122 ["onCanvasPositionChanged"]
     1067 JUMPIFNOT                        R5 ; [+2]
     1068 MOVE                             R66 R53
     1069 JUMP                             ; [+1]
     1070 LOADNIL                          R66
     1071 SETTABLEKS                       R66 R65 K123 ["scrollingFrameRef"]
     1073 LOADK                            R66 K125 ["size-full fill clip"]
     1074 SETTABLEKS                       R66 R65 K20 ["tag"]
     1076 DUPTABLE                         R66 K128 [{"TextBox", "MobileTextBox"}]
     1077 JUMPIF                           R19 ; [+110]
     1078 GETUPVAL                         R68 3
     1079 GETTABLEKS                       R67 R68 K62 ["createElement"]
     1081 GETUPVAL                         R68 21
     1082 DUPTABLE                         R69 K139 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1083 GETTABLEKS                       R70 R2 K129 ["text"]
     1085 SETTABLEKS                       R70 R69 K129 ["text"]
     1087 GETTABLEKS                       R70 R2 K130 ["placeholder"]
     1089 SETTABLEKS                       R70 R69 K130 ["placeholder"]
     1091 GETTABLEKS                       R70 R2 K131 ["textInputType"]
     1093 SETTABLEKS                       R70 R69 K131 ["textInputType"]
     1095 SETTABLEKS                       R27 R69 K35 ["fontStyle"]
     1097 SETTABLEKS                       R26 R69 K132 ["textStyle"]
     1099 SETTABLEKS                       R5 R69 K133 ["isMultiLine"]
     1101 GETTABLEKS                       R70 R2 K34 ["isDisabled"]
     1103 SETTABLEKS                       R70 R69 K34 ["isDisabled"]
     1105 SETTABLEKS                       R6 R69 K134 ["ref"]
     1107 LOADK                            R71 K140 ["%* data-testid=%*--textbox"]
     1108 ORK                              R73 R17 K5 [""]
     1109 GETTABLEKS                       R74 R2 K74 ["testId"]
     1111 NAMECALL                         R71 R71 K104 ["format"]
     1113 CALL                             R71 3 1
     1114 MOVE                             R70 R71
     1115 SETTABLEKS                       R70 R69 K20 ["tag"]
     1117 JUMPIFNOT                        R5 ; [+2]
     1118 MOVE                             R70 R49
     1119 JUMP                             ; [+1]
     1120 LOADNIL                          R70
     1121 SETTABLEKS                       R70 R69 K64 ["Size"]
     1123 JUMPIFNOT                        R5 ; [+8]
     1124 JUMPIF                           R19 ; [+7]
     1125 GETTABLEKS                       R71 R2 K129 ["text"]
     1127 JUMPIFEQKS                       R71 K5 [""] ; [+4]
     1129 GETIMPORT                        R70 K143 [Enum.AutomaticSize.Y]
     1131 JUMP                             ; [+1]
     1132 LOADNIL                          R70
     1133 SETTABLEKS                       R70 R69 K135 ["automaticSize"]
     1135 SETTABLEKS                       R46 R69 K69 ["padding"]
     1137 SETTABLEKS                       R38 R69 K136 ["onFocusGained"]
     1139 JUMPIFNOT                        R5 ; [+3]
     1140 JUMPIFNOT                        R21 ; [+2]
     1141 LOADNIL                          R70
     1142 JUMP                             ; [+1]
     1143 MOVE                             R70 R39
     1144 SETTABLEKS                       R70 R69 K43 ["onFocusLost"]
     1146 SETTABLEKS                       R37 R69 K137 ["onTextChanged"]
     1148 JUMPIFNOT                        R5 ; [+2]
     1149 MOVE                             R70 R52
     1150 JUMP                             ; [+1]
     1151 LOADNIL                          R70
     1152 SETTABLEKS                       R70 R69 K138 ["onCursorPositionChanged"]
     1154 DUPTABLE                         R70 K145 [{"DragDetector", "BoundsChecker"}]
     1155 SETTABLEKS                       R56 R70 K105 ["DragDetector"]
     1157 JUMPIFNOT                        R5 ; [+25]
     1158 GETUPVAL                         R72 3
     1159 GETTABLEKS                       R71 R72 K62 ["createElement"]
     1161 GETUPVAL                         R72 21
     1162 DUPTABLE                         R73 K147 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
     1163 LOADB                            R74 1
     1164 SETTABLEKS                       R74 R73 K146 ["isBoundsChecker"]
     1166 SETTABLEKS                       R27 R73 K35 ["fontStyle"]
     1168 SETTABLEKS                       R26 R73 K132 ["textStyle"]
     1170 GETIMPORT                        R74 K56 [UDim2.new]
     1172 LOADN                            R75 1
     1173 LOADN                            R76 0
     1174 LOADN                            R77 1
     1175 MOVE                             R78 R48
     1176 CALL                             R74 4 1
     1177 SETTABLEKS                       R74 R73 K64 ["Size"]
     1179 SETTABLEKS                       R7 R73 K134 ["ref"]
     1181 CALL                             R71 2 1
     1182 JUMP                             ; [+1]
     1183 LOADNIL                          R71
     1184 SETTABLEKS                       R71 R70 K144 ["BoundsChecker"]
     1186 CALL                             R67 3 1
     1187 JUMP                             ; [+1]
     1188 LOADNIL                          R67
     1189 SETTABLEKS                       R67 R66 K126 ["TextBox"]
     1191 JUMPIFNOT                        R5 ; [+61]
     1192 JUMPIFNOT                        R19 ; [+60]
     1193 GETUPVAL                         R68 3
     1194 GETTABLEKS                       R67 R68 K62 ["createElement"]
     1196 GETUPVAL                         R68 21
     1197 DUPTABLE                         R69 K148 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1198 GETTABLEKS                       R70 R2 K129 ["text"]
     1200 SETTABLEKS                       R70 R69 K129 ["text"]
     1202 GETTABLEKS                       R70 R2 K130 ["placeholder"]
     1204 SETTABLEKS                       R70 R69 K130 ["placeholder"]
     1206 GETTABLEKS                       R70 R2 K131 ["textInputType"]
     1208 SETTABLEKS                       R70 R69 K131 ["textInputType"]
     1210 SETTABLEKS                       R27 R69 K35 ["fontStyle"]
     1212 SETTABLEKS                       R26 R69 K132 ["textStyle"]
     1214 SETTABLEKS                       R5 R69 K133 ["isMultiLine"]
     1216 GETTABLEKS                       R70 R2 K34 ["isDisabled"]
     1218 SETTABLEKS                       R70 R69 K34 ["isDisabled"]
     1220 SETTABLEKS                       R46 R69 K69 ["padding"]
     1222 SETTABLEKS                       R54 R69 K134 ["ref"]
     1224 LOADK                            R71 K149 ["%* data-testid=%*--mobile-textbox"]
     1225 ORK                              R73 R17 K5 [""]
     1226 GETTABLEKS                       R74 R2 K74 ["testId"]
     1228 NAMECALL                         R71 R71 K104 ["format"]
     1230 CALL                             R71 3 1
     1231 MOVE                             R70 R71
     1232 SETTABLEKS                       R70 R69 K20 ["tag"]
     1234 SETTABLEKS                       R49 R69 K64 ["Size"]
     1236 JUMPIFNOT                        R5 ; [+3]
     1237 JUMPIFNOT                        R21 ; [+2]
     1238 MOVE                             R70 R39
     1239 JUMP                             ; [+1]
     1240 LOADNIL                          R70
     1241 SETTABLEKS                       R70 R69 K43 ["onFocusLost"]
     1243 SETTABLEKS                       R37 R69 K137 ["onTextChanged"]
     1245 JUMPIFNOT                        R5 ; [+2]
     1246 MOVE                             R70 R52
     1247 JUMP                             ; [+1]
     1248 LOADNIL                          R70
     1249 SETTABLEKS                       R70 R69 K138 ["onCursorPositionChanged"]
     1251 CALL                             R67 2 1
     1252 JUMP                             ; [+1]
     1253 LOADNIL                          R67
     1254 SETTABLEKS                       R67 R66 K127 ["MobileTextBox"]
     1256 CALL                             R63 3 1
     1257 SETTABLEKS                       R63 R62 K109 ["TextBoxWrapper"]
     1259 GETTABLEKS                       R64 R2 K150 ["trailingElement"]
     1261 JUMPIFNOT                        R64 ; [+38]
     1262 GETUPVAL                         R64 3
     1263 GETTABLEKS                       R63 R64 K62 ["createElement"]
     1265 GETUPVAL                         R64 14
     1266 DUPTABLE                         R65 K117 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
     1267 GETUPVAL                         R68 4
     1268 GETTABLEKS                       R67 R68 K30 ["FoundationInternalTextInputDisabledTransparency"]
     1270 JUMPIFNOT                        R67 ; [+7]
     1271 GETTABLEKS                       R67 R2 K34 ["isDisabled"]
     1273 JUMPIFNOT                        R67 ; [+4]
     1274 GETUPVAL                         R67 16
     1275 GETTABLEKS                       R66 R67 K76 ["DISABLED_TRANSPARENCY"]
     1277 JUMP                             ; [+1]
     1278 LOADNIL                          R66
     1279 SETTABLEKS                       R66 R65 K63 ["GroupTransparency"]
     1281 LOADN                            R66 3
     1282 SETTABLEKS                       R66 R65 K116 ["LayoutOrder"]
     1284 LOADK                            R66 K118 ["size-0-full auto-x"]
     1285 SETTABLEKS                       R66 R65 K20 ["tag"]
     1287 LOADK                            R67 K151 ["%*--trailing"]
     1288 GETTABLEKS                       R69 R2 K74 ["testId"]
     1290 NAMECALL                         R67 R67 K104 ["format"]
     1292 CALL                             R67 2 1
     1293 MOVE                             R66 R67
     1294 SETTABLEKS                       R66 R65 K74 ["testId"]
     1296 GETTABLEKS                       R66 R2 K150 ["trailingElement"]
     1298 CALL                             R63 3 1
     1299 JUMP                             ; [+1]
     1300 LOADNIL                          R63
     1301 SETTABLEKS                       R63 R62 K110 ["Trailing"]
     1303 CALL                             R59 3 -1
     1304 RETURN                           R59 -1

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
       43 GETTABLEKS                       R11 R0 K14 ["Utility"]
       45 GETTABLEKS                       R10 R11 K15 ["Flags"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R12 R0 K14 ["Utility"]
       52 GETTABLEKS                       R11 R12 K16 ["blendTransparencies"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R13 R0 K14 ["Utility"]
       59 GETTABLEKS                       R12 R13 K17 ["getDisabledStyle"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R14 R0 K14 ["Utility"]
       66 GETTABLEKS                       R13 R14 K18 ["getMultiLineTextHeight"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R15 R0 K14 ["Utility"]
       73 GETTABLEKS                       R14 R15 K19 ["isPluginSecurity"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETIMPORT                        R17 K1 [script]
       80 GETTABLEKS                       R16 R17 K4 ["Parent"]
       82 GETTABLEKS                       R15 R16 K20 ["truncateTextToCursor"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R17 R0 K14 ["Utility"]
       89 GETTABLEKS                       R16 R17 K21 ["useBindable"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R18 R0 K14 ["Utility"]
       96 GETTABLEKS                       R17 R18 K22 ["usePreferredInput"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K6 [require]
      101 GETTABLEKS                       R20 R0 K23 ["Providers"]
      103 GETTABLEKS                       R19 R20 K24 ["Style"]
      105 GETTABLEKS                       R18 R19 K25 ["useStyleTags"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R20 R3 K26 ["TextInput"]
      112 GETTABLEKS                       R19 R20 K27 ["useTextInputVariants"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R22 R0 K23 ["Providers"]
      119 GETTABLEKS                       R21 R22 K24 ["Style"]
      121 GETTABLEKS                       R20 R21 K28 ["useTokens"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K6 [require]
      126 GETTABLEKS                       R22 R0 K14 ["Utility"]
      128 GETTABLEKS                       R21 R22 K29 ["withCommonProps"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K6 [require]
      133 GETTABLEKS                       R23 R0 K14 ["Utility"]
      135 GETTABLEKS                       R22 R23 K30 ["withDefaults"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K6 [require]
      140 GETTABLEKS                       R24 R0 K31 ["Enums"]
      142 GETTABLEKS                       R23 R24 K32 ["InputSize"]
      144 CALL                             R22 1 1
      145 GETIMPORT                        R23 K6 [require]
      147 GETTABLEKS                       R25 R0 K31 ["Enums"]
      149 GETTABLEKS                       R24 R25 K33 ["InputVariant"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K6 [require]
      154 GETTABLEKS                       R26 R0 K31 ["Enums"]
      156 GETTABLEKS                       R25 R26 K34 ["Radius"]
      158 CALL                             R24 1 1
      159 GETIMPORT                        R25 K6 [require]
      161 GETTABLEKS                       R27 R0 K31 ["Enums"]
      163 GETTABLEKS                       R26 R27 K35 ["ControlState"]
      165 CALL                             R25 1 1
      166 GETIMPORT                        R26 K6 [require]
      168 GETTABLEKS                       R28 R0 K31 ["Enums"]
      170 GETTABLEKS                       R27 R28 K36 ["StateLayerAffordance"]
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
