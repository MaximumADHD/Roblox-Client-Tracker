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
       29 GETTABLEKS                       R7 R0 K8 ["fontStyle"]
       31 GETTABLEKS                       R7 R7 K9 ["Font"]
       33 SETTABLEKS                       R7 R6 K9 ["Font"]
       35 GETTABLEKS                       R7 R0 K8 ["fontStyle"]
       37 GETTABLEKS                       R7 R7 K10 ["FontSize"]
       39 SETTABLEKS                       R7 R6 K11 ["TextSize"]
       41 GETTABLEKS                       R7 R0 K8 ["fontStyle"]
       43 GETTABLEKS                       R7 R7 K12 ["LineHeight"]
       45 SETTABLEKS                       R7 R6 K12 ["LineHeight"]
       47 GETTABLEKS                       R8 R0 K13 ["textStyle"]
       49 JUMPIFNOT                        R8 ; [+5]
       50 GETTABLEKS                       R7 R0 K13 ["textStyle"]
       52 GETTABLEKS                       R7 R7 K14 ["Color3"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R7
       56 SETTABLEKS                       R7 R6 K15 ["TextColor3"]
       58 GETTABLEKS                       R8 R0 K13 ["textStyle"]
       60 JUMPIFNOT                        R8 ; [+5]
       61 GETTABLEKS                       R7 R0 K13 ["textStyle"]
       63 GETTABLEKS                       R7 R7 K16 ["Transparency"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R7
       67 SETTABLEKS                       R7 R6 K17 ["TextTransparency"]
       69 SETTABLEKS                       R3 R6 K18 ["MultiLine"]
       71 SETTABLEKS                       R3 R6 K19 ["TextWrapped"]
       73 JUMPIFNOT                        R3 ; [+3]
       74 GETIMPORT                        R7 K23 [Enum.TextYAlignment.Top]
       76 JUMP                             ; [+2]
       77 GETIMPORT                        R7 K25 [Enum.TextYAlignment.Center]
       79 SETTABLEKS                       R7 R6 K21 ["TextYAlignment"]
       81 JUMPIFNOT                        R2 ; [+2]
       82 LOADB                            R7 0
       83 JUMP                             ; [+3]
       84 GETTABLEKS                       R8 R0 K26 ["isDisabled"]
       86 NOT                              R7 R8
       87 SETTABLEKS                       R7 R6 K27 ["TextEditable"]
       89 GETTABLEKS                       R7 R0 K28 ["placeholder"]
       91 SETTABLEKS                       R7 R6 K29 ["PlaceholderText"]
       93 GETUPVAL                         R8 1
       94 CALL                             R8 0 1
       95 JUMPIFNOT                        R8 ; [+3]
       96 GETTABLEKS                       R7 R0 K30 ["textInputType"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R7
      100 SETTABLEKS                       R7 R6 K31 ["TextInputType"]
      102 GETTABLEKS                       R8 R0 K32 ["Size"]
      104 JUMPIFEQKNIL                     R8 ; [+4]
      106 GETTABLEKS                       R7 R0 K32 ["Size"]
      108 JUMP                             ; [+5]
      109 GETIMPORT                        R7 K35 [UDim2.fromScale]
      111 LOADN                            R8 1
      112 LOADN                            R9 1
      113 CALL                             R7 2 1
      114 SETTABLEKS                       R7 R6 K32 ["Size"]
      116 GETTABLEKS                       R7 R0 K36 ["automaticSize"]
      118 SETTABLEKS                       R7 R6 K37 ["AutomaticSize"]
      120 JUMPIFNOT                        R2 ; [+2]
      121 LOADNIL                          R7
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R7 R0 K38 ["text"]
      125 SETTABLEKS                       R7 R6 K39 ["Text"]
      127 SETTABLEKS                       R1 R6 K40 ["ref"]
      129 GETUPVAL                         R7 0
      130 GETTABLEKS                       R7 R7 K41 ["Tag"]
      132 GETTABLEKS                       R8 R0 K42 ["tag"]
      134 SETTABLE                         R8 R6 R7
      135 GETUPVAL                         R7 0
      136 GETTABLEKS                       R7 R7 K43 ["Change"]
      138 GETTABLEKS                       R7 R7 K39 ["Text"]
      140 GETTABLEKS                       R8 R0 K44 ["onTextChanged"]
      142 SETTABLE                         R8 R6 R7
      143 GETUPVAL                         R7 0
      144 GETTABLEKS                       R7 R7 K43 ["Change"]
      146 GETTABLEKS                       R7 R7 K45 ["CursorPosition"]
      148 GETTABLEKS                       R8 R0 K46 ["onCursorPositionChanged"]
      150 SETTABLE                         R8 R6 R7
      151 GETUPVAL                         R7 0
      152 GETTABLEKS                       R7 R7 K47 ["Event"]
      154 GETTABLEKS                       R7 R7 K48 ["Focused"]
      156 GETTABLEKS                       R8 R0 K49 ["onFocusGained"]
      158 SETTABLE                         R8 R6 R7
      159 GETUPVAL                         R7 0
      160 GETTABLEKS                       R7 R7 K47 ["Event"]
      162 GETTABLEKS                       R7 R7 K50 ["FocusLost"]
      164 GETTABLEKS                       R8 R0 K51 ["onFocusLost"]
      166 SETTABLE                         R8 R6 R7
      167 GETUPVAL                         R7 0
      168 GETTABLEKS                       R7 R7 K47 ["Event"]
      170 GETTABLEKS                       R7 R7 K52 ["InputChanged"]
      172 GETTABLEKS                       R8 R0 K53 ["onInputChanged"]
      174 SETTABLE                         R8 R6 R7
      175 GETUPVAL                         R7 0
      176 GETTABLEKS                       R7 R7 K47 ["Event"]
      178 GETTABLEKS                       R7 R7 K54 ["InputEnded"]
      180 GETTABLEKS                       R8 R0 K55 ["onInputEnded"]
      182 SETTABLE                         R8 R6 R7
      183 GETTABLEKS                       R8 R0 K56 ["padding"]
      185 JUMPIFNOT                        R8 ; [+14]
      186 DUPTABLE                         R7 K58 [{"Padding"}]
      187 GETUPVAL                         R8 0
      188 GETTABLEKS                       R8 R8 K2 ["createElement"]
      190 GETUPVAL                         R9 2
      191 DUPTABLE                         R10 K60 [{"value"}]
      192 GETTABLEKS                       R11 R0 K56 ["padding"]
      194 SETTABLEKS                       R11 R10 K59 ["value"]
      196 CALL                             R8 2 1
      197 SETTABLEKS                       R8 R7 K57 ["Padding"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R7
      201 GETTABLEKS                       R8 R0 K61 ["children"]
      203 CALL                             R4 4 -1
      204 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["SelectionStart"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 SETTABLEKS                       R0 R1 K1 ["SelectionStart"]
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["CursorPosition"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 SETTABLEKS                       R0 R1 K1 ["CursorPosition"]
       18 RETURN                           R0 0

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
       15 GETTABLEKS                       R2 R2 K1 ["current"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 1
       21 SETTABLEKS                       R1 R2 K1 ["current"]
       23 GETUPVAL                         R2 2
       24 JUMPIFNOT                        R2 ; [+9]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K1 ["current"]
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K1 ["current"]
       32 SETTABLEKS                       R1 R2 K3 ["Text"]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K4 ["onChanged"]
       37 MOVE                             R3 R1
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

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
       41 GETUPVAL                         R0 0
       42 GETTABLEKS                       R0 R0 K5 ["focusBehavior"]
       44 GETUPVAL                         R1 7
       45 GETTABLEKS                       R1 R1 K6 ["Clear"]
       47 JUMPIFNOTEQ                      R0 R1 ; [+26]
       49 GETUPVAL                         R1 4
       50 LOADK                            R2 K7 [""]
       51 SETTABLEKS                       R2 R1 K1 ["current"]
       53 GETUPVAL                         R1 3
       54 GETTABLEKS                       R1 R1 K1 ["current"]
       56 JUMPIFNOT                        R1 ; [+6]
       57 GETUPVAL                         R1 3
       58 GETTABLEKS                       R1 R1 K1 ["current"]
       60 LOADK                            R2 K7 [""]
       61 SETTABLEKS                       R2 R1 K3 ["Text"]
       63 GETUPVAL                         R1 8
       64 GETTABLEKS                       R1 R1 K1 ["current"]
       66 JUMPIFNOT                        R1 ; [+29]
       67 GETUPVAL                         R1 8
       68 GETTABLEKS                       R1 R1 K1 ["current"]
       70 LOADK                            R2 K7 [""]
       71 SETTABLEKS                       R2 R1 K3 ["Text"]
       73 RETURN                           R0 0
       74 GETUPVAL                         R1 7
       75 GETTABLEKS                       R1 R1 K8 ["Highlight"]
       77 JUMPIFNOTEQ                      R0 R1 ; [+18]
       79 GETUPVAL                         R1 9
       80 GETTABLEKS                       R1 R1 K9 ["FoundationTextInputHighlightFix"]
       82 JUMPIFNOT                        R1 ; [+5]
       83 GETUPVAL                         R1 10
       84 LOADB                            R2 1
       85 SETTABLEKS                       R2 R1 K1 ["current"]
       87 RETURN                           R0 0
       88 GETIMPORT                        R1 K12 [task.spawn]
       90 NEWCLOSURE                       R2 P0
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          UPVAL U11
       94 CAPTURE                          UPVAL U12
       95 CALL                             R1 1 0
       96 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOT                        R0 ; [+23]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 SETTABLEKS                       R1 R0 K1 ["Text"]
        6 GETUPVAL                         R1 0
        7 LOADK                            R2 K2 [""]
        8 SETTABLEKS                       R2 R1 K0 ["current"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["FoundationTextAreaDelayMobileFocus"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETIMPORT                        R1 K6 [task.delay]
       16 LOADN                            R2 0
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CALL                             R1 2 0
       20 RETURN                           R0 0
       21 NAMECALL                         R1 R0 K7 ["CaptureFocus"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 SETTABLEKS                       R2 R1 K1 ["current"]
        5 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_34:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+7]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+5]
        4 JUMPIFEQKS                       R0 K0 [""] ; [+4]
        6 GETIMPORT                        R1 K4 [Enum.AutomaticSize.Y]
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_36:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_37:
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
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K6 ["useRef"]
       38 LOADNIL                          R8
       39 CALL                             R7 1 1
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R8 R8 K6 ["useRef"]
       43 LOADNIL                          R9
       44 CALL                             R8 1 1
       45 GETUPVAL                         R9 4
       46 GETTABLEKS                       R9 R9 K6 ["useRef"]
       48 LOADNIL                          R10
       49 CALL                             R9 1 1
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R10 R10 K6 ["useRef"]
       53 LOADK                            R11 K7 [""]
       54 CALL                             R10 1 1
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R11 R11 K6 ["useRef"]
       58 GETUPVAL                         R12 5
       59 GETTABLEKS                       R13 R2 K8 ["text"]
       61 CALL                             R12 1 -1
       62 CALL                             R11 -1 1
       63 GETUPVAL                         R12 4
       64 GETTABLEKS                       R12 R12 K6 ["useRef"]
       66 LOADNIL                          R13
       67 CALL                             R12 1 1
       68 GETUPVAL                         R13 4
       69 GETTABLEKS                       R13 R13 K6 ["useRef"]
       71 GETIMPORT                        R14 K11 [Vector2.zero]
       73 CALL                             R13 1 1
       74 GETUPVAL                         R14 4
       75 GETTABLEKS                       R14 R14 K12 ["useState"]
       77 LOADB                            R15 0
       78 CALL                             R14 1 2
       79 GETUPVAL                         R16 4
       80 GETTABLEKS                       R16 R16 K12 ["useState"]
       82 LOADB                            R17 0
       83 CALL                             R16 1 2
       84 GETUPVAL                         R18 6
       85 MOVE                             R19 R3
       86 GETTABLEKS                       R20 R2 K13 ["size"]
       88 GETTABLEKS                       R21 R2 K14 ["variant"]
       90 GETTABLEKS                       R22 R2 K15 ["radius"]
       92 MOVE                             R23 R16
       93 MOVE                             R24 R14
       94 GETTABLEKS                       R25 R2 K16 ["hasError"]
       96 CALL                             R18 7 1
       97 GETTABLEKS                       R19 R18 K17 ["container"]
       99 GETUPVAL                         R20 7
      100 GETTABLEKS                       R21 R18 K18 ["textBox"]
      102 GETTABLEKS                       R21 R21 K19 ["tag"]
      104 CALL                             R20 1 1
      105 GETUPVAL                         R21 8
      106 CALL                             R21 0 1
      107 GETUPVAL                         R22 4
      108 GETTABLEKS                       R22 R22 K12 ["useState"]
      110 LOADB                            R23 0
      111 CALL                             R22 1 2
      112 GETIMPORT                        R25 K23 [Enum.PreferredInput.Touch]
      114 JUMPIFEQ                         R21 R25 ; [+2]
      116 LOADB                            R24 0 +1
      117 LOADB                            R24 1
      118 GETTABLEKS                       R25 R3 K24 ["Stroke"]
      120 GETTABLEKS                       R25 R25 K25 ["Standard"]
      122 FASTCALL1                        MATH_CEIL R25 ; [+3]
      123 MOVE                             R28 R25
      124 GETIMPORT                        R27 K28 [math.ceil]
      126 CALL                             R27 1 1
      127 MULK                             R26 R27 K26 [2]
      128 GETTABLEKS                       R27 R3 K24 ["Stroke"]
      130 GETTABLEKS                       R27 R27 K29 ["Thick"]
      132 FASTCALL1                        MATH_CEIL R27 ; [+3]
      133 MOVE                             R30 R27
      134 GETIMPORT                        R29 K28 [math.ceil]
      136 CALL                             R29 1 1
      137 MULK                             R28 R29 K26 [2]
      138 GETUPVAL                         R29 9
      139 GETTABLEKS                       R30 R3 K30 ["Color"]
      141 GETTABLEKS                       R30 R30 K31 ["Content"]
      143 GETTABLEKS                       R30 R30 K32 ["Emphasis"]
      145 GETTABLEKS                       R31 R2 K33 ["isDisabled"]
      147 CALL                             R29 2 1
      148 GETTABLEKS                       R30 R18 K18 ["textBox"]
      150 GETTABLEKS                       R30 R30 K34 ["fontStyle"]
      152 GETTABLEKS                       R31 R30 K35 ["FontSize"]
      154 GETTABLEKS                       R32 R30 K36 ["LineHeight"]
      156 GETUPVAL                         R33 4
      157 GETTABLEKS                       R33 R33 K37 ["useCallback"]
      159 NEWCLOSURE                       R34 P0
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R7
      162 NEWTABLE                         R35 0 0
      164 CALL                             R33 2 1
      165 GETUPVAL                         R34 4
      166 GETTABLEKS                       R34 R34 K37 ["useCallback"]
      168 NEWCLOSURE                       R35 P1
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R7
      171 NEWTABLE                         R36 0 0
      173 CALL                             R34 2 1
      174 GETUPVAL                         R35 4
      175 GETTABLEKS                       R35 R35 K37 ["useCallback"]
      177 NEWCLOSURE                       R36 P2
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R33
      181 CAPTURE                          VAL R34
      182 NEWTABLE                         R37 0 2
      184 MOVE                             R38 R33
      185 MOVE                             R39 R34
      186 SETLIST                          R37 R38 2 [1]
      188 CALL                             R35 2 1
      189 GETUPVAL                         R36 4
      190 GETTABLEKS                       R36 R36 K37 ["useCallback"]
      192 NEWCLOSURE                       R37 P3
      193 CAPTURE                          UPVAL U0
      194 CAPTURE                          VAL R6
      195 CAPTURE                          VAL R2
      196 CAPTURE                          UPVAL U10
      197 CAPTURE                          VAL R35
      198 NEWTABLE                         R38 0 2
      200 GETUPVAL                         R40 0
      201 GETTABLEKS                       R40 R40 K38 ["FoundationTextInputHighlightFix"]
      203 JUMPIFNOT                        R40 ; [+2]
      204 MOVE                             R39 R35
      205 JUMP                             ; [+1]
      206 LOADNIL                          R39
      207 GETUPVAL                         R41 0
      208 GETTABLEKS                       R41 R41 K38 ["FoundationTextInputHighlightFix"]
      210 JUMPIFNOT                        R41 ; [+3]
      211 GETTABLEKS                       R40 R2 K39 ["focusBehavior"]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R40
      215 SETLIST                          R38 R39 2 [1]
      217 CALL                             R36 2 1
      218 GETUPVAL                         R37 4
      219 GETTABLEKS                       R37 R37 K37 ["useCallback"]
      221 NEWCLOSURE                       R38 P4
      222 CAPTURE                          VAL R6
      223 NEWTABLE                         R39 0 0
      225 CALL                             R37 2 1
      226 GETUPVAL                         R38 4
      227 GETTABLEKS                       R38 R38 K37 ["useCallback"]
      229 NEWCLOSURE                       R39 P5
      230 CAPTURE                          VAL R6
      231 NEWTABLE                         R40 0 0
      233 CALL                             R38 2 1
      234 GETUPVAL                         R39 4
      235 GETTABLEKS                       R39 R39 K37 ["useCallback"]
      237 NEWCLOSURE                       R40 P6
      238 CAPTURE                          VAL R6
      239 NEWTABLE                         R41 0 0
      241 CALL                             R39 2 1
      242 GETUPVAL                         R40 4
      243 GETTABLEKS                       R40 R40 K37 ["useCallback"]
      245 NEWCLOSURE                       R41 P7
      246 CAPTURE                          VAL R6
      247 NEWTABLE                         R42 0 0
      249 CALL                             R40 2 1
      250 GETUPVAL                         R41 4
      251 GETTABLEKS                       R41 R41 K37 ["useCallback"]
      253 NEWCLOSURE                       R42 P8
      254 CAPTURE                          VAL R6
      255 NEWTABLE                         R43 0 0
      257 CALL                             R41 2 1
      258 GETUPVAL                         R42 4
      259 GETTABLEKS                       R42 R42 K40 ["useImperativeHandle"]
      261 MOVE                             R43 R1
      262 NEWCLOSURE                       R44 P9
      263 CAPTURE                          VAL R38
      264 CAPTURE                          VAL R36
      265 CAPTURE                          VAL R37
      266 CAPTURE                          VAL R15
      267 CAPTURE                          VAL R39
      268 CAPTURE                          VAL R40
      269 CAPTURE                          VAL R34
      270 CAPTURE                          VAL R33
      271 NEWTABLE                         R45 0 7
      273 MOVE                             R46 R40
      274 MOVE                             R47 R38
      275 MOVE                             R48 R39
      276 MOVE                             R49 R36
      277 MOVE                             R50 R37
      278 MOVE                             R51 R34
      279 MOVE                             R52 R33
      280 SETLIST                          R45 R46 7 [1]
      282 CALL                             R42 3 0
      283 GETUPVAL                         R42 4
      284 GETTABLEKS                       R42 R42 K37 ["useCallback"]
      286 NEWCLOSURE                       R43 P10
      287 CAPTURE                          VAL R10
      288 CAPTURE                          VAL R11
      289 CAPTURE                          VAL R5
      290 CAPTURE                          VAL R8
      291 CAPTURE                          VAL R2
      292 NEWTABLE                         R44 0 3
      294 GETTABLEKS                       R45 R2 K41 ["onChanged"]
      296 MOVE                             R46 R5
      297 MOVE                             R47 R22
      298 SETLIST                          R44 R45 3 [1]
      300 CALL                             R42 2 1
      301 GETUPVAL                         R43 4
      302 GETTABLEKS                       R43 R43 K6 ["useRef"]
      304 LOADB                            R44 0
      305 CALL                             R43 1 1
      306 GETUPVAL                         R44 4
      307 GETTABLEKS                       R44 R44 K37 ["useCallback"]
      309 NEWCLOSURE                       R45 P11
      310 CAPTURE                          VAL R2
      311 CAPTURE                          VAL R5
      312 CAPTURE                          VAL R24
      313 CAPTURE                          VAL R6
      314 CAPTURE                          VAL R10
      315 CAPTURE                          VAL R23
      316 CAPTURE                          VAL R17
      317 CAPTURE                          UPVAL U10
      318 CAPTURE                          VAL R7
      319 CAPTURE                          UPVAL U0
      320 CAPTURE                          VAL R43
      321 CAPTURE                          VAL R33
      322 CAPTURE                          VAL R34
      323 NEWTABLE                         R46 0 7
      325 GETTABLEKS                       R47 R2 K42 ["onFocus"]
      327 GETTABLEKS                       R48 R2 K33 ["isDisabled"]
      329 MOVE                             R49 R24
      330 MOVE                             R50 R5
      331 GETTABLEKS                       R51 R2 K39 ["focusBehavior"]
      333 GETUPVAL                         R53 0
      334 GETTABLEKS                       R53 R53 K38 ["FoundationTextInputHighlightFix"]
      336 JUMPIF                           R53 ; [+2]
      337 MOVE                             R52 R33
      338 JUMP                             ; [+1]
      339 LOADNIL                          R52
      340 GETUPVAL                         R54 0
      341 GETTABLEKS                       R54 R54 K38 ["FoundationTextInputHighlightFix"]
      343 JUMPIF                           R54 ; [+2]
      344 MOVE                             R53 R34
      345 JUMP                             ; [+1]
      346 LOADNIL                          R53
      347 SETLIST                          R46 R47 7 [1]
      349 CALL                             R44 2 1
      350 GETUPVAL                         R45 4
      351 GETTABLEKS                       R45 R45 K37 ["useCallback"]
      353 NEWCLOSURE                       R46 P12
      354 CAPTURE                          UPVAL U0
      355 CAPTURE                          VAL R43
      356 NEWTABLE                         R47 0 0
      358 CALL                             R45 2 1
      359 GETUPVAL                         R46 4
      360 GETTABLEKS                       R46 R46 K37 ["useCallback"]
      362 NEWCLOSURE                       R47 P13
      363 CAPTURE                          UPVAL U0
      364 CAPTURE                          VAL R43
      365 CAPTURE                          VAL R35
      366 NEWTABLE                         R48 0 3
      368 GETUPVAL                         R50 0
      369 GETTABLEKS                       R50 R50 K38 ["FoundationTextInputHighlightFix"]
      371 JUMPIFNOT                        R50 ; [+2]
      372 MOVE                             R49 R33
      373 JUMP                             ; [+1]
      374 LOADNIL                          R49
      375 GETUPVAL                         R51 0
      376 GETTABLEKS                       R51 R51 K38 ["FoundationTextInputHighlightFix"]
      378 JUMPIFNOT                        R51 ; [+2]
      379 MOVE                             R50 R34
      380 JUMP                             ; [+1]
      381 LOADNIL                          R50
      382 GETUPVAL                         R52 0
      383 GETTABLEKS                       R52 R52 K38 ["FoundationTextInputHighlightFix"]
      385 JUMPIFNOT                        R52 ; [+2]
      386 MOVE                             R51 R35
      387 JUMP                             ; [+1]
      388 LOADNIL                          R51
      389 SETLIST                          R48 R49 3 [1]
      391 CALL                             R46 2 1
      392 GETUPVAL                         R47 4
      393 GETTABLEKS                       R47 R47 K37 ["useCallback"]
      395 NEWCLOSURE                       R48 P14
      396 CAPTURE                          VAL R17
      397 CAPTURE                          VAL R43
      398 CAPTURE                          VAL R5
      399 CAPTURE                          VAL R23
      400 CAPTURE                          VAL R2
      401 NEWTABLE                         R49 0 3
      403 GETTABLEKS                       R50 R2 K43 ["onReturnPressed"]
      405 MOVE                             R51 R5
      406 GETTABLEKS                       R52 R2 K44 ["onFocusLost"]
      408 SETLIST                          R49 R50 3 [1]
      410 CALL                             R47 2 1
      411 GETUPVAL                         R48 4
      412 GETTABLEKS                       R48 R48 K37 ["useCallback"]
      414 NEWCLOSURE                       R49 P15
      415 CAPTURE                          VAL R15
      416 CAPTURE                          UPVAL U11
      417 NEWTABLE                         R50 0 0
      419 CALL                             R48 2 1
      420 GETUPVAL                         R49 4
      421 GETTABLEKS                       R49 R49 K37 ["useCallback"]
      423 NEWCLOSURE                       R50 P16
      424 CAPTURE                          VAL R12
      425 CAPTURE                          VAL R2
      426 NEWTABLE                         R51 0 1
      428 GETTABLEKS                       R52 R2 K45 ["onDragStarted"]
      430 SETLIST                          R51 R52 1 [1]
      432 CALL                             R49 2 1
      433 GETUPVAL                         R50 4
      434 GETTABLEKS                       R50 R50 K37 ["useCallback"]
      436 NEWCLOSURE                       R51 P17
      437 CAPTURE                          VAL R2
      438 NEWTABLE                         R52 0 1
      440 GETTABLEKS                       R53 R2 K46 ["onDrag"]
      442 SETLIST                          R52 R53 1 [1]
      444 CALL                             R50 2 1
      445 GETUPVAL                         R51 4
      446 GETTABLEKS                       R51 R51 K37 ["useCallback"]
      448 NEWCLOSURE                       R52 P18
      449 CAPTURE                          VAL R12
      450 CAPTURE                          VAL R36
      451 CAPTURE                          VAL R37
      452 CAPTURE                          VAL R17
      453 CAPTURE                          VAL R2
      454 NEWTABLE                         R53 0 1
      456 GETTABLEKS                       R54 R2 K47 ["onDragEnded"]
      458 SETLIST                          R53 R54 1 [1]
      460 CALL                             R51 2 1
      461 GETUPVAL                         R52 4
      462 GETTABLEKS                       R52 R52 K48 ["useMemo"]
      464 NEWCLOSURE                       R53 P19
      465 CAPTURE                          VAL R19
      466 CAPTURE                          VAL R3
      467 NEWTABLE                         R54 0 2
      469 MOVE                             R55 R3
      470 GETTABLEKS                       R56 R19 K15 ["radius"]
      472 SETLIST                          R54 R55 2 [1]
      474 CALL                             R52 2 1
      475 GETUPVAL                         R53 4
      476 GETTABLEKS                       R53 R53 K48 ["useMemo"]
      478 NEWCLOSURE                       R54 P20
      479 CAPTURE                          UPVAL U12
      480 CAPTURE                          VAL R31
      481 CAPTURE                          VAL R4
      482 CAPTURE                          VAL R32
      483 NEWTABLE                         R55 0 3
      485 MOVE                             R56 R31
      486 MOVE                             R57 R4
      487 MOVE                             R58 R32
      488 SETLIST                          R55 R56 3 [1]
      490 CALL                             R53 2 1
      491 GETUPVAL                         R54 4
      492 GETTABLEKS                       R54 R54 K48 ["useMemo"]
      494 NEWCLOSURE                       R55 P21
      495 CAPTURE                          VAL R19
      496 CAPTURE                          VAL R26
      497 CAPTURE                          UPVAL U12
      498 CAPTURE                          VAL R31
      499 CAPTURE                          VAL R32
      500 CAPTURE                          VAL R53
      501 NEWTABLE                         R56 0 6
      503 GETTABLEKS                       R57 R19 K49 ["minHeight"]
      505 MOVE                             R58 R26
      506 MOVE                             R59 R28
      507 MOVE                             R60 R31
      508 MOVE                             R61 R53
      509 MOVE                             R62 R32
      510 SETLIST                          R56 R57 6 [1]
      512 CALL                             R54 2 2
      513 GETTABLEKS                       R57 R54 K50 ["bottom"]
      515 GETTABLEKS                       R57 R57 K51 ["Offset"]
      517 GETTABLEKS                       R58 R54 K52 ["top"]
      519 GETTABLEKS                       R58 R58 K51 ["Offset"]
      521 ADD                              R56 R57 R58
      522 GETIMPORT                        R57 K55 [UDim2.new]
      524 LOADN                            R58 1
      525 LOADN                            R59 0
      526 LOADN                            R60 0
      527 ADD                              R61 R53 R56
      528 CALL                             R57 4 1
      529 GETUPVAL                         R58 4
      530 GETTABLEKS                       R58 R58 K48 ["useMemo"]
      532 NEWCLOSURE                       R59 P22
      533 CAPTURE                          VAL R5
      534 NEWTABLE                         R60 0 1
      536 MOVE                             R61 R5
      537 SETLIST                          R60 R61 1 [1]
      539 CALL                             R58 2 1
      540 GETUPVAL                         R59 4
      541 GETTABLEKS                       R59 R59 K48 ["useMemo"]
      543 NEWCLOSURE                       R60 P23
      544 CAPTURE                          VAL R5
      545 NEWTABLE                         R61 0 1
      547 MOVE                             R62 R5
      548 SETLIST                          R61 R62 1 [1]
      550 CALL                             R59 2 1
      551 GETUPVAL                         R60 4
      552 GETTABLEKS                       R60 R60 K37 ["useCallback"]
      554 NEWCLOSURE                       R61 P24
      555 CAPTURE                          VAL R9
      556 CAPTURE                          VAL R8
      557 CAPTURE                          UPVAL U13
      558 CAPTURE                          VAL R54
      559 NEWTABLE                         R62 0 1
      561 MOVE                             R63 R54
      562 SETLIST                          R62 R63 1 [1]
      564 CALL                             R60 2 1
      565 GETUPVAL                         R61 4
      566 GETTABLEKS                       R61 R61 K37 ["useCallback"]
      568 NEWCLOSURE                       R62 P25
      569 CAPTURE                          VAL R9
      570 CAPTURE                          VAL R13
      571 NEWTABLE                         R63 0 0
      573 CALL                             R61 2 1
      574 GETUPVAL                         R62 4
      575 GETTABLEKS                       R62 R62 K37 ["useCallback"]
      577 NEWCLOSURE                       R63 P26
      578 CAPTURE                          VAL R10
      579 CAPTURE                          UPVAL U0
      580 NEWTABLE                         R64 0 0
      582 CALL                             R62 2 1
      583 GETUPVAL                         R63 4
      584 GETTABLEKS                       R63 R63 K37 ["useCallback"]
      586 NEWCLOSURE                       R64 P27
      587 CAPTURE                          VAL R13
      588 NEWTABLE                         R65 0 0
      590 CALL                             R63 2 1
      591 GETUPVAL                         R64 4
      592 GETTABLEKS                       R64 R64 K48 ["useMemo"]
      594 NEWCLOSURE                       R65 P28
      595 CAPTURE                          VAL R2
      596 CAPTURE                          UPVAL U4
      597 CAPTURE                          VAL R49
      598 CAPTURE                          VAL R50
      599 CAPTURE                          VAL R51
      600 CAPTURE                          VAL R16
      601 NEWTABLE                         R66 0 5
      603 MOVE                             R67 R49
      604 MOVE                             R68 R50
      605 MOVE                             R69 R51
      606 MOVE                             R70 R16
      607 GETTABLEKS                       R71 R2 K33 ["isDisabled"]
      609 SETLIST                          R66 R67 5 [1]
      611 CALL                             R64 2 1
      612 GETUPVAL                         R65 14
      613 GETTABLEKS                       R67 R2 K56 ["horizontalPadding"]
      615 JUMPIFNOT                        R67 ; [+11]
      616 GETTABLEKS                       R66 R2 K56 ["horizontalPadding"]
      618 GETTABLEKS                       R66 R66 K57 ["left"]
      620 JUMPIF                           R66 ; [+11]
      621 GETIMPORT                        R66 K59 [UDim.new]
      623 LOADN                            R67 0
      624 LOADN                            R68 0
      625 CALL                             R66 2 1
      626 JUMP                             ; [+5]
      627 GETIMPORT                        R66 K59 [UDim.new]
      629 LOADN                            R67 0
      630 LOADN                            R68 0
      631 CALL                             R66 2 1
      632 CALL                             R65 1 1
      633 GETUPVAL                         R66 14
      634 GETTABLEKS                       R68 R2 K56 ["horizontalPadding"]
      636 JUMPIFNOT                        R68 ; [+11]
      637 GETTABLEKS                       R67 R2 K56 ["horizontalPadding"]
      639 GETTABLEKS                       R67 R67 K60 ["right"]
      641 JUMPIF                           R67 ; [+11]
      642 GETIMPORT                        R67 K59 [UDim.new]
      644 LOADN                            R68 0
      645 LOADN                            R69 0
      646 CALL                             R67 2 1
      647 JUMP                             ; [+5]
      648 GETIMPORT                        R67 K59 [UDim.new]
      650 LOADN                            R68 0
      651 LOADN                            R69 0
      652 CALL                             R67 2 1
      653 CALL                             R66 1 1
      654 GETUPVAL                         R67 4
      655 GETTABLEKS                       R67 R67 K48 ["useMemo"]
      657 NEWCLOSURE                       R68 P29
      658 CAPTURE                          VAL R2
      659 CAPTURE                          VAL R19
      660 CAPTURE                          VAL R3
      661 NEWTABLE                         R69 0 3
      663 GETTABLEKS                       R70 R2 K61 ["hasClearButton"]
      665 GETTABLEKS                       R71 R19 K49 ["minHeight"]
      667 GETTABLEKS                       R72 R3 K24 ["Stroke"]
      669 GETTABLEKS                       R72 R72 K25 ["Standard"]
      671 SETLIST                          R69 R70 3 [1]
      673 CALL                             R67 2 1
      674 GETUPVAL                         R68 15
      675 GETTABLEKS                       R68 R68 K62 ["useComposedRef"]
      677 MOVE                             R69 R7
      678 MOVE                             R70 R62
      679 CALL                             R68 2 1
      680 GETUPVAL                         R69 4
      681 GETTABLEKS                       R69 R69 K63 ["createElement"]
      683 GETUPVAL                         R70 16
      684 GETUPVAL                         R71 17
      685 MOVE                             R72 R2
      686 DUPTABLE                         R73 K75 [{"Size", "selection", "cursor", "stroke", "cornerRadius", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      687 GETIMPORT                        R74 K55 [UDim2.new]
      689 LOADN                            R75 1
      690 LOADN                            R76 0
      691 LOADN                            R77 0
      692 MOVE                             R78 R55
      693 CALL                             R74 4 1
      694 SETTABLEKS                       R74 R73 K64 ["Size"]
      696 DUPTABLE                         R74 K80 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      697 GETUPVAL                         R76 0
      698 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      700 JUMPIFNOT                        R76 ; [+7]
      701 GETTABLEKS                       R75 R2 K1 ["Selectable"]
      703 JUMPIFNOT                        R75 ; [+7]
      704 GETTABLEKS                       R76 R2 K33 ["isDisabled"]
      706 NOT                              R75 R76
      707 JUMP                             ; [+3]
      708 GETTABLEKS                       R76 R2 K33 ["isDisabled"]
      710 NOT                              R75 R76
      711 SETTABLEKS                       R75 R74 K1 ["Selectable"]
      713 GETUPVAL                         R76 0
      714 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      716 JUMPIFNOT                        R76 ; [+3]
      717 GETTABLEKS                       R75 R2 K76 ["NextSelectionUp"]
      719 JUMP                             ; [+1]
      720 LOADNIL                          R75
      721 SETTABLEKS                       R75 R74 K76 ["NextSelectionUp"]
      723 GETUPVAL                         R76 0
      724 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      726 JUMPIFNOT                        R76 ; [+3]
      727 GETTABLEKS                       R75 R2 K77 ["NextSelectionDown"]
      729 JUMP                             ; [+1]
      730 LOADNIL                          R75
      731 SETTABLEKS                       R75 R74 K77 ["NextSelectionDown"]
      733 GETUPVAL                         R76 0
      734 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      736 JUMPIFNOT                        R76 ; [+3]
      737 GETTABLEKS                       R75 R2 K78 ["NextSelectionLeft"]
      739 JUMP                             ; [+1]
      740 LOADNIL                          R75
      741 SETTABLEKS                       R75 R74 K78 ["NextSelectionLeft"]
      743 GETUPVAL                         R76 0
      744 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      746 JUMPIFNOT                        R76 ; [+3]
      747 GETTABLEKS                       R75 R2 K79 ["NextSelectionRight"]
      749 JUMP                             ; [+1]
      750 LOADNIL                          R75
      751 SETTABLEKS                       R75 R74 K79 ["NextSelectionRight"]
      753 SETTABLEKS                       R74 R73 K65 ["selection"]
      755 SETTABLEKS                       R52 R73 K66 ["cursor"]
      757 GETTABLEKS                       R75 R19 K81 ["strokeStyle"]
      759 JUMPIFNOT                        R75 ; [+43]
      760 GETTABLEKS                       R75 R19 K82 ["strokeThickness"]
      762 JUMPIFNOT                        R75 ; [+40]
      763 DUPTABLE                         R74 K86 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      764 GETTABLEKS                       R75 R19 K81 ["strokeStyle"]
      766 GETTABLEKS                       R75 R75 K87 ["Color3"]
      768 SETTABLEKS                       R75 R74 K30 ["Color"]
      770 GETTABLEKS                       R76 R2 K33 ["isDisabled"]
      772 JUMPIFNOT                        R76 ; [+10]
      773 GETUPVAL                         R75 18
      774 GETTABLEKS                       R76 R19 K81 ["strokeStyle"]
      776 GETTABLEKS                       R76 R76 K83 ["Transparency"]
      778 GETUPVAL                         R77 19
      779 GETTABLEKS                       R77 R77 K88 ["DISABLED_TRANSPARENCY"]
      781 CALL                             R75 2 1
      782 JUMP                             ; [+4]
      783 GETTABLEKS                       R75 R19 K81 ["strokeStyle"]
      785 GETTABLEKS                       R75 R75 K83 ["Transparency"]
      787 SETTABLEKS                       R75 R74 K83 ["Transparency"]
      789 GETTABLEKS                       R75 R19 K82 ["strokeThickness"]
      791 SETTABLEKS                       R75 R74 K84 ["Thickness"]
      793 JUMPIF                           R16 ; [+1]
      794 JUMPIFNOT                        R14 ; [+3]
      795 GETIMPORT                        R75 K90 [Enum.BorderStrokePosition.Center]
      797 JUMP                             ; [+2]
      798 GETIMPORT                        R75 K92 [Enum.BorderStrokePosition.Inner]
      800 SETTABLEKS                       R75 R74 K85 ["BorderStrokePosition"]
      802 JUMP                             ; [+1]
      803 LOADNIL                          R74
      804 SETTABLEKS                       R74 R73 K67 ["stroke"]
      806 GETTABLEKS                       R75 R2 K15 ["radius"]
      808 GETUPVAL                         R76 20
      809 GETTABLEKS                       R76 R76 K93 ["Circle"]
      811 JUMPIFNOTEQ                      R75 R76 ; [+13]
      813 GETIMPORT                        R74 K59 [UDim.new]
      815 LOADN                            R75 0
      816 GETTABLEKS                       R78 R19 K49 ["minHeight"]
      818 DIVK                             R77 R78 K26 [2]
      819 FASTCALL1                        MATH_CEIL R77 ; [+2]
      820 GETIMPORT                        R76 K28 [math.ceil]
      822 CALL                             R76 1 1
      823 CALL                             R74 2 1
      824 JUMP                             ; [+1]
      825 LOADNIL                          R74
      826 SETTABLEKS                       R74 R73 K68 ["cornerRadius"]
      828 DUPTABLE                         R74 K94 [{"left", "right", "top", "bottom"}]
      829 NEWCLOSURE                       R77 P30
      830 CAPTURE                          VAL R25
      831 NAMECALL                         R75 R65 K95 ["map"]
      833 CALL                             R75 2 1
      834 SETTABLEKS                       R75 R74 K57 ["left"]
      836 GETTABLEKS                       R76 R2 K96 ["trailingElement"]
      838 JUMPIFNOTEQKNIL                  R76 ; [+10]
      840 GETTABLEKS                       R76 R2 K61 ["hasClearButton"]
      842 JUMPIFNOT                        R76 ; [+6]
      843 GETIMPORT                        R75 K59 [UDim.new]
      845 LOADN                            R76 0
      846 MOVE                             R77 R25
      847 CALL                             R75 2 1
      848 JUMP                             ; [+5]
      849 NEWCLOSURE                       R77 P31
      850 CAPTURE                          VAL R25
      851 NAMECALL                         R75 R66 K95 ["map"]
      853 CALL                             R75 2 1
      854 SETTABLEKS                       R75 R74 K60 ["right"]
      856 GETIMPORT                        R75 K59 [UDim.new]
      858 LOADN                            R76 0
      859 MOVE                             R77 R25
      860 CALL                             R75 2 1
      861 SETTABLEKS                       R75 R74 K52 ["top"]
      863 GETIMPORT                        R75 K59 [UDim.new]
      865 LOADN                            R76 0
      866 MOVE                             R77 R25
      867 CALL                             R75 2 1
      868 SETTABLEKS                       R75 R74 K50 ["bottom"]
      870 SETTABLEKS                       R74 R73 K69 ["padding"]
      872 GETTABLEKS                       R75 R2 K33 ["isDisabled"]
      874 JUMPIF                           R75 ; [+2]
      875 MOVE                             R74 R36
      876 JUMP                             ; [+1]
      877 LOADNIL                          R74
      878 SETTABLEKS                       R74 R73 K70 ["onActivated"]
      880 SETTABLEKS                       R48 R73 K71 ["onStateChanged"]
      882 GETTABLEKS                       R74 R2 K33 ["isDisabled"]
      884 SETTABLEKS                       R74 R73 K33 ["isDisabled"]
      886 GETTABLEKS                       R75 R19 K97 ["bgStyle"]
      888 JUMPIFNOT                        R75 ; [+23]
      889 GETUPVAL                         R74 9
      890 DUPTABLE                         R75 K98 [{"Color3", "Transparency"}]
      891 GETTABLEKS                       R76 R19 K97 ["bgStyle"]
      893 GETTABLEKS                       R76 R76 K87 ["Color3"]
      895 SETTABLEKS                       R76 R75 K87 ["Color3"]
      897 GETTABLEKS                       R77 R2 K99 ["backgroundGradient"]
      899 JUMPIFNOT                        R77 ; [+2]
      900 LOADN                            R76 0
      901 JUMP                             ; [+4]
      902 GETTABLEKS                       R76 R19 K97 ["bgStyle"]
      904 GETTABLEKS                       R76 R76 K83 ["Transparency"]
      906 SETTABLEKS                       R76 R75 K83 ["Transparency"]
      908 GETTABLEKS                       R76 R2 K33 ["isDisabled"]
      910 CALL                             R74 2 1
      911 JUMP                             ; [+1]
      912 LOADNIL                          R74
      913 SETTABLEKS                       R74 R73 K72 ["backgroundStyle"]
      915 DUPTABLE                         R74 K101 [{"affordance"}]
      916 GETUPVAL                         R75 21
      917 GETTABLEKS                       R75 R75 K102 ["None"]
      919 SETTABLEKS                       R75 R74 K100 ["affordance"]
      921 SETTABLEKS                       R74 R73 K73 ["stateLayer"]
      923 GETTABLEKS                       R74 R19 K19 ["tag"]
      925 SETTABLEKS                       R74 R73 K19 ["tag"]
      927 LOADK                            R75 K103 ["%*--outer-container"]
      928 GETTABLEKS                       R77 R2 K74 ["testId"]
      930 NAMECALL                         R75 R75 K104 ["format"]
      932 CALL                             R75 2 1
      933 MOVE                             R74 R75
      934 SETTABLEKS                       R74 R73 K74 ["testId"]
      936 CALL                             R71 2 1
      937 DUPTABLE                         R72 K111 [{"DragDetector", "Background", "Leading", "TextBoxWrapper", "Clear", "Trailing"}]
      938 SETTABLEKS                       R64 R72 K105 ["DragDetector"]
      940 GETTABLEKS                       R73 R2 K99 ["backgroundGradient"]
      942 SETTABLEKS                       R73 R72 K106 ["Background"]
      944 GETTABLEKS                       R74 R2 K112 ["leadingElement"]
      946 JUMPIFNOT                        R74 ; [+34]
      947 GETUPVAL                         R73 4
      948 GETTABLEKS                       R73 R73 K63 ["createElement"]
      950 GETUPVAL                         R74 16
      951 DUPTABLE                         R75 K115 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
      952 GETTABLEKS                       R77 R2 K33 ["isDisabled"]
      954 JUMPIFNOT                        R77 ; [+4]
      955 GETUPVAL                         R76 19
      956 GETTABLEKS                       R76 R76 K88 ["DISABLED_TRANSPARENCY"]
      958 JUMP                             ; [+1]
      959 LOADNIL                          R76
      960 SETTABLEKS                       R76 R75 K113 ["GroupTransparency"]
      962 LOADN                            R76 1
      963 SETTABLEKS                       R76 R75 K114 ["LayoutOrder"]
      965 LOADK                            R76 K116 ["size-0-full auto-x"]
      966 SETTABLEKS                       R76 R75 K19 ["tag"]
      968 LOADK                            R77 K117 ["%*--leading"]
      969 GETTABLEKS                       R79 R2 K74 ["testId"]
      971 NAMECALL                         R77 R77 K104 ["format"]
      973 CALL                             R77 2 1
      974 MOVE                             R76 R77
      975 SETTABLEKS                       R76 R75 K74 ["testId"]
      977 GETTABLEKS                       R76 R2 K112 ["leadingElement"]
      979 CALL                             R73 3 1
      980 JUMP                             ; [+1]
      981 LOADNIL                          R73
      982 SETTABLEKS                       R73 R72 K107 ["Leading"]
      984 GETUPVAL                         R73 4
      985 GETTABLEKS                       R73 R73 K63 ["createElement"]
      987 JUMPIFNOT                        R5 ; [+2]
      988 GETUPVAL                         R74 22
      989 JUMP                             ; [+1]
      990 GETUPVAL                         R74 16
      991 DUPTABLE                         R75 K122 [{"LayoutOrder", "selection", "scroll", "layout", "onCanvasPositionChanged", "scrollingFrameRef", "tag"}]
      992 LOADN                            R76 2
      993 SETTABLEKS                       R76 R75 K114 ["LayoutOrder"]
      995 DUPTABLE                         R76 K123 [{"Selectable"}]
      996 LOADB                            R77 0
      997 SETTABLEKS                       R77 R76 K1 ["Selectable"]
      999 SETTABLEKS                       R76 R75 K65 ["selection"]
     1001 SETTABLEKS                       R59 R75 K118 ["scroll"]
     1003 SETTABLEKS                       R58 R75 K119 ["layout"]
     1005 JUMPIFNOT                        R5 ; [+2]
     1006 MOVE                             R76 R63
     1007 JUMP                             ; [+1]
     1008 LOADNIL                          R76
     1009 SETTABLEKS                       R76 R75 K120 ["onCanvasPositionChanged"]
     1011 JUMPIFNOT                        R5 ; [+2]
     1012 MOVE                             R76 R61
     1013 JUMP                             ; [+1]
     1014 LOADNIL                          R76
     1015 SETTABLEKS                       R76 R75 K121 ["scrollingFrameRef"]
     1017 LOADK                            R76 K124 ["fill size-full clip"]
     1018 SETTABLEKS                       R76 R75 K19 ["tag"]
     1020 DUPTABLE                         R76 K127 [{"TextBox", "MobileTextBox"}]
     1021 JUMPIF                           R22 ; [+111]
     1022 GETUPVAL                         R77 4
     1023 GETTABLEKS                       R77 R77 K63 ["createElement"]
     1025 GETUPVAL                         R78 23
     1026 DUPTABLE                         R79 K139 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged", "onInputChanged", "onInputEnded"}]
     1027 GETTABLEKS                       R80 R2 K8 ["text"]
     1029 SETTABLEKS                       R80 R79 K8 ["text"]
     1031 GETTABLEKS                       R80 R2 K128 ["placeholder"]
     1033 SETTABLEKS                       R80 R79 K128 ["placeholder"]
     1035 GETTABLEKS                       R80 R2 K129 ["textInputType"]
     1037 SETTABLEKS                       R80 R79 K129 ["textInputType"]
     1039 SETTABLEKS                       R30 R79 K34 ["fontStyle"]
     1041 SETTABLEKS                       R29 R79 K130 ["textStyle"]
     1043 SETTABLEKS                       R5 R79 K131 ["isMultiLine"]
     1045 GETTABLEKS                       R80 R2 K33 ["isDisabled"]
     1047 SETTABLEKS                       R80 R79 K33 ["isDisabled"]
     1049 SETTABLEKS                       R6 R79 K132 ["ref"]
     1051 LOADK                            R81 K140 ["%* data-testid=%*--textbox"]
     1052 ORK                              R83 R20 K7 [""]
     1053 GETTABLEKS                       R84 R2 K74 ["testId"]
     1055 NAMECALL                         R81 R81 K104 ["format"]
     1057 CALL                             R81 3 1
     1058 MOVE                             R80 R81
     1059 SETTABLEKS                       R80 R79 K19 ["tag"]
     1061 JUMPIFNOT                        R5 ; [+2]
     1062 MOVE                             R80 R57
     1063 JUMP                             ; [+1]
     1064 LOADNIL                          R80
     1065 SETTABLEKS                       R80 R79 K64 ["Size"]
     1067 GETUPVAL                         R80 24
     1068 GETTABLEKS                       R81 R2 K8 ["text"]
     1070 NEWCLOSURE                       R82 P32
     1071 CAPTURE                          VAL R5
     1072 CAPTURE                          VAL R22
     1073 CALL                             R80 2 1
     1074 SETTABLEKS                       R80 R79 K133 ["automaticSize"]
     1076 SETTABLEKS                       R54 R79 K69 ["padding"]
     1078 SETTABLEKS                       R44 R79 K134 ["onFocusGained"]
     1080 JUMPIFNOT                        R5 ; [+3]
     1081 JUMPIFNOT                        R24 ; [+2]
     1082 LOADNIL                          R80
     1083 JUMP                             ; [+1]
     1084 MOVE                             R80 R47
     1085 SETTABLEKS                       R80 R79 K44 ["onFocusLost"]
     1087 SETTABLEKS                       R42 R79 K135 ["onTextChanged"]
     1089 JUMPIFNOT                        R5 ; [+2]
     1090 MOVE                             R80 R60
     1091 JUMP                             ; [+1]
     1092 LOADNIL                          R80
     1093 SETTABLEKS                       R80 R79 K136 ["onCursorPositionChanged"]
     1095 SETTABLEKS                       R45 R79 K137 ["onInputChanged"]
     1097 SETTABLEKS                       R46 R79 K138 ["onInputEnded"]
     1099 DUPTABLE                         R80 K142 [{"DragDetector", "BoundsChecker"}]
     1100 SETTABLEKS                       R64 R80 K105 ["DragDetector"]
     1102 JUMPIFNOT                        R5 ; [+25]
     1103 GETUPVAL                         R81 4
     1104 GETTABLEKS                       R81 R81 K63 ["createElement"]
     1106 GETUPVAL                         R82 23
     1107 DUPTABLE                         R83 K144 [{"isBoundsChecker", "fontStyle", "textStyle", "Size", "ref"}]
     1108 LOADB                            R84 1
     1109 SETTABLEKS                       R84 R83 K143 ["isBoundsChecker"]
     1111 SETTABLEKS                       R30 R83 K34 ["fontStyle"]
     1113 SETTABLEKS                       R29 R83 K130 ["textStyle"]
     1115 GETIMPORT                        R84 K55 [UDim2.new]
     1117 LOADN                            R85 1
     1118 LOADN                            R86 0
     1119 LOADN                            R87 1
     1120 MOVE                             R88 R56
     1121 CALL                             R84 4 1
     1122 SETTABLEKS                       R84 R83 K64 ["Size"]
     1124 SETTABLEKS                       R8 R83 K132 ["ref"]
     1126 CALL                             R81 2 1
     1127 JUMP                             ; [+1]
     1128 LOADNIL                          R81
     1129 SETTABLEKS                       R81 R80 K141 ["BoundsChecker"]
     1131 CALL                             R77 3 1
     1132 JUMP                             ; [+1]
     1133 LOADNIL                          R77
     1134 SETTABLEKS                       R77 R76 K125 ["TextBox"]
     1136 JUMPIFNOT                        R5 ; [+61]
     1137 JUMPIFNOT                        R22 ; [+60]
     1138 GETUPVAL                         R77 4
     1139 GETTABLEKS                       R77 R77 K63 ["createElement"]
     1141 GETUPVAL                         R78 23
     1142 DUPTABLE                         R79 K145 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1143 GETTABLEKS                       R80 R2 K8 ["text"]
     1145 SETTABLEKS                       R80 R79 K8 ["text"]
     1147 GETTABLEKS                       R80 R2 K128 ["placeholder"]
     1149 SETTABLEKS                       R80 R79 K128 ["placeholder"]
     1151 GETTABLEKS                       R80 R2 K129 ["textInputType"]
     1153 SETTABLEKS                       R80 R79 K129 ["textInputType"]
     1155 SETTABLEKS                       R30 R79 K34 ["fontStyle"]
     1157 SETTABLEKS                       R29 R79 K130 ["textStyle"]
     1159 SETTABLEKS                       R5 R79 K131 ["isMultiLine"]
     1161 GETTABLEKS                       R80 R2 K33 ["isDisabled"]
     1163 SETTABLEKS                       R80 R79 K33 ["isDisabled"]
     1165 SETTABLEKS                       R54 R79 K69 ["padding"]
     1167 SETTABLEKS                       R68 R79 K132 ["ref"]
     1169 LOADK                            R81 K146 ["%* data-testid=%*--mobile-textbox"]
     1170 ORK                              R83 R20 K7 [""]
     1171 GETTABLEKS                       R84 R2 K74 ["testId"]
     1173 NAMECALL                         R81 R81 K104 ["format"]
     1175 CALL                             R81 3 1
     1176 MOVE                             R80 R81
     1177 SETTABLEKS                       R80 R79 K19 ["tag"]
     1179 SETTABLEKS                       R57 R79 K64 ["Size"]
     1181 JUMPIFNOT                        R5 ; [+3]
     1182 JUMPIFNOT                        R24 ; [+2]
     1183 MOVE                             R80 R47
     1184 JUMP                             ; [+1]
     1185 LOADNIL                          R80
     1186 SETTABLEKS                       R80 R79 K44 ["onFocusLost"]
     1188 SETTABLEKS                       R42 R79 K135 ["onTextChanged"]
     1190 JUMPIFNOT                        R5 ; [+2]
     1191 MOVE                             R80 R60
     1192 JUMP                             ; [+1]
     1193 LOADNIL                          R80
     1194 SETTABLEKS                       R80 R79 K136 ["onCursorPositionChanged"]
     1196 CALL                             R77 2 1
     1197 JUMP                             ; [+1]
     1198 LOADNIL                          R77
     1199 SETTABLEKS                       R77 R76 K126 ["MobileTextBox"]
     1201 CALL                             R73 3 1
     1202 SETTABLEKS                       R73 R72 K108 ["TextBoxWrapper"]
     1204 GETTABLEKS                       R74 R2 K61 ["hasClearButton"]
     1206 JUMPIFNOT                        R74 ; [+95]
     1207 GETUPVAL                         R73 4
     1208 GETTABLEKS                       R73 R73 K63 ["createElement"]
     1210 GETUPVAL                         R74 16
     1211 DUPTABLE                         R75 K148 [{"isDisabled", "GroupTransparency", "LayoutOrder", "Visible", "tag"}]
     1212 GETTABLEKS                       R76 R2 K33 ["isDisabled"]
     1214 SETTABLEKS                       R76 R75 K33 ["isDisabled"]
     1216 GETTABLEKS                       R77 R2 K33 ["isDisabled"]
     1218 JUMPIFNOT                        R77 ; [+4]
     1219 GETUPVAL                         R76 19
     1220 GETTABLEKS                       R76 R76 K88 ["DISABLED_TRANSPARENCY"]
     1222 JUMP                             ; [+1]
     1223 LOADNIL                          R76
     1224 SETTABLEKS                       R76 R75 K113 ["GroupTransparency"]
     1226 LOADN                            R76 3
     1227 SETTABLEKS                       R76 R75 K114 ["LayoutOrder"]
     1229 GETUPVAL                         R76 24
     1230 GETTABLEKS                       R77 R2 K8 ["text"]
     1232 DUPCLOSURE                       R78 K149 [PROTO_36]
     1233 CALL                             R76 2 1
     1234 SETTABLEKS                       R76 R75 K147 ["Visible"]
     1236 GETTABLEKS                       R76 R18 K150 ["clearButton"]
     1238 GETTABLEKS                       R76 R76 K19 ["tag"]
     1240 SETTABLEKS                       R76 R75 K19 ["tag"]
     1242 DUPTABLE                         R76 K152 [{"ClearButton"}]
     1243 GETUPVAL                         R77 4
     1244 GETTABLEKS                       R77 R77 K63 ["createElement"]
     1246 GETUPVAL                         R78 16
     1247 DUPTABLE                         R79 K154 [{"onActivated", "padding", "Position", "stateLayer", "tag", "testId"}]
     1248 SETTABLEKS                       R41 R79 K70 ["onActivated"]
     1250 GETIMPORT                        R80 K59 [UDim.new]
     1252 LOADN                            R81 0
     1253 GETTABLEKS                       R82 R18 K150 ["clearButton"]
     1255 GETTABLEKS                       R82 R82 K69 ["padding"]
     1257 CALL                             R80 2 1
     1258 SETTABLEKS                       R80 R79 K69 ["padding"]
     1260 SETTABLEKS                       R67 R79 K153 ["Position"]
     1262 DUPTABLE                         R80 K101 [{"affordance"}]
     1263 GETUPVAL                         R81 21
     1264 GETTABLEKS                       R81 R81 K102 ["None"]
     1266 SETTABLEKS                       R81 R80 K100 ["affordance"]
     1268 SETTABLEKS                       R80 R79 K73 ["stateLayer"]
     1270 LOADK                            R80 K155 ["anchor-center-left auto-xy"]
     1271 SETTABLEKS                       R80 R79 K19 ["tag"]
     1273 LOADK                            R81 K156 ["%*--clear-button"]
     1274 GETTABLEKS                       R83 R2 K74 ["testId"]
     1276 NAMECALL                         R81 R81 K104 ["format"]
     1278 CALL                             R81 2 1
     1279 MOVE                             R80 R81
     1280 SETTABLEKS                       R80 R79 K74 ["testId"]
     1282 DUPTABLE                         R80 K158 [{"Icon"}]
     1283 GETUPVAL                         R81 4
     1284 GETTABLEKS                       R81 R81 K63 ["createElement"]
     1286 GETUPVAL                         R82 25
     1287 DUPTABLE                         R83 K160 [{"name"}]
     1288 GETTABLEKS                       R84 R18 K150 ["clearButton"]
     1290 GETTABLEKS                       R84 R84 K161 ["icon"]
     1292 SETTABLEKS                       R84 R83 K159 ["name"]
     1294 CALL                             R81 2 1
     1295 SETTABLEKS                       R81 R80 K157 ["Icon"]
     1297 CALL                             R77 3 1
     1298 SETTABLEKS                       R77 R76 K151 ["ClearButton"]
     1300 CALL                             R73 3 1
     1301 JUMP                             ; [+1]
     1302 LOADNIL                          R73
     1303 SETTABLEKS                       R73 R72 K109 ["Clear"]
     1305 GETTABLEKS                       R74 R2 K96 ["trailingElement"]
     1307 JUMPIFNOT                        R74 ; [+34]
     1308 GETUPVAL                         R73 4
     1309 GETTABLEKS                       R73 R73 K63 ["createElement"]
     1311 GETUPVAL                         R74 16
     1312 DUPTABLE                         R75 K115 [{"GroupTransparency", "LayoutOrder", "tag", "testId"}]
     1313 GETTABLEKS                       R77 R2 K33 ["isDisabled"]
     1315 JUMPIFNOT                        R77 ; [+4]
     1316 GETUPVAL                         R76 19
     1317 GETTABLEKS                       R76 R76 K88 ["DISABLED_TRANSPARENCY"]
     1319 JUMP                             ; [+1]
     1320 LOADNIL                          R76
     1321 SETTABLEKS                       R76 R75 K113 ["GroupTransparency"]
     1323 LOADN                            R76 4
     1324 SETTABLEKS                       R76 R75 K114 ["LayoutOrder"]
     1326 LOADK                            R76 K116 ["size-0-full auto-x"]
     1327 SETTABLEKS                       R76 R75 K19 ["tag"]
     1329 LOADK                            R77 K162 ["%*--trailing"]
     1330 GETTABLEKS                       R79 R2 K74 ["testId"]
     1332 NAMECALL                         R77 R77 K104 ["format"]
     1334 CALL                             R77 2 1
     1335 MOVE                             R76 R77
     1336 SETTABLEKS                       R76 R75 K74 ["testId"]
     1338 GETTABLEKS                       R76 R2 K96 ["trailingElement"]
     1340 CALL                             R73 3 1
     1341 JUMP                             ; [+1]
     1342 LOADNIL                          R73
     1343 SETTABLEKS                       R73 R72 K110 ["Trailing"]
     1345 CALL                             R69 3 -1
     1346 RETURN                           R69 -1

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
      228 CAPTURE                          VAL R16
      229 CAPTURE                          VAL R6
      230 CALL                             R34 1 -1
      231 CALL                             R33 -1 1
      232 DUPCLOSURE                       R34 K54 [PROTO_37]
      233 CAPTURE                          VAL R11
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R32
      236 CAPTURE                          VAL R23
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R13
      239 CAPTURE                          VAL R22
      240 CAPTURE                          VAL R21
      241 CAPTURE                          VAL R20
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R26
      244 CAPTURE                          VAL R30
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R18
      247 CAPTURE                          VAL R19
      248 CAPTURE                          VAL R3
      249 CAPTURE                          VAL R9
      250 CAPTURE                          VAL R24
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R10
      253 CAPTURE                          VAL R29
      254 CAPTURE                          VAL R31
      255 CAPTURE                          VAL R7
      256 CAPTURE                          VAL R33
      257 CAPTURE                          VAL R17
      258 CAPTURE                          VAL R5
      259 GETTABLEKS                       R35 R2 K51 ["memo"]
      261 GETTABLEKS                       R36 R2 K52 ["forwardRef"]
      263 MOVE                             R37 R34
      264 CALL                             R36 1 -1
      265 CALL                             R35 -1 -1
      266 RETURN                           R35 -1
