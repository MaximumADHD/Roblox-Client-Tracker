PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["IBeam"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["mouseEnter"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["mouseLeave"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K6 ["createRef"]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K7 ["textBoxRef"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K3 ["unmounting"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 NAMECALL                         R0 R0 K2 ["CaptureFocus"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["CaptureFocus"]
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETTABLEKS                       R1 R0 K2 ["textBoxRef"]
        7 GETTABLEKS                       R1 R1 K3 ["current"]
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
        1 DUPTABLE                         R3 K2 [{[1] = True}]
        2 NAMECALL                         R1 R1 K3 ["setState"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 LOADB                            R3 1
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["unmounting"]
        3 JUMPIF                           R2 ; [+10]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K3 [{["Focused"] = False}]
        6 NAMECALL                         R2 R2 K4 ["setState"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 LOADB                            R4 0
       12 MOVE                             R5 R1
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

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
       41 GETUPVAL                         R15 0
       42 GETTABLEKS                       R15 R15 K15 ["createElement"]
       44 GETUPVAL                         R16 1
       45 DUPTABLE                         R17 K20 [{["Style"] = "BorderBox", ["Size"], ["BackgroundColor3"], ["BorderColor3"], ["LayoutOrder"]}]
       46 SETTABLEKS                       R4 R17 K3 ["Size"]
       48 GETTABLEKS                       R18 R9 K21 ["backgroundColor"]
       50 SETTABLEKS                       R18 R17 K18 ["BackgroundColor3"]
       52 SETTABLEKS                       R13 R17 K19 ["BorderColor3"]
       54 SETTABLEKS                       R7 R17 K6 ["LayoutOrder"]
       56 DUPTABLE                         R18 K23 [{"Padding", "Text"}]
       57 GETUPVAL                         R19 0
       58 GETTABLEKS                       R19 R19 K15 ["createElement"]
       60 LOADK                            R20 K24 ["UIPadding"]
       61 DUPTABLE                         R21 K27 [{"PaddingLeft", "PaddingRight"}]
       62 GETUPVAL                         R22 2
       63 SETTABLEKS                       R22 R21 K25 ["PaddingLeft"]
       65 GETUPVAL                         R22 2
       66 SETTABLEKS                       R22 R21 K26 ["PaddingRight"]
       68 CALL                             R19 2 1
       69 SETTABLEKS                       R19 R18 K22 ["Padding"]
       71 GETUPVAL                         R19 0
       72 GETTABLEKS                       R19 R19 K15 ["createElement"]
       74 LOADK                            R20 K28 ["TextBox"]
       75 NEWTABLE                         R21 32 0
       77 GETIMPORT                        R22 K31 [UDim2.new]
       79 LOADN                            R23 1
       80 LOADN                            R24 0
       81 LOADN                            R25 1
       82 LOADN                            R26 0
       83 CALL                             R22 4 1
       84 SETTABLEKS                       R22 R21 K3 ["Size"]
       86 LOADN                            R22 1
       87 SETTABLEKS                       R22 R21 K32 ["BackgroundTransparency"]
       89 LOADN                            R22 0
       90 SETTABLEKS                       R22 R21 K33 ["BorderSizePixel"]
       92 LOADB                            R22 1
       93 SETTABLEKS                       R22 R21 K34 ["ClipsDescendants"]
       95 SETTABLEKS                       R14 R21 K14 ["ClearTextOnFocus"]
       97 GETTABLEKS                       R22 R2 K35 ["font"]
       99 SETTABLEKS                       R22 R21 K36 ["Font"]
      101 GETTABLEKS                       R22 R9 K37 ["textSize"]
      103 SETTABLEKS                       R22 R21 K38 ["TextSize"]
      105 GETTABLEKS                       R22 R9 K39 ["textColor"]
      107 SETTABLEKS                       R22 R21 K40 ["TextColor3"]
      109 SETTABLEKS                       R5 R21 K4 ["Text"]
      111 SETTABLEKS                       R6 R21 K5 ["TextXAlignment"]
      113 SETTABLEKS                       R12 R21 K41 ["TextEditable"]
      115 GETUPVAL                         R22 0
      116 GETTABLEKS                       R22 R22 K42 ["Ref"]
      118 GETTABLEKS                       R23 R0 K43 ["textBoxRef"]
      120 SETTABLE                         R23 R21 R22
      121 GETUPVAL                         R22 0
      122 GETTABLEKS                       R22 R22 K44 ["Change"]
      124 GETTABLEKS                       R22 R22 K4 ["Text"]
      126 JUMPIFNOT                        R12 ; [+3]
      127 NEWCLOSURE                       R23 P0
      128 CAPTURE                          VAL R10
      129 JUMPIF                           R23 ; [+1]
      130 LOADNIL                          R23
      131 SETTABLE                         R23 R21 R22
      132 GETUPVAL                         R22 0
      133 GETTABLEKS                       R22 R22 K45 ["Event"]
      135 GETTABLEKS                       R22 R22 K7 ["Focused"]
      137 JUMPIFNOT                        R12 ; [+4]
      138 NEWCLOSURE                       R23 P1
      139 CAPTURE                          VAL R0
      140 CAPTURE                          VAL R11
      141 JUMPIF                           R23 ; [+1]
      142 LOADNIL                          R23
      143 SETTABLE                         R23 R21 R22
      144 GETUPVAL                         R22 0
      145 GETTABLEKS                       R22 R22 K45 ["Event"]
      147 GETTABLEKS                       R22 R22 K46 ["FocusLost"]
      149 JUMPIFNOT                        R12 ; [+4]
      150 NEWCLOSURE                       R23 P2
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R11
      153 JUMPIF                           R23 ; [+1]
      154 LOADNIL                          R23
      155 SETTABLE                         R23 R21 R22
      156 GETUPVAL                         R22 0
      157 GETTABLEKS                       R22 R22 K45 ["Event"]
      159 GETTABLEKS                       R22 R22 K47 ["MouseEnter"]
      161 JUMPIFNOT                        R12 ; [+3]
      162 GETTABLEKS                       R23 R0 K48 ["mouseEnter"]
      164 JUMPIF                           R23 ; [+1]
      165 LOADNIL                          R23
      166 SETTABLE                         R23 R21 R22
      167 GETUPVAL                         R22 0
      168 GETTABLEKS                       R22 R22 K45 ["Event"]
      170 GETTABLEKS                       R22 R22 K49 ["MouseLeave"]
      172 JUMPIFNOT                        R12 ; [+3]
      173 GETTABLEKS                       R23 R0 K50 ["mouseLeave"]
      175 JUMPIF                           R23 ; [+1]
      176 LOADNIL                          R23
      177 SETTABLE                         R23 R21 R22
      178 GETUPVAL                         R23 0
      179 GETTABLEKS                       R23 R23 K51 ["Children"]
      181 GETTABLE                         R22 R1 R23
      182 CALL                             R19 3 1
      183 SETTABLEKS                       R19 R18 K4 ["Text"]
      185 CALL                             R15 3 -1
      186 RETURN                           R15 -1

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
       14 GETTABLEKS                       R3 R1 K9 ["Packages"]
       16 GETTABLEKS                       R3 R3 K10 ["Roact"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K8 [require]
       21 GETTABLEKS                       R4 R1 K9 ["Packages"]
       23 GETTABLEKS                       R4 R4 K11 ["Framework"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       28 GETTABLEKS                       R5 R4 K13 ["withContext"]
       30 GETTABLEKS                       R6 R3 K14 ["UI"]
       32 GETTABLEKS                       R6 R6 K15 ["Pane"]
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
