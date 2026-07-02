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
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K9 ["FoundationTextInputsBetaUpdate"]
       13 JUMPIFNOT                        R2 ; [+2]
       14 LOADNIL                          R1
       15 JUMP                             ; [+1]
       16 GETUPVAL                         R1 4
       17 SETTABLEKS                       R1 R0 K3 ["setHover"]
       19 GETUPVAL                         R1 5
       20 SETTABLEKS                       R1 R0 K4 ["getSelectionStart"]
       22 GETUPVAL                         R1 6
       23 SETTABLEKS                       R1 R0 K5 ["getCursorPosition"]
       25 GETUPVAL                         R1 7
       26 SETTABLEKS                       R1 R0 K6 ["setCursorPosition"]
       28 GETUPVAL                         R1 8
       29 SETTABLEKS                       R1 R0 K7 ["setSelectionStart"]
       31 RETURN                           R0 1

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
        0 DUPTABLE                         R0 K2 [{"left", "right"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["horizontalPadding"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["horizontalPadding"]
        8 GETTABLEKS                       R1 R1 K4 ["innerLeft"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["left"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["horizontalPadding"]
       17 JUMPIFNOT                        R2 ; [+6]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K3 ["horizontalPadding"]
       21 GETTABLEKS                       R1 R1 K5 ["innerRight"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K1 ["right"]
       27 RETURN                           R0 1

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 SETTABLEKS                       R2 R1 K1 ["current"]
        5 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_35:
        0 GETIMPORT                        R2 K2 [UDim.new]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+7]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+5]
        4 JUMPIFEQKS                       R0 K0 [""] ; [+4]
        6 GETIMPORT                        R1 K4 [Enum.AutomaticSize.Y]
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_37:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_38:
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
       74 LOADNIL                          R14
       75 LOADNIL                          R15
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R16 R16 K12 ["FoundationTextInputsBetaUpdate"]
       79 JUMPIF                           R16 ; [+7]
       80 GETUPVAL                         R16 4
       81 GETTABLEKS                       R16 R16 K13 ["useState"]
       83 LOADB                            R17 0
       84 CALL                             R16 1 2
       85 MOVE                             R14 R16
       86 MOVE                             R15 R17
       87 GETUPVAL                         R16 4
       88 GETTABLEKS                       R16 R16 K13 ["useState"]
       90 LOADB                            R17 0
       91 CALL                             R16 1 2
       92 GETUPVAL                         R18 6
       93 MOVE                             R19 R3
       94 GETTABLEKS                       R20 R2 K14 ["size"]
       96 GETTABLEKS                       R21 R2 K15 ["variant"]
       98 GETTABLEKS                       R22 R2 K16 ["radius"]
      100 MOVE                             R23 R16
      101 GETUPVAL                         R25 0
      102 GETTABLEKS                       R25 R25 K12 ["FoundationTextInputsBetaUpdate"]
      104 JUMPIFNOT                        R25 ; [+2]
      105 LOADNIL                          R24
      106 JUMP                             ; [+1]
      107 MOVE                             R24 R14
      108 GETTABLEKS                       R25 R2 K17 ["hasError"]
      110 CALL                             R18 7 1
      111 GETTABLEKS                       R19 R18 K18 ["container"]
      113 GETUPVAL                         R20 7
      114 GETTABLEKS                       R21 R18 K19 ["textBox"]
      116 GETTABLEKS                       R21 R21 K20 ["tag"]
      118 CALL                             R20 1 1
      119 GETUPVAL                         R21 8
      120 CALL                             R21 0 1
      121 GETUPVAL                         R22 4
      122 GETTABLEKS                       R22 R22 K13 ["useState"]
      124 LOADB                            R23 0
      125 CALL                             R22 1 2
      126 GETIMPORT                        R25 K24 [Enum.PreferredInput.Touch]
      128 JUMPIFEQ                         R21 R25 ; [+2]
      130 LOADB                            R24 0 +1
      131 LOADB                            R24 1
      132 GETTABLEKS                       R25 R3 K25 ["Stroke"]
      134 GETTABLEKS                       R25 R25 K26 ["Standard"]
      136 FASTCALL1                        MATH_CEIL R25 ; [+3]
      137 MOVE                             R28 R25
      138 GETIMPORT                        R27 K29 [math.ceil]
      140 CALL                             R27 1 1
      141 MULK                             R26 R27 K27 [2]
      142 GETTABLEKS                       R27 R3 K25 ["Stroke"]
      144 GETTABLEKS                       R27 R27 K30 ["Thick"]
      146 FASTCALL1                        MATH_CEIL R27 ; [+3]
      147 MOVE                             R30 R27
      148 GETIMPORT                        R29 K29 [math.ceil]
      150 CALL                             R29 1 1
      151 MULK                             R28 R29 K27 [2]
      152 GETUPVAL                         R29 9
      153 GETTABLEKS                       R30 R3 K31 ["Color"]
      155 GETTABLEKS                       R30 R30 K32 ["Content"]
      157 GETTABLEKS                       R30 R30 K33 ["Emphasis"]
      159 GETTABLEKS                       R31 R2 K34 ["isDisabled"]
      161 CALL                             R29 2 1
      162 GETTABLEKS                       R30 R18 K19 ["textBox"]
      164 GETTABLEKS                       R30 R30 K35 ["fontStyle"]
      166 GETTABLEKS                       R31 R30 K36 ["FontSize"]
      168 GETTABLEKS                       R32 R30 K37 ["LineHeight"]
      170 GETUPVAL                         R33 4
      171 GETTABLEKS                       R33 R33 K38 ["useCallback"]
      173 NEWCLOSURE                       R34 P0
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R7
      176 NEWTABLE                         R35 0 0
      178 CALL                             R33 2 1
      179 GETUPVAL                         R34 4
      180 GETTABLEKS                       R34 R34 K38 ["useCallback"]
      182 NEWCLOSURE                       R35 P1
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R7
      185 NEWTABLE                         R36 0 0
      187 CALL                             R34 2 1
      188 GETUPVAL                         R35 4
      189 GETTABLEKS                       R35 R35 K38 ["useCallback"]
      191 NEWCLOSURE                       R36 P2
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R33
      195 CAPTURE                          VAL R34
      196 NEWTABLE                         R37 0 2
      198 MOVE                             R38 R33
      199 MOVE                             R39 R34
      200 SETLIST                          R37 R38 2 [1]
      202 CALL                             R35 2 1
      203 GETUPVAL                         R36 4
      204 GETTABLEKS                       R36 R36 K38 ["useCallback"]
      206 NEWCLOSURE                       R37 P3
      207 CAPTURE                          UPVAL U0
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R2
      210 CAPTURE                          UPVAL U10
      211 CAPTURE                          VAL R35
      212 NEWTABLE                         R38 0 2
      214 GETUPVAL                         R40 0
      215 GETTABLEKS                       R40 R40 K39 ["FoundationTextInputHighlightFix"]
      217 JUMPIFNOT                        R40 ; [+2]
      218 MOVE                             R39 R35
      219 JUMP                             ; [+1]
      220 LOADNIL                          R39
      221 GETUPVAL                         R41 0
      222 GETTABLEKS                       R41 R41 K39 ["FoundationTextInputHighlightFix"]
      224 JUMPIFNOT                        R41 ; [+3]
      225 GETTABLEKS                       R40 R2 K40 ["focusBehavior"]
      227 JUMP                             ; [+1]
      228 LOADNIL                          R40
      229 SETLIST                          R38 R39 2 [1]
      231 CALL                             R36 2 1
      232 GETUPVAL                         R37 4
      233 GETTABLEKS                       R37 R37 K38 ["useCallback"]
      235 NEWCLOSURE                       R38 P4
      236 CAPTURE                          VAL R6
      237 NEWTABLE                         R39 0 0
      239 CALL                             R37 2 1
      240 GETUPVAL                         R38 4
      241 GETTABLEKS                       R38 R38 K38 ["useCallback"]
      243 NEWCLOSURE                       R39 P5
      244 CAPTURE                          VAL R6
      245 NEWTABLE                         R40 0 0
      247 CALL                             R38 2 1
      248 GETUPVAL                         R39 4
      249 GETTABLEKS                       R39 R39 K38 ["useCallback"]
      251 NEWCLOSURE                       R40 P6
      252 CAPTURE                          VAL R6
      253 NEWTABLE                         R41 0 0
      255 CALL                             R39 2 1
      256 GETUPVAL                         R40 4
      257 GETTABLEKS                       R40 R40 K38 ["useCallback"]
      259 NEWCLOSURE                       R41 P7
      260 CAPTURE                          VAL R6
      261 NEWTABLE                         R42 0 0
      263 CALL                             R40 2 1
      264 GETUPVAL                         R41 4
      265 GETTABLEKS                       R41 R41 K38 ["useCallback"]
      267 NEWCLOSURE                       R42 P8
      268 CAPTURE                          VAL R6
      269 NEWTABLE                         R43 0 0
      271 CALL                             R41 2 1
      272 GETUPVAL                         R42 4
      273 GETTABLEKS                       R42 R42 K41 ["useImperativeHandle"]
      275 MOVE                             R43 R1
      276 NEWCLOSURE                       R44 P9
      277 CAPTURE                          VAL R38
      278 CAPTURE                          VAL R36
      279 CAPTURE                          VAL R37
      280 CAPTURE                          UPVAL U0
      281 CAPTURE                          REF R15
      282 CAPTURE                          VAL R39
      283 CAPTURE                          VAL R40
      284 CAPTURE                          VAL R34
      285 CAPTURE                          VAL R33
      286 NEWTABLE                         R45 0 7
      288 MOVE                             R46 R40
      289 MOVE                             R47 R38
      290 MOVE                             R48 R39
      291 MOVE                             R49 R36
      292 MOVE                             R50 R37
      293 MOVE                             R51 R34
      294 MOVE                             R52 R33
      295 SETLIST                          R45 R46 7 [1]
      297 CALL                             R42 3 0
      298 GETUPVAL                         R42 4
      299 GETTABLEKS                       R42 R42 K38 ["useCallback"]
      301 NEWCLOSURE                       R43 P10
      302 CAPTURE                          VAL R10
      303 CAPTURE                          VAL R11
      304 CAPTURE                          VAL R5
      305 CAPTURE                          VAL R8
      306 CAPTURE                          VAL R2
      307 NEWTABLE                         R44 0 3
      309 GETTABLEKS                       R45 R2 K42 ["onChanged"]
      311 MOVE                             R46 R5
      312 MOVE                             R47 R22
      313 SETLIST                          R44 R45 3 [1]
      315 CALL                             R42 2 1
      316 GETUPVAL                         R43 4
      317 GETTABLEKS                       R43 R43 K6 ["useRef"]
      319 LOADB                            R44 0
      320 CALL                             R43 1 1
      321 GETUPVAL                         R44 4
      322 GETTABLEKS                       R44 R44 K38 ["useCallback"]
      324 NEWCLOSURE                       R45 P11
      325 CAPTURE                          VAL R2
      326 CAPTURE                          VAL R5
      327 CAPTURE                          VAL R24
      328 CAPTURE                          VAL R6
      329 CAPTURE                          VAL R10
      330 CAPTURE                          VAL R23
      331 CAPTURE                          VAL R17
      332 CAPTURE                          UPVAL U10
      333 CAPTURE                          VAL R7
      334 CAPTURE                          UPVAL U0
      335 CAPTURE                          VAL R43
      336 CAPTURE                          VAL R33
      337 CAPTURE                          VAL R34
      338 NEWTABLE                         R46 0 7
      340 GETTABLEKS                       R47 R2 K43 ["onFocus"]
      342 GETTABLEKS                       R48 R2 K34 ["isDisabled"]
      344 MOVE                             R49 R24
      345 MOVE                             R50 R5
      346 GETTABLEKS                       R51 R2 K40 ["focusBehavior"]
      348 GETUPVAL                         R53 0
      349 GETTABLEKS                       R53 R53 K39 ["FoundationTextInputHighlightFix"]
      351 JUMPIF                           R53 ; [+2]
      352 MOVE                             R52 R33
      353 JUMP                             ; [+1]
      354 LOADNIL                          R52
      355 GETUPVAL                         R54 0
      356 GETTABLEKS                       R54 R54 K39 ["FoundationTextInputHighlightFix"]
      358 JUMPIF                           R54 ; [+2]
      359 MOVE                             R53 R34
      360 JUMP                             ; [+1]
      361 LOADNIL                          R53
      362 SETLIST                          R46 R47 7 [1]
      364 CALL                             R44 2 1
      365 GETUPVAL                         R45 4
      366 GETTABLEKS                       R45 R45 K38 ["useCallback"]
      368 NEWCLOSURE                       R46 P12
      369 CAPTURE                          UPVAL U0
      370 CAPTURE                          VAL R43
      371 NEWTABLE                         R47 0 0
      373 CALL                             R45 2 1
      374 GETUPVAL                         R46 4
      375 GETTABLEKS                       R46 R46 K38 ["useCallback"]
      377 NEWCLOSURE                       R47 P13
      378 CAPTURE                          UPVAL U0
      379 CAPTURE                          VAL R43
      380 CAPTURE                          VAL R35
      381 NEWTABLE                         R48 0 3
      383 GETUPVAL                         R50 0
      384 GETTABLEKS                       R50 R50 K39 ["FoundationTextInputHighlightFix"]
      386 JUMPIFNOT                        R50 ; [+2]
      387 MOVE                             R49 R33
      388 JUMP                             ; [+1]
      389 LOADNIL                          R49
      390 GETUPVAL                         R51 0
      391 GETTABLEKS                       R51 R51 K39 ["FoundationTextInputHighlightFix"]
      393 JUMPIFNOT                        R51 ; [+2]
      394 MOVE                             R50 R34
      395 JUMP                             ; [+1]
      396 LOADNIL                          R50
      397 GETUPVAL                         R52 0
      398 GETTABLEKS                       R52 R52 K39 ["FoundationTextInputHighlightFix"]
      400 JUMPIFNOT                        R52 ; [+2]
      401 MOVE                             R51 R35
      402 JUMP                             ; [+1]
      403 LOADNIL                          R51
      404 SETLIST                          R48 R49 3 [1]
      406 CALL                             R46 2 1
      407 GETUPVAL                         R47 4
      408 GETTABLEKS                       R47 R47 K38 ["useCallback"]
      410 NEWCLOSURE                       R48 P14
      411 CAPTURE                          VAL R17
      412 CAPTURE                          VAL R43
      413 CAPTURE                          VAL R5
      414 CAPTURE                          VAL R23
      415 CAPTURE                          VAL R2
      416 NEWTABLE                         R49 0 3
      418 GETTABLEKS                       R50 R2 K44 ["onReturnPressed"]
      420 MOVE                             R51 R5
      421 GETTABLEKS                       R52 R2 K45 ["onFocusLost"]
      423 SETLIST                          R49 R50 3 [1]
      425 CALL                             R47 2 1
      426 GETUPVAL                         R49 0
      427 GETTABLEKS                       R49 R49 K12 ["FoundationTextInputsBetaUpdate"]
      429 JUMPIFNOT                        R49 ; [+2]
      430 LOADNIL                          R48
      431 JUMP                             ; [+9]
      432 GETUPVAL                         R48 4
      433 GETTABLEKS                       R48 R48 K38 ["useCallback"]
      435 NEWCLOSURE                       R49 P15
      436 CAPTURE                          REF R15
      437 CAPTURE                          UPVAL U11
      438 NEWTABLE                         R50 0 0
      440 CALL                             R48 2 1
      441 GETUPVAL                         R49 4
      442 GETTABLEKS                       R49 R49 K38 ["useCallback"]
      444 NEWCLOSURE                       R50 P16
      445 CAPTURE                          VAL R12
      446 CAPTURE                          VAL R2
      447 NEWTABLE                         R51 0 1
      449 GETTABLEKS                       R52 R2 K46 ["onDragStarted"]
      451 SETLIST                          R51 R52 1 [1]
      453 CALL                             R49 2 1
      454 GETUPVAL                         R50 4
      455 GETTABLEKS                       R50 R50 K38 ["useCallback"]
      457 NEWCLOSURE                       R51 P17
      458 CAPTURE                          VAL R2
      459 NEWTABLE                         R52 0 1
      461 GETTABLEKS                       R53 R2 K47 ["onDrag"]
      463 SETLIST                          R52 R53 1 [1]
      465 CALL                             R50 2 1
      466 GETUPVAL                         R51 4
      467 GETTABLEKS                       R51 R51 K38 ["useCallback"]
      469 NEWCLOSURE                       R52 P18
      470 CAPTURE                          VAL R12
      471 CAPTURE                          VAL R36
      472 CAPTURE                          VAL R37
      473 CAPTURE                          VAL R17
      474 CAPTURE                          VAL R2
      475 NEWTABLE                         R53 0 1
      477 GETTABLEKS                       R54 R2 K48 ["onDragEnded"]
      479 SETLIST                          R53 R54 1 [1]
      481 CALL                             R51 2 1
      482 GETUPVAL                         R52 4
      483 GETTABLEKS                       R52 R52 K49 ["useMemo"]
      485 NEWCLOSURE                       R53 P19
      486 CAPTURE                          VAL R19
      487 CAPTURE                          VAL R3
      488 NEWTABLE                         R54 0 2
      490 MOVE                             R55 R3
      491 GETTABLEKS                       R56 R19 K16 ["radius"]
      493 SETLIST                          R54 R55 2 [1]
      495 CALL                             R52 2 1
      496 GETUPVAL                         R53 4
      497 GETTABLEKS                       R53 R53 K49 ["useMemo"]
      499 NEWCLOSURE                       R54 P20
      500 CAPTURE                          UPVAL U12
      501 CAPTURE                          VAL R31
      502 CAPTURE                          VAL R4
      503 CAPTURE                          VAL R32
      504 NEWTABLE                         R55 0 3
      506 MOVE                             R56 R31
      507 MOVE                             R57 R4
      508 MOVE                             R58 R32
      509 SETLIST                          R55 R56 3 [1]
      511 CALL                             R53 2 1
      512 GETUPVAL                         R54 4
      513 GETTABLEKS                       R54 R54 K49 ["useMemo"]
      515 NEWCLOSURE                       R55 P21
      516 CAPTURE                          VAL R19
      517 CAPTURE                          VAL R26
      518 CAPTURE                          UPVAL U12
      519 CAPTURE                          VAL R31
      520 CAPTURE                          VAL R32
      521 CAPTURE                          VAL R53
      522 NEWTABLE                         R56 0 6
      524 GETTABLEKS                       R57 R19 K50 ["minHeight"]
      526 MOVE                             R58 R26
      527 MOVE                             R59 R28
      528 MOVE                             R60 R31
      529 MOVE                             R61 R53
      530 MOVE                             R62 R32
      531 SETLIST                          R56 R57 6 [1]
      533 CALL                             R54 2 2
      534 GETUPVAL                         R57 0
      535 GETTABLEKS                       R57 R57 K51 ["FoundationSupportPrefixSuffixNumberInput"]
      537 JUMPIFNOT                        R57 ; [+13]
      538 GETUPVAL                         R56 4
      539 GETTABLEKS                       R56 R56 K49 ["useMemo"]
      541 NEWCLOSURE                       R57 P22
      542 CAPTURE                          VAL R2
      543 NEWTABLE                         R58 0 1
      545 GETTABLEKS                       R59 R2 K52 ["horizontalPadding"]
      547 SETLIST                          R58 R59 1 [1]
      549 CALL                             R56 2 1
      550 JUMP                             ; [+1]
      551 LOADNIL                          R56
      552 GETTABLEKS                       R58 R54 K53 ["bottom"]
      554 GETTABLEKS                       R58 R58 K54 ["Offset"]
      556 GETTABLEKS                       R59 R54 K55 ["top"]
      558 GETTABLEKS                       R59 R59 K54 ["Offset"]
      560 ADD                              R57 R58 R59
      561 GETIMPORT                        R58 K58 [UDim2.new]
      563 LOADN                            R59 1
      564 LOADN                            R60 0
      565 LOADN                            R61 0
      566 ADD                              R62 R53 R57
      567 CALL                             R58 4 1
      568 GETUPVAL                         R59 4
      569 GETTABLEKS                       R59 R59 K49 ["useMemo"]
      571 NEWCLOSURE                       R60 P23
      572 CAPTURE                          VAL R5
      573 NEWTABLE                         R61 0 1
      575 MOVE                             R62 R5
      576 SETLIST                          R61 R62 1 [1]
      578 CALL                             R59 2 1
      579 GETUPVAL                         R60 4
      580 GETTABLEKS                       R60 R60 K49 ["useMemo"]
      582 NEWCLOSURE                       R61 P24
      583 CAPTURE                          VAL R5
      584 NEWTABLE                         R62 0 1
      586 MOVE                             R63 R5
      587 SETLIST                          R62 R63 1 [1]
      589 CALL                             R60 2 1
      590 GETUPVAL                         R61 4
      591 GETTABLEKS                       R61 R61 K38 ["useCallback"]
      593 NEWCLOSURE                       R62 P25
      594 CAPTURE                          VAL R9
      595 CAPTURE                          VAL R8
      596 CAPTURE                          UPVAL U13
      597 CAPTURE                          VAL R54
      598 NEWTABLE                         R63 0 1
      600 MOVE                             R64 R54
      601 SETLIST                          R63 R64 1 [1]
      603 CALL                             R61 2 1
      604 GETUPVAL                         R62 4
      605 GETTABLEKS                       R62 R62 K38 ["useCallback"]
      607 NEWCLOSURE                       R63 P26
      608 CAPTURE                          VAL R9
      609 CAPTURE                          VAL R13
      610 NEWTABLE                         R64 0 0
      612 CALL                             R62 2 1
      613 GETUPVAL                         R63 4
      614 GETTABLEKS                       R63 R63 K38 ["useCallback"]
      616 NEWCLOSURE                       R64 P27
      617 CAPTURE                          VAL R10
      618 CAPTURE                          UPVAL U0
      619 NEWTABLE                         R65 0 0
      621 CALL                             R63 2 1
      622 GETUPVAL                         R64 4
      623 GETTABLEKS                       R64 R64 K38 ["useCallback"]
      625 NEWCLOSURE                       R65 P28
      626 CAPTURE                          VAL R13
      627 NEWTABLE                         R66 0 0
      629 CALL                             R64 2 1
      630 GETUPVAL                         R65 4
      631 GETTABLEKS                       R65 R65 K49 ["useMemo"]
      633 NEWCLOSURE                       R66 P29
      634 CAPTURE                          VAL R2
      635 CAPTURE                          UPVAL U4
      636 CAPTURE                          VAL R49
      637 CAPTURE                          VAL R50
      638 CAPTURE                          VAL R51
      639 CAPTURE                          VAL R16
      640 NEWTABLE                         R67 0 5
      642 MOVE                             R68 R49
      643 MOVE                             R69 R50
      644 MOVE                             R70 R51
      645 MOVE                             R71 R16
      646 GETTABLEKS                       R72 R2 K34 ["isDisabled"]
      648 SETLIST                          R67 R68 5 [1]
      650 CALL                             R65 2 1
      651 GETUPVAL                         R66 14
      652 GETTABLEKS                       R68 R2 K52 ["horizontalPadding"]
      654 JUMPIFNOT                        R68 ; [+11]
      655 GETTABLEKS                       R67 R2 K52 ["horizontalPadding"]
      657 GETTABLEKS                       R67 R67 K59 ["left"]
      659 JUMPIF                           R67 ; [+11]
      660 GETIMPORT                        R67 K61 [UDim.new]
      662 LOADN                            R68 0
      663 LOADN                            R69 0
      664 CALL                             R67 2 1
      665 JUMP                             ; [+5]
      666 GETIMPORT                        R67 K61 [UDim.new]
      668 LOADN                            R68 0
      669 LOADN                            R69 0
      670 CALL                             R67 2 1
      671 CALL                             R66 1 1
      672 GETUPVAL                         R67 14
      673 GETTABLEKS                       R69 R2 K52 ["horizontalPadding"]
      675 JUMPIFNOT                        R69 ; [+11]
      676 GETTABLEKS                       R68 R2 K52 ["horizontalPadding"]
      678 GETTABLEKS                       R68 R68 K62 ["right"]
      680 JUMPIF                           R68 ; [+11]
      681 GETIMPORT                        R68 K61 [UDim.new]
      683 LOADN                            R69 0
      684 LOADN                            R70 0
      685 CALL                             R68 2 1
      686 JUMP                             ; [+5]
      687 GETIMPORT                        R68 K61 [UDim.new]
      689 LOADN                            R69 0
      690 LOADN                            R70 0
      691 CALL                             R68 2 1
      692 CALL                             R67 1 1
      693 GETUPVAL                         R68 4
      694 GETTABLEKS                       R68 R68 K49 ["useMemo"]
      696 NEWCLOSURE                       R69 P30
      697 CAPTURE                          VAL R2
      698 CAPTURE                          VAL R19
      699 CAPTURE                          VAL R3
      700 NEWTABLE                         R70 0 3
      702 GETTABLEKS                       R71 R2 K63 ["hasClearButton"]
      704 GETTABLEKS                       R72 R19 K50 ["minHeight"]
      706 GETTABLEKS                       R73 R3 K25 ["Stroke"]
      708 GETTABLEKS                       R73 R73 K26 ["Standard"]
      710 SETLIST                          R70 R71 3 [1]
      712 CALL                             R68 2 1
      713 GETUPVAL                         R69 15
      714 GETTABLEKS                       R69 R69 K64 ["useComposedRef"]
      716 MOVE                             R70 R7
      717 MOVE                             R71 R63
      718 CALL                             R69 2 1
      719 GETUPVAL                         R70 4
      720 GETTABLEKS                       R70 R70 K65 ["createElement"]
      722 GETUPVAL                         R71 16
      723 GETUPVAL                         R72 17
      724 MOVE                             R73 R2
      725 DUPTABLE                         R74 K78 [{"ref", "Size", "selection", "cursor", "stroke", "cornerRadius", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      726 GETTABLEKS                       R75 R2 K79 ["inputRef"]
      728 SETTABLEKS                       R75 R74 K66 ["ref"]
      730 GETIMPORT                        R75 K58 [UDim2.new]
      732 LOADN                            R76 1
      733 LOADN                            R77 0
      734 LOADN                            R78 0
      735 MOVE                             R79 R55
      736 CALL                             R75 4 1
      737 SETTABLEKS                       R75 R74 K67 ["Size"]
      739 DUPTABLE                         R75 K84 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      740 GETUPVAL                         R77 0
      741 GETTABLEKS                       R77 R77 K0 ["FoundationInputSelectionProps"]
      743 JUMPIFNOT                        R77 ; [+7]
      744 GETTABLEKS                       R76 R2 K1 ["Selectable"]
      746 JUMPIFNOT                        R76 ; [+7]
      747 GETTABLEKS                       R77 R2 K34 ["isDisabled"]
      749 NOT                              R76 R77
      750 JUMP                             ; [+3]
      751 GETTABLEKS                       R77 R2 K34 ["isDisabled"]
      753 NOT                              R76 R77
      754 SETTABLEKS                       R76 R75 K1 ["Selectable"]
      756 GETUPVAL                         R77 0
      757 GETTABLEKS                       R77 R77 K0 ["FoundationInputSelectionProps"]
      759 JUMPIFNOT                        R77 ; [+3]
      760 GETTABLEKS                       R76 R2 K80 ["NextSelectionUp"]
      762 JUMP                             ; [+1]
      763 LOADNIL                          R76
      764 SETTABLEKS                       R76 R75 K80 ["NextSelectionUp"]
      766 GETUPVAL                         R77 0
      767 GETTABLEKS                       R77 R77 K0 ["FoundationInputSelectionProps"]
      769 JUMPIFNOT                        R77 ; [+3]
      770 GETTABLEKS                       R76 R2 K81 ["NextSelectionDown"]
      772 JUMP                             ; [+1]
      773 LOADNIL                          R76
      774 SETTABLEKS                       R76 R75 K81 ["NextSelectionDown"]
      776 GETUPVAL                         R77 0
      777 GETTABLEKS                       R77 R77 K0 ["FoundationInputSelectionProps"]
      779 JUMPIFNOT                        R77 ; [+3]
      780 GETTABLEKS                       R76 R2 K82 ["NextSelectionLeft"]
      782 JUMP                             ; [+1]
      783 LOADNIL                          R76
      784 SETTABLEKS                       R76 R75 K82 ["NextSelectionLeft"]
      786 GETUPVAL                         R77 0
      787 GETTABLEKS                       R77 R77 K0 ["FoundationInputSelectionProps"]
      789 JUMPIFNOT                        R77 ; [+3]
      790 GETTABLEKS                       R76 R2 K83 ["NextSelectionRight"]
      792 JUMP                             ; [+1]
      793 LOADNIL                          R76
      794 SETTABLEKS                       R76 R75 K83 ["NextSelectionRight"]
      796 SETTABLEKS                       R75 R74 K68 ["selection"]
      798 SETTABLEKS                       R52 R74 K69 ["cursor"]
      800 GETTABLEKS                       R76 R19 K85 ["strokeStyle"]
      802 JUMPIFNOT                        R76 ; [+47]
      803 GETTABLEKS                       R76 R19 K86 ["strokeThickness"]
      805 JUMPIFNOT                        R76 ; [+44]
      806 DUPTABLE                         R75 K90 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      807 GETTABLEKS                       R76 R19 K85 ["strokeStyle"]
      809 GETTABLEKS                       R76 R76 K91 ["Color3"]
      811 SETTABLEKS                       R76 R75 K31 ["Color"]
      813 GETTABLEKS                       R77 R2 K34 ["isDisabled"]
      815 JUMPIFNOT                        R77 ; [+10]
      816 GETUPVAL                         R76 18
      817 GETTABLEKS                       R77 R19 K85 ["strokeStyle"]
      819 GETTABLEKS                       R77 R77 K87 ["Transparency"]
      821 GETUPVAL                         R78 19
      822 GETTABLEKS                       R78 R78 K92 ["DISABLED_TRANSPARENCY"]
      824 CALL                             R76 2 1
      825 JUMP                             ; [+4]
      826 GETTABLEKS                       R76 R19 K85 ["strokeStyle"]
      828 GETTABLEKS                       R76 R76 K87 ["Transparency"]
      830 SETTABLEKS                       R76 R75 K87 ["Transparency"]
      832 GETTABLEKS                       R76 R19 K86 ["strokeThickness"]
      834 SETTABLEKS                       R76 R75 K88 ["Thickness"]
      836 JUMPIF                           R16 ; [+5]
      837 JUMPIFNOT                        R14 ; [+7]
      838 GETUPVAL                         R77 0
      839 GETTABLEKS                       R77 R77 K12 ["FoundationTextInputsBetaUpdate"]
      841 JUMPIF                           R77 ; [+3]
      842 GETIMPORT                        R76 K94 [Enum.BorderStrokePosition.Center]
      844 JUMP                             ; [+2]
      845 GETIMPORT                        R76 K96 [Enum.BorderStrokePosition.Inner]
      847 SETTABLEKS                       R76 R75 K89 ["BorderStrokePosition"]
      849 JUMP                             ; [+1]
      850 LOADNIL                          R75
      851 SETTABLEKS                       R75 R74 K70 ["stroke"]
      853 GETTABLEKS                       R76 R2 K16 ["radius"]
      855 GETUPVAL                         R77 20
      856 GETTABLEKS                       R77 R77 K97 ["Circle"]
      858 JUMPIFNOTEQ                      R76 R77 ; [+13]
      860 GETIMPORT                        R75 K61 [UDim.new]
      862 LOADN                            R76 0
      863 GETTABLEKS                       R79 R19 K50 ["minHeight"]
      865 DIVK                             R78 R79 K27 [2]
      866 FASTCALL1                        MATH_CEIL R78 ; [+2]
      867 GETIMPORT                        R77 K29 [math.ceil]
      869 CALL                             R77 1 1
      870 CALL                             R75 2 1
      871 JUMP                             ; [+1]
      872 LOADNIL                          R75
      873 SETTABLEKS                       R75 R74 K71 ["cornerRadius"]
      875 DUPTABLE                         R75 K98 [{"left", "right", "top", "bottom"}]
      876 NEWCLOSURE                       R78 P31
      877 CAPTURE                          VAL R25
      878 NAMECALL                         R76 R66 K99 ["map"]
      880 CALL                             R76 2 1
      881 SETTABLEKS                       R76 R75 K59 ["left"]
      883 GETTABLEKS                       R77 R2 K100 ["trailingElement"]
      885 JUMPIFNOTEQKNIL                  R77 ; [+10]
      887 GETTABLEKS                       R77 R2 K63 ["hasClearButton"]
      889 JUMPIFNOT                        R77 ; [+6]
      890 GETIMPORT                        R76 K61 [UDim.new]
      892 LOADN                            R77 0
      893 MOVE                             R78 R25
      894 CALL                             R76 2 1
      895 JUMP                             ; [+5]
      896 NEWCLOSURE                       R78 P32
      897 CAPTURE                          VAL R25
      898 NAMECALL                         R76 R67 K99 ["map"]
      900 CALL                             R76 2 1
      901 SETTABLEKS                       R76 R75 K62 ["right"]
      903 GETIMPORT                        R76 K61 [UDim.new]
      905 LOADN                            R77 0
      906 MOVE                             R78 R25
      907 CALL                             R76 2 1
      908 SETTABLEKS                       R76 R75 K55 ["top"]
      910 GETIMPORT                        R76 K61 [UDim.new]
      912 LOADN                            R77 0
      913 MOVE                             R78 R25
      914 CALL                             R76 2 1
      915 SETTABLEKS                       R76 R75 K53 ["bottom"]
      917 SETTABLEKS                       R75 R74 K72 ["padding"]
      919 GETTABLEKS                       R76 R2 K34 ["isDisabled"]
      921 JUMPIF                           R76 ; [+2]
      922 MOVE                             R75 R36
      923 JUMP                             ; [+1]
      924 LOADNIL                          R75
      925 SETTABLEKS                       R75 R74 K73 ["onActivated"]
      927 GETUPVAL                         R76 0
      928 GETTABLEKS                       R76 R76 K12 ["FoundationTextInputsBetaUpdate"]
      930 JUMPIFNOT                        R76 ; [+2]
      931 LOADNIL                          R75
      932 JUMP                             ; [+1]
      933 MOVE                             R75 R48
      934 SETTABLEKS                       R75 R74 K74 ["onStateChanged"]
      936 GETTABLEKS                       R75 R2 K34 ["isDisabled"]
      938 SETTABLEKS                       R75 R74 K34 ["isDisabled"]
      940 GETTABLEKS                       R76 R19 K101 ["bgStyle"]
      942 JUMPIFNOT                        R76 ; [+23]
      943 GETUPVAL                         R75 9
      944 DUPTABLE                         R76 K102 [{"Color3", "Transparency"}]
      945 GETTABLEKS                       R77 R19 K101 ["bgStyle"]
      947 GETTABLEKS                       R77 R77 K91 ["Color3"]
      949 SETTABLEKS                       R77 R76 K91 ["Color3"]
      951 GETTABLEKS                       R78 R2 K103 ["backgroundGradient"]
      953 JUMPIFNOT                        R78 ; [+2]
      954 LOADN                            R77 0
      955 JUMP                             ; [+4]
      956 GETTABLEKS                       R77 R19 K101 ["bgStyle"]
      958 GETTABLEKS                       R77 R77 K87 ["Transparency"]
      960 SETTABLEKS                       R77 R76 K87 ["Transparency"]
      962 GETTABLEKS                       R77 R2 K34 ["isDisabled"]
      964 CALL                             R75 2 1
      965 JUMP                             ; [+1]
      966 LOADNIL                          R75
      967 SETTABLEKS                       R75 R74 K75 ["backgroundStyle"]
      969 DUPTABLE                         R75 K105 [{"affordance"}]
      970 GETUPVAL                         R76 21
      971 GETTABLEKS                       R76 R76 K106 ["None"]
      973 SETTABLEKS                       R76 R75 K104 ["affordance"]
      975 SETTABLEKS                       R75 R74 K76 ["stateLayer"]
      977 GETTABLEKS                       R75 R19 K20 ["tag"]
      979 SETTABLEKS                       R75 R74 K20 ["tag"]
      981 LOADK                            R76 K107 ["%*--outer-container"]
      982 GETTABLEKS                       R78 R2 K77 ["testId"]
      984 NAMECALL                         R76 R76 K108 ["format"]
      986 CALL                             R76 2 1
      987 MOVE                             R75 R76
      988 SETTABLEKS                       R75 R74 K77 ["testId"]
      990 CALL                             R72 2 1
      991 DUPTABLE                         R73 K115 [{"DragDetector", "Background", "Leading", "TextBoxWrapper", "Clear", "Trailing"}]
      992 SETTABLEKS                       R65 R73 K109 ["DragDetector"]
      994 GETTABLEKS                       R74 R2 K103 ["backgroundGradient"]
      996 SETTABLEKS                       R74 R73 K110 ["Background"]
      998 GETTABLEKS                       R75 R2 K116 ["leadingElement"]
     1000 JUMPIFNOT                        R75 ; [+28]
     1001 GETUPVAL                         R74 4
     1002 GETTABLEKS                       R74 R74 K65 ["createElement"]
     1004 GETUPVAL                         R75 16
     1005 DUPTABLE                         R76 K121 [{["GroupTransparency"], ["LayoutOrder"] = 1, ["tag"] = "size-0-full auto-x", ["testId"]}]
     1006 GETTABLEKS                       R78 R2 K34 ["isDisabled"]
     1008 JUMPIFNOT                        R78 ; [+4]
     1009 GETUPVAL                         R77 19
     1010 GETTABLEKS                       R77 R77 K92 ["DISABLED_TRANSPARENCY"]
     1012 JUMP                             ; [+1]
     1013 LOADNIL                          R77
     1014 SETTABLEKS                       R77 R76 K117 ["GroupTransparency"]
     1016 LOADK                            R78 K122 ["%*--leading"]
     1017 GETTABLEKS                       R80 R2 K77 ["testId"]
     1019 NAMECALL                         R78 R78 K108 ["format"]
     1021 CALL                             R78 2 1
     1022 MOVE                             R77 R78
     1023 SETTABLEKS                       R77 R76 K77 ["testId"]
     1025 GETTABLEKS                       R77 R2 K116 ["leadingElement"]
     1027 CALL                             R74 3 1
     1028 JUMP                             ; [+1]
     1029 LOADNIL                          R74
     1030 SETTABLEKS                       R74 R73 K111 ["Leading"]
     1032 GETUPVAL                         R74 4
     1033 GETTABLEKS                       R74 R74 K65 ["createElement"]
     1035 JUMPIFNOT                        R5 ; [+2]
     1036 GETUPVAL                         R75 22
     1037 JUMP                             ; [+1]
     1038 GETUPVAL                         R75 16
     1039 DUPTABLE                         R76 K128 [{["LayoutOrder"] = 2, ["selection"], ["scroll"], ["layout"], ["onCanvasPositionChanged"], ["scrollingFrameRef"], ["padding"], ["tag"] = "fill size-full clip", ["testId"]}]
     1040 DUPTABLE                         R77 K130 [{["Selectable"] = False}]
     1041 SETTABLEKS                       R77 R76 K68 ["selection"]
     1043 SETTABLEKS                       R60 R76 K123 ["scroll"]
     1045 SETTABLEKS                       R59 R76 K124 ["layout"]
     1047 JUMPIFNOT                        R5 ; [+2]
     1048 MOVE                             R77 R64
     1049 JUMP                             ; [+1]
     1050 LOADNIL                          R77
     1051 SETTABLEKS                       R77 R76 K125 ["onCanvasPositionChanged"]
     1053 JUMPIFNOT                        R5 ; [+2]
     1054 MOVE                             R77 R62
     1055 JUMP                             ; [+1]
     1056 LOADNIL                          R77
     1057 SETTABLEKS                       R77 R76 K126 ["scrollingFrameRef"]
     1059 GETUPVAL                         R78 0
     1060 GETTABLEKS                       R78 R78 K51 ["FoundationSupportPrefixSuffixNumberInput"]
     1062 JUMPIFNOT                        R78 ; [+2]
     1063 MOVE                             R77 R56
     1064 JUMP                             ; [+1]
     1065 LOADNIL                          R77
     1066 SETTABLEKS                       R77 R76 K72 ["padding"]
     1068 LOADK                            R78 K131 ["%*--textbox-wrapper"]
     1069 GETTABLEKS                       R80 R2 K77 ["testId"]
     1071 NAMECALL                         R78 R78 K108 ["format"]
     1073 CALL                             R78 2 1
     1074 MOVE                             R77 R78
     1075 SETTABLEKS                       R77 R76 K77 ["testId"]
     1077 DUPTABLE                         R77 K134 [{"TextBox", "MobileTextBox"}]
     1078 JUMPIF                           R22 ; [+108]
     1079 GETUPVAL                         R78 4
     1080 GETTABLEKS                       R78 R78 K65 ["createElement"]
     1082 GETUPVAL                         R79 23
     1083 DUPTABLE                         R80 K145 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged", "onInputChanged", "onInputEnded"}]
     1084 GETTABLEKS                       R81 R2 K8 ["text"]
     1086 SETTABLEKS                       R81 R80 K8 ["text"]
     1088 GETTABLEKS                       R81 R2 K135 ["placeholder"]
     1090 SETTABLEKS                       R81 R80 K135 ["placeholder"]
     1092 GETTABLEKS                       R81 R2 K136 ["textInputType"]
     1094 SETTABLEKS                       R81 R80 K136 ["textInputType"]
     1096 SETTABLEKS                       R30 R80 K35 ["fontStyle"]
     1098 SETTABLEKS                       R29 R80 K137 ["textStyle"]
     1100 SETTABLEKS                       R5 R80 K138 ["isMultiLine"]
     1102 GETTABLEKS                       R81 R2 K34 ["isDisabled"]
     1104 SETTABLEKS                       R81 R80 K34 ["isDisabled"]
     1106 SETTABLEKS                       R6 R80 K66 ["ref"]
     1108 LOADK                            R82 K146 ["%* data-testid=%*--textbox"]
     1109 ORK                              R84 R20 K7 [""]
     1110 GETTABLEKS                       R85 R2 K77 ["testId"]
     1112 NAMECALL                         R82 R82 K108 ["format"]
     1114 CALL                             R82 3 1
     1115 MOVE                             R81 R82
     1116 SETTABLEKS                       R81 R80 K20 ["tag"]
     1118 JUMPIFNOT                        R5 ; [+2]
     1119 MOVE                             R81 R58
     1120 JUMP                             ; [+1]
     1121 LOADNIL                          R81
     1122 SETTABLEKS                       R81 R80 K67 ["Size"]
     1124 GETUPVAL                         R81 24
     1125 GETTABLEKS                       R82 R2 K8 ["text"]
     1127 NEWCLOSURE                       R83 P33
     1128 CAPTURE                          VAL R5
     1129 CAPTURE                          VAL R22
     1130 CALL                             R81 2 1
     1131 SETTABLEKS                       R81 R80 K139 ["automaticSize"]
     1133 SETTABLEKS                       R54 R80 K72 ["padding"]
     1135 SETTABLEKS                       R44 R80 K140 ["onFocusGained"]
     1137 JUMPIFNOT                        R5 ; [+3]
     1138 JUMPIFNOT                        R24 ; [+2]
     1139 LOADNIL                          R81
     1140 JUMP                             ; [+1]
     1141 MOVE                             R81 R47
     1142 SETTABLEKS                       R81 R80 K45 ["onFocusLost"]
     1144 SETTABLEKS                       R42 R80 K141 ["onTextChanged"]
     1146 JUMPIFNOT                        R5 ; [+2]
     1147 MOVE                             R81 R61
     1148 JUMP                             ; [+1]
     1149 LOADNIL                          R81
     1150 SETTABLEKS                       R81 R80 K142 ["onCursorPositionChanged"]
     1152 SETTABLEKS                       R45 R80 K143 ["onInputChanged"]
     1154 SETTABLEKS                       R46 R80 K144 ["onInputEnded"]
     1156 DUPTABLE                         R81 K148 [{"DragDetector", "BoundsChecker"}]
     1157 SETTABLEKS                       R65 R81 K109 ["DragDetector"]
     1159 JUMPIFNOT                        R5 ; [+22]
     1160 GETUPVAL                         R82 4
     1161 GETTABLEKS                       R82 R82 K65 ["createElement"]
     1163 GETUPVAL                         R83 23
     1164 DUPTABLE                         R84 K151 [{["isBoundsChecker"] = True, ["fontStyle"], ["textStyle"], ["Size"], ["ref"]}]
     1165 SETTABLEKS                       R30 R84 K35 ["fontStyle"]
     1167 SETTABLEKS                       R29 R84 K137 ["textStyle"]
     1169 GETIMPORT                        R85 K58 [UDim2.new]
     1171 LOADN                            R86 1
     1172 LOADN                            R87 0
     1173 LOADN                            R88 1
     1174 MOVE                             R89 R57
     1175 CALL                             R85 4 1
     1176 SETTABLEKS                       R85 R84 K67 ["Size"]
     1178 SETTABLEKS                       R8 R84 K66 ["ref"]
     1180 CALL                             R82 2 1
     1181 JUMP                             ; [+1]
     1182 LOADNIL                          R82
     1183 SETTABLEKS                       R82 R81 K147 ["BoundsChecker"]
     1185 CALL                             R78 3 1
     1186 JUMP                             ; [+1]
     1187 LOADNIL                          R78
     1188 SETTABLEKS                       R78 R77 K132 ["TextBox"]
     1190 JUMPIFNOT                        R5 ; [+61]
     1191 JUMPIFNOT                        R22 ; [+60]
     1192 GETUPVAL                         R78 4
     1193 GETTABLEKS                       R78 R78 K65 ["createElement"]
     1195 GETUPVAL                         R79 23
     1196 DUPTABLE                         R80 K152 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1197 GETTABLEKS                       R81 R2 K8 ["text"]
     1199 SETTABLEKS                       R81 R80 K8 ["text"]
     1201 GETTABLEKS                       R81 R2 K135 ["placeholder"]
     1203 SETTABLEKS                       R81 R80 K135 ["placeholder"]
     1205 GETTABLEKS                       R81 R2 K136 ["textInputType"]
     1207 SETTABLEKS                       R81 R80 K136 ["textInputType"]
     1209 SETTABLEKS                       R30 R80 K35 ["fontStyle"]
     1211 SETTABLEKS                       R29 R80 K137 ["textStyle"]
     1213 SETTABLEKS                       R5 R80 K138 ["isMultiLine"]
     1215 GETTABLEKS                       R81 R2 K34 ["isDisabled"]
     1217 SETTABLEKS                       R81 R80 K34 ["isDisabled"]
     1219 SETTABLEKS                       R54 R80 K72 ["padding"]
     1221 SETTABLEKS                       R69 R80 K66 ["ref"]
     1223 LOADK                            R82 K153 ["%* data-testid=%*--mobile-textbox"]
     1224 ORK                              R84 R20 K7 [""]
     1225 GETTABLEKS                       R85 R2 K77 ["testId"]
     1227 NAMECALL                         R82 R82 K108 ["format"]
     1229 CALL                             R82 3 1
     1230 MOVE                             R81 R82
     1231 SETTABLEKS                       R81 R80 K20 ["tag"]
     1233 SETTABLEKS                       R58 R80 K67 ["Size"]
     1235 JUMPIFNOT                        R5 ; [+3]
     1236 JUMPIFNOT                        R24 ; [+2]
     1237 MOVE                             R81 R47
     1238 JUMP                             ; [+1]
     1239 LOADNIL                          R81
     1240 SETTABLEKS                       R81 R80 K45 ["onFocusLost"]
     1242 SETTABLEKS                       R42 R80 K141 ["onTextChanged"]
     1244 JUMPIFNOT                        R5 ; [+2]
     1245 MOVE                             R81 R61
     1246 JUMP                             ; [+1]
     1247 LOADNIL                          R81
     1248 SETTABLEKS                       R81 R80 K142 ["onCursorPositionChanged"]
     1250 CALL                             R78 2 1
     1251 JUMP                             ; [+1]
     1252 LOADNIL                          R78
     1253 SETTABLEKS                       R78 R77 K133 ["MobileTextBox"]
     1255 CALL                             R74 3 1
     1256 SETTABLEKS                       R74 R73 K112 ["TextBoxWrapper"]
     1258 GETTABLEKS                       R75 R2 K63 ["hasClearButton"]
     1260 JUMPIFNOT                        R75 ; [+89]
     1261 GETUPVAL                         R74 4
     1262 GETTABLEKS                       R74 R74 K65 ["createElement"]
     1264 GETUPVAL                         R75 16
     1265 DUPTABLE                         R76 K156 [{["isDisabled"], ["GroupTransparency"], ["LayoutOrder"] = 3, ["Visible"], ["tag"]}]
     1266 GETTABLEKS                       R77 R2 K34 ["isDisabled"]
     1268 SETTABLEKS                       R77 R76 K34 ["isDisabled"]
     1270 GETTABLEKS                       R78 R2 K34 ["isDisabled"]
     1272 JUMPIFNOT                        R78 ; [+4]
     1273 GETUPVAL                         R77 19
     1274 GETTABLEKS                       R77 R77 K92 ["DISABLED_TRANSPARENCY"]
     1276 JUMP                             ; [+1]
     1277 LOADNIL                          R77
     1278 SETTABLEKS                       R77 R76 K117 ["GroupTransparency"]
     1280 GETUPVAL                         R77 24
     1281 GETTABLEKS                       R78 R2 K8 ["text"]
     1283 DUPCLOSURE                       R79 K157 [PROTO_37]
     1284 CALL                             R77 2 1
     1285 SETTABLEKS                       R77 R76 K155 ["Visible"]
     1287 GETTABLEKS                       R77 R18 K158 ["clearButton"]
     1289 GETTABLEKS                       R77 R77 K20 ["tag"]
     1291 SETTABLEKS                       R77 R76 K20 ["tag"]
     1293 DUPTABLE                         R77 K160 [{"ClearButton"}]
     1294 GETUPVAL                         R78 4
     1295 GETTABLEKS                       R78 R78 K65 ["createElement"]
     1297 GETUPVAL                         R79 16
     1298 DUPTABLE                         R80 K163 [{["onActivated"], ["padding"], ["Position"], ["stateLayer"], ["tag"] = "anchor-center-left auto-xy", ["testId"]}]
     1299 SETTABLEKS                       R41 R80 K73 ["onActivated"]
     1301 GETIMPORT                        R81 K61 [UDim.new]
     1303 LOADN                            R82 0
     1304 GETTABLEKS                       R83 R18 K158 ["clearButton"]
     1306 GETTABLEKS                       R83 R83 K72 ["padding"]
     1308 CALL                             R81 2 1
     1309 SETTABLEKS                       R81 R80 K72 ["padding"]
     1311 SETTABLEKS                       R68 R80 K161 ["Position"]
     1313 DUPTABLE                         R81 K105 [{"affordance"}]
     1314 GETUPVAL                         R82 21
     1315 GETTABLEKS                       R82 R82 K106 ["None"]
     1317 SETTABLEKS                       R82 R81 K104 ["affordance"]
     1319 SETTABLEKS                       R81 R80 K76 ["stateLayer"]
     1321 LOADK                            R82 K164 ["%*--clear-button"]
     1322 GETTABLEKS                       R84 R2 K77 ["testId"]
     1324 NAMECALL                         R82 R82 K108 ["format"]
     1326 CALL                             R82 2 1
     1327 MOVE                             R81 R82
     1328 SETTABLEKS                       R81 R80 K77 ["testId"]
     1330 DUPTABLE                         R81 K166 [{"Icon"}]
     1331 GETUPVAL                         R82 4
     1332 GETTABLEKS                       R82 R82 K65 ["createElement"]
     1334 GETUPVAL                         R83 25
     1335 DUPTABLE                         R84 K168 [{"name"}]
     1336 GETTABLEKS                       R85 R18 K158 ["clearButton"]
     1338 GETTABLEKS                       R85 R85 K169 ["icon"]
     1340 SETTABLEKS                       R85 R84 K167 ["name"]
     1342 CALL                             R82 2 1
     1343 SETTABLEKS                       R82 R81 K165 ["Icon"]
     1345 CALL                             R78 3 1
     1346 SETTABLEKS                       R78 R77 K159 ["ClearButton"]
     1348 CALL                             R74 3 1
     1349 JUMP                             ; [+1]
     1350 LOADNIL                          R74
     1351 SETTABLEKS                       R74 R73 K113 ["Clear"]
     1353 GETTABLEKS                       R75 R2 K100 ["trailingElement"]
     1355 JUMPIFNOT                        R75 ; [+28]
     1356 GETUPVAL                         R74 4
     1357 GETTABLEKS                       R74 R74 K65 ["createElement"]
     1359 GETUPVAL                         R75 16
     1360 DUPTABLE                         R76 K171 [{["GroupTransparency"], ["LayoutOrder"] = 4, ["tag"] = "size-0-full auto-x", ["testId"]}]
     1361 GETTABLEKS                       R78 R2 K34 ["isDisabled"]
     1363 JUMPIFNOT                        R78 ; [+4]
     1364 GETUPVAL                         R77 19
     1365 GETTABLEKS                       R77 R77 K92 ["DISABLED_TRANSPARENCY"]
     1367 JUMP                             ; [+1]
     1368 LOADNIL                          R77
     1369 SETTABLEKS                       R77 R76 K117 ["GroupTransparency"]
     1371 LOADK                            R78 K172 ["%*--trailing"]
     1372 GETTABLEKS                       R80 R2 K77 ["testId"]
     1374 NAMECALL                         R78 R78 K108 ["format"]
     1376 CALL                             R78 2 1
     1377 MOVE                             R77 R78
     1378 SETTABLEKS                       R77 R76 K77 ["testId"]
     1380 GETTABLEKS                       R77 R2 K100 ["trailingElement"]
     1382 CALL                             R74 3 1
     1383 JUMP                             ; [+1]
     1384 LOADNIL                          R74
     1385 SETTABLEKS                       R74 R73 K114 ["Trailing"]
     1387 CALL                             R70 3 -1
     1388 CLOSEUPVALS                      R15
     1389 RETURN                           R70 -1

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
      204 DUPTABLE                         R32 K50 [{["size"], ["variant"], ["numLines"] = 1, ["testId"] = "--foundation-internal-text-input", ["Selectable"] = True}]
      205 GETTABLEKS                       R33 R27 K51 ["Large"]
      207 SETTABLEKS                       R33 R32 K42 ["size"]
      209 GETTABLEKS                       R33 R28 K52 ["Standard"]
      211 SETTABLEKS                       R33 R32 K43 ["variant"]
      213 GETTABLEKS                       R33 R2 K53 ["memo"]
      215 GETTABLEKS                       R34 R2 K54 ["forwardRef"]
      217 DUPCLOSURE                       R35 K55 [PROTO_0]
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R6
      221 CALL                             R34 1 -1
      222 CALL                             R33 -1 1
      223 DUPCLOSURE                       R34 K56 [PROTO_38]
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R32
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R14
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R30
      236 CAPTURE                          VAL R15
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R19
      239 CAPTURE                          VAL R3
      240 CAPTURE                          VAL R9
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R10
      244 CAPTURE                          VAL R29
      245 CAPTURE                          VAL R31
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R33
      248 CAPTURE                          VAL R17
      249 CAPTURE                          VAL R5
      250 GETTABLEKS                       R35 R2 K53 ["memo"]
      252 GETTABLEKS                       R36 R2 K54 ["forwardRef"]
      254 MOVE                             R37 R34
      255 CALL                             R36 1 -1
      256 CALL                             R35 -1 -1
      257 RETURN                           R35 -1
