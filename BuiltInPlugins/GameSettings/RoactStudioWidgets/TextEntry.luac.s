PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["HorizontalAlignment"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+13]
        7 GETTABLEKS                       R2 R0 K2 ["TextFits"]
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETIMPORT                        R2 K6 [Enum.TextXAlignment.Left]
       12 SETTABLEKS                       R2 R0 K4 ["TextXAlignment"]
       14 JUMP                             ; [+4]
       15 GETIMPORT                        R2 K8 [Enum.TextXAlignment.Right]
       17 SETTABLEKS                       R2 R0 K4 ["TextXAlignment"]
       19 GETTABLEKS                       R2 R0 K9 ["Text"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["props"]
       24 GETTABLEKS                       R3 R4 K9 ["Text"]
       26 JUMPIFEQ                         R2 R3 ; [+9]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K0 ["props"]
       31 GETTABLEKS                       R2 R3 K10 ["SetText"]
       33 GETTABLEKS                       R3 R0 K9 ["Text"]
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["HoverChanged"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["HoverChanged"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["FocusChanged"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["HorizontalAlignment"]
        5 JUMPIF                           R2 ; [+2]
        6 GETIMPORT                        R2 K5 [Enum.TextXAlignment.Left]
        8 SETTABLEKS                       R2 R0 K3 ["TextXAlignment"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K6 ["FocusChanged"]
       15 LOADB                            R3 0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R3 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Enabled"]
        5 JUMPIFEQKNIL                     R2 ; [+5]
        7 GETTABLEKS                       R2 R0 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["Enabled"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["createElement"]
       14 LOADK                            R3 K3 ["Frame"]
       15 DUPTABLE                         R4 K7 [{"Size", "BackgroundTransparency", "ClipsDescendants"}]
       16 GETIMPORT                        R5 K10 [UDim2.new]
       18 LOADN                            R6 1
       19 LOADN                            R7 0
       20 LOADN                            R8 1
       21 LOADN                            R9 0
       22 CALL                             R5 4 1
       23 SETTABLEKS                       R5 R4 K4 ["Size"]
       25 LOADN                            R5 1
       26 SETTABLEKS                       R5 R4 K5 ["BackgroundTransparency"]
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K6 ["ClipsDescendants"]
       31 DUPTABLE                         R5 K12 [{"Text"}]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K2 ["createElement"]
       35 LOADK                            R7 K13 ["TextBox"]
       36 NEWTABLE                         R8 32 0
       38 GETTABLEKS                       R10 R0 K0 ["props"]
       40 GETTABLEKS                       R9 R10 K14 ["Visible"]
       42 SETTABLEKS                       R9 R8 K14 ["Visible"]
       44 GETIMPORT                        R9 K10 [UDim2.new]
       46 LOADN                            R10 1
       47 LOADN                            R11 0
       48 LOADN                            R12 1
       49 LOADN                            R13 0
       50 CALL                             R9 4 1
       51 SETTABLEKS                       R9 R8 K4 ["Size"]
       53 LOADN                            R9 1
       54 SETTABLEKS                       R9 R8 K5 ["BackgroundTransparency"]
       56 LOADN                            R9 0
       57 SETTABLEKS                       R9 R8 K15 ["BorderSizePixel"]
       59 LOADB                            R9 0
       60 SETTABLEKS                       R9 R8 K16 ["ClearTextOnFocus"]
       62 SETTABLEKS                       R1 R8 K17 ["TextEditable"]
       64 GETIMPORT                        R9 K21 [Enum.Font.SourceSans]
       66 SETTABLEKS                       R9 R8 K19 ["Font"]
       68 LOADN                            R9 22
       69 SETTABLEKS                       R9 R8 K22 ["TextSize"]
       71 GETTABLEKS                       R10 R0 K0 ["props"]
       73 GETTABLEKS                       R9 R10 K23 ["TextColor3"]
       75 SETTABLEKS                       R9 R8 K23 ["TextColor3"]
       77 GETTABLEKS                       R10 R0 K0 ["props"]
       79 GETTABLEKS                       R9 R10 K11 ["Text"]
       81 SETTABLEKS                       R9 R8 K11 ["Text"]
       83 GETTABLEKS                       R10 R0 K0 ["props"]
       85 GETTABLEKS                       R9 R10 K24 ["PlaceholderText"]
       87 SETTABLEKS                       R9 R8 K24 ["PlaceholderText"]
       89 GETTABLEKS                       R10 R0 K0 ["props"]
       91 GETTABLEKS                       R9 R10 K25 ["HorizontalAlignment"]
       93 JUMPIF                           R9 ; [+2]
       94 GETIMPORT                        R9 K28 [Enum.TextXAlignment.Left]
       96 SETTABLEKS                       R9 R8 K26 ["TextXAlignment"]
       98 JUMPIF                           R1 ; [+2]
       99 LOADK                            R9 K29 [0.5]
      100 JUMP                             ; [+1]
      101 LOADN                            R9 0
      102 SETTABLEKS                       R9 R8 K30 ["TextTransparency"]
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R9 R10 K31 ["Ref"]
      107 GETTABLEKS                       R10 R0 K32 ["textBoxRef"]
      109 SETTABLE                         R10 R8 R9
      110 GETUPVAL                         R11 0
      111 GETTABLEKS                       R10 R11 K33 ["Event"]
      113 GETTABLEKS                       R9 R10 K34 ["MouseEnter"]
      115 GETTABLEKS                       R10 R0 K35 ["mouseEnter"]
      117 SETTABLE                         R10 R8 R9
      118 GETUPVAL                         R11 0
      119 GETTABLEKS                       R10 R11 K33 ["Event"]
      121 GETTABLEKS                       R9 R10 K36 ["MouseLeave"]
      123 GETTABLEKS                       R10 R0 K37 ["mouseLeave"]
      125 SETTABLE                         R10 R8 R9
      126 GETUPVAL                         R11 0
      127 GETTABLEKS                       R10 R11 K33 ["Event"]
      129 GETTABLEKS                       R9 R10 K38 ["Focused"]
      131 NEWCLOSURE                       R10 P0
      132 CAPTURE                          VAL R0
      133 SETTABLE                         R10 R8 R9
      134 GETUPVAL                         R11 0
      135 GETTABLEKS                       R10 R11 K33 ["Event"]
      137 GETTABLEKS                       R9 R10 K39 ["FocusLost"]
      139 NEWCLOSURE                       R10 P1
      140 CAPTURE                          VAL R0
      141 SETTABLE                         R10 R8 R9
      142 GETUPVAL                         R11 0
      143 GETTABLEKS                       R10 R11 K40 ["Change"]
      145 GETTABLEKS                       R9 R10 K11 ["Text"]
      147 GETTABLEKS                       R10 R0 K41 ["onTextChanged"]
      149 SETTABLE                         R10 R8 R9
      150 CALL                             R6 2 1
      151 SETTABLEKS                       R6 R5 K11 ["Text"]
      153 CALL                             R2 3 -1
      154 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K5 ["Internal"]
        9 GETTABLEKS                       R1 R2 K6 ["RequireRoact"]
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
