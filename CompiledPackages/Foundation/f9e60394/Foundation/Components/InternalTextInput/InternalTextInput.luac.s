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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 LOADK                            R1 K1 [""]
        8 SETTABLEKS                       R1 R0 K2 ["Text"]
       10 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onDrag"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["onDrag"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["radius"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["radius"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K7 ["Stroke"]
       13 GETTABLEKS                       R1 R1 K8 ["Thick"]
       15 SETTABLEKS                       R1 R0 K1 ["offset"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["Stroke"]
       20 GETTABLEKS                       R1 R1 K8 ["Thick"]
       22 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       24 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K1 ["minHeight"]
        3 GETUPVAL                         R6 1
        4 SUB                              R4 R5 R6
        5 GETUPVAL                         R5 2
        6 GETUPVAL                         R6 3
        7 LOADN                            R7 1
        8 GETUPVAL                         R8 4
        9 CALL                             R5 3 1
       10 SUB                              R3 R4 R5
       11 MULK                             R2 R3 K0 [2]
       12 FASTCALL1                        MATH_ROUND R2 ; [+2]
       13 GETIMPORT                        R1 K4 [math.round]
       15 CALL                             R1 1 1
       16 DIVK                             R0 R1 K0 [2]
       17 GETIMPORT                        R1 K7 [UDim.new]
       19 LOADN                            R2 0
       20 DIVK                             R4 R0 K0 [2]
       21 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       22 GETIMPORT                        R3 K9 [math.floor]
       24 CALL                             R3 1 1
       25 CALL                             R1 2 1
       26 GETIMPORT                        R2 K7 [UDim.new]
       28 LOADN                            R3 0
       29 DIVK                             R5 R0 K0 [2]
       30 FASTCALL1                        MATH_CEIL R5 ; [+2]
       31 GETIMPORT                        R4 K11 [math.ceil]
       33 CALL                             R4 1 1
       34 CALL                             R2 2 1
       35 GETUPVAL                         R5 5
       36 FASTCALL1                        MATH_ROUND R0 ; [+3]
       37 MOVE                             R7 R0
       38 GETIMPORT                        R6 K4 [math.round]
       40 CALL                             R6 1 1
       41 ADD                              R4 R5 R6
       42 GETUPVAL                         R5 1
       43 ADD                              R3 R4 R5
       44 DUPTABLE                         R4 K16 [{"top", "bottom", "left", "right"}]
       45 SETTABLEKS                       R1 R4 K12 ["top"]
       47 SETTABLEKS                       R2 R4 K13 ["bottom"]
       49 GETIMPORT                        R5 K7 [UDim.new]
       51 LOADN                            R6 0
       52 LOADN                            R7 0
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K14 ["left"]
       56 GETIMPORT                        R5 K7 [UDim.new]
       58 LOADN                            R6 0
       59 LOADN                            R7 0
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K15 ["right"]
       63 MOVE                             R5 R3
       64 RETURN                           R4 2

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 SETTABLEKS                       R2 R1 K1 ["current"]
        5 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hasClearButton"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETIMPORT                        R0 K3 [UDim2.fromOffset]
        6 LOADN                            R1 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K5 ["minHeight"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K6 ["Stroke"]
       13 GETTABLEKS                       R5 R5 K7 ["Standard"]
       15 SUB                              R3 R4 R5
       16 DIVK                             R2 R3 K4 [2]
       17 CALL                             R0 2 1
       18 RETURN                           R0 1
       19 LOADNIL                          R0
       20 RETURN                           R0 1

PROTO_29:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_30:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+7]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+5]
        4 JUMPIFEQKS                       R0 K0 [""] ; [+4]
        6 GETIMPORT                        R1 K4 [Enum.AutomaticSize.Y]
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_32:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationInputSelectionProps"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETTABLEKS                       R2 R0 K1 ["Selectable"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+4]
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R0 K1 ["Selectable"]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 2
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 LOADN                            R5 1
       18 GETTABLEKS                       R6 R2 K2 ["numLines"]
       20 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       22 GETIMPORT                        R4 K5 [math.max]
       24 CALL                             R4 2 1
       25 LOADN                            R6 1
       26 JUMPIFLT                         R6 R4 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R6 R6 K6 ["useRef"]
       33 LOADNIL                          R7
       34 CALL                             R6 1 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K7 ["FoundationTextInputFocusBehavior"]
       38 JUMPIFNOT                        R8 ; [+6]
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K6 ["useRef"]
       42 LOADNIL                          R8
       43 CALL                             R7 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R7
       46 GETUPVAL                         R8 4
       47 GETTABLEKS                       R8 R8 K6 ["useRef"]
       49 LOADNIL                          R9
       50 CALL                             R8 1 1
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R9 R9 K6 ["useRef"]
       54 LOADNIL                          R10
       55 CALL                             R9 1 1
       56 GETUPVAL                         R10 4
       57 GETTABLEKS                       R10 R10 K6 ["useRef"]
       59 LOADK                            R11 K8 [""]
       60 CALL                             R10 1 1
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K7 ["FoundationTextInputFocusBehavior"]
       64 JUMPIFNOT                        R12 ; [+9]
       65 GETUPVAL                         R11 4
       66 GETTABLEKS                       R11 R11 K6 ["useRef"]
       68 GETUPVAL                         R12 5
       69 GETTABLEKS                       R13 R2 K9 ["text"]
       71 CALL                             R12 1 -1
       72 CALL                             R11 -1 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R11
       75 GETUPVAL                         R12 4
       76 GETTABLEKS                       R12 R12 K6 ["useRef"]
       78 LOADNIL                          R13
       79 CALL                             R12 1 1
       80 GETUPVAL                         R13 4
       81 GETTABLEKS                       R13 R13 K6 ["useRef"]
       83 GETIMPORT                        R14 K12 [Vector2.zero]
       85 CALL                             R13 1 1
       86 GETUPVAL                         R14 4
       87 GETTABLEKS                       R14 R14 K13 ["useState"]
       89 LOADB                            R15 0
       90 CALL                             R14 1 2
       91 GETUPVAL                         R16 4
       92 GETTABLEKS                       R16 R16 K13 ["useState"]
       94 LOADB                            R17 0
       95 CALL                             R16 1 2
       96 GETUPVAL                         R18 6
       97 MOVE                             R19 R3
       98 GETTABLEKS                       R20 R2 K14 ["size"]
      100 GETTABLEKS                       R21 R2 K15 ["variant"]
      102 GETTABLEKS                       R22 R2 K16 ["radius"]
      104 MOVE                             R23 R16
      105 MOVE                             R24 R14
      106 GETTABLEKS                       R25 R2 K17 ["hasError"]
      108 CALL                             R18 7 1
      109 GETUPVAL                         R20 0
      110 GETTABLEKS                       R20 R20 K18 ["FoundationInputVariantsConsolidateContainer"]
      112 JUMPIFNOT                        R20 ; [+3]
      113 GETTABLEKS                       R19 R18 K19 ["container"]
      115 JUMP                             ; [+2]
      116 GETTABLEKS                       R19 R18 K20 ["innerContainer"]
      118 GETUPVAL                         R21 0
      119 GETTABLEKS                       R21 R21 K18 ["FoundationInputVariantsConsolidateContainer"]
      121 JUMPIFNOT                        R21 ; [+3]
      122 GETTABLEKS                       R20 R18 K19 ["container"]
      124 JUMP                             ; [+2]
      125 GETTABLEKS                       R20 R18 K21 ["outerContainer"]
      127 GETUPVAL                         R22 0
      128 GETTABLEKS                       R22 R22 K18 ["FoundationInputVariantsConsolidateContainer"]
      130 JUMPIFNOT                        R22 ; [+3]
      131 GETTABLEKS                       R21 R18 K19 ["container"]
      133 JUMP                             ; [+2]
      134 GETTABLEKS                       R21 R18 K22 ["outerView"]
      136 GETUPVAL                         R22 7
      137 GETTABLEKS                       R23 R18 K23 ["textBox"]
      139 GETTABLEKS                       R23 R23 K24 ["tag"]
      141 CALL                             R22 1 1
      142 GETUPVAL                         R23 8
      143 CALL                             R23 0 1
      144 GETUPVAL                         R24 4
      145 GETTABLEKS                       R24 R24 K13 ["useState"]
      147 LOADB                            R25 0
      148 CALL                             R24 1 2
      149 GETIMPORT                        R27 K28 [Enum.PreferredInput.Touch]
      151 JUMPIFEQ                         R23 R27 ; [+2]
      153 LOADB                            R26 0 +1
      154 LOADB                            R26 1
      155 GETTABLEKS                       R27 R3 K29 ["Stroke"]
      157 GETTABLEKS                       R27 R27 K30 ["Standard"]
      159 FASTCALL1                        MATH_CEIL R27 ; [+3]
      160 MOVE                             R30 R27
      161 GETIMPORT                        R29 K33 [math.ceil]
      163 CALL                             R29 1 1
      164 MULK                             R28 R29 K31 [2]
      165 GETTABLEKS                       R29 R3 K29 ["Stroke"]
      167 GETTABLEKS                       R29 R29 K34 ["Thick"]
      169 FASTCALL1                        MATH_CEIL R29 ; [+3]
      170 MOVE                             R32 R29
      171 GETIMPORT                        R31 K33 [math.ceil]
      173 CALL                             R31 1 1
      174 MULK                             R30 R31 K31 [2]
      175 GETUPVAL                         R31 9
      176 GETTABLEKS                       R32 R3 K35 ["Color"]
      178 GETTABLEKS                       R32 R32 K36 ["Content"]
      180 GETTABLEKS                       R32 R32 K37 ["Emphasis"]
      182 GETTABLEKS                       R33 R2 K38 ["isDisabled"]
      184 CALL                             R31 2 1
      185 GETTABLEKS                       R32 R18 K23 ["textBox"]
      187 GETTABLEKS                       R32 R32 K39 ["fontStyle"]
      189 GETTABLEKS                       R33 R32 K40 ["FontSize"]
      191 GETTABLEKS                       R34 R32 K41 ["LineHeight"]
      193 GETUPVAL                         R35 4
      194 GETTABLEKS                       R35 R35 K42 ["useCallback"]
      196 NEWCLOSURE                       R36 P0
      197 CAPTURE                          VAL R6
      198 NEWTABLE                         R37 0 0
      200 CALL                             R35 2 1
      201 GETUPVAL                         R36 4
      202 GETTABLEKS                       R36 R36 K42 ["useCallback"]
      204 NEWCLOSURE                       R37 P1
      205 CAPTURE                          VAL R6
      206 NEWTABLE                         R38 0 0
      208 CALL                             R36 2 1
      209 GETUPVAL                         R37 4
      210 GETTABLEKS                       R37 R37 K42 ["useCallback"]
      212 NEWCLOSURE                       R38 P2
      213 CAPTURE                          VAL R6
      214 NEWTABLE                         R39 0 0
      216 CALL                             R37 2 1
      217 GETUPVAL                         R38 4
      218 GETTABLEKS                       R38 R38 K42 ["useCallback"]
      220 NEWCLOSURE                       R39 P3
      221 CAPTURE                          VAL R6
      222 NEWTABLE                         R40 0 0
      224 CALL                             R38 2 1
      225 GETUPVAL                         R39 4
      226 GETTABLEKS                       R39 R39 K42 ["useCallback"]
      228 NEWCLOSURE                       R40 P4
      229 CAPTURE                          VAL R6
      230 NEWTABLE                         R41 0 0
      232 CALL                             R39 2 1
      233 GETUPVAL                         R40 4
      234 GETTABLEKS                       R40 R40 K42 ["useCallback"]
      236 NEWCLOSURE                       R41 P5
      237 CAPTURE                          VAL R6
      238 CAPTURE                          UPVAL U0
      239 CAPTURE                          VAL R7
      240 NEWTABLE                         R42 0 0
      242 CALL                             R40 2 1
      243 GETUPVAL                         R41 4
      244 GETTABLEKS                       R41 R41 K42 ["useCallback"]
      246 NEWCLOSURE                       R42 P6
      247 CAPTURE                          VAL R6
      248 CAPTURE                          UPVAL U0
      249 CAPTURE                          VAL R7
      250 NEWTABLE                         R43 0 0
      252 CALL                             R41 2 1
      253 GETUPVAL                         R43 0
      254 GETTABLEKS                       R43 R43 K43 ["FoundationInternalTextInputClearButton"]
      256 JUMPIFNOT                        R43 ; [+9]
      257 GETUPVAL                         R42 4
      258 GETTABLEKS                       R42 R42 K42 ["useCallback"]
      260 NEWCLOSURE                       R43 P7
      261 CAPTURE                          VAL R6
      262 NEWTABLE                         R44 0 0
      264 CALL                             R42 2 1
      265 JUMP                             ; [+1]
      266 LOADNIL                          R42
      267 GETUPVAL                         R43 4
      268 GETTABLEKS                       R43 R43 K44 ["useImperativeHandle"]
      270 MOVE                             R44 R1
      271 NEWCLOSURE                       R45 P8
      272 CAPTURE                          VAL R37
      273 CAPTURE                          VAL R35
      274 CAPTURE                          VAL R36
      275 CAPTURE                          VAL R15
      276 CAPTURE                          VAL R38
      277 CAPTURE                          VAL R39
      278 CAPTURE                          VAL R41
      279 CAPTURE                          VAL R40
      280 NEWTABLE                         R46 0 7
      282 MOVE                             R47 R39
      283 MOVE                             R48 R37
      284 MOVE                             R49 R38
      285 MOVE                             R50 R35
      286 MOVE                             R51 R36
      287 MOVE                             R52 R41
      288 MOVE                             R53 R40
      289 SETLIST                          R46 R47 7 [1]
      291 CALL                             R43 3 0
      292 GETUPVAL                         R43 4
      293 GETTABLEKS                       R43 R43 K42 ["useCallback"]
      295 NEWCLOSURE                       R44 P9
      296 CAPTURE                          VAL R10
      297 CAPTURE                          UPVAL U0
      298 CAPTURE                          VAL R11
      299 CAPTURE                          VAL R5
      300 CAPTURE                          VAL R8
      301 CAPTURE                          VAL R2
      302 NEWTABLE                         R45 0 3
      304 GETTABLEKS                       R46 R2 K45 ["onChanged"]
      306 MOVE                             R47 R5
      307 MOVE                             R48 R24
      308 SETLIST                          R45 R46 3 [1]
      310 CALL                             R43 2 1
      311 GETUPVAL                         R44 4
      312 GETTABLEKS                       R44 R44 K42 ["useCallback"]
      314 NEWCLOSURE                       R45 P10
      315 CAPTURE                          VAL R2
      316 CAPTURE                          VAL R5
      317 CAPTURE                          VAL R26
      318 CAPTURE                          VAL R6
      319 CAPTURE                          VAL R10
      320 CAPTURE                          VAL R25
      321 CAPTURE                          VAL R17
      322 CAPTURE                          UPVAL U0
      323 CAPTURE                          UPVAL U10
      324 CAPTURE                          VAL R7
      325 CAPTURE                          VAL R40
      326 CAPTURE                          VAL R41
      327 NEWTABLE                         R46 0 7
      329 GETTABLEKS                       R47 R2 K46 ["onFocus"]
      331 GETTABLEKS                       R48 R2 K38 ["isDisabled"]
      333 MOVE                             R49 R26
      334 MOVE                             R50 R5
      335 GETUPVAL                         R52 0
      336 GETTABLEKS                       R52 R52 K7 ["FoundationTextInputFocusBehavior"]
      338 JUMPIFNOT                        R52 ; [+3]
      339 GETTABLEKS                       R51 R2 K47 ["focusBehavior"]
      341 JUMP                             ; [+1]
      342 LOADNIL                          R51
      343 GETUPVAL                         R53 0
      344 GETTABLEKS                       R53 R53 K7 ["FoundationTextInputFocusBehavior"]
      346 JUMPIFNOT                        R53 ; [+2]
      347 MOVE                             R52 R40
      348 JUMP                             ; [+1]
      349 LOADNIL                          R52
      350 GETUPVAL                         R54 0
      351 GETTABLEKS                       R54 R54 K7 ["FoundationTextInputFocusBehavior"]
      353 JUMPIFNOT                        R54 ; [+2]
      354 MOVE                             R53 R41
      355 JUMP                             ; [+1]
      356 LOADNIL                          R53
      357 SETLIST                          R46 R47 7 [1]
      359 CALL                             R44 2 1
      360 GETUPVAL                         R45 4
      361 GETTABLEKS                       R45 R45 K42 ["useCallback"]
      363 NEWCLOSURE                       R46 P11
      364 CAPTURE                          VAL R17
      365 CAPTURE                          VAL R5
      366 CAPTURE                          VAL R25
      367 CAPTURE                          VAL R2
      368 NEWTABLE                         R47 0 3
      370 GETTABLEKS                       R48 R2 K48 ["onReturnPressed"]
      372 MOVE                             R49 R5
      373 GETTABLEKS                       R50 R2 K49 ["onFocusLost"]
      375 SETLIST                          R47 R48 3 [1]
      377 CALL                             R45 2 1
      378 GETUPVAL                         R46 4
      379 GETTABLEKS                       R46 R46 K42 ["useCallback"]
      381 NEWCLOSURE                       R47 P12
      382 CAPTURE                          VAL R15
      383 CAPTURE                          UPVAL U11
      384 NEWTABLE                         R48 0 0
      386 CALL                             R46 2 1
      387 GETUPVAL                         R47 4
      388 GETTABLEKS                       R47 R47 K42 ["useCallback"]
      390 NEWCLOSURE                       R48 P13
      391 CAPTURE                          VAL R12
      392 CAPTURE                          VAL R2
      393 NEWTABLE                         R49 0 1
      395 GETTABLEKS                       R50 R2 K50 ["onDragStarted"]
      397 SETLIST                          R49 R50 1 [1]
      399 CALL                             R47 2 1
      400 GETUPVAL                         R48 4
      401 GETTABLEKS                       R48 R48 K42 ["useCallback"]
      403 NEWCLOSURE                       R49 P14
      404 CAPTURE                          VAL R2
      405 NEWTABLE                         R50 0 1
      407 GETTABLEKS                       R51 R2 K51 ["onDrag"]
      409 SETLIST                          R50 R51 1 [1]
      411 CALL                             R48 2 1
      412 GETUPVAL                         R49 4
      413 GETTABLEKS                       R49 R49 K42 ["useCallback"]
      415 NEWCLOSURE                       R50 P15
      416 CAPTURE                          VAL R12
      417 CAPTURE                          VAL R35
      418 CAPTURE                          VAL R36
      419 CAPTURE                          VAL R17
      420 CAPTURE                          VAL R2
      421 NEWTABLE                         R51 0 1
      423 GETTABLEKS                       R52 R2 K52 ["onDragEnded"]
      425 SETLIST                          R51 R52 1 [1]
      427 CALL                             R49 2 1
      428 GETUPVAL                         R50 4
      429 GETTABLEKS                       R50 R50 K53 ["useMemo"]
      431 NEWCLOSURE                       R51 P16
      432 CAPTURE                          VAL R19
      433 CAPTURE                          VAL R3
      434 NEWTABLE                         R52 0 2
      436 MOVE                             R53 R3
      437 GETTABLEKS                       R54 R19 K16 ["radius"]
      439 SETLIST                          R52 R53 2 [1]
      441 CALL                             R50 2 1
      442 GETUPVAL                         R51 4
      443 GETTABLEKS                       R51 R51 K53 ["useMemo"]
      445 NEWCLOSURE                       R52 P17
      446 CAPTURE                          UPVAL U12
      447 CAPTURE                          VAL R33
      448 CAPTURE                          VAL R4
      449 CAPTURE                          VAL R34
      450 NEWTABLE                         R53 0 3
      452 MOVE                             R54 R33
      453 MOVE                             R55 R4
      454 MOVE                             R56 R34
      455 SETLIST                          R53 R54 3 [1]
      457 CALL                             R51 2 1
      458 GETUPVAL                         R52 4
      459 GETTABLEKS                       R52 R52 K53 ["useMemo"]
      461 NEWCLOSURE                       R53 P18
      462 CAPTURE                          VAL R20
      463 CAPTURE                          VAL R28
      464 CAPTURE                          UPVAL U12
      465 CAPTURE                          VAL R33
      466 CAPTURE                          VAL R34
      467 CAPTURE                          VAL R51
      468 NEWTABLE                         R54 0 6
      470 GETTABLEKS                       R55 R20 K54 ["minHeight"]
      472 MOVE                             R56 R28
      473 MOVE                             R57 R30
      474 MOVE                             R58 R33
      475 MOVE                             R59 R51
      476 MOVE                             R60 R34
      477 SETLIST                          R54 R55 6 [1]
      479 CALL                             R52 2 2
      480 GETTABLEKS                       R55 R52 K55 ["bottom"]
      482 GETTABLEKS                       R55 R55 K56 ["Offset"]
      484 GETTABLEKS                       R56 R52 K57 ["top"]
      486 GETTABLEKS                       R56 R56 K56 ["Offset"]
      488 ADD                              R54 R55 R56
      489 GETIMPORT                        R55 K60 [UDim2.new]
      491 LOADN                            R56 1
      492 LOADN                            R57 0
      493 LOADN                            R58 0
      494 ADD                              R59 R51 R54
      495 CALL                             R55 4 1
      496 GETUPVAL                         R56 4
      497 GETTABLEKS                       R56 R56 K53 ["useMemo"]
      499 NEWCLOSURE                       R57 P19
      500 CAPTURE                          VAL R5
      501 NEWTABLE                         R58 0 1
      503 MOVE                             R59 R5
      504 SETLIST                          R58 R59 1 [1]
      506 CALL                             R56 2 1
      507 GETUPVAL                         R57 4
      508 GETTABLEKS                       R57 R57 K53 ["useMemo"]
      510 NEWCLOSURE                       R58 P20
      511 CAPTURE                          VAL R5
      512 NEWTABLE                         R59 0 1
      514 MOVE                             R60 R5
      515 SETLIST                          R59 R60 1 [1]
      517 CALL                             R57 2 1
      518 GETUPVAL                         R58 4
      519 GETTABLEKS                       R58 R58 K42 ["useCallback"]
      521 NEWCLOSURE                       R59 P21
      522 CAPTURE                          VAL R9
      523 CAPTURE                          VAL R8
      524 CAPTURE                          UPVAL U13
      525 CAPTURE                          VAL R52
      526 NEWTABLE                         R60 0 1
      528 MOVE                             R61 R52
      529 SETLIST                          R60 R61 1 [1]
      531 CALL                             R58 2 1
      532 GETUPVAL                         R59 4
      533 GETTABLEKS                       R59 R59 K42 ["useCallback"]
      535 NEWCLOSURE                       R60 P22
      536 CAPTURE                          VAL R9
      537 CAPTURE                          VAL R13
      538 NEWTABLE                         R61 0 0
      540 CALL                             R59 2 1
      541 GETUPVAL                         R60 4
      542 GETTABLEKS                       R60 R60 K42 ["useCallback"]
      544 NEWCLOSURE                       R61 P23
      545 CAPTURE                          VAL R10
      546 NEWTABLE                         R62 0 0
      548 CALL                             R60 2 1
      549 GETUPVAL                         R61 4
      550 GETTABLEKS                       R61 R61 K42 ["useCallback"]
      552 NEWCLOSURE                       R62 P24
      553 CAPTURE                          VAL R13
      554 NEWTABLE                         R63 0 0
      556 CALL                             R61 2 1
      557 GETUPVAL                         R62 4
      558 GETTABLEKS                       R62 R62 K53 ["useMemo"]
      560 NEWCLOSURE                       R63 P25
      561 CAPTURE                          VAL R2
      562 CAPTURE                          UPVAL U4
      563 CAPTURE                          VAL R47
      564 CAPTURE                          VAL R48
      565 CAPTURE                          VAL R49
      566 CAPTURE                          VAL R16
      567 NEWTABLE                         R64 0 5
      569 MOVE                             R65 R47
      570 MOVE                             R66 R48
      571 MOVE                             R67 R49
      572 MOVE                             R68 R16
      573 GETTABLEKS                       R69 R2 K38 ["isDisabled"]
      575 SETLIST                          R64 R65 5 [1]
      577 CALL                             R62 2 1
      578 GETUPVAL                         R63 14
      579 GETTABLEKS                       R65 R2 K61 ["horizontalPadding"]
      581 JUMPIFNOT                        R65 ; [+11]
      582 GETTABLEKS                       R64 R2 K61 ["horizontalPadding"]
      584 GETTABLEKS                       R64 R64 K62 ["left"]
      586 JUMPIF                           R64 ; [+11]
      587 GETIMPORT                        R64 K64 [UDim.new]
      589 LOADN                            R65 0
      590 LOADN                            R66 0
      591 CALL                             R64 2 1
      592 JUMP                             ; [+5]
      593 GETIMPORT                        R64 K64 [UDim.new]
      595 LOADN                            R65 0
      596 LOADN                            R66 0
      597 CALL                             R64 2 1
      598 CALL                             R63 1 1
      599 GETUPVAL                         R64 14
      600 GETTABLEKS                       R66 R2 K61 ["horizontalPadding"]
      602 JUMPIFNOT                        R66 ; [+11]
      603 GETTABLEKS                       R65 R2 K61 ["horizontalPadding"]
      605 GETTABLEKS                       R65 R65 K65 ["right"]
      607 JUMPIF                           R65 ; [+11]
      608 GETIMPORT                        R65 K64 [UDim.new]
      610 LOADN                            R66 0
      611 LOADN                            R67 0
      612 CALL                             R65 2 1
      613 JUMP                             ; [+5]
      614 GETIMPORT                        R65 K64 [UDim.new]
      616 LOADN                            R66 0
      617 LOADN                            R67 0
      618 CALL                             R65 2 1
      619 CALL                             R64 1 1
      620 GETUPVAL                         R66 0
      621 GETTABLEKS                       R66 R66 K43 ["FoundationInternalTextInputClearButton"]
      623 JUMPIFNOT                        R66 ; [+21]
      624 GETUPVAL                         R65 4
      625 GETTABLEKS                       R65 R65 K53 ["useMemo"]
      627 NEWCLOSURE                       R66 P26
      628 CAPTURE                          VAL R2
      629 CAPTURE                          VAL R20
      630 CAPTURE                          VAL R3
      631 NEWTABLE                         R67 0 3
      633 GETTABLEKS                       R68 R2 K66 ["hasClearButton"]
      635 GETTABLEKS                       R69 R20 K54 ["minHeight"]
      637 GETTABLEKS                       R70 R3 K29 ["Stroke"]
      639 GETTABLEKS                       R70 R70 K30 ["Standard"]
      641 SETLIST                          R67 R68 3 [1]
      643 CALL                             R65 2 1
      644 JUMP                             ; [+1]
      645 LOADNIL                          R65
      646 GETUPVAL                         R67 0
      647 GETTABLEKS                       R67 R67 K7 ["FoundationTextInputFocusBehavior"]
      649 JUMPIFNOT                        R67 ; [+7]
      650 GETUPVAL                         R66 15
      651 GETTABLEKS                       R66 R66 K67 ["useComposedRef"]
      653 MOVE                             R67 R7
      654 MOVE                             R68 R60
      655 CALL                             R66 2 1
      656 JUMP                             ; [+1]
      657 LOADNIL                          R66
      658 GETUPVAL                         R67 4
      659 GETTABLEKS                       R67 R67 K68 ["createElement"]
      661 GETUPVAL                         R68 16
      662 GETUPVAL                         R69 17
      663 MOVE                             R70 R2
      664 DUPTABLE                         R71 K80 [{"Size", "selection", "cursor", "stroke", "cornerRadius", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      665 GETIMPORT                        R72 K60 [UDim2.new]
      667 LOADN                            R73 1
      668 LOADN                            R74 0
      669 LOADN                            R75 0
      670 MOVE                             R76 R53
      671 CALL                             R72 4 1
      672 SETTABLEKS                       R72 R71 K69 ["Size"]
      674 DUPTABLE                         R72 K85 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      675 GETUPVAL                         R74 0
      676 GETTABLEKS                       R74 R74 K0 ["FoundationInputSelectionProps"]
      678 JUMPIFNOT                        R74 ; [+7]
      679 GETTABLEKS                       R73 R2 K1 ["Selectable"]
      681 JUMPIFNOT                        R73 ; [+7]
      682 GETTABLEKS                       R74 R2 K38 ["isDisabled"]
      684 NOT                              R73 R74
      685 JUMP                             ; [+3]
      686 GETTABLEKS                       R74 R2 K38 ["isDisabled"]
      688 NOT                              R73 R74
      689 SETTABLEKS                       R73 R72 K1 ["Selectable"]
      691 GETUPVAL                         R74 0
      692 GETTABLEKS                       R74 R74 K0 ["FoundationInputSelectionProps"]
      694 JUMPIFNOT                        R74 ; [+3]
      695 GETTABLEKS                       R73 R2 K81 ["NextSelectionUp"]
      697 JUMP                             ; [+1]
      698 LOADNIL                          R73
      699 SETTABLEKS                       R73 R72 K81 ["NextSelectionUp"]
      701 GETUPVAL                         R74 0
      702 GETTABLEKS                       R74 R74 K0 ["FoundationInputSelectionProps"]
      704 JUMPIFNOT                        R74 ; [+3]
      705 GETTABLEKS                       R73 R2 K82 ["NextSelectionDown"]
      707 JUMP                             ; [+1]
      708 LOADNIL                          R73
      709 SETTABLEKS                       R73 R72 K82 ["NextSelectionDown"]
      711 GETUPVAL                         R74 0
      712 GETTABLEKS                       R74 R74 K0 ["FoundationInputSelectionProps"]
      714 JUMPIFNOT                        R74 ; [+3]
      715 GETTABLEKS                       R73 R2 K83 ["NextSelectionLeft"]
      717 JUMP                             ; [+1]
      718 LOADNIL                          R73
      719 SETTABLEKS                       R73 R72 K83 ["NextSelectionLeft"]
      721 GETUPVAL                         R74 0
      722 GETTABLEKS                       R74 R74 K0 ["FoundationInputSelectionProps"]
      724 JUMPIFNOT                        R74 ; [+3]
      725 GETTABLEKS                       R73 R2 K84 ["NextSelectionRight"]
      727 JUMP                             ; [+1]
      728 LOADNIL                          R73
      729 SETTABLEKS                       R73 R72 K84 ["NextSelectionRight"]
      731 SETTABLEKS                       R72 R71 K70 ["selection"]
      733 SETTABLEKS                       R50 R71 K71 ["cursor"]
      735 GETTABLEKS                       R73 R21 K86 ["strokeStyle"]
      737 JUMPIFNOT                        R73 ; [+43]
      738 GETTABLEKS                       R73 R21 K87 ["strokeThickness"]
      740 JUMPIFNOT                        R73 ; [+40]
      741 DUPTABLE                         R72 K91 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      742 GETTABLEKS                       R73 R21 K86 ["strokeStyle"]
      744 GETTABLEKS                       R73 R73 K92 ["Color3"]
      746 SETTABLEKS                       R73 R72 K35 ["Color"]
      748 GETTABLEKS                       R74 R2 K38 ["isDisabled"]
      750 JUMPIFNOT                        R74 ; [+10]
      751 GETUPVAL                         R73 18
      752 GETTABLEKS                       R74 R21 K86 ["strokeStyle"]
      754 GETTABLEKS                       R74 R74 K88 ["Transparency"]
      756 GETUPVAL                         R75 19
      757 GETTABLEKS                       R75 R75 K93 ["DISABLED_TRANSPARENCY"]
      759 CALL                             R73 2 1
      760 JUMP                             ; [+4]
      761 GETTABLEKS                       R73 R21 K86 ["strokeStyle"]
      763 GETTABLEKS                       R73 R73 K88 ["Transparency"]
      765 SETTABLEKS                       R73 R72 K88 ["Transparency"]
      767 GETTABLEKS                       R73 R21 K87 ["strokeThickness"]
      769 SETTABLEKS                       R73 R72 K89 ["Thickness"]
      771 JUMPIF                           R16 ; [+1]
      772 JUMPIFNOT                        R14 ; [+3]
      773 GETIMPORT                        R73 K95 [Enum.BorderStrokePosition.Center]
      775 JUMP                             ; [+2]
      776 GETIMPORT                        R73 K97 [Enum.BorderStrokePosition.Inner]
      778 SETTABLEKS                       R73 R72 K90 ["BorderStrokePosition"]
      780 JUMP                             ; [+1]
      781 LOADNIL                          R72
      782 SETTABLEKS                       R72 R71 K72 ["stroke"]
      784 GETTABLEKS                       R73 R2 K16 ["radius"]
      786 GETUPVAL                         R74 20
      787 GETTABLEKS                       R74 R74 K98 ["Circle"]
      789 JUMPIFNOTEQ                      R73 R74 ; [+13]
      791 GETIMPORT                        R72 K64 [UDim.new]
      793 LOADN                            R73 0
      794 GETTABLEKS                       R76 R20 K54 ["minHeight"]
      796 DIVK                             R75 R76 K31 [2]
      797 FASTCALL1                        MATH_CEIL R75 ; [+2]
      798 GETIMPORT                        R74 K33 [math.ceil]
      800 CALL                             R74 1 1
      801 CALL                             R72 2 1
      802 JUMP                             ; [+1]
      803 LOADNIL                          R72
      804 SETTABLEKS                       R72 R71 K73 ["cornerRadius"]
      806 DUPTABLE                         R72 K99 [{"left", "right", "top", "bottom"}]
      807 NEWCLOSURE                       R75 P27
      808 CAPTURE                          VAL R27
      809 NAMECALL                         R73 R63 K100 ["map"]
      811 CALL                             R73 2 1
      812 SETTABLEKS                       R73 R72 K62 ["left"]
      814 GETUPVAL                         R74 0
      815 GETTABLEKS                       R74 R74 K43 ["FoundationInternalTextInputClearButton"]
      817 JUMPIFNOT                        R74 ; [+13]
      818 GETTABLEKS                       R74 R2 K101 ["trailingElement"]
      820 JUMPIFNOTEQKNIL                  R74 ; [+10]
      822 GETTABLEKS                       R74 R2 K66 ["hasClearButton"]
      824 JUMPIFNOT                        R74 ; [+6]
      825 GETIMPORT                        R73 K64 [UDim.new]
      827 LOADN                            R74 0
      828 MOVE                             R75 R27
      829 CALL                             R73 2 1
      830 JUMP                             ; [+5]
      831 NEWCLOSURE                       R75 P28
      832 CAPTURE                          VAL R27
      833 NAMECALL                         R73 R64 K100 ["map"]
      835 CALL                             R73 2 1
      836 SETTABLEKS                       R73 R72 K65 ["right"]
      838 GETIMPORT                        R73 K64 [UDim.new]
      840 LOADN                            R74 0
      841 MOVE                             R75 R27
      842 CALL                             R73 2 1
      843 SETTABLEKS                       R73 R72 K57 ["top"]
      845 GETIMPORT                        R73 K64 [UDim.new]
      847 LOADN                            R74 0
      848 MOVE                             R75 R27
      849 CALL                             R73 2 1
      850 SETTABLEKS                       R73 R72 K55 ["bottom"]
      852 SETTABLEKS                       R72 R71 K74 ["padding"]
      854 GETTABLEKS                       R73 R2 K38 ["isDisabled"]
      856 JUMPIF                           R73 ; [+2]
      857 MOVE                             R72 R35
      858 JUMP                             ; [+1]
      859 LOADNIL                          R72
      860 SETTABLEKS                       R72 R71 K75 ["onActivated"]
      862 SETTABLEKS                       R46 R71 K76 ["onStateChanged"]
      864 GETTABLEKS                       R72 R2 K38 ["isDisabled"]
      866 SETTABLEKS                       R72 R71 K38 ["isDisabled"]
      868 GETTABLEKS                       R73 R21 K102 ["bgStyle"]
      870 JUMPIFNOT                        R73 ; [+23]
      871 GETUPVAL                         R72 9
      872 DUPTABLE                         R73 K103 [{"Color3", "Transparency"}]
      873 GETTABLEKS                       R74 R21 K102 ["bgStyle"]
      875 GETTABLEKS                       R74 R74 K92 ["Color3"]
      877 SETTABLEKS                       R74 R73 K92 ["Color3"]
      879 GETTABLEKS                       R75 R2 K104 ["backgroundGradient"]
      881 JUMPIFNOT                        R75 ; [+2]
      882 LOADN                            R74 0
      883 JUMP                             ; [+4]
      884 GETTABLEKS                       R74 R21 K102 ["bgStyle"]
      886 GETTABLEKS                       R74 R74 K88 ["Transparency"]
      888 SETTABLEKS                       R74 R73 K88 ["Transparency"]
      890 GETTABLEKS                       R74 R2 K38 ["isDisabled"]
      892 CALL                             R72 2 1
      893 JUMP                             ; [+1]
      894 LOADNIL                          R72
      895 SETTABLEKS                       R72 R71 K77 ["backgroundStyle"]
      897 DUPTABLE                         R72 K106 [{"affordance"}]
      898 GETUPVAL                         R73 21
      899 GETTABLEKS                       R73 R73 K107 ["None"]
      901 SETTABLEKS                       R73 R72 K105 ["affordance"]
      903 SETTABLEKS                       R72 R71 K78 ["stateLayer"]
      905 GETTABLEKS                       R72 R21 K24 ["tag"]
      907 SETTABLEKS                       R72 R71 K24 ["tag"]
      909 LOADK                            R73 K108 ["%*--outer-container"]
      910 GETTABLEKS                       R75 R2 K79 ["testId"]
      912 NAMECALL                         R73 R73 K109 ["format"]
      914 CALL                             R73 2 1
      915 MOVE                             R72 R73
      916 SETTABLEKS                       R72 R71 K79 ["testId"]
      918 CALL                             R69 2 1
      919 DUPTABLE                         R70 K116 [{"DragDetector", "Background", "Leading", "TextBoxWrapper", "Clear", "Trailing"}]
      920 SETTABLEKS                       R62 R70 K110 ["DragDetector"]
      922 GETTABLEKS                       R71 R2 K104 ["backgroundGradient"]
      924 SETTABLEKS                       R71 R70 K111 ["Background"]
      926 GETTABLEKS                       R72 R2 K117 ["leadingElement"]
      928 JUMPIFNOT                        R72 ; [+34]
      929 GETUPVAL                         R71 4
      930 GETTABLEKS                       R71 R71 K68 ["createElement"]
      932 GETUPVAL                         R72 16
      933 DUPTABLE                         R73 K120 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
      934 GETTABLEKS                       R75 R2 K38 ["isDisabled"]
      936 JUMPIFNOT                        R75 ; [+4]
      937 GETUPVAL                         R74 19
      938 GETTABLEKS                       R74 R74 K93 ["DISABLED_TRANSPARENCY"]
      940 JUMP                             ; [+1]
      941 LOADNIL                          R74
      942 SETTABLEKS                       R74 R73 K118 ["GroupTransparency"]
      944 LOADN                            R74 1
      945 SETTABLEKS                       R74 R73 K119 ["LayoutOrder"]
      947 LOADK                            R74 K121 ["size-0-full auto-x"]
      948 SETTABLEKS                       R74 R73 K24 ["tag"]
      950 LOADK                            R75 K122 ["%*--leading"]
      951 GETTABLEKS                       R77 R2 K79 ["testId"]
      953 NAMECALL                         R75 R75 K109 ["format"]
      955 CALL                             R75 2 1
      956 MOVE                             R74 R75
      957 SETTABLEKS                       R74 R73 K79 ["testId"]
      959 GETTABLEKS                       R74 R2 K117 ["leadingElement"]
      961 CALL                             R71 3 1
      962 JUMP                             ; [+1]
      963 LOADNIL                          R71
      964 SETTABLEKS                       R71 R70 K112 ["Leading"]
      966 GETUPVAL                         R71 4
      967 GETTABLEKS                       R71 R71 K68 ["createElement"]
      969 JUMPIFNOT                        R5 ; [+2]
      970 GETUPVAL                         R72 22
      971 JUMP                             ; [+1]
      972 GETUPVAL                         R72 16
      973 DUPTABLE                         R73 K127 [{"LayoutOrder", "selection", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
      974 LOADN                            R74 2
      975 SETTABLEKS                       R74 R73 K119 ["LayoutOrder"]
      977 GETUPVAL                         R75 0
      978 GETTABLEKS                       R75 R75 K128 ["FoundationTextAreaFixDoubleSelection"]
      980 JUMPIFNOT                        R75 ; [+5]
      981 DUPTABLE                         R74 K129 [{"Selectable"}]
      982 LOADB                            R75 0
      983 SETTABLEKS                       R75 R74 K1 ["Selectable"]
      985 JUMP                             ; [+1]
      986 LOADNIL                          R74
      987 SETTABLEKS                       R74 R73 K70 ["selection"]
      989 SETTABLEKS                       R57 R73 K123 ["scroll"]
      991 SETTABLEKS                       R56 R73 K124 ["layout"]
      993 JUMPIFNOT                        R5 ; [+2]
      994 MOVE                             R74 R61
      995 JUMP                             ; [+1]
      996 LOADNIL                          R74
      997 SETTABLEKS                       R74 R73 K125 ["onCanvasPositionChanged"]
      999 JUMPIFNOT                        R5 ; [+2]
     1000 MOVE                             R74 R59
     1001 JUMP                             ; [+1]
     1002 LOADNIL                          R74
     1003 SETTABLEKS                       R74 R73 K126 ["scrollingFrameRef"]
     1005 LOADK                            R74 K130 ["fill size-full clip"]
     1006 SETTABLEKS                       R74 R73 K24 ["tag"]
     1008 DUPTABLE                         R74 K133 [{"TextBox", "MobileTextBox"}]
     1009 JUMPIF                           R24 ; [+122]
     1010 GETUPVAL                         R75 4
     1011 GETTABLEKS                       R75 R75 K68 ["createElement"]
     1013 GETUPVAL                         R76 23
     1014 DUPTABLE                         R77 K143 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1015 GETTABLEKS                       R78 R2 K9 ["text"]
     1017 SETTABLEKS                       R78 R77 K9 ["text"]
     1019 GETTABLEKS                       R78 R2 K134 ["placeholder"]
     1021 SETTABLEKS                       R78 R77 K134 ["placeholder"]
     1023 GETTABLEKS                       R78 R2 K135 ["textInputType"]
     1025 SETTABLEKS                       R78 R77 K135 ["textInputType"]
     1027 SETTABLEKS                       R32 R77 K39 ["fontStyle"]
     1029 SETTABLEKS                       R31 R77 K136 ["textStyle"]
     1031 SETTABLEKS                       R5 R77 K137 ["isMultiLine"]
     1033 GETTABLEKS                       R78 R2 K38 ["isDisabled"]
     1035 SETTABLEKS                       R78 R77 K38 ["isDisabled"]
     1037 SETTABLEKS                       R6 R77 K138 ["ref"]
     1039 LOADK                            R79 K144 ["%* data-testid=%*--textbox"]
     1040 ORK                              R81 R22 K8 [""]
     1041 GETTABLEKS                       R82 R2 K79 ["testId"]
     1043 NAMECALL                         R79 R79 K109 ["format"]
     1045 CALL                             R79 3 1
     1046 MOVE                             R78 R79
     1047 SETTABLEKS                       R78 R77 K24 ["tag"]
     1049 JUMPIFNOT                        R5 ; [+2]
     1050 MOVE                             R78 R55
     1051 JUMP                             ; [+1]
     1052 LOADNIL                          R78
     1053 SETTABLEKS                       R78 R77 K69 ["Size"]
     1055 GETUPVAL                         R79 0
     1056 GETTABLEKS                       R79 R79 K145 ["FoundationNumberInputBindableValue"]
     1058 JUMPIFNOT                        R79 ; [+8]
     1059 GETUPVAL                         R78 24
     1060 GETTABLEKS                       R79 R2 K9 ["text"]
     1062 NEWCLOSURE                       R80 P29
     1063 CAPTURE                          VAL R5
     1064 CAPTURE                          VAL R24
     1065 CALL                             R78 2 1
     1066 JUMP                             ; [+10]
     1067 JUMPIFNOT                        R5 ; [+8]
     1068 JUMPIF                           R24 ; [+7]
     1069 GETTABLEKS                       R79 R2 K9 ["text"]
     1071 JUMPIFEQKS                       R79 K8 [""] ; [+4]
     1073 GETIMPORT                        R78 K148 [Enum.AutomaticSize.Y]
     1075 JUMP                             ; [+1]
     1076 LOADNIL                          R78
     1077 SETTABLEKS                       R78 R77 K139 ["automaticSize"]
     1079 SETTABLEKS                       R52 R77 K74 ["padding"]
     1081 SETTABLEKS                       R44 R77 K140 ["onFocusGained"]
     1083 JUMPIFNOT                        R5 ; [+3]
     1084 JUMPIFNOT                        R26 ; [+2]
     1085 LOADNIL                          R78
     1086 JUMP                             ; [+1]
     1087 MOVE                             R78 R45
     1088 SETTABLEKS                       R78 R77 K49 ["onFocusLost"]
     1090 SETTABLEKS                       R43 R77 K141 ["onTextChanged"]
     1092 JUMPIFNOT                        R5 ; [+2]
     1093 MOVE                             R78 R58
     1094 JUMP                             ; [+1]
     1095 LOADNIL                          R78
     1096 SETTABLEKS                       R78 R77 K142 ["onCursorPositionChanged"]
     1098 DUPTABLE                         R78 K150 [{"DragDetector", "BoundsChecker"}]
     1099 SETTABLEKS                       R62 R78 K110 ["DragDetector"]
     1101 JUMPIFNOT                        R5 ; [+25]
     1102 GETUPVAL                         R79 4
     1103 GETTABLEKS                       R79 R79 K68 ["createElement"]
     1105 GETUPVAL                         R80 23
     1106 DUPTABLE                         R81 K152 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
     1107 LOADB                            R82 1
     1108 SETTABLEKS                       R82 R81 K151 ["isBoundsChecker"]
     1110 SETTABLEKS                       R32 R81 K39 ["fontStyle"]
     1112 SETTABLEKS                       R31 R81 K136 ["textStyle"]
     1114 GETIMPORT                        R82 K60 [UDim2.new]
     1116 LOADN                            R83 1
     1117 LOADN                            R84 0
     1118 LOADN                            R85 1
     1119 MOVE                             R86 R54
     1120 CALL                             R82 4 1
     1121 SETTABLEKS                       R82 R81 K69 ["Size"]
     1123 SETTABLEKS                       R8 R81 K138 ["ref"]
     1125 CALL                             R79 2 1
     1126 JUMP                             ; [+1]
     1127 LOADNIL                          R79
     1128 SETTABLEKS                       R79 R78 K149 ["BoundsChecker"]
     1130 CALL                             R75 3 1
     1131 JUMP                             ; [+1]
     1132 LOADNIL                          R75
     1133 SETTABLEKS                       R75 R74 K131 ["TextBox"]
     1135 JUMPIFNOT                        R5 ; [+68]
     1136 JUMPIFNOT                        R24 ; [+67]
     1137 GETUPVAL                         R75 4
     1138 GETTABLEKS                       R75 R75 K68 ["createElement"]
     1140 GETUPVAL                         R76 23
     1141 DUPTABLE                         R77 K153 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1142 GETTABLEKS                       R78 R2 K9 ["text"]
     1144 SETTABLEKS                       R78 R77 K9 ["text"]
     1146 GETTABLEKS                       R78 R2 K134 ["placeholder"]
     1148 SETTABLEKS                       R78 R77 K134 ["placeholder"]
     1150 GETTABLEKS                       R78 R2 K135 ["textInputType"]
     1152 SETTABLEKS                       R78 R77 K135 ["textInputType"]
     1154 SETTABLEKS                       R32 R77 K39 ["fontStyle"]
     1156 SETTABLEKS                       R31 R77 K136 ["textStyle"]
     1158 SETTABLEKS                       R5 R77 K137 ["isMultiLine"]
     1160 GETTABLEKS                       R78 R2 K38 ["isDisabled"]
     1162 SETTABLEKS                       R78 R77 K38 ["isDisabled"]
     1164 SETTABLEKS                       R52 R77 K74 ["padding"]
     1166 GETUPVAL                         R79 0
     1167 GETTABLEKS                       R79 R79 K7 ["FoundationTextInputFocusBehavior"]
     1169 JUMPIFNOT                        R79 ; [+2]
     1170 MOVE                             R78 R66
     1171 JUMP                             ; [+1]
     1172 MOVE                             R78 R60
     1173 SETTABLEKS                       R78 R77 K138 ["ref"]
     1175 LOADK                            R79 K154 ["%* data-testid=%*--mobile-textbox"]
     1176 ORK                              R81 R22 K8 [""]
     1177 GETTABLEKS                       R82 R2 K79 ["testId"]
     1179 NAMECALL                         R79 R79 K109 ["format"]
     1181 CALL                             R79 3 1
     1182 MOVE                             R78 R79
     1183 SETTABLEKS                       R78 R77 K24 ["tag"]
     1185 SETTABLEKS                       R55 R77 K69 ["Size"]
     1187 JUMPIFNOT                        R5 ; [+3]
     1188 JUMPIFNOT                        R26 ; [+2]
     1189 MOVE                             R78 R45
     1190 JUMP                             ; [+1]
     1191 LOADNIL                          R78
     1192 SETTABLEKS                       R78 R77 K49 ["onFocusLost"]
     1194 SETTABLEKS                       R43 R77 K141 ["onTextChanged"]
     1196 JUMPIFNOT                        R5 ; [+2]
     1197 MOVE                             R78 R58
     1198 JUMP                             ; [+1]
     1199 LOADNIL                          R78
     1200 SETTABLEKS                       R78 R77 K142 ["onCursorPositionChanged"]
     1202 CALL                             R75 2 1
     1203 JUMP                             ; [+1]
     1204 LOADNIL                          R75
     1205 SETTABLEKS                       R75 R74 K132 ["MobileTextBox"]
     1207 CALL                             R71 3 1
     1208 SETTABLEKS                       R71 R70 K113 ["TextBoxWrapper"]
     1210 GETUPVAL                         R72 0
     1211 GETTABLEKS                       R72 R72 K43 ["FoundationInternalTextInputClearButton"]
     1213 JUMPIFNOT                        R72 ; [+98]
     1214 GETTABLEKS                       R72 R2 K66 ["hasClearButton"]
     1216 JUMPIFNOT                        R72 ; [+95]
     1217 GETUPVAL                         R71 4
     1218 GETTABLEKS                       R71 R71 K68 ["createElement"]
     1220 GETUPVAL                         R72 16
     1221 DUPTABLE                         R73 K156 [{"isDisabled", "GroupTransparency", "LayoutOrder", "Visible", "tag"}]
     1222 GETTABLEKS                       R74 R2 K38 ["isDisabled"]
     1224 SETTABLEKS                       R74 R73 K38 ["isDisabled"]
     1226 GETTABLEKS                       R75 R2 K38 ["isDisabled"]
     1228 JUMPIFNOT                        R75 ; [+4]
     1229 GETUPVAL                         R74 19
     1230 GETTABLEKS                       R74 R74 K93 ["DISABLED_TRANSPARENCY"]
     1232 JUMP                             ; [+1]
     1233 LOADNIL                          R74
     1234 SETTABLEKS                       R74 R73 K118 ["GroupTransparency"]
     1236 LOADN                            R74 3
     1237 SETTABLEKS                       R74 R73 K119 ["LayoutOrder"]
     1239 GETUPVAL                         R74 24
     1240 GETTABLEKS                       R75 R2 K9 ["text"]
     1242 DUPCLOSURE                       R76 K157 [PROTO_32]
     1243 CALL                             R74 2 1
     1244 SETTABLEKS                       R74 R73 K155 ["Visible"]
     1246 GETTABLEKS                       R74 R18 K158 ["clearButton"]
     1248 GETTABLEKS                       R74 R74 K24 ["tag"]
     1250 SETTABLEKS                       R74 R73 K24 ["tag"]
     1252 DUPTABLE                         R74 K160 [{"ClearButton"}]
     1253 GETUPVAL                         R75 4
     1254 GETTABLEKS                       R75 R75 K68 ["createElement"]
     1256 GETUPVAL                         R76 16
     1257 DUPTABLE                         R77 K162 [{"onActivated", "padding", "Position", "stateLayer", "tag", "testId"}]
     1258 SETTABLEKS                       R42 R77 K75 ["onActivated"]
     1260 GETIMPORT                        R78 K64 [UDim.new]
     1262 LOADN                            R79 0
     1263 GETTABLEKS                       R80 R18 K158 ["clearButton"]
     1265 GETTABLEKS                       R80 R80 K74 ["padding"]
     1267 CALL                             R78 2 1
     1268 SETTABLEKS                       R78 R77 K74 ["padding"]
     1270 SETTABLEKS                       R65 R77 K161 ["Position"]
     1272 DUPTABLE                         R78 K106 [{"affordance"}]
     1273 GETUPVAL                         R79 21
     1274 GETTABLEKS                       R79 R79 K107 ["None"]
     1276 SETTABLEKS                       R79 R78 K105 ["affordance"]
     1278 SETTABLEKS                       R78 R77 K78 ["stateLayer"]
     1280 LOADK                            R78 K163 ["anchor-center-left auto-xy"]
     1281 SETTABLEKS                       R78 R77 K24 ["tag"]
     1283 LOADK                            R79 K164 ["%*--clear-button"]
     1284 GETTABLEKS                       R81 R2 K79 ["testId"]
     1286 NAMECALL                         R79 R79 K109 ["format"]
     1288 CALL                             R79 2 1
     1289 MOVE                             R78 R79
     1290 SETTABLEKS                       R78 R77 K79 ["testId"]
     1292 DUPTABLE                         R78 K166 [{"Icon"}]
     1293 GETUPVAL                         R79 4
     1294 GETTABLEKS                       R79 R79 K68 ["createElement"]
     1296 GETUPVAL                         R80 25
     1297 DUPTABLE                         R81 K168 [{"name"}]
     1298 GETTABLEKS                       R82 R18 K158 ["clearButton"]
     1300 GETTABLEKS                       R82 R82 K169 ["icon"]
     1302 SETTABLEKS                       R82 R81 K167 ["name"]
     1304 CALL                             R79 2 1
     1305 SETTABLEKS                       R79 R78 K165 ["Icon"]
     1307 CALL                             R75 3 1
     1308 SETTABLEKS                       R75 R74 K159 ["ClearButton"]
     1310 CALL                             R71 3 1
     1311 JUMP                             ; [+1]
     1312 LOADNIL                          R71
     1313 SETTABLEKS                       R71 R70 K114 ["Clear"]
     1315 GETTABLEKS                       R72 R2 K101 ["trailingElement"]
     1317 JUMPIFNOT                        R72 ; [+40]
     1318 GETUPVAL                         R71 4
     1319 GETTABLEKS                       R71 R71 K68 ["createElement"]
     1321 GETUPVAL                         R72 16
     1322 DUPTABLE                         R73 K120 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
     1323 GETTABLEKS                       R75 R2 K38 ["isDisabled"]
     1325 JUMPIFNOT                        R75 ; [+4]
     1326 GETUPVAL                         R74 19
     1327 GETTABLEKS                       R74 R74 K93 ["DISABLED_TRANSPARENCY"]
     1329 JUMP                             ; [+1]
     1330 LOADNIL                          R74
     1331 SETTABLEKS                       R74 R73 K118 ["GroupTransparency"]
     1333 GETUPVAL                         R75 0
     1334 GETTABLEKS                       R75 R75 K43 ["FoundationInternalTextInputClearButton"]
     1336 JUMPIFNOT                        R75 ; [+2]
     1337 LOADN                            R74 4
     1338 JUMP                             ; [+1]
     1339 LOADN                            R74 3
     1340 SETTABLEKS                       R74 R73 K119 ["LayoutOrder"]
     1342 LOADK                            R74 K121 ["size-0-full auto-x"]
     1343 SETTABLEKS                       R74 R73 K24 ["tag"]
     1345 LOADK                            R75 K170 ["%*--trailing"]
     1346 GETTABLEKS                       R77 R2 K79 ["testId"]
     1348 NAMECALL                         R75 R75 K109 ["format"]
     1350 CALL                             R75 2 1
     1351 MOVE                             R74 R75
     1352 SETTABLEKS                       R74 R73 K79 ["testId"]
     1354 GETTABLEKS                       R74 R2 K101 ["trailingElement"]
     1356 CALL                             R71 3 1
     1357 JUMP                             ; [+1]
     1358 LOADNIL                          R71
     1359 SETTABLEKS                       R71 R70 K115 ["Trailing"]
     1361 CALL                             R67 3 -1
     1362 RETURN                           R67 -1

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
       23 GETTABLEKS                       R6 R4 K10 ["Icon"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R4 K11 ["Padding"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R4 K12 ["ScrollView"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R4 K13 ["Types"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R4 K14 ["View"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R11 R0 K15 ["Constants"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K6 [require]
       53 GETTABLEKS                       R12 R0 K16 ["Utility"]
       55 GETTABLEKS                       R12 R12 K17 ["Flags"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K6 [require]
       60 GETTABLEKS                       R13 R0 K16 ["Utility"]
       62 GETTABLEKS                       R13 R13 K18 ["blendTransparencies"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K6 [require]
       67 GETTABLEKS                       R14 R0 K16 ["Utility"]
       69 GETTABLEKS                       R14 R14 K19 ["getBindableValue"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K6 [require]
       74 GETTABLEKS                       R15 R0 K16 ["Utility"]
       76 GETTABLEKS                       R15 R15 K20 ["getDisabledStyle"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K6 [require]
       81 GETTABLEKS                       R16 R0 K16 ["Utility"]
       83 GETTABLEKS                       R16 R16 K21 ["getMultiLineTextHeight"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K6 [require]
       88 GETTABLEKS                       R17 R0 K16 ["Utility"]
       90 GETTABLEKS                       R17 R17 K22 ["isPluginSecurity"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R18 R0 K16 ["Utility"]
       97 GETTABLEKS                       R18 R18 K23 ["mapBindable"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K6 [require]
      102 GETIMPORT                        R19 K1 [script]
      104 GETTABLEKS                       R19 R19 K4 ["Parent"]
      106 GETTABLEKS                       R19 R19 K24 ["truncateTextToCursor"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K6 [require]
      111 GETTABLEKS                       R20 R0 K16 ["Utility"]
      113 GETTABLEKS                       R20 R20 K25 ["useBindable"]
      115 CALL                             R19 1 1
      116 GETIMPORT                        R20 K6 [require]
      118 GETTABLEKS                       R21 R0 K16 ["Utility"]
      120 GETTABLEKS                       R21 R21 K26 ["usePreferredInput"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K6 [require]
      125 GETTABLEKS                       R22 R0 K27 ["Providers"]
      127 GETTABLEKS                       R22 R22 K28 ["Style"]
      129 GETTABLEKS                       R22 R22 K29 ["useStyleTags"]
      131 CALL                             R21 1 1
      132 GETIMPORT                        R22 K6 [require]
      134 GETTABLEKS                       R23 R4 K30 ["TextInput"]
      136 GETTABLEKS                       R23 R23 K31 ["useTextInputVariants"]
      138 CALL                             R22 1 1
      139 GETIMPORT                        R23 K6 [require]
      141 GETTABLEKS                       R24 R0 K27 ["Providers"]
      143 GETTABLEKS                       R24 R24 K28 ["Style"]
      145 GETTABLEKS                       R24 R24 K32 ["useTokens"]
      147 CALL                             R23 1 1
      148 GETIMPORT                        R24 K6 [require]
      150 GETTABLEKS                       R25 R0 K16 ["Utility"]
      152 GETTABLEKS                       R25 R25 K33 ["withCommonProps"]
      154 CALL                             R24 1 1
      155 GETIMPORT                        R25 K6 [require]
      157 GETTABLEKS                       R26 R0 K16 ["Utility"]
      159 GETTABLEKS                       R26 R26 K34 ["withDefaults"]
      161 CALL                             R25 1 1
      162 GETIMPORT                        R26 K6 [require]
      164 GETTABLEKS                       R27 R0 K35 ["Enums"]
      166 GETTABLEKS                       R27 R27 K36 ["InputFocusBehavior"]
      168 CALL                             R26 1 1
      169 GETIMPORT                        R27 K6 [require]
      171 GETTABLEKS                       R28 R0 K35 ["Enums"]
      173 GETTABLEKS                       R28 R28 K37 ["InputSize"]
      175 CALL                             R27 1 1
      176 GETIMPORT                        R28 K6 [require]
      178 GETTABLEKS                       R29 R0 K35 ["Enums"]
      180 GETTABLEKS                       R29 R29 K38 ["InputVariant"]
      182 CALL                             R28 1 1
      183 GETIMPORT                        R29 K6 [require]
      185 GETTABLEKS                       R30 R0 K35 ["Enums"]
      187 GETTABLEKS                       R30 R30 K39 ["Radius"]
      189 CALL                             R29 1 1
      190 GETIMPORT                        R30 K6 [require]
      192 GETTABLEKS                       R31 R0 K35 ["Enums"]
      194 GETTABLEKS                       R31 R31 K40 ["ControlState"]
      196 CALL                             R30 1 1
      197 GETIMPORT                        R31 K6 [require]
      199 GETTABLEKS                       R32 R0 K35 ["Enums"]
      201 GETTABLEKS                       R32 R32 K41 ["StateLayerAffordance"]
      203 CALL                             R31 1 1
      204 DUPTABLE                         R32 K47 [{"size", "variant", "numLines", "testId", "Selectable"}]
      205 GETTABLEKS                       R33 R27 K48 ["Large"]
      207 SETTABLEKS                       R33 R32 K42 ["size"]
      209 GETTABLEKS                       R33 R28 K49 ["Standard"]
      211 SETTABLEKS                       R33 R32 K43 ["variant"]
      213 LOADN                            R33 1
      214 SETTABLEKS                       R33 R32 K44 ["numLines"]
      216 LOADK                            R33 K50 ["--foundation-internal-text-input"]
      217 SETTABLEKS                       R33 R32 K45 ["testId"]
      219 LOADB                            R33 1
      220 SETTABLEKS                       R33 R32 K46 ["Selectable"]
      222 GETTABLEKS                       R33 R2 K51 ["memo"]
      224 GETTABLEKS                       R34 R2 K52 ["forwardRef"]
      226 DUPCLOSURE                       R35 K53 [PROTO_0]
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R16
      230 CAPTURE                          VAL R6
      231 CALL                             R34 1 -1
      232 CALL                             R33 -1 1
      233 DUPCLOSURE                       R34 K54 [PROTO_33]
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R32
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R13
      240 CAPTURE                          VAL R22
      241 CAPTURE                          VAL R21
      242 CAPTURE                          VAL R20
      243 CAPTURE                          VAL R14
      244 CAPTURE                          VAL R26
      245 CAPTURE                          VAL R30
      246 CAPTURE                          VAL R15
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R24
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R29
      255 CAPTURE                          VAL R31
      256 CAPTURE                          VAL R7
      257 CAPTURE                          VAL R33
      258 CAPTURE                          VAL R17
      259 CAPTURE                          VAL R5
      260 GETTABLEKS                       R35 R2 K51 ["memo"]
      262 GETTABLEKS                       R36 R2 K52 ["forwardRef"]
      264 MOVE                             R37 R34
      265 CALL                             R36 1 -1
      266 CALL                             R35 -1 -1
      267 RETURN                           R35 -1
