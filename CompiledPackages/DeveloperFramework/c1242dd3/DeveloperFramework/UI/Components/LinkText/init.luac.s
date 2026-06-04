PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"StyleModifier"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["Hover"]
        5 SETTABLEKS                       R3 R2 K0 ["StyleModifier"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K4 ["props"]
       13 GETTABLEKS                       R0 R0 K5 ["onHover"]
       15 JUMPIFNOT                        R0 ; [+7]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K4 ["props"]
       19 GETTABLEKS                       R0 R0 K5 ["onHover"]
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"StyleModifier"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["StyleModifier"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K4 ["props"]
       13 GETTABLEKS                       R0 R0 K5 ["onHover"]
       15 JUMPIFNOT                        R0 ; [+7]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K4 ["props"]
       19 GETTABLEKS                       R0 R0 K5 ["onHover"]
       21 LOADB                            R1 0
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["mouseEnter"]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K2 ["mouseLeave"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["StyleModifier"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["Size"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R1 K5 ["Font"]
       13 GETTABLEKS                       R8 R4 K5 ["Font"]
       15 CALL                             R6 2 1
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R8 R1 K6 ["TextSize"]
       19 GETTABLEKS                       R9 R4 K6 ["TextSize"]
       21 CALL                             R7 2 1
       22 GETTABLEKS                       R9 R1 K8 ["Text"]
       24 ORK                              R8 R9 K7 [""]
       25 GETTABLEKS                       R9 R4 K9 ["TextColor"]
       27 GETTABLEKS                       R10 R4 K10 ["TextColorHovered"]
       29 GETTABLEKS                       R11 R1 K11 ["TextTruncate"]
       31 GETTABLEKS                       R12 R1 K12 ["TextWrapped"]
       33 GETTABLEKS                       R13 R1 K13 ["TextXAlignment"]
       35 GETTABLEKS                       R14 R1 K14 ["TextYAlignment"]
       37 LOADNIL                          R15
       38 JUMPIFNOT                        R12 ; [+3]
       39 GETIMPORT                        R15 K18 [Enum.AutomaticSize.Y]
       41 JUMP                             ; [+2]
       42 GETIMPORT                        R15 K20 [Enum.AutomaticSize.XY]
       44 LOADNIL                          R16
       45 JUMPIFNOT                        R11 ; [+2]
       46 MOVE                             R16 R5
       47 JUMP                             ; [+14]
       48 MOVE                             R17 R5
       49 JUMPIF                           R17 ; [+11]
       50 GETIMPORT                        R17 K23 [UDim2.new]
       52 JUMPIF                           R11 ; [+1]
       53 JUMPIFNOT                        R12 ; [+2]
       54 LOADN                            R18 1
       55 JUMP                             ; [+1]
       56 LOADN                            R18 0
       57 LOADN                            R19 0
       58 LOADN                            R20 0
       59 LOADN                            R21 0
       60 CALL                             R17 4 1
       61 MOVE                             R16 R17
       62 GETTABLEKS                       R17 R1 K24 ["OnClick"]
       64 GETTABLEKS                       R18 R1 K25 ["Position"]
       66 GETTABLEKS                       R19 R1 K26 ["AnchorPoint"]
       68 GETTABLEKS                       R20 R1 K27 ["ZIndex"]
       70 GETTABLEKS                       R21 R1 K28 ["LayoutOrder"]
       72 LOADB                            R22 1
       73 GETUPVAL                         R23 1
       74 GETTABLEKS                       R23 R23 K29 ["Hover"]
       76 JUMPIFEQ                         R3 R23 ; [+3]
       78 GETTABLEKS                       R22 R1 K30 ["isHovered"]
       80 GETTABLEKS                       R24 R4 K31 ["EnableHover"]
       82 JUMPIFNOTEQKNIL                  R24 ; [+3]
       84 LOADB                            R23 1
       85 JUMP                             ; [+2]
       86 GETTABLEKS                       R23 R4 K31 ["EnableHover"]
       88 GETTABLEKS                       R24 R4 K32 ["ShowUnderline"]
       90 GETTABLEKS                       R26 R4 K33 ["ForceUnderline"]
       92 JUMPIFNOT                        R26 ; [+2]
       93 LOADB                            R25 1
       94 JUMP                             ; [+5]
       95 MOVE                             R25 R24
       96 JUMPIFNOT                        R25 ; [+3]
       97 MOVE                             R25 R22
       98 JUMPIFNOT                        R25 ; [+1]
       99 NOT                              R25 R12
      100 MOVE                             R26 R9
      101 JUMPIFNOT                        R22 ; [+1]
      102 OR                               R26 R10 R9
      103 GETUPVAL                         R27 2
      104 GETTABLEKS                       R27 R27 K34 ["createElement"]
      106 LOADK                            R28 K35 ["TextButton"]
      107 GETUPVAL                         R29 3
      108 NEWTABLE                         R30 32 0
      110 SETTABLEKS                       R6 R30 K5 ["Font"]
      112 SETTABLEKS                       R7 R30 K6 ["TextSize"]
      114 SETTABLEKS                       R26 R30 K36 ["TextColor3"]
      116 SETTABLEKS                       R11 R30 K11 ["TextTruncate"]
      118 SETTABLEKS                       R12 R30 K12 ["TextWrapped"]
      120 SETTABLEKS                       R13 R30 K13 ["TextXAlignment"]
      122 SETTABLEKS                       R14 R30 K14 ["TextYAlignment"]
      124 SETTABLEKS                       R15 R30 K16 ["AutomaticSize"]
      126 LOADN                            R31 1
      127 SETTABLEKS                       R31 R30 K37 ["BackgroundTransparency"]
      129 SETTABLEKS                       R16 R30 K4 ["Size"]
      131 JUMPIFNOT                        R23 ; [+2]
      132 LOADNIL                          R31
      133 JUMP                             ; [+1]
      134 MOVE                             R31 R18
      135 SETTABLEKS                       R31 R30 K25 ["Position"]
      137 GETTABLEKS                       R31 R1 K38 ["RichText"]
      139 SETTABLEKS                       R31 R30 K38 ["RichText"]
      141 JUMPIFNOT                        R23 ; [+2]
      142 LOADNIL                          R31
      143 JUMP                             ; [+1]
      144 MOVE                             R31 R19
      145 SETTABLEKS                       R31 R30 K26 ["AnchorPoint"]
      147 SETTABLEKS                       R20 R30 K27 ["ZIndex"]
      149 SETTABLEKS                       R21 R30 K28 ["LayoutOrder"]
      151 SETTABLEKS                       R8 R30 K8 ["Text"]
      153 GETUPVAL                         R31 2
      154 GETTABLEKS                       R31 R31 K39 ["Event"]
      156 GETTABLEKS                       R31 R31 K40 ["Activated"]
      158 SETTABLE                         R17 R30 R31
      159 GETTABLEKS                       R31 R1 K41 ["WrapperProps"]
      161 NEWTABLE                         R32 1 0
      163 GETUPVAL                         R33 2
      164 GETTABLEKS                       R33 R33 K42 ["Ref"]
      166 GETTABLEKS                       R34 R1 K43 ["ForwardRef"]
      168 JUMPIF                           R34 ; [+6]
      169 GETTABLEKS                       R35 R1 K41 ["WrapperProps"]
      171 GETUPVAL                         R36 2
      172 GETTABLEKS                       R36 R36 K42 ["Ref"]
      174 GETTABLE                         R34 R35 R36
      175 SETTABLE                         R34 R32 R33
      176 CALL                             R29 3 -1
      177 CALL                             R27 -1 1
      178 JUMPIFNOT                        R23 ; [+89]
      179 GETUPVAL                         R28 2
      180 GETTABLEKS                       R28 R28 K34 ["createElement"]
      182 GETUPVAL                         R29 4
      183 DUPTABLE                         R30 K47 [{"AnchorPoint", "AutomaticSize", "Cursor", "LayoutOrder", "MouseEnter", "MouseLeave", "Size", "Position", "ZIndex"}]
      184 SETTABLEKS                       R19 R30 K26 ["AnchorPoint"]
      186 GETIMPORT                        R31 K20 [Enum.AutomaticSize.XY]
      188 SETTABLEKS                       R31 R30 K16 ["AutomaticSize"]
      190 LOADK                            R31 K48 ["PointingHand"]
      191 SETTABLEKS                       R31 R30 K44 ["Cursor"]
      193 SETTABLEKS                       R21 R30 K28 ["LayoutOrder"]
      195 GETTABLEKS                       R31 R0 K49 ["mouseEnter"]
      197 SETTABLEKS                       R31 R30 K45 ["MouseEnter"]
      199 GETTABLEKS                       R31 R0 K50 ["mouseLeave"]
      201 SETTABLEKS                       R31 R30 K46 ["MouseLeave"]
      203 GETTABLEKS                       R31 R1 K51 ["HoverAreaSize"]
      205 SETTABLEKS                       R31 R30 K4 ["Size"]
      207 SETTABLEKS                       R18 R30 K25 ["Position"]
      209 SETTABLEKS                       R20 R30 K27 ["ZIndex"]
      211 DUPTABLE                         R31 K54 [{"Button", "Underline"}]
      212 SETTABLEKS                       R27 R31 K52 ["Button"]
      214 GETUPVAL                         R32 2
      215 GETTABLEKS                       R32 R32 K34 ["createElement"]
      217 LOADK                            R33 K55 ["Frame"]
      218 DUPTABLE                         R34 K58 [{"Position", "LayoutOrder", "Size", "BackgroundColor3", "BorderSizePixel", "BackgroundTransparency"}]
      219 GETIMPORT                        R35 K23 [UDim2.new]
      221 LOADN                            R36 0
      222 LOADN                            R37 0
      223 LOADN                            R38 1
      224 LOADN                            R39 255
      225 CALL                             R35 4 1
      226 SETTABLEKS                       R35 R34 K25 ["Position"]
      228 LOADN                            R35 1
      229 SETTABLEKS                       R35 R34 K28 ["LayoutOrder"]
      231 JUMPIFNOT                        R12 ; [+8]
      232 GETIMPORT                        R35 K23 [UDim2.new]
      234 LOADN                            R36 1
      235 LOADN                            R37 0
      236 LOADN                            R38 0
      237 LOADN                            R39 1
      238 CALL                             R35 4 1
      239 JUMP                             ; [+10]
      240 GETIMPORT                        R35 K23 [UDim2.new]
      242 LOADN                            R36 0
      243 GETTABLEKS                       R37 R1 K59 ["AbsoluteSize"]
      245 GETTABLEKS                       R37 R37 K60 ["X"]
      247 LOADN                            R38 0
      248 LOADN                            R39 1
      249 CALL                             R35 4 1
      250 SETTABLEKS                       R35 R34 K4 ["Size"]
      252 SETTABLEKS                       R26 R34 K56 ["BackgroundColor3"]
      254 LOADN                            R35 0
      255 SETTABLEKS                       R35 R34 K57 ["BorderSizePixel"]
      257 JUMPIFNOT                        R25 ; [+2]
      258 LOADN                            R35 0
      259 JUMP                             ; [+1]
      260 LOADN                            R35 1
      261 SETTABLEKS                       R35 R34 K37 ["BackgroundTransparency"]
      263 CALL                             R32 2 1
      264 SETTABLEKS                       R32 R31 K53 ["Underline"]
      266 CALL                             R28 3 -1
      267 RETURN                           R28 -1
      268 RETURN                           R27 1

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
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Wrappers"]
       29 GETTABLEKS                       R5 R5 K11 ["withAbsoluteSize"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Wrappers"]
       36 GETTABLEKS                       R6 R6 K12 ["withForwardRef"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K4 ["Parent"]
       43 GETTABLEKS                       R7 R7 K13 ["Dash"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K14 ["join"]
       48 GETTABLEKS                       R8 R0 K15 ["Util"]
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R8 K16 ["StyleModifier"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R8 K17 ["prioritize"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETTABLEKS                       R12 R0 K2 ["UI"]
       64 GETTABLEKS                       R12 R12 K18 ["Components"]
       66 GETTABLEKS                       R12 R12 K19 ["HoverArea"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R1 K20 ["PureComponent"]
       71 LOADK                            R14 K21 ["LinkText"]
       72 NAMECALL                         R12 R12 K22 ["extend"]
       74 CALL                             R12 2 1
       75 DUPCLOSURE                       R13 K23 [PROTO_2]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R13 R12 K24 ["init"]
       80 DUPCLOSURE                       R13 K25 [PROTO_3]
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R11
       86 SETTABLEKS                       R13 R12 K26 ["render"]
       88 MOVE                             R13 R3
       89 DUPTABLE                         R14 K28 [{"Stylizer"}]
       90 GETTABLEKS                       R15 R2 K27 ["Stylizer"]
       92 SETTABLEKS                       R15 R14 K27 ["Stylizer"]
       94 CALL                             R13 1 1
       95 MOVE                             R14 R12
       96 CALL                             R13 1 1
       97 MOVE                             R12 R13
       98 MOVE                             R13 R4
       99 MOVE                             R14 R12
      100 CALL                             R13 1 1
      101 MOVE                             R12 R13
      102 MOVE                             R13 R5
      103 MOVE                             R14 R12
      104 CALL                             R13 1 1
      105 MOVE                             R12 R13
      106 RETURN                           R12 1
