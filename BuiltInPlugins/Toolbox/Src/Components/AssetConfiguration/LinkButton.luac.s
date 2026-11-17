PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K2 [{[1] = True}]
        2 NAMECALL                         R3 R3 K3 ["setState"]
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K2 [{[1] = False}]
        2 NAMECALL                         R3 R3 K3 ["setState"]
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["onMouseEnter"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onMouseLeave"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R0 K6 ["onActivated"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R3 K3 ["linkButton"]
        8 GETUPVAL                         R6 0
        9 CALL                             R6 0 1
       10 JUMPIFNOT                        R6 ; [+7]
       11 GETTABLEKS                       R6 R1 K4 ["Enabled"]
       13 JUMPIFNOTEQKB                    R6 FALSE ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 JUMP                             ; [+1]
       18 LOADB                            R5 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R7 R1 K5 ["Text"]
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 GETIMPORT                        R10 K8 [Vector2.new]
       26 LOADN                            R11 9999
       27 LOADN                            R12 9999
       28 CALL                             R10 2 -1
       29 CALL                             R6 -1 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K9 ["createElement"]
       33 LOADK                            R8 K10 ["Frame"]
       34 DUPTABLE                         R9 K17 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       35 GETTABLEKS                       R10 R1 K11 ["Size"]
       37 SETTABLEKS                       R10 R9 K11 ["Size"]
       39 GETTABLEKS                       R10 R1 K16 ["LayoutOrder"]
       41 SETTABLEKS                       R10 R9 K16 ["LayoutOrder"]
       43 DUPTABLE                         R10 K19 [{"Link"}]
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R11 R11 K9 ["createElement"]
       47 LOADK                            R12 K20 ["TextButton"]
       48 NEWTABLE                         R13 16 0
       50 GETIMPORT                        R14 K22 [UDim2.new]
       52 LOADN                            R15 0
       53 GETTABLEKS                       R16 R6 K23 ["X"]
       55 LOADN                            R17 0
       56 GETTABLEKS                       R18 R6 K24 ["Y"]
       58 CALL                             R14 4 1
       59 SETTABLEKS                       R14 R13 K11 ["Size"]
       61 LOADN                            R14 1
       62 SETTABLEKS                       R14 R13 K12 ["BackgroundTransparency"]
       64 LOADN                            R14 0
       65 SETTABLEKS                       R14 R13 K14 ["BorderSizePixel"]
       67 SETTABLEKS                       R5 R13 K25 ["Active"]
       69 SETTABLEKS                       R5 R13 K26 ["AutoButtonColor"]
       71 GETTABLEKS                       R14 R1 K5 ["Text"]
       73 SETTABLEKS                       R14 R13 K5 ["Text"]
       75 GETTABLEKS                       R14 R1 K27 ["TextSize"]
       77 SETTABLEKS                       R14 R13 K27 ["TextSize"]
       79 GETUPVAL                         R14 3
       80 GETTABLEKS                       R14 R14 K28 ["FONT"]
       82 SETTABLEKS                       R14 R13 K29 ["Font"]
       84 LOADB                            R14 1
       85 SETTABLEKS                       R14 R13 K30 ["TextScaled"]
       87 GETTABLEKS                       R14 R4 K31 ["textColor"]
       89 SETTABLEKS                       R14 R13 K32 ["TextColor3"]
       91 JUMPIFNOT                        R5 ; [+2]
       92 LOADN                            R14 0
       93 JUMP                             ; [+1]
       94 LOADK                            R14 K33 [0.5]
       95 SETTABLEKS                       R14 R13 K34 ["TextTransparency"]
       97 GETIMPORT                        R14 K38 [Enum.TextXAlignment.Left]
       99 SETTABLEKS                       R14 R13 K36 ["TextXAlignment"]
      101 GETIMPORT                        R14 K41 [Enum.TextYAlignment.Center]
      103 SETTABLEKS                       R14 R13 K39 ["TextYAlignment"]
      105 GETUPVAL                         R14 2
      106 GETTABLEKS                       R14 R14 K42 ["Event"]
      108 GETTABLEKS                       R14 R14 K43 ["MouseEnter"]
      110 JUMPIFNOT                        R5 ; [+3]
      111 GETTABLEKS                       R15 R0 K44 ["onMouseEnter"]
      113 JUMPIF                           R15 ; [+1]
      114 LOADNIL                          R15
      115 SETTABLE                         R15 R13 R14
      116 GETUPVAL                         R14 2
      117 GETTABLEKS                       R14 R14 K42 ["Event"]
      119 GETTABLEKS                       R14 R14 K45 ["MouseLeave"]
      121 JUMPIFNOT                        R5 ; [+3]
      122 GETTABLEKS                       R15 R0 K46 ["onMouseLeave"]
      124 JUMPIF                           R15 ; [+1]
      125 LOADNIL                          R15
      126 SETTABLE                         R15 R13 R14
      127 GETUPVAL                         R14 2
      128 GETTABLEKS                       R14 R14 K42 ["Event"]
      130 GETTABLEKS                       R14 R14 K47 ["Activated"]
      132 JUMPIFNOT                        R5 ; [+3]
      133 GETTABLEKS                       R15 R0 K48 ["onActivated"]
      135 JUMPIF                           R15 ; [+1]
      136 LOADNIL                          R15
      137 SETTABLE                         R15 R13 R14
      138 DUPTABLE                         R14 K50 [{"UnderLine"}]
      139 MOVE                             R15 R5
      140 JUMPIFNOT                        R15 ; [+39]
      141 GETTABLEKS                       R15 R2 K51 ["hovered"]
      143 JUMPIFNOT                        R15 ; [+36]
      144 GETUPVAL                         R15 2
      145 GETTABLEKS                       R15 R15 K9 ["createElement"]
      147 LOADK                            R16 K10 ["Frame"]
      148 DUPTABLE                         R17 K55 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      149 GETIMPORT                        R18 K8 [Vector2.new]
      151 LOADN                            R19 0
      152 LOADN                            R20 1
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K52 ["AnchorPoint"]
      156 GETIMPORT                        R18 K22 [UDim2.new]
      158 LOADN                            R19 0
      159 LOADN                            R20 0
      160 LOADN                            R21 1
      161 LOADN                            R22 0
      162 CALL                             R18 4 1
      163 SETTABLEKS                       R18 R17 K53 ["Position"]
      165 GETIMPORT                        R18 K22 [UDim2.new]
      167 LOADN                            R19 0
      168 GETTABLEKS                       R20 R6 K23 ["X"]
      170 LOADN                            R21 0
      171 LOADN                            R22 1
      172 CALL                             R18 4 1
      173 SETTABLEKS                       R18 R17 K11 ["Size"]
      175 GETTABLEKS                       R18 R4 K31 ["textColor"]
      177 SETTABLEKS                       R18 R17 K54 ["BackgroundColor3"]
      179 CALL                             R15 2 1
      180 SETTABLEKS                       R15 R14 K49 ["UnderLine"]
      182 CALL                             R11 3 1
      183 SETTABLEKS                       R11 R10 K18 ["Link"]
      185 CALL                             R7 3 -1
      186 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Constants"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R7 R7 K11 ["Flags"]
       38 GETTABLEKS                       R7 R7 K12 ["getFFlagEnableUpdateAvatarItem"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R3 K13 ["ContextServices"]
       43 GETTABLEKS                       R8 R7 K14 ["withContext"]
       45 GETTABLEKS                       R9 R3 K9 ["Util"]
       47 GETTABLEKS                       R9 R9 K15 ["GetTextSize"]
       49 GETTABLEKS                       R10 R2 K16 ["PureComponent"]
       51 LOADK                            R12 K17 ["LinkButton"]
       52 NAMECALL                         R10 R10 K18 ["extend"]
       54 CALL                             R10 2 1
       55 DUPCLOSURE                       R11 K19 [PROTO_3]
       56 SETTABLEKS                       R11 R10 K20 ["init"]
       58 DUPCLOSURE                       R11 K21 [PROTO_4]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R11 R10 K22 ["render"]
       65 MOVE                             R11 R8
       66 DUPTABLE                         R12 K24 [{"Stylizer"}]
       67 GETTABLEKS                       R13 R7 K23 ["Stylizer"]
       69 SETTABLEKS                       R13 R12 K23 ["Stylizer"]
       71 CALL                             R11 1 1
       72 MOVE                             R12 R10
       73 CALL                             R11 1 1
       74 MOVE                             R10 R11
       75 RETURN                           R10 1
