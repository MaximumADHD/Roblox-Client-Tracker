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
      195 GETUPVAL                         R7 0
      196 GETTABLEKS                       R7 R7 K53 ["Event"]
      198 GETTABLEKS                       R7 R7 K58 ["InputChanged"]
      200 GETTABLEKS                       R8 R0 K59 ["onInputChanged"]
      202 SETTABLE                         R8 R6 R7
      203 GETUPVAL                         R7 0
      204 GETTABLEKS                       R7 R7 K53 ["Event"]
      206 GETTABLEKS                       R7 R7 K60 ["InputEnded"]
      208 GETTABLEKS                       R8 R0 K61 ["onInputEnded"]
      210 SETTABLE                         R8 R6 R7
      211 GETTABLEKS                       R8 R0 K62 ["padding"]
      213 JUMPIFNOT                        R8 ; [+14]
      214 DUPTABLE                         R7 K64 [{"Padding"}]
      215 GETUPVAL                         R8 0
      216 GETTABLEKS                       R8 R8 K2 ["createElement"]
      218 GETUPVAL                         R9 3
      219 DUPTABLE                         R10 K66 [{"value"}]
      220 GETTABLEKS                       R11 R0 K62 ["padding"]
      222 SETTABLEKS                       R11 R10 K65 ["value"]
      224 CALL                             R8 2 1
      225 SETTABLEKS                       R8 R7 K63 ["Padding"]
      227 JUMP                             ; [+1]
      228 LOADNIL                          R7
      229 GETTABLEKS                       R8 R0 K67 ["children"]
      231 CALL                             R4 4 -1
      232 RETURN                           R4 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFEQKNIL                     R0 ; [+5]
        9 GETTABLEKS                       R1 R0 K1 ["Parent"]
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 RETURN                           R0 0
       14 GETIMPORT                        R1 K4 [utf8.len]
       16 GETTABLEKS                       R2 R0 K5 ["Text"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R2 2
       21 LOADN                            R3 0
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 3
       24 ADDK                             R3 R1 K6 [1]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationTextInputHighlightFix"]
        3 JUMPIFNOT                        R0 ; [+25]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["current"]
       13 NAMECALL                         R0 R0 K2 ["CaptureFocus"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K3 ["focusBehavior"]
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K4 ["Highlight"]
       22 JUMPIFNOTEQ                      R0 R1 ; [+16]
       24 GETIMPORT                        R0 K7 [task.spawn]
       26 GETUPVAL                         R1 4
       27 CALL                             R0 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R0 1
       30 GETTABLEKS                       R0 R0 K1 ["current"]
       32 JUMPIFNOT                        R0 ; [+6]
       33 GETUPVAL                         R0 1
       34 GETTABLEKS                       R0 R0 K1 ["current"]
       36 NAMECALL                         R0 R0 K2 ["CaptureFocus"]
       38 CALL                             R0 1 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["ReleaseFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["SelectionStart"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["CursorPosition"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 LOADK                            R1 K1 [""]
        8 SETTABLEKS                       R1 R0 K2 ["Text"]
       10 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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
       44 JUMPIFNOT                        R0 ; [+55]
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
       70 JUMPIFNOT                        R1 ; [+29]
       71 GETUPVAL                         R1 9
       72 GETTABLEKS                       R1 R1 K1 ["current"]
       74 LOADK                            R2 K8 [""]
       75 SETTABLEKS                       R2 R1 K3 ["Text"]
       77 RETURN                           R0 0
       78 GETUPVAL                         R1 8
       79 GETTABLEKS                       R1 R1 K9 ["Highlight"]
       81 JUMPIFNOTEQ                      R0 R1 ; [+18]
       83 GETUPVAL                         R1 7
       84 GETTABLEKS                       R1 R1 K10 ["FoundationTextInputHighlightFix"]
       86 JUMPIFNOT                        R1 ; [+5]
       87 GETUPVAL                         R1 10
       88 LOADB                            R2 1
       89 SETTABLEKS                       R2 R1 K1 ["current"]
       91 RETURN                           R0 0
       92 GETIMPORT                        R1 K13 [task.spawn]
       94 NEWCLOSURE                       R2 P0
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          UPVAL U11
       98 CAPTURE                          UPVAL U12
       99 CALL                             R1 1 0
      100 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationTextInputHighlightFix"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        7 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseMovement]
        9 JUMPIFNOTEQ                      R2 R3 ; [+5]
       11 GETUPVAL                         R2 1
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K5 ["current"]
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationTextInputHighlightFix"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["current"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K1 ["current"]
       14 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
       16 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 2
       22 CALL                             R2 0 0
       23 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 1
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K0 ["current"]
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETUPVAL                         R3 3
       10 LOADB                            R4 0
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 4
       13 GETTABLEKS                       R3 R3 K1 ["onFocusLost"]
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K1 ["onFocusLost"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 JUMPIFNOT                        R1 ; [+8]
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K2 ["onReturnPressed"]
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K2 ["onReturnPressed"]
       29 CALL                             R3 0 0
       30 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onDrag"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["onDrag"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 SETTABLEKS                       R2 R1 K1 ["current"]
        5 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_33:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+7]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+5]
        4 JUMPIFEQKS                       R0 K0 [""] ; [+4]
        6 GETIMPORT                        R1 K4 [Enum.AutomaticSize.Y]
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_35:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_36:
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
      198 CAPTURE                          UPVAL U0
      199 CAPTURE                          VAL R7
      200 NEWTABLE                         R37 0 0
      202 CALL                             R35 2 1
      203 GETUPVAL                         R36 4
      204 GETTABLEKS                       R36 R36 K42 ["useCallback"]
      206 NEWCLOSURE                       R37 P1
      207 CAPTURE                          VAL R6
      208 CAPTURE                          UPVAL U0
      209 CAPTURE                          VAL R7
      210 NEWTABLE                         R38 0 0
      212 CALL                             R36 2 1
      213 GETUPVAL                         R37 4
      214 GETTABLEKS                       R37 R37 K42 ["useCallback"]
      216 NEWCLOSURE                       R38 P2
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R35
      220 CAPTURE                          VAL R36
      221 NEWTABLE                         R39 0 2
      223 MOVE                             R40 R35
      224 MOVE                             R41 R36
      225 SETLIST                          R39 R40 2 [1]
      227 CALL                             R37 2 1
      228 GETUPVAL                         R38 4
      229 GETTABLEKS                       R38 R38 K42 ["useCallback"]
      231 NEWCLOSURE                       R39 P3
      232 CAPTURE                          UPVAL U0
      233 CAPTURE                          VAL R6
      234 CAPTURE                          VAL R2
      235 CAPTURE                          UPVAL U10
      236 CAPTURE                          VAL R37
      237 NEWTABLE                         R40 0 2
      239 GETUPVAL                         R42 0
      240 GETTABLEKS                       R42 R42 K43 ["FoundationTextInputHighlightFix"]
      242 JUMPIFNOT                        R42 ; [+2]
      243 MOVE                             R41 R37
      244 JUMP                             ; [+1]
      245 LOADNIL                          R41
      246 GETUPVAL                         R43 0
      247 GETTABLEKS                       R43 R43 K43 ["FoundationTextInputHighlightFix"]
      249 JUMPIFNOT                        R43 ; [+3]
      250 GETTABLEKS                       R42 R2 K44 ["focusBehavior"]
      252 JUMP                             ; [+1]
      253 LOADNIL                          R42
      254 SETLIST                          R40 R41 2 [1]
      256 CALL                             R38 2 1
      257 GETUPVAL                         R39 4
      258 GETTABLEKS                       R39 R39 K42 ["useCallback"]
      260 NEWCLOSURE                       R40 P4
      261 CAPTURE                          VAL R6
      262 NEWTABLE                         R41 0 0
      264 CALL                             R39 2 1
      265 GETUPVAL                         R40 4
      266 GETTABLEKS                       R40 R40 K42 ["useCallback"]
      268 NEWCLOSURE                       R41 P5
      269 CAPTURE                          VAL R6
      270 NEWTABLE                         R42 0 0
      272 CALL                             R40 2 1
      273 GETUPVAL                         R41 4
      274 GETTABLEKS                       R41 R41 K42 ["useCallback"]
      276 NEWCLOSURE                       R42 P6
      277 CAPTURE                          VAL R6
      278 NEWTABLE                         R43 0 0
      280 CALL                             R41 2 1
      281 GETUPVAL                         R42 4
      282 GETTABLEKS                       R42 R42 K42 ["useCallback"]
      284 NEWCLOSURE                       R43 P7
      285 CAPTURE                          VAL R6
      286 NEWTABLE                         R44 0 0
      288 CALL                             R42 2 1
      289 GETUPVAL                         R44 0
      290 GETTABLEKS                       R44 R44 K45 ["FoundationInternalTextInputClearButton"]
      292 JUMPIFNOT                        R44 ; [+9]
      293 GETUPVAL                         R43 4
      294 GETTABLEKS                       R43 R43 K42 ["useCallback"]
      296 NEWCLOSURE                       R44 P8
      297 CAPTURE                          VAL R6
      298 NEWTABLE                         R45 0 0
      300 CALL                             R43 2 1
      301 JUMP                             ; [+1]
      302 LOADNIL                          R43
      303 GETUPVAL                         R44 4
      304 GETTABLEKS                       R44 R44 K46 ["useImperativeHandle"]
      306 MOVE                             R45 R1
      307 NEWCLOSURE                       R46 P9
      308 CAPTURE                          VAL R40
      309 CAPTURE                          VAL R38
      310 CAPTURE                          VAL R39
      311 CAPTURE                          VAL R15
      312 CAPTURE                          VAL R41
      313 CAPTURE                          VAL R42
      314 CAPTURE                          VAL R36
      315 CAPTURE                          VAL R35
      316 NEWTABLE                         R47 0 7
      318 MOVE                             R48 R42
      319 MOVE                             R49 R40
      320 MOVE                             R50 R41
      321 MOVE                             R51 R38
      322 MOVE                             R52 R39
      323 MOVE                             R53 R36
      324 MOVE                             R54 R35
      325 SETLIST                          R47 R48 7 [1]
      327 CALL                             R44 3 0
      328 GETUPVAL                         R44 4
      329 GETTABLEKS                       R44 R44 K42 ["useCallback"]
      331 NEWCLOSURE                       R45 P10
      332 CAPTURE                          VAL R10
      333 CAPTURE                          UPVAL U0
      334 CAPTURE                          VAL R11
      335 CAPTURE                          VAL R5
      336 CAPTURE                          VAL R8
      337 CAPTURE                          VAL R2
      338 NEWTABLE                         R46 0 3
      340 GETTABLEKS                       R47 R2 K47 ["onChanged"]
      342 MOVE                             R48 R5
      343 MOVE                             R49 R24
      344 SETLIST                          R46 R47 3 [1]
      346 CALL                             R44 2 1
      347 GETUPVAL                         R45 4
      348 GETTABLEKS                       R45 R45 K6 ["useRef"]
      350 LOADB                            R46 0
      351 CALL                             R45 1 1
      352 GETUPVAL                         R46 4
      353 GETTABLEKS                       R46 R46 K42 ["useCallback"]
      355 NEWCLOSURE                       R47 P11
      356 CAPTURE                          VAL R2
      357 CAPTURE                          VAL R5
      358 CAPTURE                          VAL R26
      359 CAPTURE                          VAL R6
      360 CAPTURE                          VAL R10
      361 CAPTURE                          VAL R25
      362 CAPTURE                          VAL R17
      363 CAPTURE                          UPVAL U0
      364 CAPTURE                          UPVAL U10
      365 CAPTURE                          VAL R7
      366 CAPTURE                          VAL R45
      367 CAPTURE                          VAL R35
      368 CAPTURE                          VAL R36
      369 NEWTABLE                         R48 0 7
      371 GETTABLEKS                       R49 R2 K48 ["onFocus"]
      373 GETTABLEKS                       R50 R2 K38 ["isDisabled"]
      375 MOVE                             R51 R26
      376 MOVE                             R52 R5
      377 GETUPVAL                         R54 0
      378 GETTABLEKS                       R54 R54 K7 ["FoundationTextInputFocusBehavior"]
      380 JUMPIFNOT                        R54 ; [+3]
      381 GETTABLEKS                       R53 R2 K44 ["focusBehavior"]
      383 JUMP                             ; [+1]
      384 LOADNIL                          R53
      385 GETUPVAL                         R55 0
      386 GETTABLEKS                       R55 R55 K7 ["FoundationTextInputFocusBehavior"]
      388 JUMPIFNOT                        R55 ; [+6]
      389 GETUPVAL                         R55 0
      390 GETTABLEKS                       R55 R55 K43 ["FoundationTextInputHighlightFix"]
      392 JUMPIF                           R55 ; [+2]
      393 MOVE                             R54 R35
      394 JUMP                             ; [+1]
      395 LOADNIL                          R54
      396 GETUPVAL                         R56 0
      397 GETTABLEKS                       R56 R56 K7 ["FoundationTextInputFocusBehavior"]
      399 JUMPIFNOT                        R56 ; [+6]
      400 GETUPVAL                         R56 0
      401 GETTABLEKS                       R56 R56 K43 ["FoundationTextInputHighlightFix"]
      403 JUMPIF                           R56 ; [+2]
      404 MOVE                             R55 R36
      405 JUMP                             ; [+1]
      406 LOADNIL                          R55
      407 SETLIST                          R48 R49 7 [1]
      409 CALL                             R46 2 1
      410 GETUPVAL                         R47 4
      411 GETTABLEKS                       R47 R47 K42 ["useCallback"]
      413 NEWCLOSURE                       R48 P12
      414 CAPTURE                          UPVAL U0
      415 CAPTURE                          VAL R45
      416 NEWTABLE                         R49 0 0
      418 CALL                             R47 2 1
      419 GETUPVAL                         R48 4
      420 GETTABLEKS                       R48 R48 K42 ["useCallback"]
      422 NEWCLOSURE                       R49 P13
      423 CAPTURE                          UPVAL U0
      424 CAPTURE                          VAL R45
      425 CAPTURE                          VAL R37
      426 NEWTABLE                         R50 0 3
      428 GETUPVAL                         R52 0
      429 GETTABLEKS                       R52 R52 K43 ["FoundationTextInputHighlightFix"]
      431 JUMPIFNOT                        R52 ; [+2]
      432 MOVE                             R51 R35
      433 JUMP                             ; [+1]
      434 LOADNIL                          R51
      435 GETUPVAL                         R53 0
      436 GETTABLEKS                       R53 R53 K43 ["FoundationTextInputHighlightFix"]
      438 JUMPIFNOT                        R53 ; [+2]
      439 MOVE                             R52 R36
      440 JUMP                             ; [+1]
      441 LOADNIL                          R52
      442 GETUPVAL                         R54 0
      443 GETTABLEKS                       R54 R54 K43 ["FoundationTextInputHighlightFix"]
      445 JUMPIFNOT                        R54 ; [+2]
      446 MOVE                             R53 R37
      447 JUMP                             ; [+1]
      448 LOADNIL                          R53
      449 SETLIST                          R50 R51 3 [1]
      451 CALL                             R48 2 1
      452 GETUPVAL                         R49 4
      453 GETTABLEKS                       R49 R49 K42 ["useCallback"]
      455 NEWCLOSURE                       R50 P14
      456 CAPTURE                          VAL R17
      457 CAPTURE                          VAL R45
      458 CAPTURE                          VAL R5
      459 CAPTURE                          VAL R25
      460 CAPTURE                          VAL R2
      461 NEWTABLE                         R51 0 3
      463 GETTABLEKS                       R52 R2 K49 ["onReturnPressed"]
      465 MOVE                             R53 R5
      466 GETTABLEKS                       R54 R2 K50 ["onFocusLost"]
      468 SETLIST                          R51 R52 3 [1]
      470 CALL                             R49 2 1
      471 GETUPVAL                         R50 4
      472 GETTABLEKS                       R50 R50 K42 ["useCallback"]
      474 NEWCLOSURE                       R51 P15
      475 CAPTURE                          VAL R15
      476 CAPTURE                          UPVAL U11
      477 NEWTABLE                         R52 0 0
      479 CALL                             R50 2 1
      480 GETUPVAL                         R51 4
      481 GETTABLEKS                       R51 R51 K42 ["useCallback"]
      483 NEWCLOSURE                       R52 P16
      484 CAPTURE                          VAL R12
      485 CAPTURE                          VAL R2
      486 NEWTABLE                         R53 0 1
      488 GETTABLEKS                       R54 R2 K51 ["onDragStarted"]
      490 SETLIST                          R53 R54 1 [1]
      492 CALL                             R51 2 1
      493 GETUPVAL                         R52 4
      494 GETTABLEKS                       R52 R52 K42 ["useCallback"]
      496 NEWCLOSURE                       R53 P17
      497 CAPTURE                          VAL R2
      498 NEWTABLE                         R54 0 1
      500 GETTABLEKS                       R55 R2 K52 ["onDrag"]
      502 SETLIST                          R54 R55 1 [1]
      504 CALL                             R52 2 1
      505 GETUPVAL                         R53 4
      506 GETTABLEKS                       R53 R53 K42 ["useCallback"]
      508 NEWCLOSURE                       R54 P18
      509 CAPTURE                          VAL R12
      510 CAPTURE                          VAL R38
      511 CAPTURE                          VAL R39
      512 CAPTURE                          VAL R17
      513 CAPTURE                          VAL R2
      514 NEWTABLE                         R55 0 1
      516 GETTABLEKS                       R56 R2 K53 ["onDragEnded"]
      518 SETLIST                          R55 R56 1 [1]
      520 CALL                             R53 2 1
      521 GETUPVAL                         R54 4
      522 GETTABLEKS                       R54 R54 K54 ["useMemo"]
      524 NEWCLOSURE                       R55 P19
      525 CAPTURE                          VAL R19
      526 CAPTURE                          VAL R3
      527 NEWTABLE                         R56 0 2
      529 MOVE                             R57 R3
      530 GETTABLEKS                       R58 R19 K16 ["radius"]
      532 SETLIST                          R56 R57 2 [1]
      534 CALL                             R54 2 1
      535 GETUPVAL                         R55 4
      536 GETTABLEKS                       R55 R55 K54 ["useMemo"]
      538 NEWCLOSURE                       R56 P20
      539 CAPTURE                          UPVAL U12
      540 CAPTURE                          VAL R33
      541 CAPTURE                          VAL R4
      542 CAPTURE                          VAL R34
      543 NEWTABLE                         R57 0 3
      545 MOVE                             R58 R33
      546 MOVE                             R59 R4
      547 MOVE                             R60 R34
      548 SETLIST                          R57 R58 3 [1]
      550 CALL                             R55 2 1
      551 GETUPVAL                         R56 4
      552 GETTABLEKS                       R56 R56 K54 ["useMemo"]
      554 NEWCLOSURE                       R57 P21
      555 CAPTURE                          VAL R20
      556 CAPTURE                          VAL R28
      557 CAPTURE                          UPVAL U12
      558 CAPTURE                          VAL R33
      559 CAPTURE                          VAL R34
      560 CAPTURE                          VAL R55
      561 NEWTABLE                         R58 0 6
      563 GETTABLEKS                       R59 R20 K55 ["minHeight"]
      565 MOVE                             R60 R28
      566 MOVE                             R61 R30
      567 MOVE                             R62 R33
      568 MOVE                             R63 R55
      569 MOVE                             R64 R34
      570 SETLIST                          R58 R59 6 [1]
      572 CALL                             R56 2 2
      573 GETTABLEKS                       R59 R56 K56 ["bottom"]
      575 GETTABLEKS                       R59 R59 K57 ["Offset"]
      577 GETTABLEKS                       R60 R56 K58 ["top"]
      579 GETTABLEKS                       R60 R60 K57 ["Offset"]
      581 ADD                              R58 R59 R60
      582 GETIMPORT                        R59 K61 [UDim2.new]
      584 LOADN                            R60 1
      585 LOADN                            R61 0
      586 LOADN                            R62 0
      587 ADD                              R63 R55 R58
      588 CALL                             R59 4 1
      589 GETUPVAL                         R60 4
      590 GETTABLEKS                       R60 R60 K54 ["useMemo"]
      592 NEWCLOSURE                       R61 P22
      593 CAPTURE                          VAL R5
      594 NEWTABLE                         R62 0 1
      596 MOVE                             R63 R5
      597 SETLIST                          R62 R63 1 [1]
      599 CALL                             R60 2 1
      600 GETUPVAL                         R61 4
      601 GETTABLEKS                       R61 R61 K54 ["useMemo"]
      603 NEWCLOSURE                       R62 P23
      604 CAPTURE                          VAL R5
      605 NEWTABLE                         R63 0 1
      607 MOVE                             R64 R5
      608 SETLIST                          R63 R64 1 [1]
      610 CALL                             R61 2 1
      611 GETUPVAL                         R62 4
      612 GETTABLEKS                       R62 R62 K42 ["useCallback"]
      614 NEWCLOSURE                       R63 P24
      615 CAPTURE                          VAL R9
      616 CAPTURE                          VAL R8
      617 CAPTURE                          UPVAL U13
      618 CAPTURE                          VAL R56
      619 NEWTABLE                         R64 0 1
      621 MOVE                             R65 R56
      622 SETLIST                          R64 R65 1 [1]
      624 CALL                             R62 2 1
      625 GETUPVAL                         R63 4
      626 GETTABLEKS                       R63 R63 K42 ["useCallback"]
      628 NEWCLOSURE                       R64 P25
      629 CAPTURE                          VAL R9
      630 CAPTURE                          VAL R13
      631 NEWTABLE                         R65 0 0
      633 CALL                             R63 2 1
      634 GETUPVAL                         R64 4
      635 GETTABLEKS                       R64 R64 K42 ["useCallback"]
      637 NEWCLOSURE                       R65 P26
      638 CAPTURE                          VAL R10
      639 NEWTABLE                         R66 0 0
      641 CALL                             R64 2 1
      642 GETUPVAL                         R65 4
      643 GETTABLEKS                       R65 R65 K42 ["useCallback"]
      645 NEWCLOSURE                       R66 P27
      646 CAPTURE                          VAL R13
      647 NEWTABLE                         R67 0 0
      649 CALL                             R65 2 1
      650 GETUPVAL                         R66 4
      651 GETTABLEKS                       R66 R66 K54 ["useMemo"]
      653 NEWCLOSURE                       R67 P28
      654 CAPTURE                          VAL R2
      655 CAPTURE                          UPVAL U4
      656 CAPTURE                          VAL R51
      657 CAPTURE                          VAL R52
      658 CAPTURE                          VAL R53
      659 CAPTURE                          VAL R16
      660 NEWTABLE                         R68 0 5
      662 MOVE                             R69 R51
      663 MOVE                             R70 R52
      664 MOVE                             R71 R53
      665 MOVE                             R72 R16
      666 GETTABLEKS                       R73 R2 K38 ["isDisabled"]
      668 SETLIST                          R68 R69 5 [1]
      670 CALL                             R66 2 1
      671 GETUPVAL                         R67 14
      672 GETTABLEKS                       R69 R2 K62 ["horizontalPadding"]
      674 JUMPIFNOT                        R69 ; [+11]
      675 GETTABLEKS                       R68 R2 K62 ["horizontalPadding"]
      677 GETTABLEKS                       R68 R68 K63 ["left"]
      679 JUMPIF                           R68 ; [+11]
      680 GETIMPORT                        R68 K65 [UDim.new]
      682 LOADN                            R69 0
      683 LOADN                            R70 0
      684 CALL                             R68 2 1
      685 JUMP                             ; [+5]
      686 GETIMPORT                        R68 K65 [UDim.new]
      688 LOADN                            R69 0
      689 LOADN                            R70 0
      690 CALL                             R68 2 1
      691 CALL                             R67 1 1
      692 GETUPVAL                         R68 14
      693 GETTABLEKS                       R70 R2 K62 ["horizontalPadding"]
      695 JUMPIFNOT                        R70 ; [+11]
      696 GETTABLEKS                       R69 R2 K62 ["horizontalPadding"]
      698 GETTABLEKS                       R69 R69 K66 ["right"]
      700 JUMPIF                           R69 ; [+11]
      701 GETIMPORT                        R69 K65 [UDim.new]
      703 LOADN                            R70 0
      704 LOADN                            R71 0
      705 CALL                             R69 2 1
      706 JUMP                             ; [+5]
      707 GETIMPORT                        R69 K65 [UDim.new]
      709 LOADN                            R70 0
      710 LOADN                            R71 0
      711 CALL                             R69 2 1
      712 CALL                             R68 1 1
      713 GETUPVAL                         R70 0
      714 GETTABLEKS                       R70 R70 K45 ["FoundationInternalTextInputClearButton"]
      716 JUMPIFNOT                        R70 ; [+21]
      717 GETUPVAL                         R69 4
      718 GETTABLEKS                       R69 R69 K54 ["useMemo"]
      720 NEWCLOSURE                       R70 P29
      721 CAPTURE                          VAL R2
      722 CAPTURE                          VAL R20
      723 CAPTURE                          VAL R3
      724 NEWTABLE                         R71 0 3
      726 GETTABLEKS                       R72 R2 K67 ["hasClearButton"]
      728 GETTABLEKS                       R73 R20 K55 ["minHeight"]
      730 GETTABLEKS                       R74 R3 K29 ["Stroke"]
      732 GETTABLEKS                       R74 R74 K30 ["Standard"]
      734 SETLIST                          R71 R72 3 [1]
      736 CALL                             R69 2 1
      737 JUMP                             ; [+1]
      738 LOADNIL                          R69
      739 GETUPVAL                         R71 0
      740 GETTABLEKS                       R71 R71 K7 ["FoundationTextInputFocusBehavior"]
      742 JUMPIFNOT                        R71 ; [+7]
      743 GETUPVAL                         R70 15
      744 GETTABLEKS                       R70 R70 K68 ["useComposedRef"]
      746 MOVE                             R71 R7
      747 MOVE                             R72 R64
      748 CALL                             R70 2 1
      749 JUMP                             ; [+1]
      750 LOADNIL                          R70
      751 GETUPVAL                         R71 4
      752 GETTABLEKS                       R71 R71 K69 ["createElement"]
      754 GETUPVAL                         R72 16
      755 GETUPVAL                         R73 17
      756 MOVE                             R74 R2
      757 DUPTABLE                         R75 K81 [{"Size", "selection", "cursor", "stroke", "cornerRadius", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      758 GETIMPORT                        R76 K61 [UDim2.new]
      760 LOADN                            R77 1
      761 LOADN                            R78 0
      762 LOADN                            R79 0
      763 MOVE                             R80 R57
      764 CALL                             R76 4 1
      765 SETTABLEKS                       R76 R75 K70 ["Size"]
      767 DUPTABLE                         R76 K86 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      768 GETUPVAL                         R78 0
      769 GETTABLEKS                       R78 R78 K0 ["FoundationInputSelectionProps"]
      771 JUMPIFNOT                        R78 ; [+7]
      772 GETTABLEKS                       R77 R2 K1 ["Selectable"]
      774 JUMPIFNOT                        R77 ; [+7]
      775 GETTABLEKS                       R78 R2 K38 ["isDisabled"]
      777 NOT                              R77 R78
      778 JUMP                             ; [+3]
      779 GETTABLEKS                       R78 R2 K38 ["isDisabled"]
      781 NOT                              R77 R78
      782 SETTABLEKS                       R77 R76 K1 ["Selectable"]
      784 GETUPVAL                         R78 0
      785 GETTABLEKS                       R78 R78 K0 ["FoundationInputSelectionProps"]
      787 JUMPIFNOT                        R78 ; [+3]
      788 GETTABLEKS                       R77 R2 K82 ["NextSelectionUp"]
      790 JUMP                             ; [+1]
      791 LOADNIL                          R77
      792 SETTABLEKS                       R77 R76 K82 ["NextSelectionUp"]
      794 GETUPVAL                         R78 0
      795 GETTABLEKS                       R78 R78 K0 ["FoundationInputSelectionProps"]
      797 JUMPIFNOT                        R78 ; [+3]
      798 GETTABLEKS                       R77 R2 K83 ["NextSelectionDown"]
      800 JUMP                             ; [+1]
      801 LOADNIL                          R77
      802 SETTABLEKS                       R77 R76 K83 ["NextSelectionDown"]
      804 GETUPVAL                         R78 0
      805 GETTABLEKS                       R78 R78 K0 ["FoundationInputSelectionProps"]
      807 JUMPIFNOT                        R78 ; [+3]
      808 GETTABLEKS                       R77 R2 K84 ["NextSelectionLeft"]
      810 JUMP                             ; [+1]
      811 LOADNIL                          R77
      812 SETTABLEKS                       R77 R76 K84 ["NextSelectionLeft"]
      814 GETUPVAL                         R78 0
      815 GETTABLEKS                       R78 R78 K0 ["FoundationInputSelectionProps"]
      817 JUMPIFNOT                        R78 ; [+3]
      818 GETTABLEKS                       R77 R2 K85 ["NextSelectionRight"]
      820 JUMP                             ; [+1]
      821 LOADNIL                          R77
      822 SETTABLEKS                       R77 R76 K85 ["NextSelectionRight"]
      824 SETTABLEKS                       R76 R75 K71 ["selection"]
      826 SETTABLEKS                       R54 R75 K72 ["cursor"]
      828 GETTABLEKS                       R77 R21 K87 ["strokeStyle"]
      830 JUMPIFNOT                        R77 ; [+43]
      831 GETTABLEKS                       R77 R21 K88 ["strokeThickness"]
      833 JUMPIFNOT                        R77 ; [+40]
      834 DUPTABLE                         R76 K92 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      835 GETTABLEKS                       R77 R21 K87 ["strokeStyle"]
      837 GETTABLEKS                       R77 R77 K93 ["Color3"]
      839 SETTABLEKS                       R77 R76 K35 ["Color"]
      841 GETTABLEKS                       R78 R2 K38 ["isDisabled"]
      843 JUMPIFNOT                        R78 ; [+10]
      844 GETUPVAL                         R77 18
      845 GETTABLEKS                       R78 R21 K87 ["strokeStyle"]
      847 GETTABLEKS                       R78 R78 K89 ["Transparency"]
      849 GETUPVAL                         R79 19
      850 GETTABLEKS                       R79 R79 K94 ["DISABLED_TRANSPARENCY"]
      852 CALL                             R77 2 1
      853 JUMP                             ; [+4]
      854 GETTABLEKS                       R77 R21 K87 ["strokeStyle"]
      856 GETTABLEKS                       R77 R77 K89 ["Transparency"]
      858 SETTABLEKS                       R77 R76 K89 ["Transparency"]
      860 GETTABLEKS                       R77 R21 K88 ["strokeThickness"]
      862 SETTABLEKS                       R77 R76 K90 ["Thickness"]
      864 JUMPIF                           R16 ; [+1]
      865 JUMPIFNOT                        R14 ; [+3]
      866 GETIMPORT                        R77 K96 [Enum.BorderStrokePosition.Center]
      868 JUMP                             ; [+2]
      869 GETIMPORT                        R77 K98 [Enum.BorderStrokePosition.Inner]
      871 SETTABLEKS                       R77 R76 K91 ["BorderStrokePosition"]
      873 JUMP                             ; [+1]
      874 LOADNIL                          R76
      875 SETTABLEKS                       R76 R75 K73 ["stroke"]
      877 GETTABLEKS                       R77 R2 K16 ["radius"]
      879 GETUPVAL                         R78 20
      880 GETTABLEKS                       R78 R78 K99 ["Circle"]
      882 JUMPIFNOTEQ                      R77 R78 ; [+13]
      884 GETIMPORT                        R76 K65 [UDim.new]
      886 LOADN                            R77 0
      887 GETTABLEKS                       R80 R20 K55 ["minHeight"]
      889 DIVK                             R79 R80 K31 [2]
      890 FASTCALL1                        MATH_CEIL R79 ; [+2]
      891 GETIMPORT                        R78 K33 [math.ceil]
      893 CALL                             R78 1 1
      894 CALL                             R76 2 1
      895 JUMP                             ; [+1]
      896 LOADNIL                          R76
      897 SETTABLEKS                       R76 R75 K74 ["cornerRadius"]
      899 DUPTABLE                         R76 K100 [{"left", "right", "top", "bottom"}]
      900 NEWCLOSURE                       R79 P30
      901 CAPTURE                          VAL R27
      902 NAMECALL                         R77 R67 K101 ["map"]
      904 CALL                             R77 2 1
      905 SETTABLEKS                       R77 R76 K63 ["left"]
      907 GETUPVAL                         R78 0
      908 GETTABLEKS                       R78 R78 K45 ["FoundationInternalTextInputClearButton"]
      910 JUMPIFNOT                        R78 ; [+13]
      911 GETTABLEKS                       R78 R2 K102 ["trailingElement"]
      913 JUMPIFNOTEQKNIL                  R78 ; [+10]
      915 GETTABLEKS                       R78 R2 K67 ["hasClearButton"]
      917 JUMPIFNOT                        R78 ; [+6]
      918 GETIMPORT                        R77 K65 [UDim.new]
      920 LOADN                            R78 0
      921 MOVE                             R79 R27
      922 CALL                             R77 2 1
      923 JUMP                             ; [+5]
      924 NEWCLOSURE                       R79 P31
      925 CAPTURE                          VAL R27
      926 NAMECALL                         R77 R68 K101 ["map"]
      928 CALL                             R77 2 1
      929 SETTABLEKS                       R77 R76 K66 ["right"]
      931 GETIMPORT                        R77 K65 [UDim.new]
      933 LOADN                            R78 0
      934 MOVE                             R79 R27
      935 CALL                             R77 2 1
      936 SETTABLEKS                       R77 R76 K58 ["top"]
      938 GETIMPORT                        R77 K65 [UDim.new]
      940 LOADN                            R78 0
      941 MOVE                             R79 R27
      942 CALL                             R77 2 1
      943 SETTABLEKS                       R77 R76 K56 ["bottom"]
      945 SETTABLEKS                       R76 R75 K75 ["padding"]
      947 GETTABLEKS                       R77 R2 K38 ["isDisabled"]
      949 JUMPIF                           R77 ; [+2]
      950 MOVE                             R76 R38
      951 JUMP                             ; [+1]
      952 LOADNIL                          R76
      953 SETTABLEKS                       R76 R75 K76 ["onActivated"]
      955 SETTABLEKS                       R50 R75 K77 ["onStateChanged"]
      957 GETTABLEKS                       R76 R2 K38 ["isDisabled"]
      959 SETTABLEKS                       R76 R75 K38 ["isDisabled"]
      961 GETTABLEKS                       R77 R21 K103 ["bgStyle"]
      963 JUMPIFNOT                        R77 ; [+23]
      964 GETUPVAL                         R76 9
      965 DUPTABLE                         R77 K104 [{"Color3", "Transparency"}]
      966 GETTABLEKS                       R78 R21 K103 ["bgStyle"]
      968 GETTABLEKS                       R78 R78 K93 ["Color3"]
      970 SETTABLEKS                       R78 R77 K93 ["Color3"]
      972 GETTABLEKS                       R79 R2 K105 ["backgroundGradient"]
      974 JUMPIFNOT                        R79 ; [+2]
      975 LOADN                            R78 0
      976 JUMP                             ; [+4]
      977 GETTABLEKS                       R78 R21 K103 ["bgStyle"]
      979 GETTABLEKS                       R78 R78 K89 ["Transparency"]
      981 SETTABLEKS                       R78 R77 K89 ["Transparency"]
      983 GETTABLEKS                       R78 R2 K38 ["isDisabled"]
      985 CALL                             R76 2 1
      986 JUMP                             ; [+1]
      987 LOADNIL                          R76
      988 SETTABLEKS                       R76 R75 K78 ["backgroundStyle"]
      990 DUPTABLE                         R76 K107 [{"affordance"}]
      991 GETUPVAL                         R77 21
      992 GETTABLEKS                       R77 R77 K108 ["None"]
      994 SETTABLEKS                       R77 R76 K106 ["affordance"]
      996 SETTABLEKS                       R76 R75 K79 ["stateLayer"]
      998 GETTABLEKS                       R76 R21 K24 ["tag"]
     1000 SETTABLEKS                       R76 R75 K24 ["tag"]
     1002 LOADK                            R77 K109 ["%*--outer-container"]
     1003 GETTABLEKS                       R79 R2 K80 ["testId"]
     1005 NAMECALL                         R77 R77 K110 ["format"]
     1007 CALL                             R77 2 1
     1008 MOVE                             R76 R77
     1009 SETTABLEKS                       R76 R75 K80 ["testId"]
     1011 CALL                             R73 2 1
     1012 DUPTABLE                         R74 K117 [{"DragDetector", "Background", "Leading", "TextBoxWrapper", "Clear", "Trailing"}]
     1013 SETTABLEKS                       R66 R74 K111 ["DragDetector"]
     1015 GETTABLEKS                       R75 R2 K105 ["backgroundGradient"]
     1017 SETTABLEKS                       R75 R74 K112 ["Background"]
     1019 GETTABLEKS                       R76 R2 K118 ["leadingElement"]
     1021 JUMPIFNOT                        R76 ; [+34]
     1022 GETUPVAL                         R75 4
     1023 GETTABLEKS                       R75 R75 K69 ["createElement"]
     1025 GETUPVAL                         R76 16
     1026 DUPTABLE                         R77 K121 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
     1027 GETTABLEKS                       R79 R2 K38 ["isDisabled"]
     1029 JUMPIFNOT                        R79 ; [+4]
     1030 GETUPVAL                         R78 19
     1031 GETTABLEKS                       R78 R78 K94 ["DISABLED_TRANSPARENCY"]
     1033 JUMP                             ; [+1]
     1034 LOADNIL                          R78
     1035 SETTABLEKS                       R78 R77 K119 ["GroupTransparency"]
     1037 LOADN                            R78 1
     1038 SETTABLEKS                       R78 R77 K120 ["LayoutOrder"]
     1040 LOADK                            R78 K122 ["size-0-full auto-x"]
     1041 SETTABLEKS                       R78 R77 K24 ["tag"]
     1043 LOADK                            R79 K123 ["%*--leading"]
     1044 GETTABLEKS                       R81 R2 K80 ["testId"]
     1046 NAMECALL                         R79 R79 K110 ["format"]
     1048 CALL                             R79 2 1
     1049 MOVE                             R78 R79
     1050 SETTABLEKS                       R78 R77 K80 ["testId"]
     1052 GETTABLEKS                       R78 R2 K118 ["leadingElement"]
     1054 CALL                             R75 3 1
     1055 JUMP                             ; [+1]
     1056 LOADNIL                          R75
     1057 SETTABLEKS                       R75 R74 K113 ["Leading"]
     1059 GETUPVAL                         R75 4
     1060 GETTABLEKS                       R75 R75 K69 ["createElement"]
     1062 JUMPIFNOT                        R5 ; [+2]
     1063 GETUPVAL                         R76 22
     1064 JUMP                             ; [+1]
     1065 GETUPVAL                         R76 16
     1066 DUPTABLE                         R77 K128 [{"LayoutOrder", "selection", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
     1067 LOADN                            R78 2
     1068 SETTABLEKS                       R78 R77 K120 ["LayoutOrder"]
     1070 GETUPVAL                         R79 0
     1071 GETTABLEKS                       R79 R79 K129 ["FoundationTextAreaFixDoubleSelection"]
     1073 JUMPIFNOT                        R79 ; [+5]
     1074 DUPTABLE                         R78 K130 [{"Selectable"}]
     1075 LOADB                            R79 0
     1076 SETTABLEKS                       R79 R78 K1 ["Selectable"]
     1078 JUMP                             ; [+1]
     1079 LOADNIL                          R78
     1080 SETTABLEKS                       R78 R77 K71 ["selection"]
     1082 SETTABLEKS                       R61 R77 K124 ["scroll"]
     1084 SETTABLEKS                       R60 R77 K125 ["layout"]
     1086 JUMPIFNOT                        R5 ; [+2]
     1087 MOVE                             R78 R65
     1088 JUMP                             ; [+1]
     1089 LOADNIL                          R78
     1090 SETTABLEKS                       R78 R77 K126 ["onCanvasPositionChanged"]
     1092 JUMPIFNOT                        R5 ; [+2]
     1093 MOVE                             R78 R63
     1094 JUMP                             ; [+1]
     1095 LOADNIL                          R78
     1096 SETTABLEKS                       R78 R77 K127 ["scrollingFrameRef"]
     1098 LOADK                            R78 K131 ["fill size-full clip"]
     1099 SETTABLEKS                       R78 R77 K24 ["tag"]
     1101 DUPTABLE                         R78 K134 [{"TextBox", "MobileTextBox"}]
     1102 JUMPIF                           R24 ; [+126]
     1103 GETUPVAL                         R79 4
     1104 GETTABLEKS                       R79 R79 K69 ["createElement"]
     1106 GETUPVAL                         R80 23
     1107 DUPTABLE                         R81 K146 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged", "onInputChanged", "onInputEnded"}]
     1108 GETTABLEKS                       R82 R2 K9 ["text"]
     1110 SETTABLEKS                       R82 R81 K9 ["text"]
     1112 GETTABLEKS                       R82 R2 K135 ["placeholder"]
     1114 SETTABLEKS                       R82 R81 K135 ["placeholder"]
     1116 GETTABLEKS                       R82 R2 K136 ["textInputType"]
     1118 SETTABLEKS                       R82 R81 K136 ["textInputType"]
     1120 SETTABLEKS                       R32 R81 K39 ["fontStyle"]
     1122 SETTABLEKS                       R31 R81 K137 ["textStyle"]
     1124 SETTABLEKS                       R5 R81 K138 ["isMultiLine"]
     1126 GETTABLEKS                       R82 R2 K38 ["isDisabled"]
     1128 SETTABLEKS                       R82 R81 K38 ["isDisabled"]
     1130 SETTABLEKS                       R6 R81 K139 ["ref"]
     1132 LOADK                            R83 K147 ["%* data-testid=%*--textbox"]
     1133 ORK                              R85 R22 K8 [""]
     1134 GETTABLEKS                       R86 R2 K80 ["testId"]
     1136 NAMECALL                         R83 R83 K110 ["format"]
     1138 CALL                             R83 3 1
     1139 MOVE                             R82 R83
     1140 SETTABLEKS                       R82 R81 K24 ["tag"]
     1142 JUMPIFNOT                        R5 ; [+2]
     1143 MOVE                             R82 R59
     1144 JUMP                             ; [+1]
     1145 LOADNIL                          R82
     1146 SETTABLEKS                       R82 R81 K70 ["Size"]
     1148 GETUPVAL                         R83 0
     1149 GETTABLEKS                       R83 R83 K148 ["FoundationNumberInputBindableValue"]
     1151 JUMPIFNOT                        R83 ; [+8]
     1152 GETUPVAL                         R82 24
     1153 GETTABLEKS                       R83 R2 K9 ["text"]
     1155 NEWCLOSURE                       R84 P32
     1156 CAPTURE                          VAL R5
     1157 CAPTURE                          VAL R24
     1158 CALL                             R82 2 1
     1159 JUMP                             ; [+10]
     1160 JUMPIFNOT                        R5 ; [+8]
     1161 JUMPIF                           R24 ; [+7]
     1162 GETTABLEKS                       R83 R2 K9 ["text"]
     1164 JUMPIFEQKS                       R83 K8 [""] ; [+4]
     1166 GETIMPORT                        R82 K151 [Enum.AutomaticSize.Y]
     1168 JUMP                             ; [+1]
     1169 LOADNIL                          R82
     1170 SETTABLEKS                       R82 R81 K140 ["automaticSize"]
     1172 SETTABLEKS                       R56 R81 K75 ["padding"]
     1174 SETTABLEKS                       R46 R81 K141 ["onFocusGained"]
     1176 JUMPIFNOT                        R5 ; [+3]
     1177 JUMPIFNOT                        R26 ; [+2]
     1178 LOADNIL                          R82
     1179 JUMP                             ; [+1]
     1180 MOVE                             R82 R49
     1181 SETTABLEKS                       R82 R81 K50 ["onFocusLost"]
     1183 SETTABLEKS                       R44 R81 K142 ["onTextChanged"]
     1185 JUMPIFNOT                        R5 ; [+2]
     1186 MOVE                             R82 R62
     1187 JUMP                             ; [+1]
     1188 LOADNIL                          R82
     1189 SETTABLEKS                       R82 R81 K143 ["onCursorPositionChanged"]
     1191 SETTABLEKS                       R47 R81 K144 ["onInputChanged"]
     1193 SETTABLEKS                       R48 R81 K145 ["onInputEnded"]
     1195 DUPTABLE                         R82 K153 [{"DragDetector", "BoundsChecker"}]
     1196 SETTABLEKS                       R66 R82 K111 ["DragDetector"]
     1198 JUMPIFNOT                        R5 ; [+25]
     1199 GETUPVAL                         R83 4
     1200 GETTABLEKS                       R83 R83 K69 ["createElement"]
     1202 GETUPVAL                         R84 23
     1203 DUPTABLE                         R85 K155 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
     1204 LOADB                            R86 1
     1205 SETTABLEKS                       R86 R85 K154 ["isBoundsChecker"]
     1207 SETTABLEKS                       R32 R85 K39 ["fontStyle"]
     1209 SETTABLEKS                       R31 R85 K137 ["textStyle"]
     1211 GETIMPORT                        R86 K61 [UDim2.new]
     1213 LOADN                            R87 1
     1214 LOADN                            R88 0
     1215 LOADN                            R89 1
     1216 MOVE                             R90 R58
     1217 CALL                             R86 4 1
     1218 SETTABLEKS                       R86 R85 K70 ["Size"]
     1220 SETTABLEKS                       R8 R85 K139 ["ref"]
     1222 CALL                             R83 2 1
     1223 JUMP                             ; [+1]
     1224 LOADNIL                          R83
     1225 SETTABLEKS                       R83 R82 K152 ["BoundsChecker"]
     1227 CALL                             R79 3 1
     1228 JUMP                             ; [+1]
     1229 LOADNIL                          R79
     1230 SETTABLEKS                       R79 R78 K132 ["TextBox"]
     1232 JUMPIFNOT                        R5 ; [+68]
     1233 JUMPIFNOT                        R24 ; [+67]
     1234 GETUPVAL                         R79 4
     1235 GETTABLEKS                       R79 R79 K69 ["createElement"]
     1237 GETUPVAL                         R80 23
     1238 DUPTABLE                         R81 K156 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1239 GETTABLEKS                       R82 R2 K9 ["text"]
     1241 SETTABLEKS                       R82 R81 K9 ["text"]
     1243 GETTABLEKS                       R82 R2 K135 ["placeholder"]
     1245 SETTABLEKS                       R82 R81 K135 ["placeholder"]
     1247 GETTABLEKS                       R82 R2 K136 ["textInputType"]
     1249 SETTABLEKS                       R82 R81 K136 ["textInputType"]
     1251 SETTABLEKS                       R32 R81 K39 ["fontStyle"]
     1253 SETTABLEKS                       R31 R81 K137 ["textStyle"]
     1255 SETTABLEKS                       R5 R81 K138 ["isMultiLine"]
     1257 GETTABLEKS                       R82 R2 K38 ["isDisabled"]
     1259 SETTABLEKS                       R82 R81 K38 ["isDisabled"]
     1261 SETTABLEKS                       R56 R81 K75 ["padding"]
     1263 GETUPVAL                         R83 0
     1264 GETTABLEKS                       R83 R83 K7 ["FoundationTextInputFocusBehavior"]
     1266 JUMPIFNOT                        R83 ; [+2]
     1267 MOVE                             R82 R70
     1268 JUMP                             ; [+1]
     1269 MOVE                             R82 R64
     1270 SETTABLEKS                       R82 R81 K139 ["ref"]
     1272 LOADK                            R83 K157 ["%* data-testid=%*--mobile-textbox"]
     1273 ORK                              R85 R22 K8 [""]
     1274 GETTABLEKS                       R86 R2 K80 ["testId"]
     1276 NAMECALL                         R83 R83 K110 ["format"]
     1278 CALL                             R83 3 1
     1279 MOVE                             R82 R83
     1280 SETTABLEKS                       R82 R81 K24 ["tag"]
     1282 SETTABLEKS                       R59 R81 K70 ["Size"]
     1284 JUMPIFNOT                        R5 ; [+3]
     1285 JUMPIFNOT                        R26 ; [+2]
     1286 MOVE                             R82 R49
     1287 JUMP                             ; [+1]
     1288 LOADNIL                          R82
     1289 SETTABLEKS                       R82 R81 K50 ["onFocusLost"]
     1291 SETTABLEKS                       R44 R81 K142 ["onTextChanged"]
     1293 JUMPIFNOT                        R5 ; [+2]
     1294 MOVE                             R82 R62
     1295 JUMP                             ; [+1]
     1296 LOADNIL                          R82
     1297 SETTABLEKS                       R82 R81 K143 ["onCursorPositionChanged"]
     1299 CALL                             R79 2 1
     1300 JUMP                             ; [+1]
     1301 LOADNIL                          R79
     1302 SETTABLEKS                       R79 R78 K133 ["MobileTextBox"]
     1304 CALL                             R75 3 1
     1305 SETTABLEKS                       R75 R74 K114 ["TextBoxWrapper"]
     1307 GETUPVAL                         R76 0
     1308 GETTABLEKS                       R76 R76 K45 ["FoundationInternalTextInputClearButton"]
     1310 JUMPIFNOT                        R76 ; [+98]
     1311 GETTABLEKS                       R76 R2 K67 ["hasClearButton"]
     1313 JUMPIFNOT                        R76 ; [+95]
     1314 GETUPVAL                         R75 4
     1315 GETTABLEKS                       R75 R75 K69 ["createElement"]
     1317 GETUPVAL                         R76 16
     1318 DUPTABLE                         R77 K159 [{"isDisabled", "GroupTransparency", "LayoutOrder", "Visible", "tag"}]
     1319 GETTABLEKS                       R78 R2 K38 ["isDisabled"]
     1321 SETTABLEKS                       R78 R77 K38 ["isDisabled"]
     1323 GETTABLEKS                       R79 R2 K38 ["isDisabled"]
     1325 JUMPIFNOT                        R79 ; [+4]
     1326 GETUPVAL                         R78 19
     1327 GETTABLEKS                       R78 R78 K94 ["DISABLED_TRANSPARENCY"]
     1329 JUMP                             ; [+1]
     1330 LOADNIL                          R78
     1331 SETTABLEKS                       R78 R77 K119 ["GroupTransparency"]
     1333 LOADN                            R78 3
     1334 SETTABLEKS                       R78 R77 K120 ["LayoutOrder"]
     1336 GETUPVAL                         R78 24
     1337 GETTABLEKS                       R79 R2 K9 ["text"]
     1339 DUPCLOSURE                       R80 K160 [PROTO_35]
     1340 CALL                             R78 2 1
     1341 SETTABLEKS                       R78 R77 K158 ["Visible"]
     1343 GETTABLEKS                       R78 R18 K161 ["clearButton"]
     1345 GETTABLEKS                       R78 R78 K24 ["tag"]
     1347 SETTABLEKS                       R78 R77 K24 ["tag"]
     1349 DUPTABLE                         R78 K163 [{"ClearButton"}]
     1350 GETUPVAL                         R79 4
     1351 GETTABLEKS                       R79 R79 K69 ["createElement"]
     1353 GETUPVAL                         R80 16
     1354 DUPTABLE                         R81 K165 [{"onActivated", "padding", "Position", "stateLayer", "tag", "testId"}]
     1355 SETTABLEKS                       R43 R81 K76 ["onActivated"]
     1357 GETIMPORT                        R82 K65 [UDim.new]
     1359 LOADN                            R83 0
     1360 GETTABLEKS                       R84 R18 K161 ["clearButton"]
     1362 GETTABLEKS                       R84 R84 K75 ["padding"]
     1364 CALL                             R82 2 1
     1365 SETTABLEKS                       R82 R81 K75 ["padding"]
     1367 SETTABLEKS                       R69 R81 K164 ["Position"]
     1369 DUPTABLE                         R82 K107 [{"affordance"}]
     1370 GETUPVAL                         R83 21
     1371 GETTABLEKS                       R83 R83 K108 ["None"]
     1373 SETTABLEKS                       R83 R82 K106 ["affordance"]
     1375 SETTABLEKS                       R82 R81 K79 ["stateLayer"]
     1377 LOADK                            R82 K166 ["anchor-center-left auto-xy"]
     1378 SETTABLEKS                       R82 R81 K24 ["tag"]
     1380 LOADK                            R83 K167 ["%*--clear-button"]
     1381 GETTABLEKS                       R85 R2 K80 ["testId"]
     1383 NAMECALL                         R83 R83 K110 ["format"]
     1385 CALL                             R83 2 1
     1386 MOVE                             R82 R83
     1387 SETTABLEKS                       R82 R81 K80 ["testId"]
     1389 DUPTABLE                         R82 K169 [{"Icon"}]
     1390 GETUPVAL                         R83 4
     1391 GETTABLEKS                       R83 R83 K69 ["createElement"]
     1393 GETUPVAL                         R84 25
     1394 DUPTABLE                         R85 K171 [{"name"}]
     1395 GETTABLEKS                       R86 R18 K161 ["clearButton"]
     1397 GETTABLEKS                       R86 R86 K172 ["icon"]
     1399 SETTABLEKS                       R86 R85 K170 ["name"]
     1401 CALL                             R83 2 1
     1402 SETTABLEKS                       R83 R82 K168 ["Icon"]
     1404 CALL                             R79 3 1
     1405 SETTABLEKS                       R79 R78 K162 ["ClearButton"]
     1407 CALL                             R75 3 1
     1408 JUMP                             ; [+1]
     1409 LOADNIL                          R75
     1410 SETTABLEKS                       R75 R74 K115 ["Clear"]
     1412 GETTABLEKS                       R76 R2 K102 ["trailingElement"]
     1414 JUMPIFNOT                        R76 ; [+40]
     1415 GETUPVAL                         R75 4
     1416 GETTABLEKS                       R75 R75 K69 ["createElement"]
     1418 GETUPVAL                         R76 16
     1419 DUPTABLE                         R77 K121 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
     1420 GETTABLEKS                       R79 R2 K38 ["isDisabled"]
     1422 JUMPIFNOT                        R79 ; [+4]
     1423 GETUPVAL                         R78 19
     1424 GETTABLEKS                       R78 R78 K94 ["DISABLED_TRANSPARENCY"]
     1426 JUMP                             ; [+1]
     1427 LOADNIL                          R78
     1428 SETTABLEKS                       R78 R77 K119 ["GroupTransparency"]
     1430 GETUPVAL                         R79 0
     1431 GETTABLEKS                       R79 R79 K45 ["FoundationInternalTextInputClearButton"]
     1433 JUMPIFNOT                        R79 ; [+2]
     1434 LOADN                            R78 4
     1435 JUMP                             ; [+1]
     1436 LOADN                            R78 3
     1437 SETTABLEKS                       R78 R77 K120 ["LayoutOrder"]
     1439 LOADK                            R78 K122 ["size-0-full auto-x"]
     1440 SETTABLEKS                       R78 R77 K24 ["tag"]
     1442 LOADK                            R79 K173 ["%*--trailing"]
     1443 GETTABLEKS                       R81 R2 K80 ["testId"]
     1445 NAMECALL                         R79 R79 K110 ["format"]
     1447 CALL                             R79 2 1
     1448 MOVE                             R78 R79
     1449 SETTABLEKS                       R78 R77 K80 ["testId"]
     1451 GETTABLEKS                       R78 R2 K102 ["trailingElement"]
     1453 CALL                             R75 3 1
     1454 JUMP                             ; [+1]
     1455 LOADNIL                          R75
     1456 SETTABLEKS                       R75 R74 K116 ["Trailing"]
     1458 CALL                             R71 3 -1
     1459 RETURN                           R71 -1

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
      233 DUPCLOSURE                       R34 K54 [PROTO_36]
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
