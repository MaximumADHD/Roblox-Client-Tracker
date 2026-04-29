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
       75 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       77 JUMPIFNOT                        R8 ; [+5]
       78 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       80 GETTABLEKS                       R7 R8 K21 ["Color3"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R7
       84 SETTABLEKS                       R7 R6 K22 ["TextColor3"]
       86 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       88 JUMPIFNOT                        R8 ; [+5]
       89 GETTABLEKS                       R8 R0 K20 ["textStyle"]
       91 GETTABLEKS                       R7 R8 K23 ["Transparency"]
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
      157 GETUPVAL                         R8 0
      158 GETTABLEKS                       R7 R8 K47 ["Tag"]
      160 GETTABLEKS                       R8 R0 K48 ["tag"]
      162 SETTABLE                         R8 R6 R7
      163 GETUPVAL                         R9 0
      164 GETTABLEKS                       R8 R9 K49 ["Change"]
      166 GETTABLEKS                       R7 R8 K45 ["Text"]
      168 GETTABLEKS                       R8 R0 K50 ["onTextChanged"]
      170 SETTABLE                         R8 R6 R7
      171 GETUPVAL                         R9 0
      172 GETTABLEKS                       R8 R9 K49 ["Change"]
      174 GETTABLEKS                       R7 R8 K51 ["CursorPosition"]
      176 GETTABLEKS                       R8 R0 K52 ["onCursorPositionChanged"]
      178 SETTABLE                         R8 R6 R7
      179 GETUPVAL                         R9 0
      180 GETTABLEKS                       R8 R9 K53 ["Event"]
      182 GETTABLEKS                       R7 R8 K54 ["Focused"]
      184 GETTABLEKS                       R8 R0 K55 ["onFocusGained"]
      186 SETTABLE                         R8 R6 R7
      187 GETUPVAL                         R9 0
      188 GETTABLEKS                       R8 R9 K53 ["Event"]
      190 GETTABLEKS                       R7 R8 K56 ["FocusLost"]
      192 GETTABLEKS                       R8 R0 K57 ["onFocusLost"]
      194 SETTABLE                         R8 R6 R7
      195 GETTABLEKS                       R8 R0 K58 ["padding"]
      197 JUMPIFNOT                        R8 ; [+14]
      198 DUPTABLE                         R7 K60 [{"Padding"}]
      199 GETUPVAL                         R9 0
      200 GETTABLEKS                       R8 R9 K2 ["createElement"]
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
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["FoundationTextInputFocusBehavior"]
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K0 ["current"]
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K0 ["current"]
       20 SETTABLEKS                       R0 R1 K1 ["SelectionStart"]
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["CursorPosition"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["FoundationTextInputFocusBehavior"]
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K0 ["current"]
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K0 ["current"]
       20 SETTABLEKS                       R0 R1 K1 ["CursorPosition"]
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
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
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["current"]
        9 JUMPIFEQKS                       R1 K2 [""] ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K3 ["Text"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K4 ["FoundationTextInputFocusBehavior"]
       17 JUMPIFNOT                        R2 ; [+9]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K1 ["current"]
       21 JUMPIFNOTEQ                      R1 R2 ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 2
       25 SETTABLEKS                       R1 R2 K1 ["current"]
       27 GETUPVAL                         R2 3
       28 JUMPIFNOT                        R2 ; [+9]
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R2 R3 K1 ["current"]
       32 JUMPIFNOT                        R2 ; [+5]
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R2 R3 K1 ["current"]
       36 SETTABLEKS                       R1 R2 K3 ["Text"]
       38 GETUPVAL                         R3 5
       39 GETTABLEKS                       R2 R3 K5 ["onChanged"]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
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
       41 GETUPVAL                         R1 7
       42 GETTABLEKS                       R0 R1 K5 ["FoundationTextInputFocusBehavior"]
       44 JUMPIFNOT                        R0 ; [+46]
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R0 R1 K6 ["focusBehavior"]
       48 GETUPVAL                         R2 8
       49 GETTABLEKS                       R1 R2 K7 ["Clear"]
       51 JUMPIFNOTEQ                      R0 R1 ; [+26]
       53 GETUPVAL                         R1 4
       54 LOADK                            R2 K8 [""]
       55 SETTABLEKS                       R2 R1 K1 ["current"]
       57 GETUPVAL                         R2 3
       58 GETTABLEKS                       R1 R2 K1 ["current"]
       60 JUMPIFNOT                        R1 ; [+6]
       61 GETUPVAL                         R2 3
       62 GETTABLEKS                       R1 R2 K1 ["current"]
       64 LOADK                            R2 K8 [""]
       65 SETTABLEKS                       R2 R1 K3 ["Text"]
       67 GETUPVAL                         R2 9
       68 GETTABLEKS                       R1 R2 K1 ["current"]
       70 JUMPIFNOT                        R1 ; [+20]
       71 GETUPVAL                         R2 9
       72 GETTABLEKS                       R1 R2 K1 ["current"]
       74 LOADK                            R2 K8 [""]
       75 SETTABLEKS                       R2 R1 K3 ["Text"]
       77 RETURN                           R0 0
       78 GETUPVAL                         R2 8
       79 GETTABLEKS                       R1 R2 K9 ["Highlight"]
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["onDrag"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["onDrag"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["radius"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["radius"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K7 ["Stroke"]
       13 GETTABLEKS                       R1 R2 K8 ["Thick"]
       15 SETTABLEKS                       R1 R0 K1 ["offset"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K7 ["Stroke"]
       20 GETTABLEKS                       R1 R2 K8 ["Thick"]
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
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K1 ["minHeight"]
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 SETTABLEKS                       R2 R1 K1 ["current"]
        5 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["hasClearButton"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETIMPORT                        R0 K3 [UDim2.fromOffset]
        6 LOADN                            R1 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K5 ["minHeight"]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K6 ["Stroke"]
       13 GETTABLEKS                       R5 R6 K7 ["Standard"]
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
       24 GETUPVAL                         R9 4
       25 GETTABLEKS                       R8 R9 K5 ["FoundationTextInputFocusBehavior"]
       27 JUMPIFNOT                        R8 ; [+6]
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R7 R8 K4 ["useRef"]
       31 LOADNIL                          R8
       32 CALL                             R7 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R8 R9 K4 ["useRef"]
       38 LOADNIL                          R9
       39 CALL                             R8 1 1
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R9 R10 K4 ["useRef"]
       43 LOADNIL                          R10
       44 CALL                             R9 1 1
       45 GETUPVAL                         R11 3
       46 GETTABLEKS                       R10 R11 K4 ["useRef"]
       48 LOADK                            R11 K6 [""]
       49 CALL                             R10 1 1
       50 GETUPVAL                         R13 4
       51 GETTABLEKS                       R12 R13 K5 ["FoundationTextInputFocusBehavior"]
       53 JUMPIFNOT                        R12 ; [+9]
       54 GETUPVAL                         R12 3
       55 GETTABLEKS                       R11 R12 K4 ["useRef"]
       57 GETUPVAL                         R12 5
       58 GETTABLEKS                       R13 R2 K7 ["text"]
       60 CALL                             R12 1 -1
       61 CALL                             R11 -1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R11
       64 GETUPVAL                         R13 3
       65 GETTABLEKS                       R12 R13 K4 ["useRef"]
       67 LOADNIL                          R13
       68 CALL                             R12 1 1
       69 GETUPVAL                         R14 3
       70 GETTABLEKS                       R13 R14 K4 ["useRef"]
       72 GETIMPORT                        R14 K10 [Vector2.zero]
       74 CALL                             R13 1 1
       75 GETUPVAL                         R15 3
       76 GETTABLEKS                       R14 R15 K11 ["useState"]
       78 LOADB                            R15 0
       79 CALL                             R14 1 2
       80 GETUPVAL                         R17 3
       81 GETTABLEKS                       R16 R17 K11 ["useState"]
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
       98 GETUPVAL                         R21 4
       99 GETTABLEKS                       R20 R21 K16 ["FoundationInputVariantsConsolidateContainer"]
      101 JUMPIFNOT                        R20 ; [+3]
      102 GETTABLEKS                       R19 R18 K17 ["container"]
      104 JUMP                             ; [+2]
      105 GETTABLEKS                       R19 R18 K18 ["innerContainer"]
      107 GETUPVAL                         R22 4
      108 GETTABLEKS                       R21 R22 K16 ["FoundationInputVariantsConsolidateContainer"]
      110 JUMPIFNOT                        R21 ; [+3]
      111 GETTABLEKS                       R20 R18 K17 ["container"]
      113 JUMP                             ; [+2]
      114 GETTABLEKS                       R20 R18 K19 ["outerContainer"]
      116 GETUPVAL                         R23 4
      117 GETTABLEKS                       R22 R23 K16 ["FoundationInputVariantsConsolidateContainer"]
      119 JUMPIFNOT                        R22 ; [+3]
      120 GETTABLEKS                       R21 R18 K17 ["container"]
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R21 R18 K20 ["outerView"]
      125 GETUPVAL                         R22 7
      126 GETTABLEKS                       R24 R18 K21 ["textBox"]
      128 GETTABLEKS                       R23 R24 K22 ["tag"]
      130 CALL                             R22 1 1
      131 GETUPVAL                         R23 8
      132 CALL                             R23 0 1
      133 GETUPVAL                         R25 3
      134 GETTABLEKS                       R24 R25 K11 ["useState"]
      136 LOADB                            R25 0
      137 CALL                             R24 1 2
      138 GETIMPORT                        R27 K26 [Enum.PreferredInput.Touch]
      140 JUMPIFEQ                         R23 R27 ; [+2]
      142 LOADB                            R26 0 +1
      143 LOADB                            R26 1
      144 GETTABLEKS                       R28 R3 K27 ["Stroke"]
      146 GETTABLEKS                       R27 R28 K28 ["Standard"]
      148 FASTCALL1                        MATH_CEIL R27 ; [+3]
      149 MOVE                             R30 R27
      150 GETIMPORT                        R29 K31 [math.ceil]
      152 CALL                             R29 1 1
      153 MULK                             R28 R29 K29 [2]
      154 GETTABLEKS                       R30 R3 K27 ["Stroke"]
      156 GETTABLEKS                       R29 R30 K32 ["Thick"]
      158 FASTCALL1                        MATH_CEIL R29 ; [+3]
      159 MOVE                             R32 R29
      160 GETIMPORT                        R31 K31 [math.ceil]
      162 CALL                             R31 1 1
      163 MULK                             R30 R31 K29 [2]
      164 GETUPVAL                         R31 9
      165 GETTABLEKS                       R34 R3 K33 ["Color"]
      167 GETTABLEKS                       R33 R34 K34 ["Content"]
      169 GETTABLEKS                       R32 R33 K35 ["Emphasis"]
      171 GETTABLEKS                       R33 R2 K36 ["isDisabled"]
      173 CALL                             R31 2 1
      174 GETTABLEKS                       R33 R18 K21 ["textBox"]
      176 GETTABLEKS                       R32 R33 K37 ["fontStyle"]
      178 GETTABLEKS                       R33 R32 K38 ["FontSize"]
      180 GETTABLEKS                       R34 R32 K39 ["LineHeight"]
      182 GETUPVAL                         R36 3
      183 GETTABLEKS                       R35 R36 K40 ["useCallback"]
      185 NEWCLOSURE                       R36 P0
      186 CAPTURE                          VAL R6
      187 NEWTABLE                         R37 0 0
      189 CALL                             R35 2 1
      190 GETUPVAL                         R37 3
      191 GETTABLEKS                       R36 R37 K40 ["useCallback"]
      193 NEWCLOSURE                       R37 P1
      194 CAPTURE                          VAL R6
      195 NEWTABLE                         R38 0 0
      197 CALL                             R36 2 1
      198 GETUPVAL                         R38 3
      199 GETTABLEKS                       R37 R38 K40 ["useCallback"]
      201 NEWCLOSURE                       R38 P2
      202 CAPTURE                          VAL R6
      203 NEWTABLE                         R39 0 0
      205 CALL                             R37 2 1
      206 GETUPVAL                         R39 3
      207 GETTABLEKS                       R38 R39 K40 ["useCallback"]
      209 NEWCLOSURE                       R39 P3
      210 CAPTURE                          VAL R6
      211 NEWTABLE                         R40 0 0
      213 CALL                             R38 2 1
      214 GETUPVAL                         R40 3
      215 GETTABLEKS                       R39 R40 K40 ["useCallback"]
      217 NEWCLOSURE                       R40 P4
      218 CAPTURE                          VAL R6
      219 NEWTABLE                         R41 0 0
      221 CALL                             R39 2 1
      222 GETUPVAL                         R41 3
      223 GETTABLEKS                       R40 R41 K40 ["useCallback"]
      225 NEWCLOSURE                       R41 P5
      226 CAPTURE                          VAL R6
      227 CAPTURE                          UPVAL U4
      228 CAPTURE                          VAL R7
      229 NEWTABLE                         R42 0 0
      231 CALL                             R40 2 1
      232 GETUPVAL                         R42 3
      233 GETTABLEKS                       R41 R42 K40 ["useCallback"]
      235 NEWCLOSURE                       R42 P6
      236 CAPTURE                          VAL R6
      237 CAPTURE                          UPVAL U4
      238 CAPTURE                          VAL R7
      239 NEWTABLE                         R43 0 0
      241 CALL                             R41 2 1
      242 GETUPVAL                         R44 4
      243 GETTABLEKS                       R43 R44 K41 ["FoundationInternalTextInputClearButton"]
      245 JUMPIFNOT                        R43 ; [+9]
      246 GETUPVAL                         R43 3
      247 GETTABLEKS                       R42 R43 K40 ["useCallback"]
      249 NEWCLOSURE                       R43 P7
      250 CAPTURE                          VAL R6
      251 NEWTABLE                         R44 0 0
      253 CALL                             R42 2 1
      254 JUMP                             ; [+1]
      255 LOADNIL                          R42
      256 GETUPVAL                         R44 3
      257 GETTABLEKS                       R43 R44 K42 ["useImperativeHandle"]
      259 MOVE                             R44 R1
      260 NEWCLOSURE                       R45 P8
      261 CAPTURE                          VAL R37
      262 CAPTURE                          VAL R35
      263 CAPTURE                          VAL R36
      264 CAPTURE                          VAL R15
      265 CAPTURE                          VAL R38
      266 CAPTURE                          VAL R39
      267 CAPTURE                          VAL R41
      268 CAPTURE                          VAL R40
      269 NEWTABLE                         R46 0 7
      271 MOVE                             R47 R39
      272 MOVE                             R48 R37
      273 MOVE                             R49 R38
      274 MOVE                             R50 R35
      275 MOVE                             R51 R36
      276 MOVE                             R52 R41
      277 MOVE                             R53 R40
      278 SETLIST                          R46 R47 7 [1]
      280 CALL                             R43 3 0
      281 GETUPVAL                         R44 3
      282 GETTABLEKS                       R43 R44 K40 ["useCallback"]
      284 NEWCLOSURE                       R44 P9
      285 CAPTURE                          VAL R10
      286 CAPTURE                          UPVAL U4
      287 CAPTURE                          VAL R11
      288 CAPTURE                          VAL R5
      289 CAPTURE                          VAL R8
      290 CAPTURE                          VAL R2
      291 NEWTABLE                         R45 0 3
      293 GETTABLEKS                       R46 R2 K43 ["onChanged"]
      295 MOVE                             R47 R5
      296 MOVE                             R48 R24
      297 SETLIST                          R45 R46 3 [1]
      299 CALL                             R43 2 1
      300 GETUPVAL                         R45 3
      301 GETTABLEKS                       R44 R45 K40 ["useCallback"]
      303 NEWCLOSURE                       R45 P10
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R5
      306 CAPTURE                          VAL R26
      307 CAPTURE                          VAL R6
      308 CAPTURE                          VAL R10
      309 CAPTURE                          VAL R25
      310 CAPTURE                          VAL R17
      311 CAPTURE                          UPVAL U4
      312 CAPTURE                          UPVAL U10
      313 CAPTURE                          VAL R7
      314 CAPTURE                          VAL R40
      315 CAPTURE                          VAL R41
      316 NEWTABLE                         R46 0 7
      318 GETTABLEKS                       R47 R2 K44 ["onFocus"]
      320 GETTABLEKS                       R48 R2 K36 ["isDisabled"]
      322 MOVE                             R49 R26
      323 MOVE                             R50 R5
      324 GETUPVAL                         R53 4
      325 GETTABLEKS                       R52 R53 K5 ["FoundationTextInputFocusBehavior"]
      327 JUMPIFNOT                        R52 ; [+3]
      328 GETTABLEKS                       R51 R2 K45 ["focusBehavior"]
      330 JUMP                             ; [+1]
      331 LOADNIL                          R51
      332 GETUPVAL                         R54 4
      333 GETTABLEKS                       R53 R54 K5 ["FoundationTextInputFocusBehavior"]
      335 JUMPIFNOT                        R53 ; [+2]
      336 MOVE                             R52 R40
      337 JUMP                             ; [+1]
      338 LOADNIL                          R52
      339 GETUPVAL                         R55 4
      340 GETTABLEKS                       R54 R55 K5 ["FoundationTextInputFocusBehavior"]
      342 JUMPIFNOT                        R54 ; [+2]
      343 MOVE                             R53 R41
      344 JUMP                             ; [+1]
      345 LOADNIL                          R53
      346 SETLIST                          R46 R47 7 [1]
      348 CALL                             R44 2 1
      349 GETUPVAL                         R46 3
      350 GETTABLEKS                       R45 R46 K40 ["useCallback"]
      352 NEWCLOSURE                       R46 P11
      353 CAPTURE                          VAL R17
      354 CAPTURE                          VAL R5
      355 CAPTURE                          VAL R25
      356 CAPTURE                          VAL R2
      357 NEWTABLE                         R47 0 3
      359 GETTABLEKS                       R48 R2 K46 ["onReturnPressed"]
      361 MOVE                             R49 R5
      362 GETTABLEKS                       R50 R2 K47 ["onFocusLost"]
      364 SETLIST                          R47 R48 3 [1]
      366 CALL                             R45 2 1
      367 GETUPVAL                         R47 3
      368 GETTABLEKS                       R46 R47 K40 ["useCallback"]
      370 NEWCLOSURE                       R47 P12
      371 CAPTURE                          VAL R15
      372 CAPTURE                          UPVAL U11
      373 NEWTABLE                         R48 0 0
      375 CALL                             R46 2 1
      376 GETUPVAL                         R48 3
      377 GETTABLEKS                       R47 R48 K40 ["useCallback"]
      379 NEWCLOSURE                       R48 P13
      380 CAPTURE                          VAL R12
      381 CAPTURE                          VAL R2
      382 NEWTABLE                         R49 0 1
      384 GETTABLEKS                       R50 R2 K48 ["onDragStarted"]
      386 SETLIST                          R49 R50 1 [1]
      388 CALL                             R47 2 1
      389 GETUPVAL                         R49 3
      390 GETTABLEKS                       R48 R49 K40 ["useCallback"]
      392 NEWCLOSURE                       R49 P14
      393 CAPTURE                          VAL R2
      394 NEWTABLE                         R50 0 1
      396 GETTABLEKS                       R51 R2 K49 ["onDrag"]
      398 SETLIST                          R50 R51 1 [1]
      400 CALL                             R48 2 1
      401 GETUPVAL                         R50 3
      402 GETTABLEKS                       R49 R50 K40 ["useCallback"]
      404 NEWCLOSURE                       R50 P15
      405 CAPTURE                          VAL R12
      406 CAPTURE                          VAL R35
      407 CAPTURE                          VAL R36
      408 CAPTURE                          VAL R17
      409 CAPTURE                          VAL R2
      410 NEWTABLE                         R51 0 1
      412 GETTABLEKS                       R52 R2 K50 ["onDragEnded"]
      414 SETLIST                          R51 R52 1 [1]
      416 CALL                             R49 2 1
      417 GETUPVAL                         R51 3
      418 GETTABLEKS                       R50 R51 K51 ["useMemo"]
      420 NEWCLOSURE                       R51 P16
      421 CAPTURE                          VAL R19
      422 CAPTURE                          VAL R3
      423 NEWTABLE                         R52 0 2
      425 MOVE                             R53 R3
      426 GETTABLEKS                       R54 R19 K14 ["radius"]
      428 SETLIST                          R52 R53 2 [1]
      430 CALL                             R50 2 1
      431 GETUPVAL                         R52 3
      432 GETTABLEKS                       R51 R52 K51 ["useMemo"]
      434 NEWCLOSURE                       R52 P17
      435 CAPTURE                          UPVAL U12
      436 CAPTURE                          VAL R33
      437 CAPTURE                          VAL R4
      438 CAPTURE                          VAL R34
      439 NEWTABLE                         R53 0 3
      441 MOVE                             R54 R33
      442 MOVE                             R55 R4
      443 MOVE                             R56 R34
      444 SETLIST                          R53 R54 3 [1]
      446 CALL                             R51 2 1
      447 GETUPVAL                         R53 3
      448 GETTABLEKS                       R52 R53 K51 ["useMemo"]
      450 NEWCLOSURE                       R53 P18
      451 CAPTURE                          VAL R20
      452 CAPTURE                          VAL R28
      453 CAPTURE                          UPVAL U12
      454 CAPTURE                          VAL R33
      455 CAPTURE                          VAL R34
      456 CAPTURE                          VAL R51
      457 NEWTABLE                         R54 0 6
      459 GETTABLEKS                       R55 R20 K52 ["minHeight"]
      461 MOVE                             R56 R28
      462 MOVE                             R57 R30
      463 MOVE                             R58 R33
      464 MOVE                             R59 R51
      465 MOVE                             R60 R34
      466 SETLIST                          R54 R55 6 [1]
      468 CALL                             R52 2 2
      469 GETTABLEKS                       R56 R52 K53 ["bottom"]
      471 GETTABLEKS                       R55 R56 K54 ["Offset"]
      473 GETTABLEKS                       R57 R52 K55 ["top"]
      475 GETTABLEKS                       R56 R57 K54 ["Offset"]
      477 ADD                              R54 R55 R56
      478 GETIMPORT                        R55 K58 [UDim2.new]
      480 LOADN                            R56 1
      481 LOADN                            R57 0
      482 LOADN                            R58 0
      483 ADD                              R59 R51 R54
      484 CALL                             R55 4 1
      485 GETUPVAL                         R57 3
      486 GETTABLEKS                       R56 R57 K51 ["useMemo"]
      488 NEWCLOSURE                       R57 P19
      489 CAPTURE                          VAL R5
      490 NEWTABLE                         R58 0 1
      492 MOVE                             R59 R5
      493 SETLIST                          R58 R59 1 [1]
      495 CALL                             R56 2 1
      496 GETUPVAL                         R58 3
      497 GETTABLEKS                       R57 R58 K51 ["useMemo"]
      499 NEWCLOSURE                       R58 P20
      500 CAPTURE                          VAL R5
      501 NEWTABLE                         R59 0 1
      503 MOVE                             R60 R5
      504 SETLIST                          R59 R60 1 [1]
      506 CALL                             R57 2 1
      507 GETUPVAL                         R59 3
      508 GETTABLEKS                       R58 R59 K40 ["useCallback"]
      510 NEWCLOSURE                       R59 P21
      511 CAPTURE                          VAL R9
      512 CAPTURE                          VAL R8
      513 CAPTURE                          UPVAL U13
      514 CAPTURE                          VAL R52
      515 NEWTABLE                         R60 0 1
      517 MOVE                             R61 R52
      518 SETLIST                          R60 R61 1 [1]
      520 CALL                             R58 2 1
      521 GETUPVAL                         R60 3
      522 GETTABLEKS                       R59 R60 K40 ["useCallback"]
      524 NEWCLOSURE                       R60 P22
      525 CAPTURE                          VAL R9
      526 CAPTURE                          VAL R13
      527 NEWTABLE                         R61 0 0
      529 CALL                             R59 2 1
      530 GETUPVAL                         R61 3
      531 GETTABLEKS                       R60 R61 K40 ["useCallback"]
      533 NEWCLOSURE                       R61 P23
      534 CAPTURE                          VAL R10
      535 NEWTABLE                         R62 0 0
      537 CALL                             R60 2 1
      538 GETUPVAL                         R62 3
      539 GETTABLEKS                       R61 R62 K40 ["useCallback"]
      541 NEWCLOSURE                       R62 P24
      542 CAPTURE                          VAL R13
      543 NEWTABLE                         R63 0 0
      545 CALL                             R61 2 1
      546 GETUPVAL                         R63 3
      547 GETTABLEKS                       R62 R63 K51 ["useMemo"]
      549 NEWCLOSURE                       R63 P25
      550 CAPTURE                          VAL R2
      551 CAPTURE                          UPVAL U3
      552 CAPTURE                          VAL R47
      553 CAPTURE                          VAL R48
      554 CAPTURE                          VAL R49
      555 CAPTURE                          VAL R16
      556 NEWTABLE                         R64 0 5
      558 MOVE                             R65 R47
      559 MOVE                             R66 R48
      560 MOVE                             R67 R49
      561 MOVE                             R68 R16
      562 GETTABLEKS                       R69 R2 K36 ["isDisabled"]
      564 SETLIST                          R64 R65 5 [1]
      566 CALL                             R62 2 1
      567 GETUPVAL                         R63 14
      568 GETTABLEKS                       R65 R2 K59 ["horizontalPadding"]
      570 JUMPIFNOT                        R65 ; [+11]
      571 GETTABLEKS                       R65 R2 K59 ["horizontalPadding"]
      573 GETTABLEKS                       R64 R65 K60 ["left"]
      575 JUMPIF                           R64 ; [+11]
      576 GETIMPORT                        R64 K62 [UDim.new]
      578 LOADN                            R65 0
      579 LOADN                            R66 0
      580 CALL                             R64 2 1
      581 JUMP                             ; [+5]
      582 GETIMPORT                        R64 K62 [UDim.new]
      584 LOADN                            R65 0
      585 LOADN                            R66 0
      586 CALL                             R64 2 1
      587 CALL                             R63 1 1
      588 GETUPVAL                         R64 14
      589 GETTABLEKS                       R66 R2 K59 ["horizontalPadding"]
      591 JUMPIFNOT                        R66 ; [+11]
      592 GETTABLEKS                       R66 R2 K59 ["horizontalPadding"]
      594 GETTABLEKS                       R65 R66 K63 ["right"]
      596 JUMPIF                           R65 ; [+11]
      597 GETIMPORT                        R65 K62 [UDim.new]
      599 LOADN                            R66 0
      600 LOADN                            R67 0
      601 CALL                             R65 2 1
      602 JUMP                             ; [+5]
      603 GETIMPORT                        R65 K62 [UDim.new]
      605 LOADN                            R66 0
      606 LOADN                            R67 0
      607 CALL                             R65 2 1
      608 CALL                             R64 1 1
      609 GETUPVAL                         R67 4
      610 GETTABLEKS                       R66 R67 K41 ["FoundationInternalTextInputClearButton"]
      612 JUMPIFNOT                        R66 ; [+21]
      613 GETUPVAL                         R66 3
      614 GETTABLEKS                       R65 R66 K51 ["useMemo"]
      616 NEWCLOSURE                       R66 P26
      617 CAPTURE                          VAL R2
      618 CAPTURE                          VAL R20
      619 CAPTURE                          VAL R3
      620 NEWTABLE                         R67 0 3
      622 GETTABLEKS                       R68 R2 K64 ["hasClearButton"]
      624 GETTABLEKS                       R69 R20 K52 ["minHeight"]
      626 GETTABLEKS                       R71 R3 K27 ["Stroke"]
      628 GETTABLEKS                       R70 R71 K28 ["Standard"]
      630 SETLIST                          R67 R68 3 [1]
      632 CALL                             R65 2 1
      633 JUMP                             ; [+1]
      634 LOADNIL                          R65
      635 GETUPVAL                         R68 4
      636 GETTABLEKS                       R67 R68 K5 ["FoundationTextInputFocusBehavior"]
      638 JUMPIFNOT                        R67 ; [+7]
      639 GETUPVAL                         R67 15
      640 GETTABLEKS                       R66 R67 K65 ["useComposedRef"]
      642 MOVE                             R67 R7
      643 MOVE                             R68 R60
      644 CALL                             R66 2 1
      645 JUMP                             ; [+1]
      646 LOADNIL                          R66
      647 GETUPVAL                         R68 3
      648 GETTABLEKS                       R67 R68 K66 ["createElement"]
      650 GETUPVAL                         R68 16
      651 GETUPVAL                         R69 17
      652 MOVE                             R70 R2
      653 DUPTABLE                         R71 K78 [{"Size", "selection", "cursor", "stroke", "cornerRadius", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      654 GETIMPORT                        R72 K58 [UDim2.new]
      656 LOADN                            R73 1
      657 LOADN                            R74 0
      658 LOADN                            R75 0
      659 MOVE                             R76 R53
      660 CALL                             R72 4 1
      661 SETTABLEKS                       R72 R71 K67 ["Size"]
      663 DUPTABLE                         R72 K80 [{"Selectable"}]
      664 GETTABLEKS                       R74 R2 K36 ["isDisabled"]
      666 NOT                              R73 R74
      667 SETTABLEKS                       R73 R72 K79 ["Selectable"]
      669 SETTABLEKS                       R72 R71 K68 ["selection"]
      671 SETTABLEKS                       R50 R71 K69 ["cursor"]
      673 GETTABLEKS                       R73 R21 K81 ["strokeStyle"]
      675 JUMPIFNOT                        R73 ; [+43]
      676 GETTABLEKS                       R73 R21 K82 ["strokeThickness"]
      678 JUMPIFNOT                        R73 ; [+40]
      679 DUPTABLE                         R72 K86 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      680 GETTABLEKS                       R74 R21 K81 ["strokeStyle"]
      682 GETTABLEKS                       R73 R74 K87 ["Color3"]
      684 SETTABLEKS                       R73 R72 K33 ["Color"]
      686 GETTABLEKS                       R74 R2 K36 ["isDisabled"]
      688 JUMPIFNOT                        R74 ; [+10]
      689 GETUPVAL                         R73 18
      690 GETTABLEKS                       R75 R21 K81 ["strokeStyle"]
      692 GETTABLEKS                       R74 R75 K83 ["Transparency"]
      694 GETUPVAL                         R76 19
      695 GETTABLEKS                       R75 R76 K88 ["DISABLED_TRANSPARENCY"]
      697 CALL                             R73 2 1
      698 JUMP                             ; [+4]
      699 GETTABLEKS                       R74 R21 K81 ["strokeStyle"]
      701 GETTABLEKS                       R73 R74 K83 ["Transparency"]
      703 SETTABLEKS                       R73 R72 K83 ["Transparency"]
      705 GETTABLEKS                       R73 R21 K82 ["strokeThickness"]
      707 SETTABLEKS                       R73 R72 K84 ["Thickness"]
      709 JUMPIF                           R16 ; [+1]
      710 JUMPIFNOT                        R14 ; [+3]
      711 GETIMPORT                        R73 K90 [Enum.BorderStrokePosition.Center]
      713 JUMP                             ; [+2]
      714 GETIMPORT                        R73 K92 [Enum.BorderStrokePosition.Inner]
      716 SETTABLEKS                       R73 R72 K85 ["BorderStrokePosition"]
      718 JUMP                             ; [+1]
      719 LOADNIL                          R72
      720 SETTABLEKS                       R72 R71 K70 ["stroke"]
      722 GETTABLEKS                       R73 R2 K14 ["radius"]
      724 GETUPVAL                         R75 20
      725 GETTABLEKS                       R74 R75 K93 ["Circle"]
      727 JUMPIFNOTEQ                      R73 R74 ; [+13]
      729 GETIMPORT                        R72 K62 [UDim.new]
      731 LOADN                            R73 0
      732 GETTABLEKS                       R76 R20 K52 ["minHeight"]
      734 DIVK                             R75 R76 K29 [2]
      735 FASTCALL1                        MATH_CEIL R75 ; [+2]
      736 GETIMPORT                        R74 K31 [math.ceil]
      738 CALL                             R74 1 1
      739 CALL                             R72 2 1
      740 JUMP                             ; [+1]
      741 LOADNIL                          R72
      742 SETTABLEKS                       R72 R71 K71 ["cornerRadius"]
      744 DUPTABLE                         R72 K94 [{"left", "right", "top", "bottom"}]
      745 NEWCLOSURE                       R75 P27
      746 CAPTURE                          VAL R27
      747 NAMECALL                         R73 R63 K95 ["map"]
      749 CALL                             R73 2 1
      750 SETTABLEKS                       R73 R72 K60 ["left"]
      752 GETUPVAL                         R75 4
      753 GETTABLEKS                       R74 R75 K41 ["FoundationInternalTextInputClearButton"]
      755 JUMPIFNOT                        R74 ; [+13]
      756 GETTABLEKS                       R74 R2 K96 ["trailingElement"]
      758 JUMPIFNOTEQKNIL                  R74 ; [+10]
      760 GETTABLEKS                       R74 R2 K64 ["hasClearButton"]
      762 JUMPIFNOT                        R74 ; [+6]
      763 GETIMPORT                        R73 K62 [UDim.new]
      765 LOADN                            R74 0
      766 MOVE                             R75 R27
      767 CALL                             R73 2 1
      768 JUMP                             ; [+5]
      769 NEWCLOSURE                       R75 P28
      770 CAPTURE                          VAL R27
      771 NAMECALL                         R73 R64 K95 ["map"]
      773 CALL                             R73 2 1
      774 SETTABLEKS                       R73 R72 K63 ["right"]
      776 GETIMPORT                        R73 K62 [UDim.new]
      778 LOADN                            R74 0
      779 MOVE                             R75 R27
      780 CALL                             R73 2 1
      781 SETTABLEKS                       R73 R72 K55 ["top"]
      783 GETIMPORT                        R73 K62 [UDim.new]
      785 LOADN                            R74 0
      786 MOVE                             R75 R27
      787 CALL                             R73 2 1
      788 SETTABLEKS                       R73 R72 K53 ["bottom"]
      790 SETTABLEKS                       R72 R71 K72 ["padding"]
      792 GETTABLEKS                       R73 R2 K36 ["isDisabled"]
      794 JUMPIF                           R73 ; [+2]
      795 MOVE                             R72 R35
      796 JUMP                             ; [+1]
      797 LOADNIL                          R72
      798 SETTABLEKS                       R72 R71 K73 ["onActivated"]
      800 SETTABLEKS                       R46 R71 K74 ["onStateChanged"]
      802 GETTABLEKS                       R72 R2 K36 ["isDisabled"]
      804 SETTABLEKS                       R72 R71 K36 ["isDisabled"]
      806 GETTABLEKS                       R73 R21 K97 ["bgStyle"]
      808 JUMPIFNOT                        R73 ; [+23]
      809 GETUPVAL                         R72 9
      810 DUPTABLE                         R73 K98 [{"Color3", "Transparency"}]
      811 GETTABLEKS                       R75 R21 K97 ["bgStyle"]
      813 GETTABLEKS                       R74 R75 K87 ["Color3"]
      815 SETTABLEKS                       R74 R73 K87 ["Color3"]
      817 GETTABLEKS                       R75 R2 K99 ["backgroundGradient"]
      819 JUMPIFNOT                        R75 ; [+2]
      820 LOADN                            R74 0
      821 JUMP                             ; [+4]
      822 GETTABLEKS                       R75 R21 K97 ["bgStyle"]
      824 GETTABLEKS                       R74 R75 K83 ["Transparency"]
      826 SETTABLEKS                       R74 R73 K83 ["Transparency"]
      828 GETTABLEKS                       R74 R2 K36 ["isDisabled"]
      830 CALL                             R72 2 1
      831 JUMP                             ; [+1]
      832 LOADNIL                          R72
      833 SETTABLEKS                       R72 R71 K75 ["backgroundStyle"]
      835 DUPTABLE                         R72 K101 [{"affordance"}]
      836 GETUPVAL                         R74 21
      837 GETTABLEKS                       R73 R74 K102 ["None"]
      839 SETTABLEKS                       R73 R72 K100 ["affordance"]
      841 SETTABLEKS                       R72 R71 K76 ["stateLayer"]
      843 GETTABLEKS                       R72 R21 K22 ["tag"]
      845 SETTABLEKS                       R72 R71 K22 ["tag"]
      847 LOADK                            R73 K103 ["%*--outer-container"]
      848 GETTABLEKS                       R75 R2 K77 ["testId"]
      850 NAMECALL                         R73 R73 K104 ["format"]
      852 CALL                             R73 2 1
      853 MOVE                             R72 R73
      854 SETTABLEKS                       R72 R71 K77 ["testId"]
      856 CALL                             R69 2 1
      857 DUPTABLE                         R70 K111 [{"DragDetector", "Background", "Leading", "TextBoxWrapper", "Clear", "Trailing"}]
      858 SETTABLEKS                       R62 R70 K105 ["DragDetector"]
      860 GETTABLEKS                       R71 R2 K99 ["backgroundGradient"]
      862 SETTABLEKS                       R71 R70 K106 ["Background"]
      864 GETTABLEKS                       R72 R2 K112 ["leadingElement"]
      866 JUMPIFNOT                        R72 ; [+34]
      867 GETUPVAL                         R72 3
      868 GETTABLEKS                       R71 R72 K66 ["createElement"]
      870 GETUPVAL                         R72 16
      871 DUPTABLE                         R73 K115 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
      872 GETTABLEKS                       R75 R2 K36 ["isDisabled"]
      874 JUMPIFNOT                        R75 ; [+4]
      875 GETUPVAL                         R75 19
      876 GETTABLEKS                       R74 R75 K88 ["DISABLED_TRANSPARENCY"]
      878 JUMP                             ; [+1]
      879 LOADNIL                          R74
      880 SETTABLEKS                       R74 R73 K113 ["GroupTransparency"]
      882 LOADN                            R74 1
      883 SETTABLEKS                       R74 R73 K114 ["LayoutOrder"]
      885 LOADK                            R74 K116 ["size-0-full auto-x"]
      886 SETTABLEKS                       R74 R73 K22 ["tag"]
      888 LOADK                            R75 K117 ["%*--leading"]
      889 GETTABLEKS                       R77 R2 K77 ["testId"]
      891 NAMECALL                         R75 R75 K104 ["format"]
      893 CALL                             R75 2 1
      894 MOVE                             R74 R75
      895 SETTABLEKS                       R74 R73 K77 ["testId"]
      897 GETTABLEKS                       R74 R2 K112 ["leadingElement"]
      899 CALL                             R71 3 1
      900 JUMP                             ; [+1]
      901 LOADNIL                          R71
      902 SETTABLEKS                       R71 R70 K107 ["Leading"]
      904 GETUPVAL                         R72 3
      905 GETTABLEKS                       R71 R72 K66 ["createElement"]
      907 JUMPIFNOT                        R5 ; [+2]
      908 GETUPVAL                         R72 22
      909 JUMP                             ; [+1]
      910 GETUPVAL                         R72 16
      911 DUPTABLE                         R73 K122 [{"LayoutOrder", "selection", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
      912 LOADN                            R74 2
      913 SETTABLEKS                       R74 R73 K114 ["LayoutOrder"]
      915 GETUPVAL                         R76 4
      916 GETTABLEKS                       R75 R76 K123 ["FoundationTextAreaFixDoubleSelection"]
      918 JUMPIFNOT                        R75 ; [+5]
      919 DUPTABLE                         R74 K80 [{"Selectable"}]
      920 LOADB                            R75 0
      921 SETTABLEKS                       R75 R74 K79 ["Selectable"]
      923 JUMP                             ; [+1]
      924 LOADNIL                          R74
      925 SETTABLEKS                       R74 R73 K68 ["selection"]
      927 SETTABLEKS                       R57 R73 K118 ["scroll"]
      929 SETTABLEKS                       R56 R73 K119 ["layout"]
      931 JUMPIFNOT                        R5 ; [+2]
      932 MOVE                             R74 R61
      933 JUMP                             ; [+1]
      934 LOADNIL                          R74
      935 SETTABLEKS                       R74 R73 K120 ["onCanvasPositionChanged"]
      937 JUMPIFNOT                        R5 ; [+2]
      938 MOVE                             R74 R59
      939 JUMP                             ; [+1]
      940 LOADNIL                          R74
      941 SETTABLEKS                       R74 R73 K121 ["scrollingFrameRef"]
      943 LOADK                            R74 K124 ["fill size-full clip"]
      944 SETTABLEKS                       R74 R73 K22 ["tag"]
      946 DUPTABLE                         R74 K127 [{"TextBox", "MobileTextBox"}]
      947 JUMPIF                           R24 ; [+122]
      948 GETUPVAL                         R76 3
      949 GETTABLEKS                       R75 R76 K66 ["createElement"]
      951 GETUPVAL                         R76 23
      952 DUPTABLE                         R77 K137 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
      953 GETTABLEKS                       R78 R2 K7 ["text"]
      955 SETTABLEKS                       R78 R77 K7 ["text"]
      957 GETTABLEKS                       R78 R2 K128 ["placeholder"]
      959 SETTABLEKS                       R78 R77 K128 ["placeholder"]
      961 GETTABLEKS                       R78 R2 K129 ["textInputType"]
      963 SETTABLEKS                       R78 R77 K129 ["textInputType"]
      965 SETTABLEKS                       R32 R77 K37 ["fontStyle"]
      967 SETTABLEKS                       R31 R77 K130 ["textStyle"]
      969 SETTABLEKS                       R5 R77 K131 ["isMultiLine"]
      971 GETTABLEKS                       R78 R2 K36 ["isDisabled"]
      973 SETTABLEKS                       R78 R77 K36 ["isDisabled"]
      975 SETTABLEKS                       R6 R77 K132 ["ref"]
      977 LOADK                            R79 K138 ["%* data-testid=%*--textbox"]
      978 ORK                              R81 R22 K6 [""]
      979 GETTABLEKS                       R82 R2 K77 ["testId"]
      981 NAMECALL                         R79 R79 K104 ["format"]
      983 CALL                             R79 3 1
      984 MOVE                             R78 R79
      985 SETTABLEKS                       R78 R77 K22 ["tag"]
      987 JUMPIFNOT                        R5 ; [+2]
      988 MOVE                             R78 R55
      989 JUMP                             ; [+1]
      990 LOADNIL                          R78
      991 SETTABLEKS                       R78 R77 K67 ["Size"]
      993 GETUPVAL                         R80 4
      994 GETTABLEKS                       R79 R80 K139 ["FoundationNumberInputBindableValue"]
      996 JUMPIFNOT                        R79 ; [+8]
      997 GETUPVAL                         R78 24
      998 GETTABLEKS                       R79 R2 K7 ["text"]
     1000 NEWCLOSURE                       R80 P29
     1001 CAPTURE                          VAL R5
     1002 CAPTURE                          VAL R24
     1003 CALL                             R78 2 1
     1004 JUMP                             ; [+10]
     1005 JUMPIFNOT                        R5 ; [+8]
     1006 JUMPIF                           R24 ; [+7]
     1007 GETTABLEKS                       R79 R2 K7 ["text"]
     1009 JUMPIFEQKS                       R79 K6 [""] ; [+4]
     1011 GETIMPORT                        R78 K142 [Enum.AutomaticSize.Y]
     1013 JUMP                             ; [+1]
     1014 LOADNIL                          R78
     1015 SETTABLEKS                       R78 R77 K133 ["automaticSize"]
     1017 SETTABLEKS                       R52 R77 K72 ["padding"]
     1019 SETTABLEKS                       R44 R77 K134 ["onFocusGained"]
     1021 JUMPIFNOT                        R5 ; [+3]
     1022 JUMPIFNOT                        R26 ; [+2]
     1023 LOADNIL                          R78
     1024 JUMP                             ; [+1]
     1025 MOVE                             R78 R45
     1026 SETTABLEKS                       R78 R77 K47 ["onFocusLost"]
     1028 SETTABLEKS                       R43 R77 K135 ["onTextChanged"]
     1030 JUMPIFNOT                        R5 ; [+2]
     1031 MOVE                             R78 R58
     1032 JUMP                             ; [+1]
     1033 LOADNIL                          R78
     1034 SETTABLEKS                       R78 R77 K136 ["onCursorPositionChanged"]
     1036 DUPTABLE                         R78 K144 [{"DragDetector", "BoundsChecker"}]
     1037 SETTABLEKS                       R62 R78 K105 ["DragDetector"]
     1039 JUMPIFNOT                        R5 ; [+25]
     1040 GETUPVAL                         R80 3
     1041 GETTABLEKS                       R79 R80 K66 ["createElement"]
     1043 GETUPVAL                         R80 23
     1044 DUPTABLE                         R81 K146 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
     1045 LOADB                            R82 1
     1046 SETTABLEKS                       R82 R81 K145 ["isBoundsChecker"]
     1048 SETTABLEKS                       R32 R81 K37 ["fontStyle"]
     1050 SETTABLEKS                       R31 R81 K130 ["textStyle"]
     1052 GETIMPORT                        R82 K58 [UDim2.new]
     1054 LOADN                            R83 1
     1055 LOADN                            R84 0
     1056 LOADN                            R85 1
     1057 MOVE                             R86 R54
     1058 CALL                             R82 4 1
     1059 SETTABLEKS                       R82 R81 K67 ["Size"]
     1061 SETTABLEKS                       R8 R81 K132 ["ref"]
     1063 CALL                             R79 2 1
     1064 JUMP                             ; [+1]
     1065 LOADNIL                          R79
     1066 SETTABLEKS                       R79 R78 K143 ["BoundsChecker"]
     1068 CALL                             R75 3 1
     1069 JUMP                             ; [+1]
     1070 LOADNIL                          R75
     1071 SETTABLEKS                       R75 R74 K125 ["TextBox"]
     1073 JUMPIFNOT                        R5 ; [+68]
     1074 JUMPIFNOT                        R24 ; [+67]
     1075 GETUPVAL                         R76 3
     1076 GETTABLEKS                       R75 R76 K66 ["createElement"]
     1078 GETUPVAL                         R76 23
     1079 DUPTABLE                         R77 K147 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1080 GETTABLEKS                       R78 R2 K7 ["text"]
     1082 SETTABLEKS                       R78 R77 K7 ["text"]
     1084 GETTABLEKS                       R78 R2 K128 ["placeholder"]
     1086 SETTABLEKS                       R78 R77 K128 ["placeholder"]
     1088 GETTABLEKS                       R78 R2 K129 ["textInputType"]
     1090 SETTABLEKS                       R78 R77 K129 ["textInputType"]
     1092 SETTABLEKS                       R32 R77 K37 ["fontStyle"]
     1094 SETTABLEKS                       R31 R77 K130 ["textStyle"]
     1096 SETTABLEKS                       R5 R77 K131 ["isMultiLine"]
     1098 GETTABLEKS                       R78 R2 K36 ["isDisabled"]
     1100 SETTABLEKS                       R78 R77 K36 ["isDisabled"]
     1102 SETTABLEKS                       R52 R77 K72 ["padding"]
     1104 GETUPVAL                         R80 4
     1105 GETTABLEKS                       R79 R80 K5 ["FoundationTextInputFocusBehavior"]
     1107 JUMPIFNOT                        R79 ; [+2]
     1108 MOVE                             R78 R66
     1109 JUMP                             ; [+1]
     1110 MOVE                             R78 R60
     1111 SETTABLEKS                       R78 R77 K132 ["ref"]
     1113 LOADK                            R79 K148 ["%* data-testid=%*--mobile-textbox"]
     1114 ORK                              R81 R22 K6 [""]
     1115 GETTABLEKS                       R82 R2 K77 ["testId"]
     1117 NAMECALL                         R79 R79 K104 ["format"]
     1119 CALL                             R79 3 1
     1120 MOVE                             R78 R79
     1121 SETTABLEKS                       R78 R77 K22 ["tag"]
     1123 SETTABLEKS                       R55 R77 K67 ["Size"]
     1125 JUMPIFNOT                        R5 ; [+3]
     1126 JUMPIFNOT                        R26 ; [+2]
     1127 MOVE                             R78 R45
     1128 JUMP                             ; [+1]
     1129 LOADNIL                          R78
     1130 SETTABLEKS                       R78 R77 K47 ["onFocusLost"]
     1132 SETTABLEKS                       R43 R77 K135 ["onTextChanged"]
     1134 JUMPIFNOT                        R5 ; [+2]
     1135 MOVE                             R78 R58
     1136 JUMP                             ; [+1]
     1137 LOADNIL                          R78
     1138 SETTABLEKS                       R78 R77 K136 ["onCursorPositionChanged"]
     1140 CALL                             R75 2 1
     1141 JUMP                             ; [+1]
     1142 LOADNIL                          R75
     1143 SETTABLEKS                       R75 R74 K126 ["MobileTextBox"]
     1145 CALL                             R71 3 1
     1146 SETTABLEKS                       R71 R70 K108 ["TextBoxWrapper"]
     1148 GETUPVAL                         R73 4
     1149 GETTABLEKS                       R72 R73 K41 ["FoundationInternalTextInputClearButton"]
     1151 JUMPIFNOT                        R72 ; [+98]
     1152 GETTABLEKS                       R72 R2 K64 ["hasClearButton"]
     1154 JUMPIFNOT                        R72 ; [+95]
     1155 GETUPVAL                         R72 3
     1156 GETTABLEKS                       R71 R72 K66 ["createElement"]
     1158 GETUPVAL                         R72 16
     1159 DUPTABLE                         R73 K150 [{"isDisabled", "GroupTransparency", "LayoutOrder", "Visible", "tag"}]
     1160 GETTABLEKS                       R74 R2 K36 ["isDisabled"]
     1162 SETTABLEKS                       R74 R73 K36 ["isDisabled"]
     1164 GETTABLEKS                       R75 R2 K36 ["isDisabled"]
     1166 JUMPIFNOT                        R75 ; [+4]
     1167 GETUPVAL                         R75 19
     1168 GETTABLEKS                       R74 R75 K88 ["DISABLED_TRANSPARENCY"]
     1170 JUMP                             ; [+1]
     1171 LOADNIL                          R74
     1172 SETTABLEKS                       R74 R73 K113 ["GroupTransparency"]
     1174 LOADN                            R74 3
     1175 SETTABLEKS                       R74 R73 K114 ["LayoutOrder"]
     1177 GETUPVAL                         R74 24
     1178 GETTABLEKS                       R75 R2 K7 ["text"]
     1180 DUPCLOSURE                       R76 K151 [PROTO_32]
     1181 CALL                             R74 2 1
     1182 SETTABLEKS                       R74 R73 K149 ["Visible"]
     1184 GETTABLEKS                       R75 R18 K152 ["clearButton"]
     1186 GETTABLEKS                       R74 R75 K22 ["tag"]
     1188 SETTABLEKS                       R74 R73 K22 ["tag"]
     1190 DUPTABLE                         R74 K154 [{"ClearButton"}]
     1191 GETUPVAL                         R76 3
     1192 GETTABLEKS                       R75 R76 K66 ["createElement"]
     1194 GETUPVAL                         R76 16
     1195 DUPTABLE                         R77 K156 [{"onActivated", "padding", "Position", "stateLayer", "tag", "testId"}]
     1196 SETTABLEKS                       R42 R77 K73 ["onActivated"]
     1198 GETIMPORT                        R78 K62 [UDim.new]
     1200 LOADN                            R79 0
     1201 GETTABLEKS                       R81 R18 K152 ["clearButton"]
     1203 GETTABLEKS                       R80 R81 K72 ["padding"]
     1205 CALL                             R78 2 1
     1206 SETTABLEKS                       R78 R77 K72 ["padding"]
     1208 SETTABLEKS                       R65 R77 K155 ["Position"]
     1210 DUPTABLE                         R78 K101 [{"affordance"}]
     1211 GETUPVAL                         R80 21
     1212 GETTABLEKS                       R79 R80 K102 ["None"]
     1214 SETTABLEKS                       R79 R78 K100 ["affordance"]
     1216 SETTABLEKS                       R78 R77 K76 ["stateLayer"]
     1218 LOADK                            R78 K157 ["anchor-center-left auto-xy"]
     1219 SETTABLEKS                       R78 R77 K22 ["tag"]
     1221 LOADK                            R79 K158 ["%*--clear-button"]
     1222 GETTABLEKS                       R81 R2 K77 ["testId"]
     1224 NAMECALL                         R79 R79 K104 ["format"]
     1226 CALL                             R79 2 1
     1227 MOVE                             R78 R79
     1228 SETTABLEKS                       R78 R77 K77 ["testId"]
     1230 DUPTABLE                         R78 K160 [{"Icon"}]
     1231 GETUPVAL                         R80 3
     1232 GETTABLEKS                       R79 R80 K66 ["createElement"]
     1234 GETUPVAL                         R80 25
     1235 DUPTABLE                         R81 K162 [{"name"}]
     1236 GETTABLEKS                       R83 R18 K152 ["clearButton"]
     1238 GETTABLEKS                       R82 R83 K163 ["icon"]
     1240 SETTABLEKS                       R82 R81 K161 ["name"]
     1242 CALL                             R79 2 1
     1243 SETTABLEKS                       R79 R78 K159 ["Icon"]
     1245 CALL                             R75 3 1
     1246 SETTABLEKS                       R75 R74 K153 ["ClearButton"]
     1248 CALL                             R71 3 1
     1249 JUMP                             ; [+1]
     1250 LOADNIL                          R71
     1251 SETTABLEKS                       R71 R70 K109 ["Clear"]
     1253 GETTABLEKS                       R72 R2 K96 ["trailingElement"]
     1255 JUMPIFNOT                        R72 ; [+40]
     1256 GETUPVAL                         R72 3
     1257 GETTABLEKS                       R71 R72 K66 ["createElement"]
     1259 GETUPVAL                         R72 16
     1260 DUPTABLE                         R73 K115 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
     1261 GETTABLEKS                       R75 R2 K36 ["isDisabled"]
     1263 JUMPIFNOT                        R75 ; [+4]
     1264 GETUPVAL                         R75 19
     1265 GETTABLEKS                       R74 R75 K88 ["DISABLED_TRANSPARENCY"]
     1267 JUMP                             ; [+1]
     1268 LOADNIL                          R74
     1269 SETTABLEKS                       R74 R73 K113 ["GroupTransparency"]
     1271 GETUPVAL                         R76 4
     1272 GETTABLEKS                       R75 R76 K41 ["FoundationInternalTextInputClearButton"]
     1274 JUMPIFNOT                        R75 ; [+2]
     1275 LOADN                            R74 4
     1276 JUMP                             ; [+1]
     1277 LOADN                            R74 3
     1278 SETTABLEKS                       R74 R73 K114 ["LayoutOrder"]
     1280 LOADK                            R74 K116 ["size-0-full auto-x"]
     1281 SETTABLEKS                       R74 R73 K22 ["tag"]
     1283 LOADK                            R75 K164 ["%*--trailing"]
     1284 GETTABLEKS                       R77 R2 K77 ["testId"]
     1286 NAMECALL                         R75 R75 K104 ["format"]
     1288 CALL                             R75 2 1
     1289 MOVE                             R74 R75
     1290 SETTABLEKS                       R74 R73 K77 ["testId"]
     1292 GETTABLEKS                       R74 R2 K96 ["trailingElement"]
     1294 CALL                             R71 3 1
     1295 JUMP                             ; [+1]
     1296 LOADNIL                          R71
     1297 SETTABLEKS                       R71 R70 K110 ["Trailing"]
     1299 CALL                             R67 3 -1
     1300 RETURN                           R67 -1

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
       53 GETTABLEKS                       R13 R0 K16 ["Utility"]
       55 GETTABLEKS                       R12 R13 K17 ["Flags"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K6 [require]
       60 GETTABLEKS                       R14 R0 K16 ["Utility"]
       62 GETTABLEKS                       R13 R14 K18 ["blendTransparencies"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K6 [require]
       67 GETTABLEKS                       R15 R0 K16 ["Utility"]
       69 GETTABLEKS                       R14 R15 K19 ["getBindableValue"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K6 [require]
       74 GETTABLEKS                       R16 R0 K16 ["Utility"]
       76 GETTABLEKS                       R15 R16 K20 ["getDisabledStyle"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K6 [require]
       81 GETTABLEKS                       R17 R0 K16 ["Utility"]
       83 GETTABLEKS                       R16 R17 K21 ["getMultiLineTextHeight"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K6 [require]
       88 GETTABLEKS                       R18 R0 K16 ["Utility"]
       90 GETTABLEKS                       R17 R18 K22 ["isPluginSecurity"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R19 R0 K16 ["Utility"]
       97 GETTABLEKS                       R18 R19 K23 ["mapBindable"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K6 [require]
      102 GETIMPORT                        R21 K1 [script]
      104 GETTABLEKS                       R20 R21 K4 ["Parent"]
      106 GETTABLEKS                       R19 R20 K24 ["truncateTextToCursor"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K6 [require]
      111 GETTABLEKS                       R21 R0 K16 ["Utility"]
      113 GETTABLEKS                       R20 R21 K25 ["useBindable"]
      115 CALL                             R19 1 1
      116 GETIMPORT                        R20 K6 [require]
      118 GETTABLEKS                       R22 R0 K16 ["Utility"]
      120 GETTABLEKS                       R21 R22 K26 ["usePreferredInput"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K6 [require]
      125 GETTABLEKS                       R24 R0 K27 ["Providers"]
      127 GETTABLEKS                       R23 R24 K28 ["Style"]
      129 GETTABLEKS                       R22 R23 K29 ["useStyleTags"]
      131 CALL                             R21 1 1
      132 GETIMPORT                        R22 K6 [require]
      134 GETTABLEKS                       R24 R4 K30 ["TextInput"]
      136 GETTABLEKS                       R23 R24 K31 ["useTextInputVariants"]
      138 CALL                             R22 1 1
      139 GETIMPORT                        R23 K6 [require]
      141 GETTABLEKS                       R26 R0 K27 ["Providers"]
      143 GETTABLEKS                       R25 R26 K28 ["Style"]
      145 GETTABLEKS                       R24 R25 K32 ["useTokens"]
      147 CALL                             R23 1 1
      148 GETIMPORT                        R24 K6 [require]
      150 GETTABLEKS                       R26 R0 K16 ["Utility"]
      152 GETTABLEKS                       R25 R26 K33 ["withCommonProps"]
      154 CALL                             R24 1 1
      155 GETIMPORT                        R25 K6 [require]
      157 GETTABLEKS                       R27 R0 K16 ["Utility"]
      159 GETTABLEKS                       R26 R27 K34 ["withDefaults"]
      161 CALL                             R25 1 1
      162 GETIMPORT                        R26 K6 [require]
      164 GETTABLEKS                       R28 R0 K35 ["Enums"]
      166 GETTABLEKS                       R27 R28 K36 ["InputFocusBehavior"]
      168 CALL                             R26 1 1
      169 GETIMPORT                        R27 K6 [require]
      171 GETTABLEKS                       R29 R0 K35 ["Enums"]
      173 GETTABLEKS                       R28 R29 K37 ["InputSize"]
      175 CALL                             R27 1 1
      176 GETIMPORT                        R28 K6 [require]
      178 GETTABLEKS                       R30 R0 K35 ["Enums"]
      180 GETTABLEKS                       R29 R30 K38 ["InputVariant"]
      182 CALL                             R28 1 1
      183 GETIMPORT                        R29 K6 [require]
      185 GETTABLEKS                       R31 R0 K35 ["Enums"]
      187 GETTABLEKS                       R30 R31 K39 ["Radius"]
      189 CALL                             R29 1 1
      190 GETIMPORT                        R30 K6 [require]
      192 GETTABLEKS                       R32 R0 K35 ["Enums"]
      194 GETTABLEKS                       R31 R32 K40 ["ControlState"]
      196 CALL                             R30 1 1
      197 GETIMPORT                        R31 K6 [require]
      199 GETTABLEKS                       R33 R0 K35 ["Enums"]
      201 GETTABLEKS                       R32 R33 K41 ["StateLayerAffordance"]
      203 CALL                             R31 1 1
      204 DUPTABLE                         R32 K46 [{"size", "variant", "numLines", "testId"}]
      205 GETTABLEKS                       R33 R27 K47 ["Large"]
      207 SETTABLEKS                       R33 R32 K42 ["size"]
      209 GETTABLEKS                       R33 R28 K48 ["Standard"]
      211 SETTABLEKS                       R33 R32 K43 ["variant"]
      213 LOADN                            R33 1
      214 SETTABLEKS                       R33 R32 K44 ["numLines"]
      216 LOADK                            R33 K49 ["--foundation-internal-text-input"]
      217 SETTABLEKS                       R33 R32 K45 ["testId"]
      219 GETTABLEKS                       R33 R2 K50 ["memo"]
      221 GETTABLEKS                       R34 R2 K51 ["forwardRef"]
      223 DUPCLOSURE                       R35 K52 [PROTO_0]
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R6
      228 CALL                             R34 1 -1
      229 CALL                             R33 -1 1
      230 DUPCLOSURE                       R34 K53 [PROTO_33]
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R32
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R20
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R26
      242 CAPTURE                          VAL R30
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R18
      245 CAPTURE                          VAL R19
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R9
      248 CAPTURE                          VAL R24
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R10
      251 CAPTURE                          VAL R29
      252 CAPTURE                          VAL R31
      253 CAPTURE                          VAL R7
      254 CAPTURE                          VAL R33
      255 CAPTURE                          VAL R17
      256 CAPTURE                          VAL R5
      257 GETTABLEKS                       R35 R2 K50 ["memo"]
      259 GETTABLEKS                       R36 R2 K51 ["forwardRef"]
      261 MOVE                             R37 R34
      262 CALL                             R36 1 -1
      263 CALL                             R35 -1 -1
      264 RETURN                           R35 -1
