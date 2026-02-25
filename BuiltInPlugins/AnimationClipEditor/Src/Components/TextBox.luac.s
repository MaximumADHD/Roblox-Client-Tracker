PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["IBeam"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"Focused"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Focused"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["mouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["mouseLeave"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K5 ["createRef"]
       17 CALL                             R1 0 1
       18 SETTABLEKS                       R1 R0 K6 ["textBoxRef"]
       20 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K3 ["unmounting"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["textBoxRef"]
        9 GETTABLEKS                       R0 R1 K1 ["current"]
       11 NAMECALL                         R0 R0 K2 ["CaptureFocus"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["CaptureFocus"]
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETTABLEKS                       R2 R0 K2 ["textBoxRef"]
        7 GETTABLEKS                       R1 R2 K3 ["current"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETIMPORT                        R1 K5 [spawn]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R2 R0 K0 ["Text"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Focused"}]
        2 LOADB                            R4 1
        3 SETTABLEKS                       R4 R3 K0 ["Focused"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 LOADB                            R3 1
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["unmounting"]
        3 JUMPIF                           R2 ; [+13]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K2 [{"Focused"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K1 ["Focused"]
        9 NAMECALL                         R2 R2 K3 ["setState"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R0
       14 LOADB                            R4 0
       15 MOVE                             R5 R1
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["Text"]
       10 GETTABLEKS                       R6 R1 K5 ["TextXAlignment"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R3 K7 ["Focused"]
       16 GETTABLEKS                       R9 R2 K8 ["textBox"]
       18 GETTABLEKS                       R10 R1 K9 ["TextChanged"]
       20 GETTABLEKS                       R11 R1 K10 ["FocusChanged"]
       22 GETTABLEKS                       R13 R1 K11 ["ReadOnly"]
       24 NOT                              R12 R13
       25 LOADNIL                          R13
       26 JUMPIFNOT                        R8 ; [+3]
       27 GETTABLEKS                       R13 R9 K12 ["focusedBorder"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R13 R9 K13 ["defaultBorder"]
       32 LOADNIL                          R14
       33 GETTABLEKS                       R15 R1 K14 ["ClearTextOnFocus"]
       35 JUMPIFEQKNIL                     R15 ; [+4]
       37 GETTABLEKS                       R14 R1 K14 ["ClearTextOnFocus"]
       39 JUMP                             ; [+1]
       40 LOADB                            R14 1
       41 GETUPVAL                         R16 0
       42 GETTABLEKS                       R15 R16 K15 ["createElement"]
       44 GETUPVAL                         R16 1
       45 DUPTABLE                         R17 K19 [{"Style", "Size", "BackgroundColor3", "BorderColor3", "LayoutOrder"}]
       46 LOADK                            R18 K20 ["BorderBox"]
       47 SETTABLEKS                       R18 R17 K16 ["Style"]
       49 SETTABLEKS                       R4 R17 K3 ["Size"]
       51 GETTABLEKS                       R18 R9 K21 ["backgroundColor"]
       53 SETTABLEKS                       R18 R17 K17 ["BackgroundColor3"]
       55 SETTABLEKS                       R13 R17 K18 ["BorderColor3"]
       57 SETTABLEKS                       R7 R17 K6 ["LayoutOrder"]
       59 DUPTABLE                         R18 K23 [{"Padding", "Text"}]
       60 GETUPVAL                         R20 0
       61 GETTABLEKS                       R19 R20 K15 ["createElement"]
       63 LOADK                            R20 K24 ["UIPadding"]
       64 DUPTABLE                         R21 K27 [{"PaddingLeft", "PaddingRight"}]
       65 GETUPVAL                         R22 2
       66 SETTABLEKS                       R22 R21 K25 ["PaddingLeft"]
       68 GETUPVAL                         R22 2
       69 SETTABLEKS                       R22 R21 K26 ["PaddingRight"]
       71 CALL                             R19 2 1
       72 SETTABLEKS                       R19 R18 K22 ["Padding"]
       74 GETUPVAL                         R20 0
       75 GETTABLEKS                       R19 R20 K15 ["createElement"]
       77 LOADK                            R20 K28 ["TextBox"]
       78 NEWTABLE                         R21 32 0
       80 GETIMPORT                        R22 K31 [UDim2.new]
       82 LOADN                            R23 1
       83 LOADN                            R24 0
       84 LOADN                            R25 1
       85 LOADN                            R26 0
       86 CALL                             R22 4 1
       87 SETTABLEKS                       R22 R21 K3 ["Size"]
       89 LOADN                            R22 1
       90 SETTABLEKS                       R22 R21 K32 ["BackgroundTransparency"]
       92 LOADN                            R22 0
       93 SETTABLEKS                       R22 R21 K33 ["BorderSizePixel"]
       95 LOADB                            R22 1
       96 SETTABLEKS                       R22 R21 K34 ["ClipsDescendants"]
       98 SETTABLEKS                       R14 R21 K14 ["ClearTextOnFocus"]
      100 GETTABLEKS                       R22 R2 K35 ["font"]
      102 SETTABLEKS                       R22 R21 K36 ["Font"]
      104 GETTABLEKS                       R22 R9 K37 ["textSize"]
      106 SETTABLEKS                       R22 R21 K38 ["TextSize"]
      108 GETTABLEKS                       R22 R9 K39 ["textColor"]
      110 SETTABLEKS                       R22 R21 K40 ["TextColor3"]
      112 SETTABLEKS                       R5 R21 K4 ["Text"]
      114 SETTABLEKS                       R6 R21 K5 ["TextXAlignment"]
      116 SETTABLEKS                       R12 R21 K41 ["TextEditable"]
      118 GETUPVAL                         R23 0
      119 GETTABLEKS                       R22 R23 K42 ["Ref"]
      121 GETTABLEKS                       R23 R0 K43 ["textBoxRef"]
      123 SETTABLE                         R23 R21 R22
      124 GETUPVAL                         R24 0
      125 GETTABLEKS                       R23 R24 K44 ["Change"]
      127 GETTABLEKS                       R22 R23 K4 ["Text"]
      129 JUMPIFNOT                        R12 ; [+3]
      130 NEWCLOSURE                       R23 P0
      131 CAPTURE                          VAL R10
      132 JUMPIF                           R23 ; [+1]
      133 LOADNIL                          R23
      134 SETTABLE                         R23 R21 R22
      135 GETUPVAL                         R24 0
      136 GETTABLEKS                       R23 R24 K45 ["Event"]
      138 GETTABLEKS                       R22 R23 K7 ["Focused"]
      140 JUMPIFNOT                        R12 ; [+4]
      141 NEWCLOSURE                       R23 P1
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R11
      144 JUMPIF                           R23 ; [+1]
      145 LOADNIL                          R23
      146 SETTABLE                         R23 R21 R22
      147 GETUPVAL                         R24 0
      148 GETTABLEKS                       R23 R24 K45 ["Event"]
      150 GETTABLEKS                       R22 R23 K46 ["FocusLost"]
      152 JUMPIFNOT                        R12 ; [+4]
      153 NEWCLOSURE                       R23 P2
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R11
      156 JUMPIF                           R23 ; [+1]
      157 LOADNIL                          R23
      158 SETTABLE                         R23 R21 R22
      159 GETUPVAL                         R24 0
      160 GETTABLEKS                       R23 R24 K45 ["Event"]
      162 GETTABLEKS                       R22 R23 K47 ["MouseEnter"]
      164 JUMPIFNOT                        R12 ; [+3]
      165 GETTABLEKS                       R23 R0 K48 ["mouseEnter"]
      167 JUMPIF                           R23 ; [+1]
      168 LOADNIL                          R23
      169 SETTABLE                         R23 R21 R22
      170 GETUPVAL                         R24 0
      171 GETTABLEKS                       R23 R24 K45 ["Event"]
      173 GETTABLEKS                       R22 R23 K49 ["MouseLeave"]
      175 JUMPIFNOT                        R12 ; [+3]
      176 GETTABLEKS                       R23 R0 K50 ["mouseLeave"]
      178 JUMPIF                           R23 ; [+1]
      179 LOADNIL                          R23
      180 SETTABLE                         R23 R21 R22
      181 GETUPVAL                         R24 0
      182 GETTABLEKS                       R23 R24 K51 ["Children"]
      184 GETTABLE                         R22 R1 R23
      185 CALL                             R19 3 1
      186 SETTABLEKS                       R19 R18 K4 ["Text"]
      188 CALL                             R15 3 -1
      189 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [UDim.new]
        3 LOADN                            R1 0
        4 LOADN                            R2 6
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K4 [script]
        8 LOADK                            R3 K5 ["AnimationClipEditor"]
        9 NAMECALL                         R1 R1 K6 ["FindFirstAncestor"]
       11 CALL                             R1 2 1
       12 GETIMPORT                        R2 K8 [require]
       14 GETTABLEKS                       R4 R1 K9 ["Packages"]
       16 GETTABLEKS                       R3 R4 K10 ["Roact"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K8 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Packages"]
       23 GETTABLEKS                       R4 R5 K11 ["Framework"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       28 GETTABLEKS                       R5 R4 K13 ["withContext"]
       30 GETTABLEKS                       R7 R3 K14 ["UI"]
       32 GETTABLEKS                       R6 R7 K15 ["Pane"]
       34 GETTABLEKS                       R7 R2 K16 ["PureComponent"]
       36 LOADK                            R9 K17 ["TextBox"]
       37 NAMECALL                         R7 R7 K18 ["extend"]
       39 CALL                             R7 2 1
       40 DUPCLOSURE                       R8 K19 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R8 R7 K20 ["init"]
       44 DUPCLOSURE                       R8 K21 [PROTO_3]
       45 SETTABLEKS                       R8 R7 K22 ["willUnmount"]
       47 DUPCLOSURE                       R8 K23 [PROTO_5]
       48 SETTABLEKS                       R8 R7 K24 ["didMount"]
       50 DUPCLOSURE                       R8 K25 [PROTO_9]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R8 R7 K26 ["render"]
       56 MOVE                             R8 R5
       57 DUPTABLE                         R9 K29 [{"Stylizer", "Mouse"}]
       58 GETTABLEKS                       R10 R4 K27 ["Stylizer"]
       60 SETTABLEKS                       R10 R9 K27 ["Stylizer"]
       62 GETTABLEKS                       R10 R4 K28 ["Mouse"]
       64 SETTABLEKS                       R10 R9 K28 ["Mouse"]
       66 CALL                             R8 1 1
       67 MOVE                             R9 R7
       68 CALL                             R8 1 1
       69 MOVE                             R7 R8
       70 RETURN                           R7 1
