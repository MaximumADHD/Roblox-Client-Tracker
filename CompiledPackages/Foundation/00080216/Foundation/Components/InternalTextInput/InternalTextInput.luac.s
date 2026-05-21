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
       75 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       77 JUMPIFNOT                        R8 ; [+5]
       78 GETTABLEKS                       R7 R0 K20 ["textStyle"]
       80 GETTABLEKS                       R7 R7 K21 ["Color3"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R7
       84 SETTABLEKS                       R7 R6 K22 ["TextColor3"]
       86 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       88 JUMPIFNOT                        R8 ; [+5]
       89 GETTABLEKS                       R7 R0 K20 ["textStyle"]
       91 GETTABLEKS                       R7 R7 K23 ["Transparency"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R7
       95 SETTABLEKS                       R7 R6 K24 ["TextTransparency"]
       97 SETTABLEKS                       R3 R6 K25 ["MultiLine"]
       99 SETTABLEKS                       R3 R6 K26 ["TextWrapped"]
      101 JUMPIFNOT                        R3 ; [+3]
      102 GETIMPORT                        R7 K29 [Enum.TextYAlignment.Top]
      104 JUMP                             ; [+2]
      105 GETIMPORT                        R7 K31 [Enum.TextYAlignment.Center]
      107 SETTABLEKS                       R7 R6 K27 ["TextYAlignment"]
      109 JUMPIFNOT                        R2 ; [+2]
      110 LOADB                            R7 0
      111 JUMP                             ; [+3]
      112 GETTABLEKS                       R8 R0 K32 ["isDisabled"]
      114 NOT                              R7 R8
      115 SETTABLEKS                       R7 R6 K33 ["TextEditable"]
      117 GETTABLEKS                       R7 R0 K34 ["placeholder"]
      119 SETTABLEKS                       R7 R6 K35 ["PlaceholderText"]
      121 GETUPVAL                         R8 2
      122 CALL                             R8 0 1
      123 JUMPIFNOT                        R8 ; [+3]
      124 GETTABLEKS                       R7 R0 K36 ["textInputType"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R7
      128 SETTABLEKS                       R7 R6 K37 ["TextInputType"]
      130 GETTABLEKS                       R8 R0 K38 ["Size"]
      132 JUMPIFEQKNIL                     R8 ; [+4]
      134 GETTABLEKS                       R7 R0 K38 ["Size"]
      136 JUMP                             ; [+5]
      137 GETIMPORT                        R7 K41 [UDim2.fromScale]
      139 LOADN                            R8 1
      140 LOADN                            R9 1
      141 CALL                             R7 2 1
      142 SETTABLEKS                       R7 R6 K38 ["Size"]
      144 GETTABLEKS                       R7 R0 K42 ["automaticSize"]
      146 SETTABLEKS                       R7 R6 K43 ["AutomaticSize"]
      148 JUMPIFNOT                        R2 ; [+2]
      149 LOADNIL                          R7
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R7 R0 K44 ["text"]
      153 SETTABLEKS                       R7 R6 K45 ["Text"]
      155 SETTABLEKS                       R1 R6 K46 ["ref"]
      157 GETUPVAL                         R7 0
      158 GETTABLEKS                       R7 R7 K47 ["Tag"]
      160 GETTABLEKS                       R8 R0 K48 ["tag"]
      162 SETTABLE                         R8 R6 R7
      163 GETUPVAL                         R7 0
      164 GETTABLEKS                       R7 R7 K49 ["Change"]
      166 GETTABLEKS                       R7 R7 K45 ["Text"]
      168 GETTABLEKS                       R8 R0 K50 ["onTextChanged"]
      170 SETTABLE                         R8 R6 R7
      171 GETUPVAL                         R7 0
      172 GETTABLEKS                       R7 R7 K49 ["Change"]
      174 GETTABLEKS                       R7 R7 K51 ["CursorPosition"]
      176 GETTABLEKS                       R8 R0 K52 ["onCursorPositionChanged"]
      178 SETTABLE                         R8 R6 R7
      179 GETUPVAL                         R7 0
      180 GETTABLEKS                       R7 R7 K53 ["Event"]
      182 GETTABLEKS                       R7 R7 K54 ["Focused"]
      184 GETTABLEKS                       R8 R0 K55 ["onFocusGained"]
      186 SETTABLE                         R8 R6 R7
      187 GETUPVAL                         R7 0
      188 GETTABLEKS                       R7 R7 K53 ["Event"]
      190 GETTABLEKS                       R7 R7 K56 ["FocusLost"]
      192 GETTABLEKS                       R8 R0 K57 ["onFocusLost"]
      194 SETTABLE                         R8 R6 R7
      195 GETTABLEKS                       R8 R0 K58 ["padding"]
      197 JUMPIFNOT                        R8 ; [+14]
      198 DUPTABLE                         R7 K60 [{"Padding"}]
      199 GETUPVAL                         R8 0
      200 GETTABLEKS                       R8 R8 K2 ["createElement"]
      202 GETUPVAL                         R9 3
      203 DUPTABLE                         R10 K62 [{"value"}]
      204 GETTABLEKS                       R11 R0 K58 ["padding"]
      206 SETTABLEKS                       R11 R10 K61 ["value"]
      208 CALL                             R8 2 1
      209 SETTABLEKS                       R8 R7 K59 ["Padding"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R7
      213 GETTABLEKS                       R8 R0 K63 ["children"]
      215 CALL                             R4 4 -1
      216 RETURN                           R4 -1

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
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["FoundationTextInputFocusBehavior"]
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K0 ["current"]
       20 SETTABLEKS                       R0 R1 K1 ["SelectionStart"]
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["CursorPosition"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["FoundationTextInputFocusBehavior"]
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K0 ["current"]
       20 SETTABLEKS                       R0 R1 K1 ["CursorPosition"]
       22 RETURN                           R0 0

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
       15 GETTABLEKS                       R2 R2 K4 ["FoundationTextInputFocusBehavior"]
       17 JUMPIFNOT                        R2 ; [+9]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K1 ["current"]
       21 JUMPIFNOTEQ                      R1 R2 ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 2
       25 SETTABLEKS                       R1 R2 K1 ["current"]
       27 GETUPVAL                         R2 3
       28 JUMPIFNOT                        R2 ; [+9]
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K1 ["current"]
       32 JUMPIFNOT                        R2 ; [+5]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K1 ["current"]
       36 SETTABLEKS                       R1 R2 K3 ["Text"]
       38 GETUPVAL                         R2 5
       39 GETTABLEKS                       R2 R2 K5 ["onChanged"]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+16]
        8 GETTABLEKS                       R1 R0 K1 ["Parent"]
       10 JUMPIFEQKNIL                     R1 ; [+13]
       12 GETIMPORT                        R1 K4 [utf8.len]
       14 GETTABLEKS                       R2 R0 K5 ["Text"]
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+6]
       18 GETUPVAL                         R2 2
       19 LOADN                            R3 0
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 3
       22 ADDK                             R3 R1 K6 [1]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_11:
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
       41 GETUPVAL                         R0 7
       42 GETTABLEKS                       R0 R0 K5 ["FoundationTextInputFocusBehavior"]
       44 JUMPIFNOT                        R0 ; [+46]
       45 GETUPVAL                         R0 0
       46 GETTABLEKS                       R0 R0 K6 ["focusBehavior"]
       48 GETUPVAL                         R1 8
       49 GETTABLEKS                       R1 R1 K7 ["Clear"]
       51 JUMPIFNOTEQ                      R0 R1 ; [+26]
       53 GETUPVAL                         R1 4
       54 LOADK                            R2 K8 [""]
       55 SETTABLEKS                       R2 R1 K1 ["current"]
       57 GETUPVAL                         R1 3
       58 GETTABLEKS                       R1 R1 K1 ["current"]
       60 JUMPIFNOT                        R1 ; [+6]
       61 GETUPVAL                         R1 3
       62 GETTABLEKS                       R1 R1 K1 ["current"]
       64 LOADK                            R2 K8 [""]
       65 SETTABLEKS                       R2 R1 K3 ["Text"]
       67 GETUPVAL                         R1 9
       68 GETTABLEKS                       R1 R1 K1 ["current"]
       70 JUMPIFNOT                        R1 ; [+20]
       71 GETUPVAL                         R1 9
       72 GETTABLEKS                       R1 R1 K1 ["current"]
       74 LOADK                            R2 K8 [""]
       75 SETTABLEKS                       R2 R1 K3 ["Text"]
       77 RETURN                           R0 0
       78 GETUPVAL                         R1 8
       79 GETTABLEKS                       R1 R1 K9 ["Highlight"]
       81 JUMPIFNOTEQ                      R0 R1 ; [+9]
       83 GETIMPORT                        R1 K12 [task.spawn]
       85 NEWCLOSURE                       R2 P0
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          UPVAL U9
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          UPVAL U11
       90 CALL                             R1 1 0
       91 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onDrag"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["onDrag"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 SETTABLEKS                       R2 R1 K1 ["current"]
        5 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_28:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_29:
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
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K5 ["FoundationTextInputFocusBehavior"]
       27 JUMPIFNOT                        R8 ; [+6]
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R7 R7 K4 ["useRef"]
       31 LOADNIL                          R8
       32 CALL                             R7 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R8 R8 K4 ["useRef"]
       38 LOADNIL                          R9
       39 CALL                             R8 1 1
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R9 R9 K4 ["useRef"]
       43 LOADNIL                          R10
       44 CALL                             R9 1 1
       45 GETUPVAL                         R10 3
       46 GETTABLEKS                       R10 R10 K4 ["useRef"]
       48 LOADK                            R11 K6 [""]
       49 CALL                             R10 1 1
       50 GETUPVAL                         R12 4
       51 GETTABLEKS                       R12 R12 K5 ["FoundationTextInputFocusBehavior"]
       53 JUMPIFNOT                        R12 ; [+9]
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R11 R11 K4 ["useRef"]
       57 GETUPVAL                         R12 5
       58 GETTABLEKS                       R13 R2 K7 ["text"]
       60 CALL                             R12 1 -1
       61 CALL                             R11 -1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R11
       64 GETUPVAL                         R12 3
       65 GETTABLEKS                       R12 R12 K4 ["useRef"]
       67 LOADNIL                          R13
       68 CALL                             R12 1 1
       69 GETUPVAL                         R13 3
       70 GETTABLEKS                       R13 R13 K4 ["useRef"]
       72 GETIMPORT                        R14 K10 [Vector2.zero]
       74 CALL                             R13 1 1
       75 GETUPVAL                         R14 3
       76 GETTABLEKS                       R14 R14 K11 ["useState"]
       78 LOADB                            R15 0
       79 CALL                             R14 1 2
       80 GETUPVAL                         R16 3
       81 GETTABLEKS                       R16 R16 K11 ["useState"]
       83 LOADB                            R17 0
       84 CALL                             R16 1 2
       85 GETUPVAL                         R18 6
       86 MOVE                             R19 R3
       87 GETTABLEKS                       R20 R2 K12 ["size"]
       89 GETTABLEKS                       R21 R2 K13 ["variant"]
       91 GETTABLEKS                       R22 R2 K14 ["radius"]
       93 MOVE                             R23 R16
       94 MOVE                             R24 R14
       95 GETTABLEKS                       R25 R2 K15 ["hasError"]
       97 CALL                             R18 7 1
       98 GETUPVAL                         R19 7
       99 GETTABLEKS                       R20 R18 K16 ["textBox"]
      101 GETTABLEKS                       R20 R20 K17 ["tag"]
      103 CALL                             R19 1 1
      104 GETUPVAL                         R20 8
      105 CALL                             R20 0 1
      106 GETUPVAL                         R21 3
      107 GETTABLEKS                       R21 R21 K11 ["useState"]
      109 LOADB                            R22 0
      110 CALL                             R21 1 2
      111 GETIMPORT                        R24 K21 [Enum.PreferredInput.Touch]
      113 JUMPIFEQ                         R20 R24 ; [+2]
      115 LOADB                            R23 0 +1
      116 LOADB                            R23 1
      117 GETTABLEKS                       R24 R3 K22 ["Stroke"]
      119 GETTABLEKS                       R24 R24 K23 ["Standard"]
      121 FASTCALL1                        MATH_CEIL R24 ; [+3]
      122 MOVE                             R27 R24
      123 GETIMPORT                        R26 K26 [math.ceil]
      125 CALL                             R26 1 1
      126 MULK                             R25 R26 K24 [2]
      127 GETTABLEKS                       R26 R3 K22 ["Stroke"]
      129 GETTABLEKS                       R26 R26 K27 ["Thick"]
      131 FASTCALL1                        MATH_CEIL R26 ; [+3]
      132 MOVE                             R29 R26
      133 GETIMPORT                        R28 K26 [math.ceil]
      135 CALL                             R28 1 1
      136 MULK                             R27 R28 K24 [2]
      137 GETUPVAL                         R28 9
      138 GETTABLEKS                       R29 R3 K28 ["Color"]
      140 GETTABLEKS                       R29 R29 K29 ["Content"]
      142 GETTABLEKS                       R29 R29 K30 ["Emphasis"]
      144 GETTABLEKS                       R30 R2 K31 ["isDisabled"]
      146 CALL                             R28 2 1
      147 GETTABLEKS                       R29 R18 K16 ["textBox"]
      149 GETTABLEKS                       R29 R29 K32 ["fontStyle"]
      151 GETTABLEKS                       R30 R29 K33 ["FontSize"]
      153 GETTABLEKS                       R31 R29 K34 ["LineHeight"]
      155 GETUPVAL                         R32 3
      156 GETTABLEKS                       R32 R32 K35 ["useCallback"]
      158 NEWCLOSURE                       R33 P0
      159 CAPTURE                          VAL R6
      160 NEWTABLE                         R34 0 0
      162 CALL                             R32 2 1
      163 GETUPVAL                         R33 3
      164 GETTABLEKS                       R33 R33 K35 ["useCallback"]
      166 NEWCLOSURE                       R34 P1
      167 CAPTURE                          VAL R6
      168 NEWTABLE                         R35 0 0
      170 CALL                             R33 2 1
      171 GETUPVAL                         R34 3
      172 GETTABLEKS                       R34 R34 K35 ["useCallback"]
      174 NEWCLOSURE                       R35 P2
      175 CAPTURE                          VAL R6
      176 NEWTABLE                         R36 0 0
      178 CALL                             R34 2 1
      179 GETUPVAL                         R35 3
      180 GETTABLEKS                       R35 R35 K35 ["useCallback"]
      182 NEWCLOSURE                       R36 P3
      183 CAPTURE                          VAL R6
      184 NEWTABLE                         R37 0 0
      186 CALL                             R35 2 1
      187 GETUPVAL                         R36 3
      188 GETTABLEKS                       R36 R36 K35 ["useCallback"]
      190 NEWCLOSURE                       R37 P4
      191 CAPTURE                          VAL R6
      192 NEWTABLE                         R38 0 0
      194 CALL                             R36 2 1
      195 GETUPVAL                         R37 3
      196 GETTABLEKS                       R37 R37 K35 ["useCallback"]
      198 NEWCLOSURE                       R38 P5
      199 CAPTURE                          VAL R6
      200 CAPTURE                          UPVAL U4
      201 CAPTURE                          VAL R7
      202 NEWTABLE                         R39 0 0
      204 CALL                             R37 2 1
      205 GETUPVAL                         R38 3
      206 GETTABLEKS                       R38 R38 K35 ["useCallback"]
      208 NEWCLOSURE                       R39 P6
      209 CAPTURE                          VAL R6
      210 CAPTURE                          UPVAL U4
      211 CAPTURE                          VAL R7
      212 NEWTABLE                         R40 0 0
      214 CALL                             R38 2 1
      215 GETUPVAL                         R39 3
      216 GETTABLEKS                       R39 R39 K36 ["useImperativeHandle"]
      218 MOVE                             R40 R1
      219 NEWCLOSURE                       R41 P7
      220 CAPTURE                          VAL R34
      221 CAPTURE                          VAL R32
      222 CAPTURE                          VAL R33
      223 CAPTURE                          VAL R15
      224 CAPTURE                          VAL R35
      225 CAPTURE                          VAL R36
      226 CAPTURE                          VAL R38
      227 CAPTURE                          VAL R37
      228 NEWTABLE                         R42 0 7
      230 MOVE                             R43 R36
      231 MOVE                             R44 R34
      232 MOVE                             R45 R35
      233 MOVE                             R46 R32
      234 MOVE                             R47 R33
      235 MOVE                             R48 R38
      236 MOVE                             R49 R37
      237 SETLIST                          R42 R43 7 [1]
      239 CALL                             R39 3 0
      240 GETUPVAL                         R39 3
      241 GETTABLEKS                       R39 R39 K35 ["useCallback"]
      243 NEWCLOSURE                       R40 P8
      244 CAPTURE                          VAL R10
      245 CAPTURE                          UPVAL U4
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R5
      248 CAPTURE                          VAL R8
      249 CAPTURE                          VAL R2
      250 NEWTABLE                         R41 0 3
      252 GETTABLEKS                       R42 R2 K37 ["onChanged"]
      254 MOVE                             R43 R5
      255 MOVE                             R44 R21
      256 SETLIST                          R41 R42 3 [1]
      258 CALL                             R39 2 1
      259 GETUPVAL                         R40 3
      260 GETTABLEKS                       R40 R40 K35 ["useCallback"]
      262 NEWCLOSURE                       R41 P9
      263 CAPTURE                          VAL R2
      264 CAPTURE                          VAL R5
      265 CAPTURE                          VAL R23
      266 CAPTURE                          VAL R6
      267 CAPTURE                          VAL R10
      268 CAPTURE                          VAL R22
      269 CAPTURE                          VAL R17
      270 CAPTURE                          UPVAL U4
      271 CAPTURE                          UPVAL U10
      272 CAPTURE                          VAL R7
      273 CAPTURE                          VAL R37
      274 CAPTURE                          VAL R38
      275 NEWTABLE                         R42 0 7
      277 GETTABLEKS                       R43 R2 K38 ["onFocus"]
      279 GETTABLEKS                       R44 R2 K31 ["isDisabled"]
      281 MOVE                             R45 R23
      282 MOVE                             R46 R5
      283 GETUPVAL                         R48 4
      284 GETTABLEKS                       R48 R48 K5 ["FoundationTextInputFocusBehavior"]
      286 JUMPIFNOT                        R48 ; [+3]
      287 GETTABLEKS                       R47 R2 K39 ["focusBehavior"]
      289 JUMP                             ; [+1]
      290 LOADNIL                          R47
      291 GETUPVAL                         R49 4
      292 GETTABLEKS                       R49 R49 K5 ["FoundationTextInputFocusBehavior"]
      294 JUMPIFNOT                        R49 ; [+2]
      295 MOVE                             R48 R37
      296 JUMP                             ; [+1]
      297 LOADNIL                          R48
      298 GETUPVAL                         R50 4
      299 GETTABLEKS                       R50 R50 K5 ["FoundationTextInputFocusBehavior"]
      301 JUMPIFNOT                        R50 ; [+2]
      302 MOVE                             R49 R38
      303 JUMP                             ; [+1]
      304 LOADNIL                          R49
      305 SETLIST                          R42 R43 7 [1]
      307 CALL                             R40 2 1
      308 GETUPVAL                         R41 3
      309 GETTABLEKS                       R41 R41 K35 ["useCallback"]
      311 NEWCLOSURE                       R42 P10
      312 CAPTURE                          VAL R17
      313 CAPTURE                          VAL R5
      314 CAPTURE                          VAL R22
      315 CAPTURE                          VAL R2
      316 NEWTABLE                         R43 0 3
      318 GETTABLEKS                       R44 R2 K40 ["onReturnPressed"]
      320 MOVE                             R45 R5
      321 GETTABLEKS                       R46 R2 K41 ["onFocusLost"]
      323 SETLIST                          R43 R44 3 [1]
      325 CALL                             R41 2 1
      326 GETUPVAL                         R42 3
      327 GETTABLEKS                       R42 R42 K35 ["useCallback"]
      329 NEWCLOSURE                       R43 P11
      330 CAPTURE                          VAL R15
      331 CAPTURE                          UPVAL U11
      332 NEWTABLE                         R44 0 0
      334 CALL                             R42 2 1
      335 GETUPVAL                         R43 3
      336 GETTABLEKS                       R43 R43 K35 ["useCallback"]
      338 NEWCLOSURE                       R44 P12
      339 CAPTURE                          VAL R12
      340 CAPTURE                          VAL R2
      341 NEWTABLE                         R45 0 1
      343 GETTABLEKS                       R46 R2 K42 ["onDragStarted"]
      345 SETLIST                          R45 R46 1 [1]
      347 CALL                             R43 2 1
      348 GETUPVAL                         R44 3
      349 GETTABLEKS                       R44 R44 K35 ["useCallback"]
      351 NEWCLOSURE                       R45 P13
      352 CAPTURE                          VAL R2
      353 NEWTABLE                         R46 0 1
      355 GETTABLEKS                       R47 R2 K43 ["onDrag"]
      357 SETLIST                          R46 R47 1 [1]
      359 CALL                             R44 2 1
      360 GETUPVAL                         R45 3
      361 GETTABLEKS                       R45 R45 K35 ["useCallback"]
      363 NEWCLOSURE                       R46 P14
      364 CAPTURE                          VAL R12
      365 CAPTURE                          VAL R32
      366 CAPTURE                          VAL R33
      367 CAPTURE                          VAL R17
      368 CAPTURE                          VAL R2
      369 NEWTABLE                         R47 0 1
      371 GETTABLEKS                       R48 R2 K44 ["onDragEnded"]
      373 SETLIST                          R47 R48 1 [1]
      375 CALL                             R45 2 1
      376 GETUPVAL                         R46 3
      377 GETTABLEKS                       R46 R46 K45 ["useMemo"]
      379 NEWCLOSURE                       R47 P15
      380 CAPTURE                          VAL R18
      381 CAPTURE                          VAL R3
      382 NEWTABLE                         R48 0 2
      384 MOVE                             R49 R3
      385 GETTABLEKS                       R50 R18 K46 ["innerContainer"]
      387 GETTABLEKS                       R50 R50 K14 ["radius"]
      389 SETLIST                          R48 R49 2 [1]
      391 CALL                             R46 2 1
      392 GETUPVAL                         R47 3
      393 GETTABLEKS                       R47 R47 K45 ["useMemo"]
      395 NEWCLOSURE                       R48 P16
      396 CAPTURE                          UPVAL U12
      397 CAPTURE                          VAL R30
      398 CAPTURE                          VAL R4
      399 CAPTURE                          VAL R31
      400 NEWTABLE                         R49 0 3
      402 MOVE                             R50 R30
      403 MOVE                             R51 R4
      404 MOVE                             R52 R31
      405 SETLIST                          R49 R50 3 [1]
      407 CALL                             R47 2 1
      408 GETUPVAL                         R48 3
      409 GETTABLEKS                       R48 R48 K45 ["useMemo"]
      411 NEWCLOSURE                       R49 P17
      412 CAPTURE                          VAL R18
      413 CAPTURE                          VAL R25
      414 CAPTURE                          UPVAL U12
      415 CAPTURE                          VAL R30
      416 CAPTURE                          VAL R31
      417 CAPTURE                          VAL R47
      418 NEWTABLE                         R50 0 6
      420 GETTABLEKS                       R51 R18 K47 ["outerContainer"]
      422 GETTABLEKS                       R51 R51 K48 ["minHeight"]
      424 MOVE                             R52 R25
      425 MOVE                             R53 R27
      426 MOVE                             R54 R30
      427 MOVE                             R55 R47
      428 MOVE                             R56 R31
      429 SETLIST                          R50 R51 6 [1]
      431 CALL                             R48 2 2
      432 GETTABLEKS                       R51 R48 K49 ["bottom"]
      434 GETTABLEKS                       R51 R51 K50 ["Offset"]
      436 GETTABLEKS                       R52 R48 K51 ["top"]
      438 GETTABLEKS                       R52 R52 K50 ["Offset"]
      440 ADD                              R50 R51 R52
      441 GETIMPORT                        R51 K54 [UDim2.new]
      443 LOADN                            R52 1
      444 LOADN                            R53 0
      445 LOADN                            R54 0
      446 ADD                              R55 R47 R50
      447 CALL                             R51 4 1
      448 GETUPVAL                         R52 3
      449 GETTABLEKS                       R52 R52 K45 ["useMemo"]
      451 NEWCLOSURE                       R53 P18
      452 CAPTURE                          VAL R5
      453 NEWTABLE                         R54 0 1
      455 MOVE                             R55 R5
      456 SETLIST                          R54 R55 1 [1]
      458 CALL                             R52 2 1
      459 GETUPVAL                         R53 3
      460 GETTABLEKS                       R53 R53 K45 ["useMemo"]
      462 NEWCLOSURE                       R54 P19
      463 CAPTURE                          VAL R5
      464 NEWTABLE                         R55 0 1
      466 MOVE                             R56 R5
      467 SETLIST                          R55 R56 1 [1]
      469 CALL                             R53 2 1
      470 GETUPVAL                         R54 3
      471 GETTABLEKS                       R54 R54 K35 ["useCallback"]
      473 NEWCLOSURE                       R55 P20
      474 CAPTURE                          VAL R9
      475 CAPTURE                          VAL R8
      476 CAPTURE                          UPVAL U13
      477 CAPTURE                          VAL R48
      478 NEWTABLE                         R56 0 1
      480 MOVE                             R57 R48
      481 SETLIST                          R56 R57 1 [1]
      483 CALL                             R54 2 1
      484 GETUPVAL                         R55 3
      485 GETTABLEKS                       R55 R55 K35 ["useCallback"]
      487 NEWCLOSURE                       R56 P21
      488 CAPTURE                          VAL R9
      489 CAPTURE                          VAL R13
      490 NEWTABLE                         R57 0 0
      492 CALL                             R55 2 1
      493 GETUPVAL                         R56 3
      494 GETTABLEKS                       R56 R56 K35 ["useCallback"]
      496 NEWCLOSURE                       R57 P22
      497 CAPTURE                          VAL R10
      498 NEWTABLE                         R58 0 0
      500 CALL                             R56 2 1
      501 GETUPVAL                         R57 3
      502 GETTABLEKS                       R57 R57 K35 ["useCallback"]
      504 NEWCLOSURE                       R58 P23
      505 CAPTURE                          VAL R13
      506 NEWTABLE                         R59 0 0
      508 CALL                             R57 2 1
      509 GETUPVAL                         R58 3
      510 GETTABLEKS                       R58 R58 K45 ["useMemo"]
      512 NEWCLOSURE                       R59 P24
      513 CAPTURE                          VAL R2
      514 CAPTURE                          UPVAL U3
      515 CAPTURE                          VAL R43
      516 CAPTURE                          VAL R44
      517 CAPTURE                          VAL R45
      518 CAPTURE                          VAL R16
      519 NEWTABLE                         R60 0 5
      521 MOVE                             R61 R43
      522 MOVE                             R62 R44
      523 MOVE                             R63 R45
      524 MOVE                             R64 R16
      525 GETTABLEKS                       R65 R2 K31 ["isDisabled"]
      527 SETLIST                          R60 R61 5 [1]
      529 CALL                             R58 2 1
      530 GETUPVAL                         R59 14
      531 GETTABLEKS                       R61 R2 K55 ["horizontalPadding"]
      533 JUMPIFNOT                        R61 ; [+11]
      534 GETTABLEKS                       R60 R2 K55 ["horizontalPadding"]
      536 GETTABLEKS                       R60 R60 K56 ["left"]
      538 JUMPIF                           R60 ; [+11]
      539 GETIMPORT                        R60 K58 [UDim.new]
      541 LOADN                            R61 0
      542 LOADN                            R62 0
      543 CALL                             R60 2 1
      544 JUMP                             ; [+5]
      545 GETIMPORT                        R60 K58 [UDim.new]
      547 LOADN                            R61 0
      548 LOADN                            R62 0
      549 CALL                             R60 2 1
      550 CALL                             R59 1 1
      551 GETUPVAL                         R60 14
      552 GETTABLEKS                       R62 R2 K55 ["horizontalPadding"]
      554 JUMPIFNOT                        R62 ; [+11]
      555 GETTABLEKS                       R61 R2 K55 ["horizontalPadding"]
      557 GETTABLEKS                       R61 R61 K59 ["right"]
      559 JUMPIF                           R61 ; [+11]
      560 GETIMPORT                        R61 K58 [UDim.new]
      562 LOADN                            R62 0
      563 LOADN                            R63 0
      564 CALL                             R61 2 1
      565 JUMP                             ; [+5]
      566 GETIMPORT                        R61 K58 [UDim.new]
      568 LOADN                            R62 0
      569 LOADN                            R63 0
      570 CALL                             R61 2 1
      571 CALL                             R60 1 1
      572 GETUPVAL                         R62 4
      573 GETTABLEKS                       R62 R62 K5 ["FoundationTextInputFocusBehavior"]
      575 JUMPIFNOT                        R62 ; [+7]
      576 GETUPVAL                         R61 15
      577 GETTABLEKS                       R61 R61 K60 ["useComposedRef"]
      579 MOVE                             R62 R7
      580 MOVE                             R63 R56
      581 CALL                             R61 2 1
      582 JUMP                             ; [+1]
      583 LOADNIL                          R61
      584 GETUPVAL                         R62 3
      585 GETTABLEKS                       R62 R62 K61 ["createElement"]
      587 GETUPVAL                         R63 16
      588 GETUPVAL                         R64 17
      589 MOVE                             R65 R2
      590 DUPTABLE                         R66 K73 [{"Size", "selection", "cursor", "stroke", "cornerRadius", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      591 GETIMPORT                        R67 K54 [UDim2.new]
      593 LOADN                            R68 1
      594 LOADN                            R69 0
      595 LOADN                            R70 0
      596 MOVE                             R71 R49
      597 CALL                             R67 4 1
      598 SETTABLEKS                       R67 R66 K62 ["Size"]
      600 DUPTABLE                         R67 K75 [{"Selectable"}]
      601 GETTABLEKS                       R69 R2 K31 ["isDisabled"]
      603 NOT                              R68 R69
      604 SETTABLEKS                       R68 R67 K74 ["Selectable"]
      606 SETTABLEKS                       R67 R66 K63 ["selection"]
      608 SETTABLEKS                       R46 R66 K64 ["cursor"]
      610 GETTABLEKS                       R68 R18 K76 ["outerView"]
      612 GETTABLEKS                       R68 R68 K77 ["strokeStyle"]
      614 JUMPIFNOT                        R68 ; [+53]
      615 GETTABLEKS                       R68 R18 K76 ["outerView"]
      617 GETTABLEKS                       R68 R68 K78 ["strokeThickness"]
      619 JUMPIFNOT                        R68 ; [+48]
      620 DUPTABLE                         R67 K82 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      621 GETTABLEKS                       R68 R18 K76 ["outerView"]
      623 GETTABLEKS                       R68 R68 K77 ["strokeStyle"]
      625 GETTABLEKS                       R68 R68 K83 ["Color3"]
      627 SETTABLEKS                       R68 R67 K28 ["Color"]
      629 GETTABLEKS                       R69 R2 K31 ["isDisabled"]
      631 JUMPIFNOT                        R69 ; [+12]
      632 GETUPVAL                         R68 18
      633 GETTABLEKS                       R69 R18 K76 ["outerView"]
      635 GETTABLEKS                       R69 R69 K77 ["strokeStyle"]
      637 GETTABLEKS                       R69 R69 K79 ["Transparency"]
      639 GETUPVAL                         R70 19
      640 GETTABLEKS                       R70 R70 K84 ["DISABLED_TRANSPARENCY"]
      642 CALL                             R68 2 1
      643 JUMP                             ; [+6]
      644 GETTABLEKS                       R68 R18 K76 ["outerView"]
      646 GETTABLEKS                       R68 R68 K77 ["strokeStyle"]
      648 GETTABLEKS                       R68 R68 K79 ["Transparency"]
      650 SETTABLEKS                       R68 R67 K79 ["Transparency"]
      652 GETTABLEKS                       R68 R18 K76 ["outerView"]
      654 GETTABLEKS                       R68 R68 K78 ["strokeThickness"]
      656 SETTABLEKS                       R68 R67 K80 ["Thickness"]
      658 JUMPIF                           R16 ; [+1]
      659 JUMPIFNOT                        R14 ; [+3]
      660 GETIMPORT                        R68 K86 [Enum.BorderStrokePosition.Center]
      662 JUMP                             ; [+2]
      663 GETIMPORT                        R68 K88 [Enum.BorderStrokePosition.Inner]
      665 SETTABLEKS                       R68 R67 K81 ["BorderStrokePosition"]
      667 JUMP                             ; [+1]
      668 LOADNIL                          R67
      669 SETTABLEKS                       R67 R66 K65 ["stroke"]
      671 GETTABLEKS                       R68 R2 K14 ["radius"]
      673 GETUPVAL                         R69 20
      674 GETTABLEKS                       R69 R69 K89 ["Circle"]
      676 JUMPIFNOTEQ                      R68 R69 ; [+15]
      678 GETIMPORT                        R67 K58 [UDim.new]
      680 LOADN                            R68 0
      681 GETTABLEKS                       R71 R18 K47 ["outerContainer"]
      683 GETTABLEKS                       R71 R71 K48 ["minHeight"]
      685 DIVK                             R70 R71 K24 [2]
      686 FASTCALL1                        MATH_CEIL R70 ; [+2]
      687 GETIMPORT                        R69 K26 [math.ceil]
      689 CALL                             R69 1 1
      690 CALL                             R67 2 1
      691 JUMP                             ; [+1]
      692 LOADNIL                          R67
      693 SETTABLEKS                       R67 R66 K66 ["cornerRadius"]
      695 DUPTABLE                         R67 K90 [{"left", "right", "top", "bottom"}]
      696 NEWCLOSURE                       R70 P25
      697 CAPTURE                          VAL R24
      698 NAMECALL                         R68 R59 K91 ["map"]
      700 CALL                             R68 2 1
      701 SETTABLEKS                       R68 R67 K56 ["left"]
      703 NEWCLOSURE                       R70 P26
      704 CAPTURE                          VAL R24
      705 NAMECALL                         R68 R60 K91 ["map"]
      707 CALL                             R68 2 1
      708 SETTABLEKS                       R68 R67 K59 ["right"]
      710 GETIMPORT                        R68 K58 [UDim.new]
      712 LOADN                            R69 0
      713 MOVE                             R70 R24
      714 CALL                             R68 2 1
      715 SETTABLEKS                       R68 R67 K51 ["top"]
      717 GETIMPORT                        R68 K58 [UDim.new]
      719 LOADN                            R69 0
      720 MOVE                             R70 R24
      721 CALL                             R68 2 1
      722 SETTABLEKS                       R68 R67 K49 ["bottom"]
      724 SETTABLEKS                       R67 R66 K67 ["padding"]
      726 GETTABLEKS                       R68 R2 K31 ["isDisabled"]
      728 JUMPIF                           R68 ; [+2]
      729 MOVE                             R67 R32
      730 JUMP                             ; [+1]
      731 LOADNIL                          R67
      732 SETTABLEKS                       R67 R66 K68 ["onActivated"]
      734 SETTABLEKS                       R42 R66 K69 ["onStateChanged"]
      736 GETTABLEKS                       R67 R2 K31 ["isDisabled"]
      738 SETTABLEKS                       R67 R66 K31 ["isDisabled"]
      740 GETTABLEKS                       R68 R18 K76 ["outerView"]
      742 GETTABLEKS                       R68 R68 K92 ["bgStyle"]
      744 JUMPIFNOT                        R68 ; [+27]
      745 GETUPVAL                         R67 9
      746 DUPTABLE                         R68 K93 [{"Color3", "Transparency"}]
      747 GETTABLEKS                       R69 R18 K76 ["outerView"]
      749 GETTABLEKS                       R69 R69 K92 ["bgStyle"]
      751 GETTABLEKS                       R69 R69 K83 ["Color3"]
      753 SETTABLEKS                       R69 R68 K83 ["Color3"]
      755 GETTABLEKS                       R70 R2 K94 ["backgroundGradient"]
      757 JUMPIFNOT                        R70 ; [+2]
      758 LOADN                            R69 0
      759 JUMP                             ; [+6]
      760 GETTABLEKS                       R69 R18 K76 ["outerView"]
      762 GETTABLEKS                       R69 R69 K92 ["bgStyle"]
      764 GETTABLEKS                       R69 R69 K79 ["Transparency"]
      766 SETTABLEKS                       R69 R68 K79 ["Transparency"]
      768 GETTABLEKS                       R69 R2 K31 ["isDisabled"]
      770 CALL                             R67 2 1
      771 JUMP                             ; [+1]
      772 LOADNIL                          R67
      773 SETTABLEKS                       R67 R66 K70 ["backgroundStyle"]
      775 DUPTABLE                         R67 K96 [{"affordance"}]
      776 GETUPVAL                         R68 21
      777 GETTABLEKS                       R68 R68 K97 ["None"]
      779 SETTABLEKS                       R68 R67 K95 ["affordance"]
      781 SETTABLEKS                       R67 R66 K71 ["stateLayer"]
      783 GETTABLEKS                       R67 R18 K76 ["outerView"]
      785 GETTABLEKS                       R67 R67 K17 ["tag"]
      787 SETTABLEKS                       R67 R66 K17 ["tag"]
      789 LOADK                            R68 K98 ["%*--outer-container"]
      790 GETTABLEKS                       R70 R2 K72 ["testId"]
      792 NAMECALL                         R68 R68 K99 ["format"]
      794 CALL                             R68 2 1
      795 MOVE                             R67 R68
      796 SETTABLEKS                       R67 R66 K72 ["testId"]
      798 CALL                             R64 2 1
      799 DUPTABLE                         R65 K105 [{"DragDetector", "Background", "Leading", "TextBoxWrapper", "Trailing"}]
      800 SETTABLEKS                       R58 R65 K100 ["DragDetector"]
      802 GETTABLEKS                       R66 R2 K94 ["backgroundGradient"]
      804 SETTABLEKS                       R66 R65 K101 ["Background"]
      806 GETTABLEKS                       R67 R2 K106 ["leadingElement"]
      808 JUMPIFNOT                        R67 ; [+34]
      809 GETUPVAL                         R66 3
      810 GETTABLEKS                       R66 R66 K61 ["createElement"]
      812 GETUPVAL                         R67 16
      813 DUPTABLE                         R68 K109 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
      814 GETTABLEKS                       R70 R2 K31 ["isDisabled"]
      816 JUMPIFNOT                        R70 ; [+4]
      817 GETUPVAL                         R69 19
      818 GETTABLEKS                       R69 R69 K84 ["DISABLED_TRANSPARENCY"]
      820 JUMP                             ; [+1]
      821 LOADNIL                          R69
      822 SETTABLEKS                       R69 R68 K107 ["GroupTransparency"]
      824 LOADN                            R69 1
      825 SETTABLEKS                       R69 R68 K108 ["LayoutOrder"]
      827 LOADK                            R69 K110 ["size-0-full auto-x"]
      828 SETTABLEKS                       R69 R68 K17 ["tag"]
      830 LOADK                            R70 K111 ["%*--leading"]
      831 GETTABLEKS                       R72 R2 K72 ["testId"]
      833 NAMECALL                         R70 R70 K99 ["format"]
      835 CALL                             R70 2 1
      836 MOVE                             R69 R70
      837 SETTABLEKS                       R69 R68 K72 ["testId"]
      839 GETTABLEKS                       R69 R2 K106 ["leadingElement"]
      841 CALL                             R66 3 1
      842 JUMP                             ; [+1]
      843 LOADNIL                          R66
      844 SETTABLEKS                       R66 R65 K102 ["Leading"]
      846 GETUPVAL                         R66 3
      847 GETTABLEKS                       R66 R66 K61 ["createElement"]
      849 JUMPIFNOT                        R5 ; [+2]
      850 GETUPVAL                         R67 22
      851 JUMP                             ; [+1]
      852 GETUPVAL                         R67 16
      853 DUPTABLE                         R68 K116 [{"LayoutOrder", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
      854 LOADN                            R69 2
      855 SETTABLEKS                       R69 R68 K108 ["LayoutOrder"]
      857 SETTABLEKS                       R53 R68 K112 ["scroll"]
      859 SETTABLEKS                       R52 R68 K113 ["layout"]
      861 JUMPIFNOT                        R5 ; [+2]
      862 MOVE                             R69 R57
      863 JUMP                             ; [+1]
      864 LOADNIL                          R69
      865 SETTABLEKS                       R69 R68 K114 ["onCanvasPositionChanged"]
      867 JUMPIFNOT                        R5 ; [+2]
      868 MOVE                             R69 R55
      869 JUMP                             ; [+1]
      870 LOADNIL                          R69
      871 SETTABLEKS                       R69 R68 K115 ["scrollingFrameRef"]
      873 LOADK                            R69 K117 ["fill size-full clip"]
      874 SETTABLEKS                       R69 R68 K17 ["tag"]
      876 DUPTABLE                         R69 K120 [{"TextBox", "MobileTextBox"}]
      877 JUMPIF                           R21 ; [+110]
      878 GETUPVAL                         R70 3
      879 GETTABLEKS                       R70 R70 K61 ["createElement"]
      881 GETUPVAL                         R71 23
      882 DUPTABLE                         R72 K130 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
      883 GETTABLEKS                       R73 R2 K7 ["text"]
      885 SETTABLEKS                       R73 R72 K7 ["text"]
      887 GETTABLEKS                       R73 R2 K121 ["placeholder"]
      889 SETTABLEKS                       R73 R72 K121 ["placeholder"]
      891 GETTABLEKS                       R73 R2 K122 ["textInputType"]
      893 SETTABLEKS                       R73 R72 K122 ["textInputType"]
      895 SETTABLEKS                       R29 R72 K32 ["fontStyle"]
      897 SETTABLEKS                       R28 R72 K123 ["textStyle"]
      899 SETTABLEKS                       R5 R72 K124 ["isMultiLine"]
      901 GETTABLEKS                       R73 R2 K31 ["isDisabled"]
      903 SETTABLEKS                       R73 R72 K31 ["isDisabled"]
      905 SETTABLEKS                       R6 R72 K125 ["ref"]
      907 LOADK                            R74 K131 ["%* data-testid=%*--textbox"]
      908 ORK                              R76 R19 K6 [""]
      909 GETTABLEKS                       R77 R2 K72 ["testId"]
      911 NAMECALL                         R74 R74 K99 ["format"]
      913 CALL                             R74 3 1
      914 MOVE                             R73 R74
      915 SETTABLEKS                       R73 R72 K17 ["tag"]
      917 JUMPIFNOT                        R5 ; [+2]
      918 MOVE                             R73 R51
      919 JUMP                             ; [+1]
      920 LOADNIL                          R73
      921 SETTABLEKS                       R73 R72 K62 ["Size"]
      923 JUMPIFNOT                        R5 ; [+8]
      924 JUMPIF                           R21 ; [+7]
      925 GETTABLEKS                       R74 R2 K7 ["text"]
      927 JUMPIFEQKS                       R74 K6 [""] ; [+4]
      929 GETIMPORT                        R73 K134 [Enum.AutomaticSize.Y]
      931 JUMP                             ; [+1]
      932 LOADNIL                          R73
      933 SETTABLEKS                       R73 R72 K126 ["automaticSize"]
      935 SETTABLEKS                       R48 R72 K67 ["padding"]
      937 SETTABLEKS                       R40 R72 K127 ["onFocusGained"]
      939 JUMPIFNOT                        R5 ; [+3]
      940 JUMPIFNOT                        R23 ; [+2]
      941 LOADNIL                          R73
      942 JUMP                             ; [+1]
      943 MOVE                             R73 R41
      944 SETTABLEKS                       R73 R72 K41 ["onFocusLost"]
      946 SETTABLEKS                       R39 R72 K128 ["onTextChanged"]
      948 JUMPIFNOT                        R5 ; [+2]
      949 MOVE                             R73 R54
      950 JUMP                             ; [+1]
      951 LOADNIL                          R73
      952 SETTABLEKS                       R73 R72 K129 ["onCursorPositionChanged"]
      954 DUPTABLE                         R73 K136 [{"DragDetector", "BoundsChecker"}]
      955 SETTABLEKS                       R58 R73 K100 ["DragDetector"]
      957 JUMPIFNOT                        R5 ; [+25]
      958 GETUPVAL                         R74 3
      959 GETTABLEKS                       R74 R74 K61 ["createElement"]
      961 GETUPVAL                         R75 23
      962 DUPTABLE                         R76 K138 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
      963 LOADB                            R77 1
      964 SETTABLEKS                       R77 R76 K137 ["isBoundsChecker"]
      966 SETTABLEKS                       R29 R76 K32 ["fontStyle"]
      968 SETTABLEKS                       R28 R76 K123 ["textStyle"]
      970 GETIMPORT                        R77 K54 [UDim2.new]
      972 LOADN                            R78 1
      973 LOADN                            R79 0
      974 LOADN                            R80 1
      975 MOVE                             R81 R50
      976 CALL                             R77 4 1
      977 SETTABLEKS                       R77 R76 K62 ["Size"]
      979 SETTABLEKS                       R8 R76 K125 ["ref"]
      981 CALL                             R74 2 1
      982 JUMP                             ; [+1]
      983 LOADNIL                          R74
      984 SETTABLEKS                       R74 R73 K135 ["BoundsChecker"]
      986 CALL                             R70 3 1
      987 JUMP                             ; [+1]
      988 LOADNIL                          R70
      989 SETTABLEKS                       R70 R69 K118 ["TextBox"]
      991 JUMPIFNOT                        R5 ; [+68]
      992 JUMPIFNOT                        R21 ; [+67]
      993 GETUPVAL                         R70 3
      994 GETTABLEKS                       R70 R70 K61 ["createElement"]
      996 GETUPVAL                         R71 23
      997 DUPTABLE                         R72 K139 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
      998 GETTABLEKS                       R73 R2 K7 ["text"]
     1000 SETTABLEKS                       R73 R72 K7 ["text"]
     1002 GETTABLEKS                       R73 R2 K121 ["placeholder"]
     1004 SETTABLEKS                       R73 R72 K121 ["placeholder"]
     1006 GETTABLEKS                       R73 R2 K122 ["textInputType"]
     1008 SETTABLEKS                       R73 R72 K122 ["textInputType"]
     1010 SETTABLEKS                       R29 R72 K32 ["fontStyle"]
     1012 SETTABLEKS                       R28 R72 K123 ["textStyle"]
     1014 SETTABLEKS                       R5 R72 K124 ["isMultiLine"]
     1016 GETTABLEKS                       R73 R2 K31 ["isDisabled"]
     1018 SETTABLEKS                       R73 R72 K31 ["isDisabled"]
     1020 SETTABLEKS                       R48 R72 K67 ["padding"]
     1022 GETUPVAL                         R74 4
     1023 GETTABLEKS                       R74 R74 K5 ["FoundationTextInputFocusBehavior"]
     1025 JUMPIFNOT                        R74 ; [+2]
     1026 MOVE                             R73 R61
     1027 JUMP                             ; [+1]
     1028 MOVE                             R73 R56
     1029 SETTABLEKS                       R73 R72 K125 ["ref"]
     1031 LOADK                            R74 K140 ["%* data-testid=%*--mobile-textbox"]
     1032 ORK                              R76 R19 K6 [""]
     1033 GETTABLEKS                       R77 R2 K72 ["testId"]
     1035 NAMECALL                         R74 R74 K99 ["format"]
     1037 CALL                             R74 3 1
     1038 MOVE                             R73 R74
     1039 SETTABLEKS                       R73 R72 K17 ["tag"]
     1041 SETTABLEKS                       R51 R72 K62 ["Size"]
     1043 JUMPIFNOT                        R5 ; [+3]
     1044 JUMPIFNOT                        R23 ; [+2]
     1045 MOVE                             R73 R41
     1046 JUMP                             ; [+1]
     1047 LOADNIL                          R73
     1048 SETTABLEKS                       R73 R72 K41 ["onFocusLost"]
     1050 SETTABLEKS                       R39 R72 K128 ["onTextChanged"]
     1052 JUMPIFNOT                        R5 ; [+2]
     1053 MOVE                             R73 R54
     1054 JUMP                             ; [+1]
     1055 LOADNIL                          R73
     1056 SETTABLEKS                       R73 R72 K129 ["onCursorPositionChanged"]
     1058 CALL                             R70 2 1
     1059 JUMP                             ; [+1]
     1060 LOADNIL                          R70
     1061 SETTABLEKS                       R70 R69 K119 ["MobileTextBox"]
     1063 CALL                             R66 3 1
     1064 SETTABLEKS                       R66 R65 K103 ["TextBoxWrapper"]
     1066 GETTABLEKS                       R67 R2 K141 ["trailingElement"]
     1068 JUMPIFNOT                        R67 ; [+34]
     1069 GETUPVAL                         R66 3
     1070 GETTABLEKS                       R66 R66 K61 ["createElement"]
     1072 GETUPVAL                         R67 16
     1073 DUPTABLE                         R68 K109 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
     1074 GETTABLEKS                       R70 R2 K31 ["isDisabled"]
     1076 JUMPIFNOT                        R70 ; [+4]
     1077 GETUPVAL                         R69 19
     1078 GETTABLEKS                       R69 R69 K84 ["DISABLED_TRANSPARENCY"]
     1080 JUMP                             ; [+1]
     1081 LOADNIL                          R69
     1082 SETTABLEKS                       R69 R68 K107 ["GroupTransparency"]
     1084 LOADN                            R69 3
     1085 SETTABLEKS                       R69 R68 K108 ["LayoutOrder"]
     1087 LOADK                            R69 K110 ["size-0-full auto-x"]
     1088 SETTABLEKS                       R69 R68 K17 ["tag"]
     1090 LOADK                            R70 K142 ["%*--trailing"]
     1091 GETTABLEKS                       R72 R2 K72 ["testId"]
     1093 NAMECALL                         R70 R70 K99 ["format"]
     1095 CALL                             R70 2 1
     1096 MOVE                             R69 R70
     1097 SETTABLEKS                       R69 R68 K72 ["testId"]
     1099 GETTABLEKS                       R69 R2 K141 ["trailingElement"]
     1101 CALL                             R66 3 1
     1102 JUMP                             ; [+1]
     1103 LOADNIL                          R66
     1104 SETTABLEKS                       R66 R65 K104 ["Trailing"]
     1106 CALL                             R62 3 -1
     1107 RETURN                           R62 -1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Components"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R4 K10 ["Padding"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R4 K11 ["ScrollView"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R4 K12 ["Types"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R4 K13 ["View"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R0 K14 ["Constants"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R11 R0 K15 ["Utility"]
       50 GETTABLEKS                       R11 R11 K16 ["Flags"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETTABLEKS                       R12 R0 K15 ["Utility"]
       57 GETTABLEKS                       R12 R12 K17 ["blendTransparencies"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R13 R0 K15 ["Utility"]
       64 GETTABLEKS                       R13 R13 K18 ["getBindableValue"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R14 R0 K15 ["Utility"]
       71 GETTABLEKS                       R14 R14 K19 ["getDisabledStyle"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETTABLEKS                       R15 R0 K15 ["Utility"]
       78 GETTABLEKS                       R15 R15 K20 ["getMultiLineTextHeight"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K6 [require]
       83 GETTABLEKS                       R16 R0 K15 ["Utility"]
       85 GETTABLEKS                       R16 R16 K21 ["isPluginSecurity"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K6 [require]
       90 GETIMPORT                        R17 K1 [script]
       92 GETTABLEKS                       R17 R17 K4 ["Parent"]
       94 GETTABLEKS                       R17 R17 K22 ["truncateTextToCursor"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R18 R0 K15 ["Utility"]
      101 GETTABLEKS                       R18 R18 K23 ["useBindable"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETTABLEKS                       R19 R0 K15 ["Utility"]
      108 GETTABLEKS                       R19 R19 K24 ["usePreferredInput"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K6 [require]
      113 GETTABLEKS                       R20 R0 K25 ["Providers"]
      115 GETTABLEKS                       R20 R20 K26 ["Style"]
      117 GETTABLEKS                       R20 R20 K27 ["useStyleTags"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K6 [require]
      122 GETTABLEKS                       R21 R4 K28 ["TextInput"]
      124 GETTABLEKS                       R21 R21 K29 ["useTextInputVariants"]
      126 CALL                             R20 1 1
      127 GETIMPORT                        R21 K6 [require]
      129 GETTABLEKS                       R22 R0 K25 ["Providers"]
      131 GETTABLEKS                       R22 R22 K26 ["Style"]
      133 GETTABLEKS                       R22 R22 K30 ["useTokens"]
      135 CALL                             R21 1 1
      136 GETIMPORT                        R22 K6 [require]
      138 GETTABLEKS                       R23 R0 K15 ["Utility"]
      140 GETTABLEKS                       R23 R23 K31 ["withCommonProps"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K6 [require]
      145 GETTABLEKS                       R24 R0 K15 ["Utility"]
      147 GETTABLEKS                       R24 R24 K32 ["withDefaults"]
      149 CALL                             R23 1 1
      150 GETIMPORT                        R24 K6 [require]
      152 GETTABLEKS                       R25 R0 K33 ["Enums"]
      154 GETTABLEKS                       R25 R25 K34 ["InputFocusBehavior"]
      156 CALL                             R24 1 1
      157 GETIMPORT                        R25 K6 [require]
      159 GETTABLEKS                       R26 R0 K33 ["Enums"]
      161 GETTABLEKS                       R26 R26 K35 ["InputSize"]
      163 CALL                             R25 1 1
      164 GETIMPORT                        R26 K6 [require]
      166 GETTABLEKS                       R27 R0 K33 ["Enums"]
      168 GETTABLEKS                       R27 R27 K36 ["InputVariant"]
      170 CALL                             R26 1 1
      171 GETIMPORT                        R27 K6 [require]
      173 GETTABLEKS                       R28 R0 K33 ["Enums"]
      175 GETTABLEKS                       R28 R28 K37 ["Radius"]
      177 CALL                             R27 1 1
      178 GETIMPORT                        R28 K6 [require]
      180 GETTABLEKS                       R29 R0 K33 ["Enums"]
      182 GETTABLEKS                       R29 R29 K38 ["ControlState"]
      184 CALL                             R28 1 1
      185 GETIMPORT                        R29 K6 [require]
      187 GETTABLEKS                       R30 R0 K33 ["Enums"]
      189 GETTABLEKS                       R30 R30 K39 ["StateLayerAffordance"]
      191 CALL                             R29 1 1
      192 DUPTABLE                         R30 K44 [{"size", "variant", "numLines", "testId"}]
      193 GETTABLEKS                       R31 R25 K45 ["Large"]
      195 SETTABLEKS                       R31 R30 K40 ["size"]
      197 GETTABLEKS                       R31 R26 K46 ["Standard"]
      199 SETTABLEKS                       R31 R30 K41 ["variant"]
      201 LOADN                            R31 1
      202 SETTABLEKS                       R31 R30 K42 ["numLines"]
      204 LOADK                            R31 K47 ["--foundation-internal-text-input"]
      205 SETTABLEKS                       R31 R30 K43 ["testId"]
      207 GETTABLEKS                       R31 R2 K48 ["memo"]
      209 GETTABLEKS                       R32 R2 K49 ["forwardRef"]
      211 DUPCLOSURE                       R33 K50 [PROTO_0]
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R5
      216 CALL                             R32 1 -1
      217 CALL                             R31 -1 1
      218 DUPCLOSURE                       R32 K51 [PROTO_29]
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R30
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R18
      228 CAPTURE                          VAL R13
      229 CAPTURE                          VAL R24
      230 CAPTURE                          VAL R28
      231 CAPTURE                          VAL R14
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R17
      234 CAPTURE                          VAL R3
      235 CAPTURE                          VAL R8
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R11
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R6
      242 CAPTURE                          VAL R31
      243 GETTABLEKS                       R33 R2 K48 ["memo"]
      245 GETTABLEKS                       R34 R2 K49 ["forwardRef"]
      247 MOVE                             R35 R32
      248 CALL                             R34 1 -1
      249 CALL                             R33 -1 -1
      250 RETURN                           R33 -1
