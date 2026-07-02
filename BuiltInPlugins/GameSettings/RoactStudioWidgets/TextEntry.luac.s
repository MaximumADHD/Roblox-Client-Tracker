PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["HorizontalAlignment"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+13]
        7 GETTABLEKS                       R2 R0 K2 ["TextFits"]
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETIMPORT                        R2 K6 [Enum.TextXAlignment.Left]
       12 SETTABLEKS                       R2 R0 K4 ["TextXAlignment"]
       14 JUMP                             ; [+4]
       15 GETIMPORT                        R2 K8 [Enum.TextXAlignment.Right]
       17 SETTABLEKS                       R2 R0 K4 ["TextXAlignment"]
       19 GETTABLEKS                       R2 R0 K9 ["Text"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["props"]
       24 GETTABLEKS                       R3 R3 K9 ["Text"]
       26 JUMPIFEQ                         R2 R3 ; [+9]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K0 ["props"]
       31 GETTABLEKS                       R2 R2 K10 ["SetText"]
       33 GETTABLEKS                       R3 R0 K9 ["Text"]
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["HoverChanged"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["HoverChanged"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textBoxRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["onTextChanged"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K3 ["mouseEnter"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K4 ["mouseLeave"]
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["FocusChanged"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["HorizontalAlignment"]
        5 JUMPIF                           R2 ; [+2]
        6 GETIMPORT                        R2 K5 [Enum.TextXAlignment.Left]
        8 SETTABLEKS                       R2 R0 K3 ["TextXAlignment"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K6 ["FocusChanged"]
       15 LOADB                            R3 0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Enabled"]
        5 JUMPIFEQKNIL                     R2 ; [+5]
        7 GETTABLEKS                       R1 R0 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["Enabled"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["createElement"]
       14 LOADK                            R3 K3 ["Frame"]
       15 DUPTABLE                         R4 K9 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True}]
       16 GETIMPORT                        R5 K12 [UDim2.new]
       18 LOADN                            R6 1
       19 LOADN                            R7 0
       20 LOADN                            R8 1
       21 LOADN                            R9 0
       22 CALL                             R5 4 1
       23 SETTABLEKS                       R5 R4 K4 ["Size"]
       25 DUPTABLE                         R5 K14 [{"Text"}]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K2 ["createElement"]
       29 LOADK                            R7 K15 ["TextBox"]
       30 NEWTABLE                         R8 32 0
       32 GETTABLEKS                       R9 R0 K0 ["props"]
       34 GETTABLEKS                       R9 R9 K16 ["Visible"]
       36 SETTABLEKS                       R9 R8 K16 ["Visible"]
       38 GETIMPORT                        R9 K12 [UDim2.new]
       40 LOADN                            R10 1
       41 LOADN                            R11 0
       42 LOADN                            R12 1
       43 LOADN                            R13 0
       44 CALL                             R9 4 1
       45 SETTABLEKS                       R9 R8 K4 ["Size"]
       47 LOADN                            R9 1
       48 SETTABLEKS                       R9 R8 K5 ["BackgroundTransparency"]
       50 LOADN                            R9 0
       51 SETTABLEKS                       R9 R8 K17 ["BorderSizePixel"]
       53 LOADB                            R9 0
       54 SETTABLEKS                       R9 R8 K18 ["ClearTextOnFocus"]
       56 SETTABLEKS                       R1 R8 K19 ["TextEditable"]
       58 GETIMPORT                        R9 K23 [Enum.Font.SourceSans]
       60 SETTABLEKS                       R9 R8 K21 ["Font"]
       62 LOADN                            R9 22
       63 SETTABLEKS                       R9 R8 K24 ["TextSize"]
       65 GETTABLEKS                       R9 R0 K0 ["props"]
       67 GETTABLEKS                       R9 R9 K25 ["TextColor3"]
       69 SETTABLEKS                       R9 R8 K25 ["TextColor3"]
       71 GETTABLEKS                       R9 R0 K0 ["props"]
       73 GETTABLEKS                       R9 R9 K13 ["Text"]
       75 SETTABLEKS                       R9 R8 K13 ["Text"]
       77 GETTABLEKS                       R9 R0 K0 ["props"]
       79 GETTABLEKS                       R9 R9 K26 ["PlaceholderText"]
       81 SETTABLEKS                       R9 R8 K26 ["PlaceholderText"]
       83 GETTABLEKS                       R9 R0 K0 ["props"]
       85 GETTABLEKS                       R9 R9 K27 ["HorizontalAlignment"]
       87 JUMPIF                           R9 ; [+2]
       88 GETIMPORT                        R9 K30 [Enum.TextXAlignment.Left]
       90 SETTABLEKS                       R9 R8 K28 ["TextXAlignment"]
       92 JUMPIF                           R1 ; [+2]
       93 LOADK                            R9 K31 [0.5]
       94 JUMP                             ; [+1]
       95 LOADN                            R9 0
       96 SETTABLEKS                       R9 R8 K32 ["TextTransparency"]
       98 GETUPVAL                         R9 0
       99 GETTABLEKS                       R9 R9 K33 ["Ref"]
      101 GETTABLEKS                       R10 R0 K34 ["textBoxRef"]
      103 SETTABLE                         R10 R8 R9
      104 GETUPVAL                         R9 0
      105 GETTABLEKS                       R9 R9 K35 ["Event"]
      107 GETTABLEKS                       R9 R9 K36 ["MouseEnter"]
      109 GETTABLEKS                       R10 R0 K37 ["mouseEnter"]
      111 SETTABLE                         R10 R8 R9
      112 GETUPVAL                         R9 0
      113 GETTABLEKS                       R9 R9 K35 ["Event"]
      115 GETTABLEKS                       R9 R9 K38 ["MouseLeave"]
      117 GETTABLEKS                       R10 R0 K39 ["mouseLeave"]
      119 SETTABLE                         R10 R8 R9
      120 GETUPVAL                         R9 0
      121 GETTABLEKS                       R9 R9 K35 ["Event"]
      123 GETTABLEKS                       R9 R9 K40 ["Focused"]
      125 NEWCLOSURE                       R10 P0
      126 CAPTURE                          VAL R0
      127 SETTABLE                         R10 R8 R9
      128 GETUPVAL                         R9 0
      129 GETTABLEKS                       R9 R9 K35 ["Event"]
      131 GETTABLEKS                       R9 R9 K41 ["FocusLost"]
      133 NEWCLOSURE                       R10 P1
      134 CAPTURE                          VAL R0
      135 SETTABLE                         R10 R8 R9
      136 GETUPVAL                         R9 0
      137 GETTABLEKS                       R9 R9 K42 ["Change"]
      139 GETTABLEKS                       R9 R9 K13 ["Text"]
      141 GETTABLEKS                       R10 R0 K43 ["onTextChanged"]
      143 SETTABLE                         R10 R8 R9
      144 CALL                             R6 2 1
      145 SETTABLEKS                       R6 R5 K13 ["Text"]
      147 CALL                             R2 3 -1
      148 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Internal"]
        9 GETTABLEKS                       R1 R1 K6 ["RequireRoact"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K7 ["PureComponent"]
       14 LOADK                            R3 K8 ["TextEntry"]
       15 NAMECALL                         R1 R1 K9 ["extend"]
       17 CALL                             R1 2 1
       18 DUPCLOSURE                       R2 K10 [PROTO_3]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K11 ["init"]
       22 DUPCLOSURE                       R2 K12 [PROTO_6]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R1 K13 ["render"]
       26 RETURN                           R1 1
