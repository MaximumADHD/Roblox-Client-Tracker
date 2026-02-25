PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["TextBox"]
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K4 ["ShouldEmitReturnEvents"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnFocused"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["OnFocused"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["OnFocusLost"]
        5 JUMPIFNOT                        R3 ; [+9]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["props"]
        9 GETTABLEKS                       R3 R4 K1 ["OnFocusLost"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R3 3 0
       15 JUMPIFNOT                        R1 ; [+13]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["props"]
       19 GETTABLEKS                       R3 R4 K2 ["OnEnter"]
       21 JUMPIFEQKNIL                     R3 ; [+7]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K0 ["props"]
       26 GETTABLEKS                       R3 R4 K2 ["OnEnter"]
       28 CALL                             R3 0 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 JUMPIFNOT                        R2 ; [+5]
        9 LOADK                            R3 K2 ["Text"]
       10 NAMECALL                         R1 R0 K3 ["GetStyled"]
       12 CALL                             R1 2 1
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R1 R0 K2 ["Text"]
       16 MOVE                             R2 R1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K4 ["props"]
       20 GETTABLEKS                       R3 R4 K5 ["AllowTab"]
       22 JUMPIF                           R3 ; [+12]
       23 GETIMPORT                        R3 K8 [string.find]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K9 ["\t"]
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R3 ; [+6]
       29 LOADK                            R5 K9 ["\t"]
       30 LOADK                            R6 K10 [""]
       31 NAMECALL                         R3 R2 K11 ["gsub"]
       33 CALL                             R3 3 1
       34 MOVE                             R2 R3
       35 GETUPVAL                         R3 2
       36 JUMPIF                           R3 ; [+28]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R4 R5 K4 ["props"]
       40 GETTABLEKS                       R3 R4 K12 ["OnEnter"]
       42 JUMPIFEQKNIL                     R3 ; [+13]
       44 GETIMPORT                        R3 K8 [string.find]
       46 MOVE                             R4 R2
       47 LOADK                            R5 K13 ["\n"]
       48 CALL                             R3 2 1
       49 JUMPIFNOT                        R3 ; [+6]
       50 LOADK                            R5 K13 ["\n"]
       51 LOADK                            R6 K10 [""]
       52 NAMECALL                         R3 R2 K11 ["gsub"]
       54 CALL                             R3 3 1
       55 MOVE                             R2 R3
       56 JUMPIFEQ                         R2 R1 ; [+8]
       58 MOVE                             R1 R2
       59 SETTABLEKS                       R1 R0 K2 ["Text"]
       61 LOADB                            R5 1
       62 NAMECALL                         R3 R0 K14 ["ReleaseFocus"]
       64 CALL                             R3 2 0
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R4 R5 K4 ["props"]
       68 GETTABLEKS                       R3 R4 K15 ["OnTextChanged"]
       70 JUMPIFNOT                        R3 ; [+7]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K4 ["props"]
       74 GETTABLEKS                       R3 R4 K15 ["OnTextChanged"]
       76 MOVE                             R4 R1
       77 CALL                             R3 1 0
       78 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["textBoxRef"]
        6 GETTABLEKS                       R2 R3 K1 ["current"]
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
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R4 R5 K13 ["props"]
       32 GETTABLEKS                       R3 R4 K14 ["MultiLine"]
       34 JUMPIFNOT                        R3 ; [+1]
       35 RETURN                           R0 0
       36 LOADB                            R5 1
       37 NAMECALL                         R3 R2 K15 ["ReleaseFocus"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["ForwardRef"]
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["createRef"]
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
       20 CAPTURE                          UPVAL U2
       21 SETTABLEKS                       R2 R0 K5 ["textChanged"]
       23 NEWCLOSURE                       R2 P3
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K6 ["inputBegan"]
       28 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["MultiLine"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
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
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R7 R8 K29 ["Event"]
       97 GETTABLEKS                       R6 R7 K30 ["Focused"]
       99 GETTABLEKS                       R7 R0 K31 ["focused"]
      101 SETTABLE                         R7 R5 R6
      102 GETUPVAL                         R8 0
      103 GETTABLEKS                       R7 R8 K29 ["Event"]
      105 GETTABLEKS                       R6 R7 K32 ["FocusLost"]
      107 GETTABLEKS                       R7 R0 K33 ["focusLost"]
      109 SETTABLE                         R7 R5 R6
      110 GETUPVAL                         R8 0
      111 GETTABLEKS                       R7 R8 K29 ["Event"]
      113 GETTABLEKS                       R6 R7 K34 ["InputBegan"]
      115 GETTABLEKS                       R7 R0 K35 ["inputBegan"]
      117 SETTABLE                         R7 R5 R6
      118 GETUPVAL                         R8 0
      119 GETTABLEKS                       R7 R8 K36 ["Change"]
      121 GETTABLEKS                       R6 R7 K20 ["Text"]
      123 GETTABLEKS                       R7 R0 K37 ["textChanged"]
      125 SETTABLE                         R7 R5 R6
      126 GETUPVAL                         R7 0
      127 GETTABLEKS                       R6 R7 K38 ["Ref"]
      129 GETTABLEKS                       R7 R0 K39 ["textBoxRef"]
      131 SETTABLE                         R7 R5 R6
      132 CALL                             R3 2 -1
      133 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Typecheck"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Wrappers"]
       27 GETTABLEKS                       R4 R5 K11 ["withForwardRef"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R5 R0 K12 ["SharedFlags"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K13 ["getFFlagDeveloperFrameworkMigrateStylingV2"]
       37 CALL                             R5 0 1
       38 GETIMPORT                        R6 K15 [game]
       40 LOADK                            R8 K16 ["TextBoxEmitReturn"]
       41 NAMECALL                         R6 R6 K17 ["GetFastFlag"]
       43 CALL                             R6 2 1
       44 MOVE                             R7 R6
       45 JUMPIFNOT                        R7 ; [+4]
       46 GETIMPORT                        R7 K19 [pcall]
       48 DUPCLOSURE                       R8 K20 [PROTO_0]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R1 K21 ["PureComponent"]
       52 LOADK                            R10 K22 ["TextBox"]
       53 NAMECALL                         R8 R8 K23 ["extend"]
       55 CALL                             R8 2 1
       56 GETTABLEKS                       R9 R2 K24 ["wrap"]
       58 MOVE                             R10 R8
       59 GETIMPORT                        R11 K1 [script]
       61 CALL                             R9 2 0
       62 DUPTABLE                         R9 K31 [{"AllowTab", "Disabled", "ClearTextOnFocus", "PlaceholderText", "Size", "TextWrapped"}]
       63 LOADB                            R10 0
       64 SETTABLEKS                       R10 R9 K25 ["AllowTab"]
       66 LOADB                            R10 0
       67 SETTABLEKS                       R10 R9 K26 ["Disabled"]
       69 LOADB                            R10 0
       70 SETTABLEKS                       R10 R9 K27 ["ClearTextOnFocus"]
       72 LOADK                            R10 K32 [""]
       73 SETTABLEKS                       R10 R9 K28 ["PlaceholderText"]
       75 GETIMPORT                        R10 K35 [UDim2.new]
       77 LOADN                            R11 0
       78 LOADN                            R12 100
       79 LOADN                            R13 0
       80 LOADN                            R14 32
       81 CALL                             R10 4 1
       82 SETTABLEKS                       R10 R9 K29 ["Size"]
       84 LOADB                            R10 0
       85 SETTABLEKS                       R10 R9 K30 ["TextWrapped"]
       87 SETTABLEKS                       R9 R8 K36 ["defaultProps"]
       89 DUPCLOSURE                       R9 K37 [PROTO_5]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R7
       93 SETTABLEKS                       R9 R8 K38 ["init"]
       95 DUPCLOSURE                       R9 K39 [PROTO_6]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R7
       98 SETTABLEKS                       R9 R8 K40 ["render"]
      100 MOVE                             R9 R3
      101 MOVE                             R10 R8
      102 CALL                             R9 1 -1
      103 RETURN                           R9 -1
