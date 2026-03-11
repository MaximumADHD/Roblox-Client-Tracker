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
       60 GETUPVAL                         R16 4
       61 MOVE                             R17 R3
       62 GETTABLEKS                       R18 R2 K10 ["size"]
       64 GETUPVAL                         R21 5
       65 GETTABLEKS                       R20 R21 K11 ["FoundationInternalTextInputCornerRadius"]
       67 JUMPIFNOT                        R20 ; [+3]
       68 GETTABLEKS                       R19 R2 K12 ["radius"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R19
       72 GETUPVAL                         R22 5
       73 GETTABLEKS                       R21 R22 K13 ["FoundationTextInputAlignStrokeBehavior"]
       75 JUMPIFNOT                        R21 ; [+2]
       76 MOVE                             R20 R14
       77 JUMP                             ; [+1]
       78 LOADNIL                          R20
       79 GETUPVAL                         R23 5
       80 GETTABLEKS                       R22 R23 K13 ["FoundationTextInputAlignStrokeBehavior"]
       82 JUMPIFNOT                        R22 ; [+2]
       83 MOVE                             R21 R12
       84 JUMP                             ; [+1]
       85 LOADNIL                          R21
       86 GETUPVAL                         R24 5
       87 GETTABLEKS                       R23 R24 K13 ["FoundationTextInputAlignStrokeBehavior"]
       89 JUMPIFNOT                        R23 ; [+3]
       90 GETTABLEKS                       R22 R2 K14 ["hasError"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R22
       94 CALL                             R16 6 1
       95 GETUPVAL                         R17 6
       96 GETTABLEKS                       R19 R16 K15 ["textBox"]
       98 GETTABLEKS                       R18 R19 K16 ["tag"]
      100 CALL                             R17 1 1
      101 GETUPVAL                         R18 7
      102 CALL                             R18 0 1
      103 GETUPVAL                         R20 3
      104 GETTABLEKS                       R19 R20 K9 ["useState"]
      106 LOADB                            R20 0
      107 CALL                             R19 1 2
      108 GETIMPORT                        R22 K20 [Enum.PreferredInput.Touch]
      110 JUMPIFEQ                         R18 R22 ; [+2]
      112 LOADB                            R21 0 +1
      113 LOADB                            R21 1
      114 GETTABLEKS                       R23 R3 K21 ["Stroke"]
      116 GETTABLEKS                       R22 R23 K22 ["Standard"]
      118 FASTCALL1                        MATH_CEIL R22 ; [+3]
      119 MOVE                             R25 R22
      120 GETIMPORT                        R24 K25 [math.ceil]
      122 CALL                             R24 1 1
      123 MULK                             R23 R24 K23 [2]
      124 GETTABLEKS                       R25 R3 K21 ["Stroke"]
      126 GETTABLEKS                       R24 R25 K26 ["Thick"]
      128 FASTCALL1                        MATH_CEIL R24 ; [+3]
      129 MOVE                             R27 R24
      130 GETIMPORT                        R26 K25 [math.ceil]
      132 CALL                             R26 1 1
      133 MULK                             R25 R26 K23 [2]
      134 GETUPVAL                         R28 5
      135 GETTABLEKS                       R27 R28 K27 ["FoundationCleanupTextInputPolyfill"]
      137 JUMPIFNOT                        R27 ; [+2]
      138 LOADNIL                          R26
      139 JUMP                             ; [+6]
      140 GETTABLEKS                       R28 R3 K28 ["Color"]
      142 GETTABLEKS                       R27 R28 K29 ["Content"]
      144 GETTABLEKS                       R26 R27 K30 ["Emphasis"]
      146 GETTABLEKS                       R28 R16 K15 ["textBox"]
      148 GETTABLEKS                       R27 R28 K31 ["fontStyle"]
      150 GETTABLEKS                       R28 R27 K32 ["FontSize"]
      152 GETTABLEKS                       R29 R27 K33 ["LineHeight"]
      154 GETUPVAL                         R31 3
      155 GETTABLEKS                       R30 R31 K34 ["useCallback"]
      157 NEWCLOSURE                       R31 P0
      158 CAPTURE                          VAL R6
      159 NEWTABLE                         R32 0 0
      161 CALL                             R30 2 1
      162 GETUPVAL                         R32 3
      163 GETTABLEKS                       R31 R32 K34 ["useCallback"]
      165 NEWCLOSURE                       R32 P1
      166 CAPTURE                          VAL R6
      167 NEWTABLE                         R33 0 0
      169 CALL                             R31 2 1
      170 GETUPVAL                         R33 3
      171 GETTABLEKS                       R32 R33 K34 ["useCallback"]
      173 NEWCLOSURE                       R33 P2
      174 CAPTURE                          VAL R6
      175 NEWTABLE                         R34 0 0
      177 CALL                             R32 2 1
      178 GETUPVAL                         R34 3
      179 GETTABLEKS                       R33 R34 K34 ["useCallback"]
      181 NEWCLOSURE                       R34 P3
      182 CAPTURE                          VAL R6
      183 NEWTABLE                         R35 0 0
      185 CALL                             R33 2 1
      186 GETUPVAL                         R35 3
      187 GETTABLEKS                       R34 R35 K34 ["useCallback"]
      189 NEWCLOSURE                       R35 P4
      190 CAPTURE                          VAL R6
      191 NEWTABLE                         R36 0 0
      193 CALL                             R34 2 1
      194 GETUPVAL                         R36 3
      195 GETTABLEKS                       R35 R36 K34 ["useCallback"]
      197 NEWCLOSURE                       R36 P5
      198 CAPTURE                          VAL R6
      199 NEWTABLE                         R37 0 0
      201 CALL                             R35 2 1
      202 GETUPVAL                         R37 3
      203 GETTABLEKS                       R36 R37 K34 ["useCallback"]
      205 NEWCLOSURE                       R37 P6
      206 CAPTURE                          VAL R6
      207 NEWTABLE                         R38 0 0
      209 CALL                             R36 2 1
      210 GETUPVAL                         R38 3
      211 GETTABLEKS                       R37 R38 K35 ["useImperativeHandle"]
      213 MOVE                             R38 R1
      214 NEWCLOSURE                       R39 P7
      215 CAPTURE                          VAL R32
      216 CAPTURE                          VAL R30
      217 CAPTURE                          VAL R31
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R33
      220 CAPTURE                          VAL R34
      221 CAPTURE                          VAL R36
      222 CAPTURE                          VAL R35
      223 NEWTABLE                         R40 0 7
      225 MOVE                             R41 R34
      226 MOVE                             R42 R32
      227 MOVE                             R43 R33
      228 MOVE                             R44 R30
      229 MOVE                             R45 R31
      230 MOVE                             R46 R36
      231 MOVE                             R47 R35
      232 SETLIST                          R40 R41 7 [1]
      234 CALL                             R37 3 0
      235 GETUPVAL                         R38 3
      236 GETTABLEKS                       R37 R38 K34 ["useCallback"]
      238 NEWCLOSURE                       R38 P8
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R5
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R2
      243 NEWTABLE                         R39 0 3
      245 GETTABLEKS                       R40 R2 K36 ["onChanged"]
      247 MOVE                             R41 R5
      248 MOVE                             R42 R19
      249 SETLIST                          R39 R40 3 [1]
      251 CALL                             R37 2 1
      252 GETUPVAL                         R39 3
      253 GETTABLEKS                       R38 R39 K34 ["useCallback"]
      255 NEWCLOSURE                       R39 P9
      256 CAPTURE                          VAL R2
      257 CAPTURE                          VAL R5
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R6
      260 CAPTURE                          VAL R9
      261 CAPTURE                          VAL R20
      262 CAPTURE                          VAL R15
      263 NEWTABLE                         R40 0 4
      265 GETTABLEKS                       R41 R2 K37 ["onFocus"]
      267 GETTABLEKS                       R42 R2 K38 ["isDisabled"]
      269 MOVE                             R43 R21
      270 MOVE                             R44 R5
      271 SETLIST                          R40 R41 4 [1]
      273 CALL                             R38 2 1
      274 GETUPVAL                         R40 3
      275 GETTABLEKS                       R39 R40 K34 ["useCallback"]
      277 NEWCLOSURE                       R40 P10
      278 CAPTURE                          VAL R15
      279 CAPTURE                          VAL R5
      280 CAPTURE                          VAL R20
      281 CAPTURE                          VAL R2
      282 NEWTABLE                         R41 0 3
      284 GETTABLEKS                       R42 R2 K39 ["onReturnPressed"]
      286 MOVE                             R43 R5
      287 GETTABLEKS                       R44 R2 K40 ["onFocusLost"]
      289 SETLIST                          R41 R42 3 [1]
      291 CALL                             R39 2 1
      292 GETUPVAL                         R41 3
      293 GETTABLEKS                       R40 R41 K34 ["useCallback"]
      295 NEWCLOSURE                       R41 P11
      296 CAPTURE                          VAL R13
      297 CAPTURE                          UPVAL U8
      298 NEWTABLE                         R42 0 0
      300 CALL                             R40 2 1
      301 GETUPVAL                         R42 3
      302 GETTABLEKS                       R41 R42 K34 ["useCallback"]
      304 NEWCLOSURE                       R42 P12
      305 CAPTURE                          VAL R10
      306 CAPTURE                          VAL R2
      307 NEWTABLE                         R43 0 1
      309 GETTABLEKS                       R44 R2 K41 ["onDragStarted"]
      311 SETLIST                          R43 R44 1 [1]
      313 CALL                             R41 2 1
      314 GETUPVAL                         R43 3
      315 GETTABLEKS                       R42 R43 K34 ["useCallback"]
      317 NEWCLOSURE                       R43 P13
      318 CAPTURE                          VAL R2
      319 NEWTABLE                         R44 0 1
      321 GETTABLEKS                       R45 R2 K42 ["onDrag"]
      323 SETLIST                          R44 R45 1 [1]
      325 CALL                             R42 2 1
      326 GETUPVAL                         R44 3
      327 GETTABLEKS                       R43 R44 K34 ["useCallback"]
      329 NEWCLOSURE                       R44 P14
      330 CAPTURE                          VAL R10
      331 CAPTURE                          VAL R30
      332 CAPTURE                          VAL R31
      333 CAPTURE                          VAL R15
      334 CAPTURE                          VAL R2
      335 NEWTABLE                         R45 0 1
      337 GETTABLEKS                       R46 R2 K43 ["onDragEnded"]
      339 SETLIST                          R45 R46 1 [1]
      341 CALL                             R43 2 1
      342 GETUPVAL                         R45 3
      343 GETTABLEKS                       R44 R45 K44 ["useMemo"]
      345 NEWCLOSURE                       R45 P15
      346 CAPTURE                          VAL R16
      347 CAPTURE                          VAL R3
      348 NEWTABLE                         R46 0 2
      350 MOVE                             R47 R3
      351 GETTABLEKS                       R49 R16 K45 ["innerContainer"]
      353 GETTABLEKS                       R48 R49 K12 ["radius"]
      355 SETLIST                          R46 R47 2 [1]
      357 CALL                             R44 2 1
      358 GETUPVAL                         R46 3
      359 GETTABLEKS                       R45 R46 K44 ["useMemo"]
      361 NEWCLOSURE                       R46 P16
      362 CAPTURE                          UPVAL U9
      363 CAPTURE                          VAL R28
      364 CAPTURE                          VAL R4
      365 CAPTURE                          VAL R29
      366 NEWTABLE                         R47 0 3
      368 MOVE                             R48 R28
      369 MOVE                             R49 R4
      370 MOVE                             R50 R29
      371 SETLIST                          R47 R48 3 [1]
      373 CALL                             R45 2 1
      374 GETUPVAL                         R47 3
      375 GETTABLEKS                       R46 R47 K44 ["useMemo"]
      377 NEWCLOSURE                       R47 P17
      378 CAPTURE                          VAL R16
      379 CAPTURE                          VAL R23
      380 CAPTURE                          UPVAL U9
      381 CAPTURE                          VAL R28
      382 CAPTURE                          VAL R29
      383 CAPTURE                          VAL R45
      384 NEWTABLE                         R48 0 6
      386 GETTABLEKS                       R50 R16 K46 ["outerContainer"]
      388 GETTABLEKS                       R49 R50 K47 ["minHeight"]
      390 MOVE                             R50 R23
      391 MOVE                             R51 R25
      392 MOVE                             R52 R28
      393 MOVE                             R53 R45
      394 MOVE                             R54 R29
      395 SETLIST                          R48 R49 6 [1]
      397 CALL                             R46 2 2
      398 GETTABLEKS                       R50 R46 K48 ["bottom"]
      400 GETTABLEKS                       R49 R50 K49 ["Offset"]
      402 GETTABLEKS                       R51 R46 K50 ["top"]
      404 GETTABLEKS                       R50 R51 K49 ["Offset"]
      406 ADD                              R48 R49 R50
      407 GETIMPORT                        R49 K53 [UDim2.new]
      409 LOADN                            R50 1
      410 LOADN                            R51 0
      411 LOADN                            R52 0
      412 ADD                              R53 R45 R48
      413 CALL                             R49 4 1
      414 GETUPVAL                         R51 3
      415 GETTABLEKS                       R50 R51 K44 ["useMemo"]
      417 NEWCLOSURE                       R51 P18
      418 CAPTURE                          VAL R5
      419 NEWTABLE                         R52 0 1
      421 MOVE                             R53 R5
      422 SETLIST                          R52 R53 1 [1]
      424 CALL                             R50 2 1
      425 GETUPVAL                         R52 3
      426 GETTABLEKS                       R51 R52 K44 ["useMemo"]
      428 NEWCLOSURE                       R52 P19
      429 CAPTURE                          VAL R5
      430 NEWTABLE                         R53 0 1
      432 MOVE                             R54 R5
      433 SETLIST                          R53 R54 1 [1]
      435 CALL                             R51 2 1
      436 GETUPVAL                         R53 3
      437 GETTABLEKS                       R52 R53 K34 ["useCallback"]
      439 NEWCLOSURE                       R53 P20
      440 CAPTURE                          VAL R8
      441 CAPTURE                          VAL R7
      442 CAPTURE                          UPVAL U10
      443 CAPTURE                          VAL R46
      444 NEWTABLE                         R54 0 1
      446 MOVE                             R55 R46
      447 SETLIST                          R54 R55 1 [1]
      449 CALL                             R52 2 1
      450 GETUPVAL                         R54 3
      451 GETTABLEKS                       R53 R54 K34 ["useCallback"]
      453 NEWCLOSURE                       R54 P21
      454 CAPTURE                          VAL R8
      455 CAPTURE                          VAL R11
      456 NEWTABLE                         R55 0 0
      458 CALL                             R53 2 1
      459 GETUPVAL                         R55 3
      460 GETTABLEKS                       R54 R55 K34 ["useCallback"]
      462 NEWCLOSURE                       R55 P22
      463 CAPTURE                          VAL R9
      464 NEWTABLE                         R56 0 0
      466 CALL                             R54 2 1
      467 GETUPVAL                         R56 3
      468 GETTABLEKS                       R55 R56 K34 ["useCallback"]
      470 NEWCLOSURE                       R56 P23
      471 CAPTURE                          VAL R11
      472 NEWTABLE                         R57 0 0
      474 CALL                             R55 2 1
      475 GETUPVAL                         R57 3
      476 GETTABLEKS                       R56 R57 K44 ["useMemo"]
      478 NEWCLOSURE                       R57 P24
      479 CAPTURE                          VAL R2
      480 CAPTURE                          UPVAL U3
      481 CAPTURE                          VAL R41
      482 CAPTURE                          VAL R42
      483 CAPTURE                          VAL R43
      484 CAPTURE                          VAL R14
      485 NEWTABLE                         R58 0 5
      487 MOVE                             R59 R41
      488 MOVE                             R60 R42
      489 MOVE                             R61 R43
      490 MOVE                             R62 R14
      491 GETTABLEKS                       R63 R2 K38 ["isDisabled"]
      493 SETLIST                          R58 R59 5 [1]
      495 CALL                             R56 2 1
      496 GETUPVAL                         R57 11
      497 GETTABLEKS                       R59 R2 K54 ["horizontalPadding"]
      499 JUMPIFNOT                        R59 ; [+11]
      500 GETTABLEKS                       R59 R2 K54 ["horizontalPadding"]
      502 GETTABLEKS                       R58 R59 K55 ["left"]
      504 JUMPIF                           R58 ; [+11]
      505 GETIMPORT                        R58 K57 [UDim.new]
      507 LOADN                            R59 0
      508 LOADN                            R60 0
      509 CALL                             R58 2 1
      510 JUMP                             ; [+5]
      511 GETIMPORT                        R58 K57 [UDim.new]
      513 LOADN                            R59 0
      514 LOADN                            R60 0
      515 CALL                             R58 2 1
      516 CALL                             R57 1 1
      517 GETUPVAL                         R58 11
      518 GETTABLEKS                       R60 R2 K54 ["horizontalPadding"]
      520 JUMPIFNOT                        R60 ; [+11]
      521 GETTABLEKS                       R60 R2 K54 ["horizontalPadding"]
      523 GETTABLEKS                       R59 R60 K58 ["right"]
      525 JUMPIF                           R59 ; [+11]
      526 GETIMPORT                        R59 K57 [UDim.new]
      528 LOADN                            R60 0
      529 LOADN                            R61 0
      530 CALL                             R59 2 1
      531 JUMP                             ; [+5]
      532 GETIMPORT                        R59 K57 [UDim.new]
      534 LOADN                            R60 0
      535 LOADN                            R61 0
      536 CALL                             R59 2 1
      537 CALL                             R58 1 1
      538 GETUPVAL                         R60 3
      539 GETTABLEKS                       R59 R60 K59 ["createElement"]
      541 GETUPVAL                         R60 12
      542 GETUPVAL                         R61 13
      543 MOVE                             R62 R2
      544 DUPTABLE                         R63 K71 [{"GroupTransparency", "Size", "selection", "cursor", "stroke", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      545 GETTABLEKS                       R65 R2 K38 ["isDisabled"]
      547 JUMPIFNOT                        R65 ; [+4]
      548 GETUPVAL                         R65 14
      549 GETTABLEKS                       R64 R65 K72 ["DISABLED_TRANSPARENCY"]
      551 JUMP                             ; [+1]
      552 LOADNIL                          R64
      553 SETTABLEKS                       R64 R63 K60 ["GroupTransparency"]
      555 GETIMPORT                        R64 K53 [UDim2.new]
      557 LOADN                            R65 1
      558 LOADN                            R66 0
      559 LOADN                            R67 0
      560 MOVE                             R68 R47
      561 CALL                             R64 4 1
      562 SETTABLEKS                       R64 R63 K61 ["Size"]
      564 DUPTABLE                         R64 K74 [{"Selectable"}]
      565 GETTABLEKS                       R66 R2 K38 ["isDisabled"]
      567 NOT                              R65 R66
      568 SETTABLEKS                       R65 R64 K73 ["Selectable"]
      570 SETTABLEKS                       R64 R63 K62 ["selection"]
      572 SETTABLEKS                       R44 R63 K63 ["cursor"]
      574 GETUPVAL                         R66 5
      575 GETTABLEKS                       R65 R66 K13 ["FoundationTextInputAlignStrokeBehavior"]
      577 JUMPIFNOT                        R65 ; [+10]
      578 GETTABLEKS                       R66 R16 K75 ["outerView"]
      580 GETTABLEKS                       R65 R66 K76 ["strokeStyle"]
      582 JUMPIFNOT                        R65 ; [+116]
      583 GETTABLEKS                       R66 R16 K75 ["outerView"]
      585 GETTABLEKS                       R65 R66 K77 ["strokeThickness"]
      587 JUMPIFNOT                        R65 ; [+111]
      588 DUPTABLE                         R64 K81 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      589 GETUPVAL                         R67 5
      590 GETTABLEKS                       R66 R67 K13 ["FoundationTextInputAlignStrokeBehavior"]
      592 JUMPIFNOT                        R66 ; [+7]
      593 GETTABLEKS                       R67 R16 K75 ["outerView"]
      595 GETTABLEKS                       R66 R67 K76 ["strokeStyle"]
      597 GETTABLEKS                       R65 R66 K82 ["Color3"]
      599 JUMP                             ; [+20]
      600 GETTABLEKS                       R66 R2 K14 ["hasError"]
      602 JUMPIFNOT                        R66 ; [+9]
      603 GETTABLEKS                       R68 R3 K28 ["Color"]
      605 GETTABLEKS                       R67 R68 K83 ["System"]
      607 GETTABLEKS                       R66 R67 K84 ["Alert"]
      609 GETTABLEKS                       R65 R66 K82 ["Color3"]
      611 JUMP                             ; [+8]
      612 GETTABLEKS                       R68 R3 K28 ["Color"]
      614 GETTABLEKS                       R67 R68 K21 ["Stroke"]
      616 GETTABLEKS                       R66 R67 K30 ["Emphasis"]
      618 GETTABLEKS                       R65 R66 K82 ["Color3"]
      620 SETTABLEKS                       R65 R64 K28 ["Color"]
      622 GETUPVAL                         R67 5
      623 GETTABLEKS                       R66 R67 K13 ["FoundationTextInputAlignStrokeBehavior"]
      625 JUMPIFNOT                        R66 ; [+22]
      626 GETTABLEKS                       R66 R2 K38 ["isDisabled"]
      628 JUMPIFNOT                        R66 ; [+12]
      629 GETUPVAL                         R65 15
      630 GETTABLEKS                       R68 R16 K75 ["outerView"]
      632 GETTABLEKS                       R67 R68 K76 ["strokeStyle"]
      634 GETTABLEKS                       R66 R67 K78 ["Transparency"]
      636 GETUPVAL                         R68 16
      637 GETTABLEKS                       R67 R68 K72 ["DISABLED_TRANSPARENCY"]
      639 CALL                             R65 2 1
      640 JUMP                             ; [+30]
      641 GETTABLEKS                       R67 R16 K75 ["outerView"]
      643 GETTABLEKS                       R66 R67 K76 ["strokeStyle"]
      645 GETTABLEKS                       R65 R66 K78 ["Transparency"]
      647 JUMP                             ; [+23]
      648 GETTABLEKS                       R66 R2 K14 ["hasError"]
      650 JUMPIFNOT                        R66 ; [+9]
      651 GETTABLEKS                       R68 R3 K28 ["Color"]
      653 GETTABLEKS                       R67 R68 K83 ["System"]
      655 GETTABLEKS                       R66 R67 K84 ["Alert"]
      657 GETTABLEKS                       R65 R66 K78 ["Transparency"]
      659 JUMP                             ; [+11]
      660 JUMPIFNOT                        R14 ; [+2]
      661 LOADN                            R65 0
      662 JUMP                             ; [+8]
      663 GETTABLEKS                       R68 R3 K28 ["Color"]
      665 GETTABLEKS                       R67 R68 K21 ["Stroke"]
      667 GETTABLEKS                       R66 R67 K30 ["Emphasis"]
      669 GETTABLEKS                       R65 R66 K78 ["Transparency"]
      671 SETTABLEKS                       R65 R64 K78 ["Transparency"]
      673 GETUPVAL                         R67 5
      674 GETTABLEKS                       R66 R67 K13 ["FoundationTextInputAlignStrokeBehavior"]
      676 JUMPIFNOT                        R66 ; [+5]
      677 GETTABLEKS                       R66 R16 K75 ["outerView"]
      679 GETTABLEKS                       R65 R66 K77 ["strokeThickness"]
      681 JUMP                             ; [+1]
      682 MOVE                             R65 R22
      683 SETTABLEKS                       R65 R64 K79 ["Thickness"]
      685 GETUPVAL                         R67 5
      686 GETTABLEKS                       R66 R67 K13 ["FoundationTextInputAlignStrokeBehavior"]
      688 JUMPIFNOT                        R66 ; [+5]
      689 JUMPIF                           R14 ; [+1]
      690 JUMPIFNOT                        R12 ; [+3]
      691 GETIMPORT                        R65 K86 [Enum.BorderStrokePosition.Center]
      693 JUMP                             ; [+2]
      694 GETIMPORT                        R65 K88 [Enum.BorderStrokePosition.Inner]
      696 SETTABLEKS                       R65 R64 K80 ["BorderStrokePosition"]
      698 JUMP                             ; [+1]
      699 LOADNIL                          R64
      700 SETTABLEKS                       R64 R63 K64 ["stroke"]
      702 DUPTABLE                         R64 K89 [{"left", "right", "top", "bottom"}]
      703 NEWCLOSURE                       R67 P25
      704 CAPTURE                          VAL R22
      705 NAMECALL                         R65 R57 K90 ["map"]
      707 CALL                             R65 2 1
      708 SETTABLEKS                       R65 R64 K55 ["left"]
      710 NEWCLOSURE                       R67 P26
      711 CAPTURE                          VAL R22
      712 NAMECALL                         R65 R58 K90 ["map"]
      714 CALL                             R65 2 1
      715 SETTABLEKS                       R65 R64 K58 ["right"]
      717 GETIMPORT                        R65 K57 [UDim.new]
      719 LOADN                            R66 0
      720 MOVE                             R67 R22
      721 CALL                             R65 2 1
      722 SETTABLEKS                       R65 R64 K50 ["top"]
      724 GETIMPORT                        R65 K57 [UDim.new]
      726 LOADN                            R66 0
      727 MOVE                             R67 R22
      728 CALL                             R65 2 1
      729 SETTABLEKS                       R65 R64 K48 ["bottom"]
      731 SETTABLEKS                       R64 R63 K65 ["padding"]
      733 GETTABLEKS                       R65 R2 K38 ["isDisabled"]
      735 JUMPIF                           R65 ; [+2]
      736 MOVE                             R64 R30
      737 JUMP                             ; [+1]
      738 LOADNIL                          R64
      739 SETTABLEKS                       R64 R63 K66 ["onActivated"]
      741 SETTABLEKS                       R40 R63 K67 ["onStateChanged"]
      743 GETTABLEKS                       R64 R2 K38 ["isDisabled"]
      745 SETTABLEKS                       R64 R63 K38 ["isDisabled"]
      747 DUPTABLE                         R64 K91 [{"Color3", "Transparency"}]
      748 GETTABLEKS                       R67 R16 K75 ["outerView"]
      750 GETTABLEKS                       R66 R67 K92 ["bgStyle"]
      752 GETTABLEKS                       R65 R66 K82 ["Color3"]
      754 SETTABLEKS                       R65 R64 K82 ["Color3"]
      756 GETTABLEKS                       R66 R2 K93 ["backgroundGradient"]
      758 JUMPIFNOT                        R66 ; [+2]
      759 LOADN                            R65 0
      760 JUMP                             ; [+6]
      761 GETTABLEKS                       R67 R16 K75 ["outerView"]
      763 GETTABLEKS                       R66 R67 K92 ["bgStyle"]
      765 GETTABLEKS                       R65 R66 K78 ["Transparency"]
      767 SETTABLEKS                       R65 R64 K78 ["Transparency"]
      769 SETTABLEKS                       R64 R63 K68 ["backgroundStyle"]
      771 DUPTABLE                         R64 K95 [{"affordance"}]
      772 GETUPVAL                         R66 17
      773 GETTABLEKS                       R65 R66 K96 ["None"]
      775 SETTABLEKS                       R65 R64 K94 ["affordance"]
      777 SETTABLEKS                       R64 R63 K69 ["stateLayer"]
      779 GETTABLEKS                       R65 R16 K75 ["outerView"]
      781 GETTABLEKS                       R64 R65 K16 ["tag"]
      783 SETTABLEKS                       R64 R63 K16 ["tag"]
      785 LOADK                            R65 K97 ["%*--outer-container"]
      786 GETTABLEKS                       R67 R2 K70 ["testId"]
      788 NAMECALL                         R65 R65 K98 ["format"]
      790 CALL                             R65 2 1
      791 MOVE                             R64 R65
      792 SETTABLEKS                       R64 R63 K70 ["testId"]
      794 CALL                             R61 2 1
      795 DUPTABLE                         R62 K105 [{"DragDetector", "Background", "HoverStroke", "Leading", "TextBoxWrapper", "Trailing"}]
      796 SETTABLEKS                       R56 R62 K99 ["DragDetector"]
      798 GETTABLEKS                       R63 R2 K93 ["backgroundGradient"]
      800 SETTABLEKS                       R63 R62 K100 ["Background"]
      802 GETUPVAL                         R65 5
      803 GETTABLEKS                       R64 R65 K13 ["FoundationTextInputAlignStrokeBehavior"]
      805 JUMPIF                           R64 ; [+46]
      806 GETTABLEKS                       R64 R2 K38 ["isDisabled"]
      808 JUMPIF                           R64 ; [+43]
      809 JUMPIF                           R12 ; [+1]
      810 JUMPIFNOT                        R14 ; [+41]
      811 GETUPVAL                         R64 3
      812 GETTABLEKS                       R63 R64 K59 ["createElement"]
      814 LOADK                            R64 K106 ["UIStroke"]
      815 DUPTABLE                         R65 K108 [{"Color", "Transparency", "Thickness", "BorderStrokePosition", "BorderOffset"}]
      816 GETTABLEKS                       R69 R3 K28 ["Color"]
      818 GETTABLEKS                       R68 R69 K21 ["Stroke"]
      820 GETTABLEKS                       R67 R68 K30 ["Emphasis"]
      822 GETTABLEKS                       R66 R67 K82 ["Color3"]
      824 SETTABLEKS                       R66 R65 K28 ["Color"]
      826 GETTABLEKS                       R69 R3 K28 ["Color"]
      828 GETTABLEKS                       R68 R69 K21 ["Stroke"]
      830 GETTABLEKS                       R67 R68 K30 ["Emphasis"]
      832 GETTABLEKS                       R66 R67 K78 ["Transparency"]
      834 SETTABLEKS                       R66 R65 K78 ["Transparency"]
      836 SETTABLEKS                       R24 R65 K79 ["Thickness"]
      838 GETIMPORT                        R66 K88 [Enum.BorderStrokePosition.Inner]
      840 SETTABLEKS                       R66 R65 K80 ["BorderStrokePosition"]
      842 GETIMPORT                        R66 K57 [UDim.new]
      844 LOADN                            R67 0
      845 MINUS                            R69 R25
      846 DIVK                             R68 R69 K23 [2]
      847 CALL                             R66 2 1
      848 SETTABLEKS                       R66 R65 K107 ["BorderOffset"]
      850 CALL                             R63 2 1
      851 JUMP                             ; [+1]
      852 LOADNIL                          R63
      853 SETTABLEKS                       R63 R62 K101 ["HoverStroke"]
      855 GETTABLEKS                       R64 R2 K109 ["leadingElement"]
      857 JUMPIFNOT                        R64 ; [+24]
      858 GETUPVAL                         R64 3
      859 GETTABLEKS                       R63 R64 K59 ["createElement"]
      861 GETUPVAL                         R64 12
      862 DUPTABLE                         R65 K111 [{"LayoutOrder", "tag", "testId"}]
      863 LOADN                            R66 1
      864 SETTABLEKS                       R66 R65 K110 ["LayoutOrder"]
      866 LOADK                            R66 K112 ["size-0-full auto-x"]
      867 SETTABLEKS                       R66 R65 K16 ["tag"]
      869 LOADK                            R67 K113 ["%*--leading"]
      870 GETTABLEKS                       R69 R2 K70 ["testId"]
      872 NAMECALL                         R67 R67 K98 ["format"]
      874 CALL                             R67 2 1
      875 MOVE                             R66 R67
      876 SETTABLEKS                       R66 R65 K70 ["testId"]
      878 GETTABLEKS                       R66 R2 K109 ["leadingElement"]
      880 CALL                             R63 3 1
      881 JUMP                             ; [+1]
      882 LOADNIL                          R63
      883 SETTABLEKS                       R63 R62 K102 ["Leading"]
      885 GETUPVAL                         R64 3
      886 GETTABLEKS                       R63 R64 K59 ["createElement"]
      888 JUMPIFNOT                        R5 ; [+2]
      889 GETUPVAL                         R64 18
      890 JUMP                             ; [+1]
      891 GETUPVAL                         R64 12
      892 DUPTABLE                         R65 K118 [{"LayoutOrder", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
      893 LOADN                            R66 2
      894 SETTABLEKS                       R66 R65 K110 ["LayoutOrder"]
      896 SETTABLEKS                       R51 R65 K114 ["scroll"]
      898 SETTABLEKS                       R50 R65 K115 ["layout"]
      900 JUMPIFNOT                        R5 ; [+2]
      901 MOVE                             R66 R55
      902 JUMP                             ; [+1]
      903 LOADNIL                          R66
      904 SETTABLEKS                       R66 R65 K116 ["onCanvasPositionChanged"]
      906 JUMPIFNOT                        R5 ; [+2]
      907 MOVE                             R66 R53
      908 JUMP                             ; [+1]
      909 LOADNIL                          R66
      910 SETTABLEKS                       R66 R65 K117 ["scrollingFrameRef"]
      912 LOADK                            R66 K119 ["size-full fill clip"]
      913 SETTABLEKS                       R66 R65 K16 ["tag"]
      915 DUPTABLE                         R66 K122 [{"TextBox", "MobileTextBox"}]
      916 JUMPIF                           R19 ; [+124]
      917 GETUPVAL                         R68 3
      918 GETTABLEKS                       R67 R68 K59 ["createElement"]
      920 GETUPVAL                         R68 19
      921 DUPTABLE                         R69 K133 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
      922 GETTABLEKS                       R70 R2 K123 ["text"]
      924 SETTABLEKS                       R70 R69 K123 ["text"]
      926 GETTABLEKS                       R70 R2 K124 ["placeholder"]
      928 SETTABLEKS                       R70 R69 K124 ["placeholder"]
      930 GETTABLEKS                       R70 R2 K125 ["textInputType"]
      932 SETTABLEKS                       R70 R69 K125 ["textInputType"]
      934 SETTABLEKS                       R27 R69 K31 ["fontStyle"]
      936 GETUPVAL                         R72 5
      937 GETTABLEKS                       R71 R72 K27 ["FoundationCleanupTextInputPolyfill"]
      939 JUMPIFNOT                        R71 ; [+2]
      940 LOADNIL                          R70
      941 JUMP                             ; [+1]
      942 MOVE                             R70 R26
      943 SETTABLEKS                       R70 R69 K126 ["textStyle"]
      945 SETTABLEKS                       R5 R69 K127 ["isMultiLine"]
      947 GETTABLEKS                       R70 R2 K38 ["isDisabled"]
      949 SETTABLEKS                       R70 R69 K38 ["isDisabled"]
      951 SETTABLEKS                       R6 R69 K128 ["ref"]
      953 LOADK                            R71 K134 ["%* data-testid=%*--textbox"]
      954 ORK                              R73 R17 K5 [""]
      955 GETTABLEKS                       R74 R2 K70 ["testId"]
      957 NAMECALL                         R71 R71 K98 ["format"]
      959 CALL                             R71 3 1
      960 MOVE                             R70 R71
      961 SETTABLEKS                       R70 R69 K16 ["tag"]
      963 JUMPIFNOT                        R5 ; [+2]
      964 MOVE                             R70 R49
      965 JUMP                             ; [+1]
      966 LOADNIL                          R70
      967 SETTABLEKS                       R70 R69 K61 ["Size"]
      969 JUMPIFNOT                        R5 ; [+8]
      970 JUMPIF                           R19 ; [+7]
      971 GETTABLEKS                       R71 R2 K123 ["text"]
      973 JUMPIFEQKS                       R71 K5 [""] ; [+4]
      975 GETIMPORT                        R70 K137 [Enum.AutomaticSize.Y]
      977 JUMP                             ; [+1]
      978 LOADNIL                          R70
      979 SETTABLEKS                       R70 R69 K129 ["automaticSize"]
      981 SETTABLEKS                       R46 R69 K65 ["padding"]
      983 SETTABLEKS                       R38 R69 K130 ["onFocusGained"]
      985 JUMPIFNOT                        R5 ; [+3]
      986 JUMPIFNOT                        R21 ; [+2]
      987 LOADNIL                          R70
      988 JUMP                             ; [+1]
      989 MOVE                             R70 R39
      990 SETTABLEKS                       R70 R69 K40 ["onFocusLost"]
      992 SETTABLEKS                       R37 R69 K131 ["onTextChanged"]
      994 JUMPIFNOT                        R5 ; [+2]
      995 MOVE                             R70 R52
      996 JUMP                             ; [+1]
      997 LOADNIL                          R70
      998 SETTABLEKS                       R70 R69 K132 ["onCursorPositionChanged"]
     1000 DUPTABLE                         R70 K139 [{"DragDetector", "BoundsChecker"}]
     1001 SETTABLEKS                       R56 R70 K99 ["DragDetector"]
     1003 JUMPIFNOT                        R5 ; [+32]
     1004 GETUPVAL                         R72 3
     1005 GETTABLEKS                       R71 R72 K59 ["createElement"]
     1007 GETUPVAL                         R72 19
     1008 DUPTABLE                         R73 K141 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
     1009 LOADB                            R74 1
     1010 SETTABLEKS                       R74 R73 K140 ["isBoundsChecker"]
     1012 SETTABLEKS                       R27 R73 K31 ["fontStyle"]
     1014 GETUPVAL                         R76 5
     1015 GETTABLEKS                       R75 R76 K27 ["FoundationCleanupTextInputPolyfill"]
     1017 JUMPIFNOT                        R75 ; [+2]
     1018 LOADNIL                          R74
     1019 JUMP                             ; [+1]
     1020 MOVE                             R74 R26
     1021 SETTABLEKS                       R74 R73 K126 ["textStyle"]
     1023 GETIMPORT                        R74 K53 [UDim2.new]
     1025 LOADN                            R75 1
     1026 LOADN                            R76 0
     1027 LOADN                            R77 1
     1028 MOVE                             R78 R48
     1029 CALL                             R74 4 1
     1030 SETTABLEKS                       R74 R73 K61 ["Size"]
     1032 SETTABLEKS                       R7 R73 K128 ["ref"]
     1034 CALL                             R71 2 1
     1035 JUMP                             ; [+1]
     1036 LOADNIL                          R71
     1037 SETTABLEKS                       R71 R70 K138 ["BoundsChecker"]
     1039 CALL                             R67 3 1
     1040 JUMP                             ; [+1]
     1041 LOADNIL                          R67
     1042 SETTABLEKS                       R67 R66 K120 ["TextBox"]
     1044 JUMPIFNOT                        R5 ; [+68]
     1045 JUMPIFNOT                        R19 ; [+67]
     1046 GETUPVAL                         R68 3
     1047 GETTABLEKS                       R67 R68 K59 ["createElement"]
     1049 GETUPVAL                         R68 19
     1050 DUPTABLE                         R69 K142 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1051 GETTABLEKS                       R70 R2 K123 ["text"]
     1053 SETTABLEKS                       R70 R69 K123 ["text"]
     1055 GETTABLEKS                       R70 R2 K124 ["placeholder"]
     1057 SETTABLEKS                       R70 R69 K124 ["placeholder"]
     1059 GETTABLEKS                       R70 R2 K125 ["textInputType"]
     1061 SETTABLEKS                       R70 R69 K125 ["textInputType"]
     1063 SETTABLEKS                       R27 R69 K31 ["fontStyle"]
     1065 GETUPVAL                         R72 5
     1066 GETTABLEKS                       R71 R72 K27 ["FoundationCleanupTextInputPolyfill"]
     1068 JUMPIFNOT                        R71 ; [+2]
     1069 LOADNIL                          R70
     1070 JUMP                             ; [+1]
     1071 MOVE                             R70 R26
     1072 SETTABLEKS                       R70 R69 K126 ["textStyle"]
     1074 SETTABLEKS                       R5 R69 K127 ["isMultiLine"]
     1076 GETTABLEKS                       R70 R2 K38 ["isDisabled"]
     1078 SETTABLEKS                       R70 R69 K38 ["isDisabled"]
     1080 SETTABLEKS                       R46 R69 K65 ["padding"]
     1082 SETTABLEKS                       R54 R69 K128 ["ref"]
     1084 LOADK                            R71 K143 ["%* data-testid=%*--mobile-textbox"]
     1085 ORK                              R73 R17 K5 [""]
     1086 GETTABLEKS                       R74 R2 K70 ["testId"]
     1088 NAMECALL                         R71 R71 K98 ["format"]
     1090 CALL                             R71 3 1
     1091 MOVE                             R70 R71
     1092 SETTABLEKS                       R70 R69 K16 ["tag"]
     1094 SETTABLEKS                       R49 R69 K61 ["Size"]
     1096 JUMPIFNOT                        R5 ; [+3]
     1097 JUMPIFNOT                        R21 ; [+2]
     1098 MOVE                             R70 R39
     1099 JUMP                             ; [+1]
     1100 LOADNIL                          R70
     1101 SETTABLEKS                       R70 R69 K40 ["onFocusLost"]
     1103 SETTABLEKS                       R37 R69 K131 ["onTextChanged"]
     1105 JUMPIFNOT                        R5 ; [+2]
     1106 MOVE                             R70 R52
     1107 JUMP                             ; [+1]
     1108 LOADNIL                          R70
     1109 SETTABLEKS                       R70 R69 K132 ["onCursorPositionChanged"]
     1111 CALL                             R67 2 1
     1112 JUMP                             ; [+1]
     1113 LOADNIL                          R67
     1114 SETTABLEKS                       R67 R66 K121 ["MobileTextBox"]
     1116 CALL                             R63 3 1
     1117 SETTABLEKS                       R63 R62 K103 ["TextBoxWrapper"]
     1119 GETTABLEKS                       R64 R2 K144 ["trailingElement"]
     1121 JUMPIFNOT                        R64 ; [+24]
     1122 GETUPVAL                         R64 3
     1123 GETTABLEKS                       R63 R64 K59 ["createElement"]
     1125 GETUPVAL                         R64 12
     1126 DUPTABLE                         R65 K111 [{"LayoutOrder", "tag", "testId"}]
     1127 LOADN                            R66 3
     1128 SETTABLEKS                       R66 R65 K110 ["LayoutOrder"]
     1130 LOADK                            R66 K112 ["size-0-full auto-x"]
     1131 SETTABLEKS                       R66 R65 K16 ["tag"]
     1133 LOADK                            R67 K145 ["%*--trailing"]
     1134 GETTABLEKS                       R69 R2 K70 ["testId"]
     1136 NAMECALL                         R67 R67 K98 ["format"]
     1138 CALL                             R67 2 1
     1139 MOVE                             R66 R67
     1140 SETTABLEKS                       R66 R65 K70 ["testId"]
     1142 GETTABLEKS                       R66 R2 K144 ["trailingElement"]
     1144 CALL                             R63 3 1
     1145 JUMP                             ; [+1]
     1146 LOADNIL                          R63
     1147 SETTABLEKS                       R63 R62 K104 ["Trailing"]
     1149 CALL                             R59 3 -1
     1150 RETURN                           R59 -1

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
       50 GETTABLEKS                       R11 R0 K13 ["Constants"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETTABLEKS                       R13 R0 K14 ["Utility"]
       57 GETTABLEKS                       R12 R13 K16 ["blendTransparencies"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R14 R0 K14 ["Utility"]
       64 GETTABLEKS                       R13 R14 K17 ["getMultiLineTextHeight"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R15 R0 K14 ["Utility"]
       71 GETTABLEKS                       R14 R15 K18 ["isPluginSecurity"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETIMPORT                        R17 K1 [script]
       78 GETTABLEKS                       R16 R17 K4 ["Parent"]
       80 GETTABLEKS                       R15 R16 K19 ["truncateTextToCursor"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETTABLEKS                       R17 R0 K14 ["Utility"]
       87 GETTABLEKS                       R16 R17 K20 ["useBindable"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R18 R0 K14 ["Utility"]
       94 GETTABLEKS                       R17 R18 K21 ["usePreferredInput"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R20 R0 K22 ["Providers"]
      101 GETTABLEKS                       R19 R20 K23 ["Style"]
      103 GETTABLEKS                       R18 R19 K24 ["useStyleTags"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K6 [require]
      108 GETTABLEKS                       R20 R3 K25 ["TextInput"]
      110 GETTABLEKS                       R19 R20 K26 ["useTextInputVariants"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K6 [require]
      115 GETTABLEKS                       R22 R0 K22 ["Providers"]
      117 GETTABLEKS                       R21 R22 K23 ["Style"]
      119 GETTABLEKS                       R20 R21 K27 ["useTokens"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K6 [require]
      124 GETTABLEKS                       R22 R0 K14 ["Utility"]
      126 GETTABLEKS                       R21 R22 K28 ["withCommonProps"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K6 [require]
      131 GETTABLEKS                       R23 R0 K14 ["Utility"]
      133 GETTABLEKS                       R22 R23 K29 ["withDefaults"]
      135 CALL                             R21 1 1
      136 GETIMPORT                        R22 K6 [require]
      138 GETTABLEKS                       R24 R0 K30 ["Enums"]
      140 GETTABLEKS                       R23 R24 K31 ["InputSize"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K6 [require]
      145 GETTABLEKS                       R25 R0 K30 ["Enums"]
      147 GETTABLEKS                       R24 R25 K32 ["Radius"]
      149 CALL                             R23 1 1
      150 GETIMPORT                        R24 K6 [require]
      152 GETTABLEKS                       R26 R0 K30 ["Enums"]
      154 GETTABLEKS                       R25 R26 K33 ["ControlState"]
      156 CALL                             R24 1 1
      157 GETIMPORT                        R25 K6 [require]
      159 GETTABLEKS                       R27 R0 K30 ["Enums"]
      161 GETTABLEKS                       R26 R27 K34 ["StateLayerAffordance"]
      163 CALL                             R25 1 1
      164 DUPTABLE                         R26 K38 [{"size", "numLines", "testId"}]
      165 GETTABLEKS                       R27 R22 K39 ["Large"]
      167 SETTABLEKS                       R27 R26 K35 ["size"]
      169 LOADN                            R27 1
      170 SETTABLEKS                       R27 R26 K36 ["numLines"]
      172 LOADK                            R27 K40 ["--foundation-internal-text-input"]
      173 SETTABLEKS                       R27 R26 K37 ["testId"]
      175 GETTABLEKS                       R27 R2 K41 ["memo"]
      177 GETTABLEKS                       R28 R2 K42 ["forwardRef"]
      179 DUPCLOSURE                       R29 K43 [PROTO_0]
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R4
      184 CALL                             R28 1 -1
      185 CALL                             R27 -1 1
      186 DUPCLOSURE                       R28 K44 [PROTO_28]
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R26
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R24
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R25
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R27
      207 GETTABLEKS                       R29 R2 K41 ["memo"]
      209 GETTABLEKS                       R30 R2 K42 ["forwardRef"]
      211 MOVE                             R31 R28
      212 CALL                             R30 1 -1
      213 CALL                             R29 -1 -1
      214 RETURN                           R29 -1
