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
      534 GETTABLEKS                       R57 R54 K51 ["bottom"]
      536 GETTABLEKS                       R57 R57 K52 ["Offset"]
      538 GETTABLEKS                       R58 R54 K53 ["top"]
      540 GETTABLEKS                       R58 R58 K52 ["Offset"]
      542 ADD                              R56 R57 R58
      543 GETIMPORT                        R57 K56 [UDim2.new]
      545 LOADN                            R58 1
      546 LOADN                            R59 0
      547 LOADN                            R60 0
      548 ADD                              R61 R53 R56
      549 CALL                             R57 4 1
      550 GETUPVAL                         R58 4
      551 GETTABLEKS                       R58 R58 K49 ["useMemo"]
      553 NEWCLOSURE                       R59 P22
      554 CAPTURE                          VAL R5
      555 NEWTABLE                         R60 0 1
      557 MOVE                             R61 R5
      558 SETLIST                          R60 R61 1 [1]
      560 CALL                             R58 2 1
      561 GETUPVAL                         R59 4
      562 GETTABLEKS                       R59 R59 K49 ["useMemo"]
      564 NEWCLOSURE                       R60 P23
      565 CAPTURE                          VAL R5
      566 NEWTABLE                         R61 0 1
      568 MOVE                             R62 R5
      569 SETLIST                          R61 R62 1 [1]
      571 CALL                             R59 2 1
      572 GETUPVAL                         R60 4
      573 GETTABLEKS                       R60 R60 K38 ["useCallback"]
      575 NEWCLOSURE                       R61 P24
      576 CAPTURE                          VAL R9
      577 CAPTURE                          VAL R8
      578 CAPTURE                          UPVAL U13
      579 CAPTURE                          VAL R54
      580 NEWTABLE                         R62 0 1
      582 MOVE                             R63 R54
      583 SETLIST                          R62 R63 1 [1]
      585 CALL                             R60 2 1
      586 GETUPVAL                         R61 4
      587 GETTABLEKS                       R61 R61 K38 ["useCallback"]
      589 NEWCLOSURE                       R62 P25
      590 CAPTURE                          VAL R9
      591 CAPTURE                          VAL R13
      592 NEWTABLE                         R63 0 0
      594 CALL                             R61 2 1
      595 GETUPVAL                         R62 4
      596 GETTABLEKS                       R62 R62 K38 ["useCallback"]
      598 NEWCLOSURE                       R63 P26
      599 CAPTURE                          VAL R10
      600 CAPTURE                          UPVAL U0
      601 NEWTABLE                         R64 0 0
      603 CALL                             R62 2 1
      604 GETUPVAL                         R63 4
      605 GETTABLEKS                       R63 R63 K38 ["useCallback"]
      607 NEWCLOSURE                       R64 P27
      608 CAPTURE                          VAL R13
      609 NEWTABLE                         R65 0 0
      611 CALL                             R63 2 1
      612 GETUPVAL                         R64 4
      613 GETTABLEKS                       R64 R64 K49 ["useMemo"]
      615 NEWCLOSURE                       R65 P28
      616 CAPTURE                          VAL R2
      617 CAPTURE                          UPVAL U4
      618 CAPTURE                          VAL R49
      619 CAPTURE                          VAL R50
      620 CAPTURE                          VAL R51
      621 CAPTURE                          VAL R16
      622 NEWTABLE                         R66 0 5
      624 MOVE                             R67 R49
      625 MOVE                             R68 R50
      626 MOVE                             R69 R51
      627 MOVE                             R70 R16
      628 GETTABLEKS                       R71 R2 K34 ["isDisabled"]
      630 SETLIST                          R66 R67 5 [1]
      632 CALL                             R64 2 1
      633 GETUPVAL                         R65 14
      634 GETTABLEKS                       R67 R2 K57 ["horizontalPadding"]
      636 JUMPIFNOT                        R67 ; [+11]
      637 GETTABLEKS                       R66 R2 K57 ["horizontalPadding"]
      639 GETTABLEKS                       R66 R66 K58 ["left"]
      641 JUMPIF                           R66 ; [+11]
      642 GETIMPORT                        R66 K60 [UDim.new]
      644 LOADN                            R67 0
      645 LOADN                            R68 0
      646 CALL                             R66 2 1
      647 JUMP                             ; [+5]
      648 GETIMPORT                        R66 K60 [UDim.new]
      650 LOADN                            R67 0
      651 LOADN                            R68 0
      652 CALL                             R66 2 1
      653 CALL                             R65 1 1
      654 GETUPVAL                         R66 14
      655 GETTABLEKS                       R68 R2 K57 ["horizontalPadding"]
      657 JUMPIFNOT                        R68 ; [+11]
      658 GETTABLEKS                       R67 R2 K57 ["horizontalPadding"]
      660 GETTABLEKS                       R67 R67 K61 ["right"]
      662 JUMPIF                           R67 ; [+11]
      663 GETIMPORT                        R67 K60 [UDim.new]
      665 LOADN                            R68 0
      666 LOADN                            R69 0
      667 CALL                             R67 2 1
      668 JUMP                             ; [+5]
      669 GETIMPORT                        R67 K60 [UDim.new]
      671 LOADN                            R68 0
      672 LOADN                            R69 0
      673 CALL                             R67 2 1
      674 CALL                             R66 1 1
      675 GETUPVAL                         R67 4
      676 GETTABLEKS                       R67 R67 K49 ["useMemo"]
      678 NEWCLOSURE                       R68 P29
      679 CAPTURE                          VAL R2
      680 CAPTURE                          VAL R19
      681 CAPTURE                          VAL R3
      682 NEWTABLE                         R69 0 3
      684 GETTABLEKS                       R70 R2 K62 ["hasClearButton"]
      686 GETTABLEKS                       R71 R19 K50 ["minHeight"]
      688 GETTABLEKS                       R72 R3 K25 ["Stroke"]
      690 GETTABLEKS                       R72 R72 K26 ["Standard"]
      692 SETLIST                          R69 R70 3 [1]
      694 CALL                             R67 2 1
      695 GETUPVAL                         R68 15
      696 GETTABLEKS                       R68 R68 K63 ["useComposedRef"]
      698 MOVE                             R69 R7
      699 MOVE                             R70 R62
      700 CALL                             R68 2 1
      701 GETUPVAL                         R69 4
      702 GETTABLEKS                       R69 R69 K64 ["createElement"]
      704 GETUPVAL                         R70 16
      705 GETUPVAL                         R71 17
      706 MOVE                             R72 R2
      707 DUPTABLE                         R73 K77 [{"ref", "Size", "selection", "cursor", "stroke", "cornerRadius", "padding", "onActivated", "onStateChanged", "isDisabled", "backgroundStyle", "stateLayer", "tag", "testId"}]
      708 GETTABLEKS                       R74 R2 K78 ["inputRef"]
      710 SETTABLEKS                       R74 R73 K65 ["ref"]
      712 GETIMPORT                        R74 K56 [UDim2.new]
      714 LOADN                            R75 1
      715 LOADN                            R76 0
      716 LOADN                            R77 0
      717 MOVE                             R78 R55
      718 CALL                             R74 4 1
      719 SETTABLEKS                       R74 R73 K66 ["Size"]
      721 DUPTABLE                         R74 K83 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      722 GETUPVAL                         R76 0
      723 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      725 JUMPIFNOT                        R76 ; [+7]
      726 GETTABLEKS                       R75 R2 K1 ["Selectable"]
      728 JUMPIFNOT                        R75 ; [+7]
      729 GETTABLEKS                       R76 R2 K34 ["isDisabled"]
      731 NOT                              R75 R76
      732 JUMP                             ; [+3]
      733 GETTABLEKS                       R76 R2 K34 ["isDisabled"]
      735 NOT                              R75 R76
      736 SETTABLEKS                       R75 R74 K1 ["Selectable"]
      738 GETUPVAL                         R76 0
      739 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      741 JUMPIFNOT                        R76 ; [+3]
      742 GETTABLEKS                       R75 R2 K79 ["NextSelectionUp"]
      744 JUMP                             ; [+1]
      745 LOADNIL                          R75
      746 SETTABLEKS                       R75 R74 K79 ["NextSelectionUp"]
      748 GETUPVAL                         R76 0
      749 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      751 JUMPIFNOT                        R76 ; [+3]
      752 GETTABLEKS                       R75 R2 K80 ["NextSelectionDown"]
      754 JUMP                             ; [+1]
      755 LOADNIL                          R75
      756 SETTABLEKS                       R75 R74 K80 ["NextSelectionDown"]
      758 GETUPVAL                         R76 0
      759 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      761 JUMPIFNOT                        R76 ; [+3]
      762 GETTABLEKS                       R75 R2 K81 ["NextSelectionLeft"]
      764 JUMP                             ; [+1]
      765 LOADNIL                          R75
      766 SETTABLEKS                       R75 R74 K81 ["NextSelectionLeft"]
      768 GETUPVAL                         R76 0
      769 GETTABLEKS                       R76 R76 K0 ["FoundationInputSelectionProps"]
      771 JUMPIFNOT                        R76 ; [+3]
      772 GETTABLEKS                       R75 R2 K82 ["NextSelectionRight"]
      774 JUMP                             ; [+1]
      775 LOADNIL                          R75
      776 SETTABLEKS                       R75 R74 K82 ["NextSelectionRight"]
      778 SETTABLEKS                       R74 R73 K67 ["selection"]
      780 SETTABLEKS                       R52 R73 K68 ["cursor"]
      782 GETTABLEKS                       R75 R19 K84 ["strokeStyle"]
      784 JUMPIFNOT                        R75 ; [+47]
      785 GETTABLEKS                       R75 R19 K85 ["strokeThickness"]
      787 JUMPIFNOT                        R75 ; [+44]
      788 DUPTABLE                         R74 K89 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      789 GETTABLEKS                       R75 R19 K84 ["strokeStyle"]
      791 GETTABLEKS                       R75 R75 K90 ["Color3"]
      793 SETTABLEKS                       R75 R74 K31 ["Color"]
      795 GETTABLEKS                       R76 R2 K34 ["isDisabled"]
      797 JUMPIFNOT                        R76 ; [+10]
      798 GETUPVAL                         R75 18
      799 GETTABLEKS                       R76 R19 K84 ["strokeStyle"]
      801 GETTABLEKS                       R76 R76 K86 ["Transparency"]
      803 GETUPVAL                         R77 19
      804 GETTABLEKS                       R77 R77 K91 ["DISABLED_TRANSPARENCY"]
      806 CALL                             R75 2 1
      807 JUMP                             ; [+4]
      808 GETTABLEKS                       R75 R19 K84 ["strokeStyle"]
      810 GETTABLEKS                       R75 R75 K86 ["Transparency"]
      812 SETTABLEKS                       R75 R74 K86 ["Transparency"]
      814 GETTABLEKS                       R75 R19 K85 ["strokeThickness"]
      816 SETTABLEKS                       R75 R74 K87 ["Thickness"]
      818 JUMPIF                           R16 ; [+5]
      819 JUMPIFNOT                        R14 ; [+7]
      820 GETUPVAL                         R76 0
      821 GETTABLEKS                       R76 R76 K12 ["FoundationTextInputsBetaUpdate"]
      823 JUMPIF                           R76 ; [+3]
      824 GETIMPORT                        R75 K93 [Enum.BorderStrokePosition.Center]
      826 JUMP                             ; [+2]
      827 GETIMPORT                        R75 K95 [Enum.BorderStrokePosition.Inner]
      829 SETTABLEKS                       R75 R74 K88 ["BorderStrokePosition"]
      831 JUMP                             ; [+1]
      832 LOADNIL                          R74
      833 SETTABLEKS                       R74 R73 K69 ["stroke"]
      835 GETTABLEKS                       R75 R2 K16 ["radius"]
      837 GETUPVAL                         R76 20
      838 GETTABLEKS                       R76 R76 K96 ["Circle"]
      840 JUMPIFNOTEQ                      R75 R76 ; [+13]
      842 GETIMPORT                        R74 K60 [UDim.new]
      844 LOADN                            R75 0
      845 GETTABLEKS                       R78 R19 K50 ["minHeight"]
      847 DIVK                             R77 R78 K27 [2]
      848 FASTCALL1                        MATH_CEIL R77 ; [+2]
      849 GETIMPORT                        R76 K29 [math.ceil]
      851 CALL                             R76 1 1
      852 CALL                             R74 2 1
      853 JUMP                             ; [+1]
      854 LOADNIL                          R74
      855 SETTABLEKS                       R74 R73 K70 ["cornerRadius"]
      857 DUPTABLE                         R74 K97 [{"left", "right", "top", "bottom"}]
      858 NEWCLOSURE                       R77 P30
      859 CAPTURE                          VAL R25
      860 NAMECALL                         R75 R65 K98 ["map"]
      862 CALL                             R75 2 1
      863 SETTABLEKS                       R75 R74 K58 ["left"]
      865 GETTABLEKS                       R76 R2 K99 ["trailingElement"]
      867 JUMPIFNOTEQKNIL                  R76 ; [+10]
      869 GETTABLEKS                       R76 R2 K62 ["hasClearButton"]
      871 JUMPIFNOT                        R76 ; [+6]
      872 GETIMPORT                        R75 K60 [UDim.new]
      874 LOADN                            R76 0
      875 MOVE                             R77 R25
      876 CALL                             R75 2 1
      877 JUMP                             ; [+5]
      878 NEWCLOSURE                       R77 P31
      879 CAPTURE                          VAL R25
      880 NAMECALL                         R75 R66 K98 ["map"]
      882 CALL                             R75 2 1
      883 SETTABLEKS                       R75 R74 K61 ["right"]
      885 GETIMPORT                        R75 K60 [UDim.new]
      887 LOADN                            R76 0
      888 MOVE                             R77 R25
      889 CALL                             R75 2 1
      890 SETTABLEKS                       R75 R74 K53 ["top"]
      892 GETIMPORT                        R75 K60 [UDim.new]
      894 LOADN                            R76 0
      895 MOVE                             R77 R25
      896 CALL                             R75 2 1
      897 SETTABLEKS                       R75 R74 K51 ["bottom"]
      899 SETTABLEKS                       R74 R73 K71 ["padding"]
      901 GETTABLEKS                       R75 R2 K34 ["isDisabled"]
      903 JUMPIF                           R75 ; [+2]
      904 MOVE                             R74 R36
      905 JUMP                             ; [+1]
      906 LOADNIL                          R74
      907 SETTABLEKS                       R74 R73 K72 ["onActivated"]
      909 GETUPVAL                         R75 0
      910 GETTABLEKS                       R75 R75 K12 ["FoundationTextInputsBetaUpdate"]
      912 JUMPIFNOT                        R75 ; [+2]
      913 LOADNIL                          R74
      914 JUMP                             ; [+1]
      915 MOVE                             R74 R48
      916 SETTABLEKS                       R74 R73 K73 ["onStateChanged"]
      918 GETTABLEKS                       R74 R2 K34 ["isDisabled"]
      920 SETTABLEKS                       R74 R73 K34 ["isDisabled"]
      922 GETTABLEKS                       R75 R19 K100 ["bgStyle"]
      924 JUMPIFNOT                        R75 ; [+23]
      925 GETUPVAL                         R74 9
      926 DUPTABLE                         R75 K101 [{"Color3", "Transparency"}]
      927 GETTABLEKS                       R76 R19 K100 ["bgStyle"]
      929 GETTABLEKS                       R76 R76 K90 ["Color3"]
      931 SETTABLEKS                       R76 R75 K90 ["Color3"]
      933 GETTABLEKS                       R77 R2 K102 ["backgroundGradient"]
      935 JUMPIFNOT                        R77 ; [+2]
      936 LOADN                            R76 0
      937 JUMP                             ; [+4]
      938 GETTABLEKS                       R76 R19 K100 ["bgStyle"]
      940 GETTABLEKS                       R76 R76 K86 ["Transparency"]
      942 SETTABLEKS                       R76 R75 K86 ["Transparency"]
      944 GETTABLEKS                       R76 R2 K34 ["isDisabled"]
      946 CALL                             R74 2 1
      947 JUMP                             ; [+1]
      948 LOADNIL                          R74
      949 SETTABLEKS                       R74 R73 K74 ["backgroundStyle"]
      951 DUPTABLE                         R74 K104 [{"affordance"}]
      952 GETUPVAL                         R75 21
      953 GETTABLEKS                       R75 R75 K105 ["None"]
      955 SETTABLEKS                       R75 R74 K103 ["affordance"]
      957 SETTABLEKS                       R74 R73 K75 ["stateLayer"]
      959 GETTABLEKS                       R74 R19 K20 ["tag"]
      961 SETTABLEKS                       R74 R73 K20 ["tag"]
      963 LOADK                            R75 K106 ["%*--outer-container"]
      964 GETTABLEKS                       R77 R2 K76 ["testId"]
      966 NAMECALL                         R75 R75 K107 ["format"]
      968 CALL                             R75 2 1
      969 MOVE                             R74 R75
      970 SETTABLEKS                       R74 R73 K76 ["testId"]
      972 CALL                             R71 2 1
      973 DUPTABLE                         R72 K114 [{"DragDetector", "Background", "Leading", "TextBoxWrapper", "Clear", "Trailing"}]
      974 SETTABLEKS                       R64 R72 K108 ["DragDetector"]
      976 GETTABLEKS                       R73 R2 K102 ["backgroundGradient"]
      978 SETTABLEKS                       R73 R72 K109 ["Background"]
      980 GETTABLEKS                       R74 R2 K115 ["leadingElement"]
      982 JUMPIFNOT                        R74 ; [+28]
      983 GETUPVAL                         R73 4
      984 GETTABLEKS                       R73 R73 K64 ["createElement"]
      986 GETUPVAL                         R74 16
      987 DUPTABLE                         R75 K120 [{["GroupTransparency"], ["LayoutOrder"] = 1, ["tag"] = "size-0-full auto-x", ["testId"]}]
      988 GETTABLEKS                       R77 R2 K34 ["isDisabled"]
      990 JUMPIFNOT                        R77 ; [+4]
      991 GETUPVAL                         R76 19
      992 GETTABLEKS                       R76 R76 K91 ["DISABLED_TRANSPARENCY"]
      994 JUMP                             ; [+1]
      995 LOADNIL                          R76
      996 SETTABLEKS                       R76 R75 K116 ["GroupTransparency"]
      998 LOADK                            R77 K121 ["%*--leading"]
      999 GETTABLEKS                       R79 R2 K76 ["testId"]
     1001 NAMECALL                         R77 R77 K107 ["format"]
     1003 CALL                             R77 2 1
     1004 MOVE                             R76 R77
     1005 SETTABLEKS                       R76 R75 K76 ["testId"]
     1007 GETTABLEKS                       R76 R2 K115 ["leadingElement"]
     1009 CALL                             R73 3 1
     1010 JUMP                             ; [+1]
     1011 LOADNIL                          R73
     1012 SETTABLEKS                       R73 R72 K110 ["Leading"]
     1014 GETUPVAL                         R73 4
     1015 GETTABLEKS                       R73 R73 K64 ["createElement"]
     1017 JUMPIFNOT                        R5 ; [+2]
     1018 GETUPVAL                         R74 22
     1019 JUMP                             ; [+1]
     1020 GETUPVAL                         R74 16
     1021 DUPTABLE                         R75 K127 [{["LayoutOrder"] = 2, ["selection"], ["scroll"], ["layout"], ["onCanvasPositionChanged"], ["scrollingFrameRef"], ["tag"] = "fill size-full clip"}]
     1022 DUPTABLE                         R76 K129 [{["Selectable"] = False}]
     1023 SETTABLEKS                       R76 R75 K67 ["selection"]
     1025 SETTABLEKS                       R59 R75 K122 ["scroll"]
     1027 SETTABLEKS                       R58 R75 K123 ["layout"]
     1029 JUMPIFNOT                        R5 ; [+2]
     1030 MOVE                             R76 R63
     1031 JUMP                             ; [+1]
     1032 LOADNIL                          R76
     1033 SETTABLEKS                       R76 R75 K124 ["onCanvasPositionChanged"]
     1035 JUMPIFNOT                        R5 ; [+2]
     1036 MOVE                             R76 R61
     1037 JUMP                             ; [+1]
     1038 LOADNIL                          R76
     1039 SETTABLEKS                       R76 R75 K125 ["scrollingFrameRef"]
     1041 DUPTABLE                         R76 K132 [{"TextBox", "MobileTextBox"}]
     1042 JUMPIF                           R22 ; [+108]
     1043 GETUPVAL                         R77 4
     1044 GETTABLEKS                       R77 R77 K64 ["createElement"]
     1046 GETUPVAL                         R78 23
     1047 DUPTABLE                         R79 K143 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "Size", "automaticSize", "padding", "onFocusGained", "onFocusLost", "onTextChanged", "onCursorPositionChanged", "onInputChanged", "onInputEnded"}]
     1048 GETTABLEKS                       R80 R2 K8 ["text"]
     1050 SETTABLEKS                       R80 R79 K8 ["text"]
     1052 GETTABLEKS                       R80 R2 K133 ["placeholder"]
     1054 SETTABLEKS                       R80 R79 K133 ["placeholder"]
     1056 GETTABLEKS                       R80 R2 K134 ["textInputType"]
     1058 SETTABLEKS                       R80 R79 K134 ["textInputType"]
     1060 SETTABLEKS                       R30 R79 K35 ["fontStyle"]
     1062 SETTABLEKS                       R29 R79 K135 ["textStyle"]
     1064 SETTABLEKS                       R5 R79 K136 ["isMultiLine"]
     1066 GETTABLEKS                       R80 R2 K34 ["isDisabled"]
     1068 SETTABLEKS                       R80 R79 K34 ["isDisabled"]
     1070 SETTABLEKS                       R6 R79 K65 ["ref"]
     1072 LOADK                            R81 K144 ["%* data-testid=%*--textbox"]
     1073 ORK                              R83 R20 K7 [""]
     1074 GETTABLEKS                       R84 R2 K76 ["testId"]
     1076 NAMECALL                         R81 R81 K107 ["format"]
     1078 CALL                             R81 3 1
     1079 MOVE                             R80 R81
     1080 SETTABLEKS                       R80 R79 K20 ["tag"]
     1082 JUMPIFNOT                        R5 ; [+2]
     1083 MOVE                             R80 R57
     1084 JUMP                             ; [+1]
     1085 LOADNIL                          R80
     1086 SETTABLEKS                       R80 R79 K66 ["Size"]
     1088 GETUPVAL                         R80 24
     1089 GETTABLEKS                       R81 R2 K8 ["text"]
     1091 NEWCLOSURE                       R82 P32
     1092 CAPTURE                          VAL R5
     1093 CAPTURE                          VAL R22
     1094 CALL                             R80 2 1
     1095 SETTABLEKS                       R80 R79 K137 ["automaticSize"]
     1097 SETTABLEKS                       R54 R79 K71 ["padding"]
     1099 SETTABLEKS                       R44 R79 K138 ["onFocusGained"]
     1101 JUMPIFNOT                        R5 ; [+3]
     1102 JUMPIFNOT                        R24 ; [+2]
     1103 LOADNIL                          R80
     1104 JUMP                             ; [+1]
     1105 MOVE                             R80 R47
     1106 SETTABLEKS                       R80 R79 K45 ["onFocusLost"]
     1108 SETTABLEKS                       R42 R79 K139 ["onTextChanged"]
     1110 JUMPIFNOT                        R5 ; [+2]
     1111 MOVE                             R80 R60
     1112 JUMP                             ; [+1]
     1113 LOADNIL                          R80
     1114 SETTABLEKS                       R80 R79 K140 ["onCursorPositionChanged"]
     1116 SETTABLEKS                       R45 R79 K141 ["onInputChanged"]
     1118 SETTABLEKS                       R46 R79 K142 ["onInputEnded"]
     1120 DUPTABLE                         R80 K146 [{"DragDetector", "BoundsChecker"}]
     1121 SETTABLEKS                       R64 R80 K108 ["DragDetector"]
     1123 JUMPIFNOT                        R5 ; [+22]
     1124 GETUPVAL                         R81 4
     1125 GETTABLEKS                       R81 R81 K64 ["createElement"]
     1127 GETUPVAL                         R82 23
     1128 DUPTABLE                         R83 K149 [{["isBoundsChecker"] = True, ["fontStyle"], ["textStyle"], ["Size"], ["ref"]}]
     1129 SETTABLEKS                       R30 R83 K35 ["fontStyle"]
     1131 SETTABLEKS                       R29 R83 K135 ["textStyle"]
     1133 GETIMPORT                        R84 K56 [UDim2.new]
     1135 LOADN                            R85 1
     1136 LOADN                            R86 0
     1137 LOADN                            R87 1
     1138 MOVE                             R88 R56
     1139 CALL                             R84 4 1
     1140 SETTABLEKS                       R84 R83 K66 ["Size"]
     1142 SETTABLEKS                       R8 R83 K65 ["ref"]
     1144 CALL                             R81 2 1
     1145 JUMP                             ; [+1]
     1146 LOADNIL                          R81
     1147 SETTABLEKS                       R81 R80 K145 ["BoundsChecker"]
     1149 CALL                             R77 3 1
     1150 JUMP                             ; [+1]
     1151 LOADNIL                          R77
     1152 SETTABLEKS                       R77 R76 K130 ["TextBox"]
     1154 JUMPIFNOT                        R5 ; [+61]
     1155 JUMPIFNOT                        R22 ; [+60]
     1156 GETUPVAL                         R77 4
     1157 GETTABLEKS                       R77 R77 K64 ["createElement"]
     1159 GETUPVAL                         R78 23
     1160 DUPTABLE                         R79 K150 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "padding", "ref", "tag", "Size", "onFocusLost", "onTextChanged", "onCursorPositionChanged"}]
     1161 GETTABLEKS                       R80 R2 K8 ["text"]
     1163 SETTABLEKS                       R80 R79 K8 ["text"]
     1165 GETTABLEKS                       R80 R2 K133 ["placeholder"]
     1167 SETTABLEKS                       R80 R79 K133 ["placeholder"]
     1169 GETTABLEKS                       R80 R2 K134 ["textInputType"]
     1171 SETTABLEKS                       R80 R79 K134 ["textInputType"]
     1173 SETTABLEKS                       R30 R79 K35 ["fontStyle"]
     1175 SETTABLEKS                       R29 R79 K135 ["textStyle"]
     1177 SETTABLEKS                       R5 R79 K136 ["isMultiLine"]
     1179 GETTABLEKS                       R80 R2 K34 ["isDisabled"]
     1181 SETTABLEKS                       R80 R79 K34 ["isDisabled"]
     1183 SETTABLEKS                       R54 R79 K71 ["padding"]
     1185 SETTABLEKS                       R68 R79 K65 ["ref"]
     1187 LOADK                            R81 K151 ["%* data-testid=%*--mobile-textbox"]
     1188 ORK                              R83 R20 K7 [""]
     1189 GETTABLEKS                       R84 R2 K76 ["testId"]
     1191 NAMECALL                         R81 R81 K107 ["format"]
     1193 CALL                             R81 3 1
     1194 MOVE                             R80 R81
     1195 SETTABLEKS                       R80 R79 K20 ["tag"]
     1197 SETTABLEKS                       R57 R79 K66 ["Size"]
     1199 JUMPIFNOT                        R5 ; [+3]
     1200 JUMPIFNOT                        R24 ; [+2]
     1201 MOVE                             R80 R47
     1202 JUMP                             ; [+1]
     1203 LOADNIL                          R80
     1204 SETTABLEKS                       R80 R79 K45 ["onFocusLost"]
     1206 SETTABLEKS                       R42 R79 K139 ["onTextChanged"]
     1208 JUMPIFNOT                        R5 ; [+2]
     1209 MOVE                             R80 R60
     1210 JUMP                             ; [+1]
     1211 LOADNIL                          R80
     1212 SETTABLEKS                       R80 R79 K140 ["onCursorPositionChanged"]
     1214 CALL                             R77 2 1
     1215 JUMP                             ; [+1]
     1216 LOADNIL                          R77
     1217 SETTABLEKS                       R77 R76 K131 ["MobileTextBox"]
     1219 CALL                             R73 3 1
     1220 SETTABLEKS                       R73 R72 K111 ["TextBoxWrapper"]
     1222 GETTABLEKS                       R74 R2 K62 ["hasClearButton"]
     1224 JUMPIFNOT                        R74 ; [+89]
     1225 GETUPVAL                         R73 4
     1226 GETTABLEKS                       R73 R73 K64 ["createElement"]
     1228 GETUPVAL                         R74 16
     1229 DUPTABLE                         R75 K154 [{["isDisabled"], ["GroupTransparency"], ["LayoutOrder"] = 3, ["Visible"], ["tag"]}]
     1230 GETTABLEKS                       R76 R2 K34 ["isDisabled"]
     1232 SETTABLEKS                       R76 R75 K34 ["isDisabled"]
     1234 GETTABLEKS                       R77 R2 K34 ["isDisabled"]
     1236 JUMPIFNOT                        R77 ; [+4]
     1237 GETUPVAL                         R76 19
     1238 GETTABLEKS                       R76 R76 K91 ["DISABLED_TRANSPARENCY"]
     1240 JUMP                             ; [+1]
     1241 LOADNIL                          R76
     1242 SETTABLEKS                       R76 R75 K116 ["GroupTransparency"]
     1244 GETUPVAL                         R76 24
     1245 GETTABLEKS                       R77 R2 K8 ["text"]
     1247 DUPCLOSURE                       R78 K155 [PROTO_36]
     1248 CALL                             R76 2 1
     1249 SETTABLEKS                       R76 R75 K153 ["Visible"]
     1251 GETTABLEKS                       R76 R18 K156 ["clearButton"]
     1253 GETTABLEKS                       R76 R76 K20 ["tag"]
     1255 SETTABLEKS                       R76 R75 K20 ["tag"]
     1257 DUPTABLE                         R76 K158 [{"ClearButton"}]
     1258 GETUPVAL                         R77 4
     1259 GETTABLEKS                       R77 R77 K64 ["createElement"]
     1261 GETUPVAL                         R78 16
     1262 DUPTABLE                         R79 K161 [{["onActivated"], ["padding"], ["Position"], ["stateLayer"], ["tag"] = "anchor-center-left auto-xy", ["testId"]}]
     1263 SETTABLEKS                       R41 R79 K72 ["onActivated"]
     1265 GETIMPORT                        R80 K60 [UDim.new]
     1267 LOADN                            R81 0
     1268 GETTABLEKS                       R82 R18 K156 ["clearButton"]
     1270 GETTABLEKS                       R82 R82 K71 ["padding"]
     1272 CALL                             R80 2 1
     1273 SETTABLEKS                       R80 R79 K71 ["padding"]
     1275 SETTABLEKS                       R67 R79 K159 ["Position"]
     1277 DUPTABLE                         R80 K104 [{"affordance"}]
     1278 GETUPVAL                         R81 21
     1279 GETTABLEKS                       R81 R81 K105 ["None"]
     1281 SETTABLEKS                       R81 R80 K103 ["affordance"]
     1283 SETTABLEKS                       R80 R79 K75 ["stateLayer"]
     1285 LOADK                            R81 K162 ["%*--clear-button"]
     1286 GETTABLEKS                       R83 R2 K76 ["testId"]
     1288 NAMECALL                         R81 R81 K107 ["format"]
     1290 CALL                             R81 2 1
     1291 MOVE                             R80 R81
     1292 SETTABLEKS                       R80 R79 K76 ["testId"]
     1294 DUPTABLE                         R80 K164 [{"Icon"}]
     1295 GETUPVAL                         R81 4
     1296 GETTABLEKS                       R81 R81 K64 ["createElement"]
     1298 GETUPVAL                         R82 25
     1299 DUPTABLE                         R83 K166 [{"name"}]
     1300 GETTABLEKS                       R84 R18 K156 ["clearButton"]
     1302 GETTABLEKS                       R84 R84 K167 ["icon"]
     1304 SETTABLEKS                       R84 R83 K165 ["name"]
     1306 CALL                             R81 2 1
     1307 SETTABLEKS                       R81 R80 K163 ["Icon"]
     1309 CALL                             R77 3 1
     1310 SETTABLEKS                       R77 R76 K157 ["ClearButton"]
     1312 CALL                             R73 3 1
     1313 JUMP                             ; [+1]
     1314 LOADNIL                          R73
     1315 SETTABLEKS                       R73 R72 K112 ["Clear"]
     1317 GETTABLEKS                       R74 R2 K99 ["trailingElement"]
     1319 JUMPIFNOT                        R74 ; [+28]
     1320 GETUPVAL                         R73 4
     1321 GETTABLEKS                       R73 R73 K64 ["createElement"]
     1323 GETUPVAL                         R74 16
     1324 DUPTABLE                         R75 K169 [{["GroupTransparency"], ["LayoutOrder"] = 4, ["tag"] = "size-0-full auto-x", ["testId"]}]
     1325 GETTABLEKS                       R77 R2 K34 ["isDisabled"]
     1327 JUMPIFNOT                        R77 ; [+4]
     1328 GETUPVAL                         R76 19
     1329 GETTABLEKS                       R76 R76 K91 ["DISABLED_TRANSPARENCY"]
     1331 JUMP                             ; [+1]
     1332 LOADNIL                          R76
     1333 SETTABLEKS                       R76 R75 K116 ["GroupTransparency"]
     1335 LOADK                            R77 K170 ["%*--trailing"]
     1336 GETTABLEKS                       R79 R2 K76 ["testId"]
     1338 NAMECALL                         R77 R77 K107 ["format"]
     1340 CALL                             R77 2 1
     1341 MOVE                             R76 R77
     1342 SETTABLEKS                       R76 R75 K76 ["testId"]
     1344 GETTABLEKS                       R76 R2 K99 ["trailingElement"]
     1346 CALL                             R73 3 1
     1347 JUMP                             ; [+1]
     1348 LOADNIL                          R73
     1349 SETTABLEKS                       R73 R72 K113 ["Trailing"]
     1351 CALL                             R69 3 -1
     1352 CLOSEUPVALS                      R15
     1353 RETURN                           R69 -1

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
      223 DUPCLOSURE                       R34 K56 [PROTO_37]
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
