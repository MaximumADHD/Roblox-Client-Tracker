PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["TextBox"]
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K4 ["ShouldEmitReturnEvents"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnFocused"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnFocused"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["OnFocusLost"]
        5 JUMPIFNOT                        R3 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["OnFocusLost"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R3 3 0
       15 JUMPIFNOT                        R1 ; [+13]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["props"]
       19 GETTABLEKS                       R3 R3 K2 ["OnEnter"]
       21 JUMPIFEQKNIL                     R3 ; [+7]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["props"]
       26 GETTABLEKS                       R3 R3 K2 ["OnEnter"]
       28 CALL                             R3 0 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 LOADK                            R3 K2 ["Text"]
        8 NAMECALL                         R1 R0 K3 ["GetStyled"]
       10 CALL                             R1 2 1
       11 MOVE                             R2 R1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["props"]
       15 GETTABLEKS                       R3 R3 K5 ["AllowTab"]
       17 JUMPIF                           R3 ; [+12]
       18 GETIMPORT                        R3 K8 [string.find]
       20 MOVE                             R4 R2
       21 LOADK                            R5 K9 ["\t"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+6]
       24 LOADK                            R5 K9 ["\t"]
       25 LOADK                            R6 K10 [""]
       26 NAMECALL                         R3 R2 K11 ["gsub"]
       28 CALL                             R3 3 1
       29 MOVE                             R2 R3
       30 GETUPVAL                         R3 1
       31 JUMPIF                           R3 ; [+28]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K4 ["props"]
       35 GETTABLEKS                       R3 R3 K12 ["OnEnter"]
       37 JUMPIFEQKNIL                     R3 ; [+13]
       39 GETIMPORT                        R3 K8 [string.find]
       41 MOVE                             R4 R2
       42 LOADK                            R5 K13 ["\n"]
       43 CALL                             R3 2 1
       44 JUMPIFNOT                        R3 ; [+6]
       45 LOADK                            R5 K13 ["\n"]
       46 LOADK                            R6 K10 [""]
       47 NAMECALL                         R3 R2 K11 ["gsub"]
       49 CALL                             R3 3 1
       50 MOVE                             R2 R3
       51 JUMPIFEQ                         R2 R1 ; [+8]
       53 MOVE                             R1 R2
       54 SETTABLEKS                       R1 R0 K2 ["Text"]
       56 LOADB                            R5 1
       57 NAMECALL                         R3 R0 K14 ["ReleaseFocus"]
       59 CALL                             R3 2 0
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K4 ["props"]
       63 GETTABLEKS                       R3 R3 K15 ["OnTextChanged"]
       65 JUMPIFNOT                        R3 ; [+7]
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K4 ["props"]
       69 GETTABLEKS                       R3 R3 K15 ["OnTextChanged"]
       71 MOVE                             R4 R1
       72 CALL                             R3 1 0
       73 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["textBoxRef"]
        6 GETTABLEKS                       R2 R2 K1 ["current"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       12 GETIMPORT                        R4 K5 [Enum.UserInputType.Keyboard]
       14 JUMPIFEQ                         R3 R4 ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R1 K6 ["KeyCode"]
       19 GETIMPORT                        R4 K8 [Enum.KeyCode.Return]
       21 JUMPIFNOTEQ                      R3 R4 ; [+18]
       23 GETIMPORT                        R5 K11 [Enum.ModifierKey.Shift]
       25 NAMECALL                         R3 R1 K12 ["IsModifierKeyDown"]
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R3 ; [+7]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K13 ["props"]
       32 GETTABLEKS                       R3 R3 K14 ["MultiLine"]
       34 JUMPIFNOT                        R3 ; [+1]
       35 RETURN                           R0 0
       36 LOADB                            R5 1
       37 NAMECALL                         R3 R2 K15 ["ReleaseFocus"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["ForwardRef"]
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["createRef"]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R0 K2 ["textBoxRef"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K3 ["focused"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K4 ["focusLost"]
       17 NEWCLOSURE                       R2 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R2 R0 K5 ["textChanged"]
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K6 ["inputBegan"]
       27 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["MultiLine"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 LOADK                            R4 K3 ["TextBox"]
        8 NEWTABLE                         R5 32 0
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETIMPORT                        R6 K7 [Enum.AutomaticSize.Y]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 SETTABLEKS                       R6 R5 K5 ["AutomaticSize"]
       17 LOADN                            R6 1
       18 SETTABLEKS                       R6 R5 K8 ["BackgroundTransparency"]
       20 LOADN                            R6 0
       21 SETTABLEKS                       R6 R5 K9 ["BorderSizePixel"]
       23 GETTABLEKS                       R6 R1 K10 ["ClearTextOnFocus"]
       25 SETTABLEKS                       R6 R5 K10 ["ClearTextOnFocus"]
       27 LOADB                            R6 1
       28 SETTABLEKS                       R6 R5 K11 ["ClipsDescendants"]
       30 GETTABLEKS                       R6 R1 K12 ["Font"]
       32 SETTABLEKS                       R6 R5 K12 ["Font"]
       34 GETTABLEKS                       R6 R1 K13 ["LayoutOrder"]
       36 SETTABLEKS                       R6 R5 K13 ["LayoutOrder"]
       38 GETTABLEKS                       R6 R1 K14 ["LineHeight"]
       40 SETTABLEKS                       R6 R5 K14 ["LineHeight"]
       42 GETTABLEKS                       R6 R1 K1 ["MultiLine"]
       44 SETTABLEKS                       R6 R5 K1 ["MultiLine"]
       46 GETTABLEKS                       R6 R1 K15 ["PlaceholderTextColor"]
       48 SETTABLEKS                       R6 R5 K16 ["PlaceholderColor3"]
       50 GETTABLEKS                       R6 R1 K17 ["PlaceholderText"]
       52 SETTABLEKS                       R6 R5 K17 ["PlaceholderText"]
       54 GETTABLEKS                       R6 R1 K18 ["Size"]
       56 SETTABLEKS                       R6 R5 K18 ["Size"]
       58 GETUPVAL                         R7 1
       59 JUMPIFNOT                        R7 ; [+2]
       60 LOADB                            R6 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K19 ["ShouldEmitReturnEvents"]
       65 GETTABLEKS                       R6 R1 K20 ["Text"]
       67 SETTABLEKS                       R6 R5 K20 ["Text"]
       69 GETTABLEKS                       R6 R1 K21 ["TextColor"]
       71 SETTABLEKS                       R6 R5 K22 ["TextColor3"]
       73 GETTABLEKS                       R7 R1 K23 ["Disabled"]
       75 NOT                              R6 R7
       76 SETTABLEKS                       R6 R5 K24 ["TextEditable"]
       78 GETTABLEKS                       R6 R1 K25 ["TextSize"]
       80 SETTABLEKS                       R6 R5 K25 ["TextSize"]
       82 GETTABLEKS                       R6 R1 K26 ["TextWrapped"]
       84 SETTABLEKS                       R6 R5 K26 ["TextWrapped"]
       86 GETTABLEKS                       R6 R1 K27 ["TextXAlignment"]
       88 SETTABLEKS                       R6 R5 K27 ["TextXAlignment"]
       90 GETTABLEKS                       R6 R1 K28 ["TextYAlignment"]
       92 SETTABLEKS                       R6 R5 K28 ["TextYAlignment"]
       94 GETUPVAL                         R6 0
       95 GETTABLEKS                       R6 R6 K29 ["Event"]
       97 GETTABLEKS                       R6 R6 K30 ["Focused"]
       99 GETTABLEKS                       R7 R0 K31 ["focused"]
      101 SETTABLE                         R7 R5 R6
      102 GETUPVAL                         R6 0
      103 GETTABLEKS                       R6 R6 K29 ["Event"]
      105 GETTABLEKS                       R6 R6 K32 ["FocusLost"]
      107 GETTABLEKS                       R7 R0 K33 ["focusLost"]
      109 SETTABLE                         R7 R5 R6
      110 GETUPVAL                         R6 0
      111 GETTABLEKS                       R6 R6 K29 ["Event"]
      113 GETTABLEKS                       R6 R6 K34 ["InputBegan"]
      115 GETTABLEKS                       R7 R0 K35 ["inputBegan"]
      117 SETTABLE                         R7 R5 R6
      118 GETUPVAL                         R6 0
      119 GETTABLEKS                       R6 R6 K36 ["Change"]
      121 GETTABLEKS                       R6 R6 K20 ["Text"]
      123 GETTABLEKS                       R7 R0 K37 ["textChanged"]
      125 SETTABLE                         R7 R5 R6
      126 GETUPVAL                         R6 0
      127 GETTABLEKS                       R6 R6 K38 ["Ref"]
      129 GETTABLEKS                       R7 R0 K39 ["textBoxRef"]
      131 SETTABLE                         R7 R5 R6
      132 CALL                             R3 2 -1
      133 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Typecheck"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Wrappers"]
       27 GETTABLEKS                       R4 R4 K11 ["withForwardRef"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K13 [game]
       32 LOADK                            R6 K14 ["TextBoxEmitReturn"]
       33 NAMECALL                         R4 R4 K15 ["GetFastFlag"]
       35 CALL                             R4 2 1
       36 MOVE                             R5 R4
       37 JUMPIFNOT                        R5 ; [+4]
       38 GETIMPORT                        R5 K17 [pcall]
       40 DUPCLOSURE                       R6 K18 [PROTO_0]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R1 K19 ["PureComponent"]
       44 LOADK                            R8 K20 ["TextBox"]
       45 NAMECALL                         R6 R6 K21 ["extend"]
       47 CALL                             R6 2 1
       48 GETTABLEKS                       R7 R2 K22 ["wrap"]
       50 MOVE                             R8 R6
       51 GETIMPORT                        R9 K1 [script]
       53 CALL                             R7 2 0
       54 DUPTABLE                         R7 K29 [{"AllowTab", "Disabled", "ClearTextOnFocus", "PlaceholderText", "Size", "TextWrapped"}]
       55 LOADB                            R8 0
       56 SETTABLEKS                       R8 R7 K23 ["AllowTab"]
       58 LOADB                            R8 0
       59 SETTABLEKS                       R8 R7 K24 ["Disabled"]
       61 LOADB                            R8 0
       62 SETTABLEKS                       R8 R7 K25 ["ClearTextOnFocus"]
       64 LOADK                            R8 K30 [""]
       65 SETTABLEKS                       R8 R7 K26 ["PlaceholderText"]
       67 GETIMPORT                        R8 K33 [UDim2.new]
       69 LOADN                            R9 0
       70 LOADN                            R10 100
       71 LOADN                            R11 0
       72 LOADN                            R12 32
       73 CALL                             R8 4 1
       74 SETTABLEKS                       R8 R7 K27 ["Size"]
       76 LOADB                            R8 0
       77 SETTABLEKS                       R8 R7 K28 ["TextWrapped"]
       79 SETTABLEKS                       R7 R6 K34 ["defaultProps"]
       81 DUPCLOSURE                       R7 K35 [PROTO_5]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R7 R6 K36 ["init"]
       86 DUPCLOSURE                       R7 K37 [PROTO_6]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R7 R6 K38 ["render"]
       91 MOVE                             R7 R3
       92 MOVE                             R8 R6
       93 CALL                             R7 1 -1
       94 RETURN                           R7 -1
