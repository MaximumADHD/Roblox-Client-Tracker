PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LENGTH                           R6 R1
        3 ADDK                             R5 R6 K0 [1]
        4 DIVRK                            R4 R0 K5 ["BackgroundTransparency"]
        5 LOADN                            R7 0
        6 LENGTH                           R5 R1
        7 LOADN                            R6 1
        8 FORNPREP                         R5
        9 GETTABLE                         R8 R1 R7
       10 LOADNIL                          R9
       11 JUMPIFNOTEQKN                    R7 K1 [0] ; [+62]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K2 ["createElement"]
       16 LOADK                            R11 K3 ["Frame"]
       17 DUPTABLE                         R12 K6 [{"Size", "BackgroundTransparency"}]
       18 GETIMPORT                        R13 K9 [UDim2.new]
       20 LOADN                            R14 0
       21 GETTABLEKS                       R15 R0 K10 ["table"]
       23 GETTABLEKS                       R15 R15 K11 ["icon"]
       25 GETTABLEKS                       R15 R15 K12 ["height"]
       27 LOADN                            R16 0
       28 GETTABLEKS                       R17 R0 K10 ["table"]
       30 GETTABLEKS                       R17 R17 K11 ["icon"]
       32 GETTABLEKS                       R17 R17 K12 ["height"]
       34 CALL                             R13 4 1
       35 SETTABLEKS                       R13 R12 K4 ["Size"]
       37 LOADN                            R13 1
       38 SETTABLEKS                       R13 R12 K5 ["BackgroundTransparency"]
       40 DUPTABLE                         R13 K14 [{"Icon"}]
       41 SETTABLEKS                       R2 R13 K13 ["Icon"]
       43 CALL                             R10 3 1
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R11 R11 K2 ["createElement"]
       47 LOADK                            R12 K3 ["Frame"]
       48 DUPTABLE                         R13 K16 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
       49 SETTABLEKS                       R7 R13 K15 ["LayoutOrder"]
       51 GETIMPORT                        R14 K9 [UDim2.new]
       53 MOVE                             R15 R4
       54 LOADN                            R16 0
       55 LOADN                            R17 0
       56 GETTABLEKS                       R18 R0 K10 ["table"]
       58 GETTABLEKS                       R18 R18 K11 ["icon"]
       60 GETTABLEKS                       R18 R18 K12 ["height"]
       62 CALL                             R14 4 1
       63 SETTABLEKS                       R14 R13 K4 ["Size"]
       65 LOADN                            R14 1
       66 SETTABLEKS                       R14 R13 K5 ["BackgroundTransparency"]
       68 DUPTABLE                         R14 K14 [{"Icon"}]
       69 SETTABLEKS                       R10 R14 K13 ["Icon"]
       71 CALL                             R11 3 1
       72 MOVE                             R9 R11
       73 JUMP                             ; [+130]
       74 LENGTH                           R10 R1
       75 JUMPIFEQ                         R7 R10 ; [+62]
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K2 ["createElement"]
       80 LOADK                            R11 K17 ["TextLabel"]
       81 GETUPVAL                         R12 1
       82 GETTABLEKS                       R12 R12 K18 ["Dictionary"]
       84 GETTABLEKS                       R12 R12 K19 ["join"]
       86 GETTABLEKS                       R13 R0 K20 ["fontStyle"]
       88 GETTABLEKS                       R13 R13 K21 ["Smaller"]
       90 DUPTABLE                         R14 K25 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "TextXAlignment", "TextTruncate"}]
       91 GETIMPORT                        R15 K9 [UDim2.new]
       93 MOVE                             R16 R4
       94 LOADN                            R17 0
       95 LOADN                            R18 0
       96 GETTABLEKS                       R19 R0 K10 ["table"]
       98 GETTABLEKS                       R19 R19 K26 ["item"]
      100 GETTABLEKS                       R19 R19 K12 ["height"]
      102 CALL                             R15 4 1
      103 SETTABLEKS                       R15 R14 K4 ["Size"]
      105 SETTABLEKS                       R7 R14 K15 ["LayoutOrder"]
      107 SETTABLEKS                       R8 R14 K22 ["Text"]
      109 LOADN                            R15 1
      110 SETTABLEKS                       R15 R14 K5 ["BackgroundTransparency"]
      112 GETIMPORT                        R15 K29 [Enum.TextXAlignment.Left]
      114 SETTABLEKS                       R15 R14 K23 ["TextXAlignment"]
      116 GETIMPORT                        R15 K31 [Enum.TextTruncate.AtEnd]
      118 SETTABLEKS                       R15 R14 K24 ["TextTruncate"]
      120 CALL                             R12 2 1
      121 DUPTABLE                         R13 K33 [{"Tooltip"}]
      122 GETUPVAL                         R14 0
      123 GETTABLEKS                       R14 R14 K2 ["createElement"]
      125 GETUPVAL                         R15 2
      126 DUPTABLE                         R16 K35 [{"Text", "Enabled"}]
      127 SETTABLEKS                       R8 R16 K22 ["Text"]
      129 LOADB                            R17 1
      130 SETTABLEKS                       R17 R16 K34 ["Enabled"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K32 ["Tooltip"]
      135 CALL                             R10 3 1
      136 MOVE                             R9 R10
      137 JUMP                             ; [+66]
      138 GETUPVAL                         R10 0
      139 GETTABLEKS                       R10 R10 K2 ["createElement"]
      141 LOADK                            R11 K17 ["TextLabel"]
      142 GETUPVAL                         R12 1
      143 GETTABLEKS                       R12 R12 K18 ["Dictionary"]
      145 GETTABLEKS                       R12 R12 K19 ["join"]
      147 GETTABLEKS                       R13 R0 K20 ["fontStyle"]
      149 GETTABLEKS                       R13 R13 K21 ["Smaller"]
      151 DUPTABLE                         R14 K25 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "TextXAlignment", "TextTruncate"}]
      152 GETIMPORT                        R15 K9 [UDim2.new]
      154 MOVE                             R16 R4
      155 GETTABLEKS                       R18 R0 K10 ["table"]
      157 GETTABLEKS                       R18 R18 K36 ["menu"]
      159 GETTABLEKS                       R18 R18 K37 ["buttonSize"]
      161 MINUS                            R17 R18
      162 LOADN                            R18 0
      163 GETTABLEKS                       R19 R0 K10 ["table"]
      165 GETTABLEKS                       R19 R19 K26 ["item"]
      167 GETTABLEKS                       R19 R19 K12 ["height"]
      169 CALL                             R15 4 1
      170 SETTABLEKS                       R15 R14 K4 ["Size"]
      172 SETTABLEKS                       R7 R14 K15 ["LayoutOrder"]
      174 SETTABLEKS                       R8 R14 K22 ["Text"]
      176 LOADN                            R15 1
      177 SETTABLEKS                       R15 R14 K5 ["BackgroundTransparency"]
      179 GETIMPORT                        R15 K29 [Enum.TextXAlignment.Left]
      181 SETTABLEKS                       R15 R14 K23 ["TextXAlignment"]
      183 GETIMPORT                        R15 K31 [Enum.TextTruncate.AtEnd]
      185 SETTABLEKS                       R15 R14 K24 ["TextTruncate"]
      187 CALL                             R12 2 1
      188 DUPTABLE                         R13 K33 [{"Tooltip"}]
      189 GETUPVAL                         R14 0
      190 GETTABLEKS                       R14 R14 K2 ["createElement"]
      192 GETUPVAL                         R15 2
      193 DUPTABLE                         R16 K35 [{"Text", "Enabled"}]
      194 SETTABLEKS                       R8 R16 K22 ["Text"]
      196 LOADB                            R17 1
      197 SETTABLEKS                       R17 R16 K34 ["Enabled"]
      199 CALL                             R14 2 1
      200 SETTABLEKS                       R14 R13 K32 ["Tooltip"]
      202 CALL                             R10 3 1
      203 MOVE                             R9 R10
      204 SETTABLE                         R9 R3 R7
      205 FORNLOOP                         R5
      206 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R1
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 GETTABLE                         R6 R1 R5
        7 LOADNIL                          R7
        8 LENGTH                           R8 R1
        9 JUMPIFEQ                         R5 R8 ; [+63]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K0 ["createElement"]
       14 LOADK                            R9 K1 ["TextLabel"]
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K2 ["Dictionary"]
       18 GETTABLEKS                       R10 R10 K3 ["join"]
       20 GETTABLEKS                       R11 R0 K4 ["fontStyle"]
       22 GETTABLEKS                       R11 R11 K5 ["Smaller"]
       24 DUPTABLE                         R12 K12 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "TextXAlignment", "TextTruncate"}]
       25 GETIMPORT                        R13 K15 [UDim2.new]
       27 LENGTH                           R15 R1
       28 DIVRK                            R14 R16 K15 [UDim2.new]
       29 LOADN                            R15 0
       30 LOADN                            R16 0
       31 GETTABLEKS                       R17 R0 K17 ["table"]
       33 GETTABLEKS                       R17 R17 K18 ["item"]
       35 GETTABLEKS                       R17 R17 K19 ["height"]
       37 CALL                             R13 4 1
       38 SETTABLEKS                       R13 R12 K6 ["Size"]
       40 SETTABLEKS                       R5 R12 K7 ["LayoutOrder"]
       42 SETTABLEKS                       R6 R12 K8 ["Text"]
       44 LOADN                            R13 1
       45 SETTABLEKS                       R13 R12 K9 ["BackgroundTransparency"]
       47 GETIMPORT                        R13 K22 [Enum.TextXAlignment.Left]
       49 SETTABLEKS                       R13 R12 K10 ["TextXAlignment"]
       51 GETIMPORT                        R13 K24 [Enum.TextTruncate.AtEnd]
       53 SETTABLEKS                       R13 R12 K11 ["TextTruncate"]
       55 CALL                             R10 2 1
       56 DUPTABLE                         R11 K26 [{"Tooltip"}]
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K0 ["createElement"]
       60 GETUPVAL                         R13 2
       61 DUPTABLE                         R14 K28 [{"Text", "Enabled"}]
       62 SETTABLEKS                       R6 R14 K8 ["Text"]
       64 LOADB                            R15 1
       65 SETTABLEKS                       R15 R14 K27 ["Enabled"]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K25 ["Tooltip"]
       70 CALL                             R8 3 1
       71 MOVE                             R7 R8
       72 JUMP                             ; [+67]
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R8 R8 K0 ["createElement"]
       76 LOADK                            R9 K1 ["TextLabel"]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K2 ["Dictionary"]
       80 GETTABLEKS                       R10 R10 K3 ["join"]
       82 GETTABLEKS                       R11 R0 K4 ["fontStyle"]
       84 GETTABLEKS                       R11 R11 K5 ["Smaller"]
       86 DUPTABLE                         R12 K12 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "TextXAlignment", "TextTruncate"}]
       87 GETIMPORT                        R13 K15 [UDim2.new]
       89 LENGTH                           R15 R1
       90 DIVRK                            R14 R16 K15 [UDim2.new]
       91 GETTABLEKS                       R16 R0 K17 ["table"]
       93 GETTABLEKS                       R16 R16 K29 ["menu"]
       95 GETTABLEKS                       R16 R16 K30 ["buttonSize"]
       97 MINUS                            R15 R16
       98 LOADN                            R16 0
       99 GETTABLEKS                       R17 R0 K17 ["table"]
      101 GETTABLEKS                       R17 R17 K18 ["item"]
      103 GETTABLEKS                       R17 R17 K19 ["height"]
      105 CALL                             R13 4 1
      106 SETTABLEKS                       R13 R12 K6 ["Size"]
      108 SETTABLEKS                       R5 R12 K7 ["LayoutOrder"]
      110 SETTABLEKS                       R6 R12 K8 ["Text"]
      112 LOADN                            R13 1
      113 SETTABLEKS                       R13 R12 K9 ["BackgroundTransparency"]
      115 GETIMPORT                        R13 K22 [Enum.TextXAlignment.Left]
      117 SETTABLEKS                       R13 R12 K10 ["TextXAlignment"]
      119 GETIMPORT                        R13 K24 [Enum.TextTruncate.AtEnd]
      121 SETTABLEKS                       R13 R12 K11 ["TextTruncate"]
      123 CALL                             R10 2 1
      124 DUPTABLE                         R11 K26 [{"Tooltip"}]
      125 GETUPVAL                         R12 0
      126 GETTABLEKS                       R12 R12 K0 ["createElement"]
      128 GETUPVAL                         R13 2
      129 DUPTABLE                         R14 K28 [{"Text", "Enabled"}]
      130 SETTABLEKS                       R6 R14 K8 ["Text"]
      132 LOADB                            R15 1
      133 SETTABLEKS                       R15 R14 K27 ["Enabled"]
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K25 ["Tooltip"]
      138 CALL                             R8 3 1
      139 MOVE                             R7 R8
      140 SETTABLE                         R7 R2 R5
      141 FORNLOOP                         R3
      142 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnItemClicked"]
        5 GETTABLEKS                       R2 R0 K2 ["Key"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["hideMenu"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"showMenu", "menuItem"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K3 ["None"]
        8 SETTABLEKS                       R3 R2 K1 ["menuItem"]
       10 NAMECALL                         R0 R0 K4 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"menuItem"}]
        2 SETTABLEKS                       R0 R3 K0 ["menuItem"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["menuItem"]
        5 JUMPIFNOTEQ                      R1 R0 ; [+11]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K2 [{"menuItem"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["None"]
       12 SETTABLEKS                       R4 R3 K1 ["menuItem"]
       14 NAMECALL                         R1 R1 K4 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"showMenu", "isButtonHovered", "menuItem"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showMenu"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isButtonHovered"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["menuItem"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["createRef"]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K6 ["buttonRef"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K7 ["onItemClicked"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K0 ["showMenu"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 SETTABLEKS                       R1 R0 K8 ["hideMenu"]
       31 NEWCLOSURE                       R1 P3
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K9 ["onMenuItemEnter"]
       35 NEWCLOSURE                       R1 P4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R1 R0 K10 ["onMenuItemLeave"]
       40 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onMenuItemEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onMenuItemLeave"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R6 R1 K0 ["Key"]
        2 GETTABLEKS                       R7 R1 K1 ["Text"]
        4 GETTABLEKS                       R9 R0 K2 ["state"]
        6 GETTABLEKS                       R9 R9 K3 ["menuItem"]
        8 JUMPIFEQ                         R9 R6 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 GETUPVAL                         R9 0
       13 MOVE                             R11 R7
       14 GETTABLEKS                       R12 R4 K4 ["fontStyle"]
       16 GETTABLEKS                       R12 R12 K5 ["Normal"]
       18 GETTABLEKS                       R12 R12 K6 ["TextSize"]
       20 GETTABLEKS                       R13 R4 K4 ["fontStyle"]
       22 GETTABLEKS                       R13 R13 K5 ["Normal"]
       24 GETTABLEKS                       R13 R13 K7 ["Font"]
       26 GETIMPORT                        R14 K10 [Vector2.new]
       28 MOVE                             R15 R5
       29 LOADK                            R16 K11 [∞]
       30 CALL                             R14 2 -1
       31 NAMECALL                         R9 R9 K12 ["GetTextSize"]
       33 CALL                             R9 -1 1
       34 GETTABLEKS                       R10 R4 K13 ["dropDownEntry"]
       36 GETTABLEKS                       R10 R10 K14 ["background"]
       38 JUMPIFNOT                        R8 ; [+4]
       39 GETTABLEKS                       R11 R4 K13 ["dropDownEntry"]
       41 GETTABLEKS                       R10 R11 K15 ["hovered"]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K16 ["createElement"]
       46 LOADK                            R12 K17 ["ImageButton"]
       47 NEWTABLE                         R13 8 0
       49 GETIMPORT                        R14 K19 [UDim2.new]
       51 LOADN                            R15 0
       52 MOVE                             R16 R5
       53 LOADN                            R17 0
       54 GETTABLEKS                       R19 R9 K20 ["Y"]
       56 GETTABLEKS                       R20 R4 K21 ["table"]
       58 GETTABLEKS                       R20 R20 K22 ["menu"]
       60 GETTABLEKS                       R20 R20 K23 ["buttonPaddingY"]
       62 ADD                              R18 R19 R20
       63 CALL                             R14 4 1
       64 SETTABLEKS                       R14 R13 K24 ["Size"]
       66 SETTABLEKS                       R10 R13 K25 ["BackgroundColor3"]
       68 LOADN                            R14 0
       69 SETTABLEKS                       R14 R13 K26 ["BorderSizePixel"]
       71 SETTABLEKS                       R2 R13 K27 ["LayoutOrder"]
       73 LOADB                            R14 0
       74 SETTABLEKS                       R14 R13 K28 ["AutoButtonColor"]
       76 GETUPVAL                         R14 1
       77 GETTABLEKS                       R14 R14 K29 ["Event"]
       79 GETTABLEKS                       R14 R14 K30 ["Activated"]
       81 SETTABLE                         R3 R13 R14
       82 GETUPVAL                         R14 1
       83 GETTABLEKS                       R14 R14 K29 ["Event"]
       85 GETTABLEKS                       R14 R14 K31 ["MouseEnter"]
       87 NEWCLOSURE                       R15 P0
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R6
       90 SETTABLE                         R15 R13 R14
       91 GETUPVAL                         R14 1
       92 GETTABLEKS                       R14 R14 K29 ["Event"]
       94 GETTABLEKS                       R14 R14 K32 ["MouseLeave"]
       96 NEWCLOSURE                       R15 P1
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R6
       99 SETTABLE                         R15 R13 R14
      100 NEWTABLE                         R14 1 1
      102 GETUPVAL                         R15 1
      103 GETTABLEKS                       R15 R15 K16 ["createElement"]
      105 GETUPVAL                         R16 2
      106 DUPTABLE                         R17 K34 [{"Cursor"}]
      107 LOADK                            R18 K35 ["PointingHand"]
      108 SETTABLEKS                       R18 R17 K33 ["Cursor"]
      110 CALL                             R15 2 1
      111 SETLIST                          R14 R15 1 [1]
      113 GETUPVAL                         R16 1
      114 GETTABLEKS                       R16 R16 K16 ["createElement"]
      116 LOADK                            R17 K36 ["TextLabel"]
      117 GETUPVAL                         R18 3
      118 GETTABLEKS                       R18 R18 K37 ["Dictionary"]
      120 GETTABLEKS                       R18 R18 K38 ["join"]
      122 GETTABLEKS                       R19 R4 K4 ["fontStyle"]
      124 GETTABLEKS                       R19 R19 K39 ["Smaller"]
      126 DUPTABLE                         R20 K44 [{"Size", "Position", "AnchorPoint", "Text", "TextXAlignment", "BackgroundTransparency"}]
      127 GETIMPORT                        R21 K19 [UDim2.new]
      129 LOADN                            R22 1
      130 LOADN                            R23 0
      131 LOADN                            R24 0
      132 GETTABLEKS                       R25 R9 K20 ["Y"]
      134 CALL                             R21 4 1
      135 SETTABLEKS                       R21 R20 K24 ["Size"]
      137 GETIMPORT                        R21 K19 [UDim2.new]
      139 LOADN                            R22 0
      140 GETTABLEKS                       R23 R4 K21 ["table"]
      142 GETTABLEKS                       R23 R23 K45 ["textPadding"]
      144 LOADK                            R24 K46 [0.5]
      145 LOADN                            R25 0
      146 CALL                             R21 4 1
      147 SETTABLEKS                       R21 R20 K40 ["Position"]
      149 GETIMPORT                        R21 K10 [Vector2.new]
      151 LOADN                            R22 0
      152 LOADK                            R23 K46 [0.5]
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K41 ["AnchorPoint"]
      156 SETTABLEKS                       R7 R20 K1 ["Text"]
      158 GETIMPORT                        R21 K49 [Enum.TextXAlignment.Left]
      160 SETTABLEKS                       R21 R20 K42 ["TextXAlignment"]
      162 LOADN                            R21 1
      163 SETTABLEKS                       R21 R20 K43 ["BackgroundTransparency"]
      165 CALL                             R18 2 -1
      166 CALL                             R16 -1 1
      167 SETTABLEKS                       R16 R14 K50 ["Label"]
      169 CALL                             R11 3 -1
      170 RETURN                           R11 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 GETUPVAL                         R8 1
        5 GETUPVAL                         R9 2
        6 NAMECALL                         R3 R3 K0 ["renderMenuItem"]
        8 CALL                             R3 6 -1
        9 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["RowData"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Icon"]
       12 JUMPIFNOT                        R6 ; [+6]
       13 GETUPVAL                         R7 0
       14 MOVE                             R8 R3
       15 MOVE                             R9 R4
       16 MOVE                             R10 R6
       17 CALL                             R7 3 1
       18 JUMPIF                           R7 ; [+4]
       19 GETUPVAL                         R7 1
       20 MOVE                             R8 R3
       21 MOVE                             R9 R4
       22 CALL                             R7 2 1
       23 GETTABLEKS                       R8 R2 K6 ["showMenu"]
       25 GETTABLEKS                       R9 R1 K7 ["MenuItems"]
       27 LOADN                            R10 0
       28 GETIMPORT                        R11 K9 [ipairs]
       30 MOVE                             R12 R9
       31 CALL                             R11 1 3
       32 FORGPREP_INEXT                   R11
       33 GETUPVAL                         R16 2
       34 GETTABLEKS                       R18 R15 K10 ["Text"]
       36 GETTABLEKS                       R19 R3 K11 ["fontStyle"]
       38 GETTABLEKS                       R19 R19 K12 ["Normal"]
       40 GETTABLEKS                       R19 R19 K13 ["TextSize"]
       42 GETTABLEKS                       R20 R3 K11 ["fontStyle"]
       44 GETTABLEKS                       R20 R20 K12 ["Normal"]
       46 GETTABLEKS                       R20 R20 K14 ["Font"]
       48 GETIMPORT                        R21 K17 [Vector2.new]
       50 LOADK                            R22 K18 [∞]
       51 LOADK                            R23 K18 [∞]
       52 CALL                             R21 2 -1
       53 NAMECALL                         R16 R16 K19 ["GetTextSize"]
       55 CALL                             R16 -1 1
       56 GETTABLEKS                       R18 R16 K20 ["X"]
       58 GETTABLEKS                       R19 R3 K21 ["table"]
       60 GETTABLEKS                       R19 R19 K22 ["menu"]
       62 GETTABLEKS                       R19 R19 K23 ["itemPadding"]
       64 ADD                              R17 R18 R19
       65 FASTCALL2                        MATH_MAX R10 R17 ; [+5]
       67 MOVE                             R19 R10
       68 MOVE                             R20 R17
       69 GETIMPORT                        R18 K26 [math.max]
       71 CALL                             R18 2 1
       72 MOVE                             R10 R18
       73 FORGLOOP                         R11 2 [inext] ; [-41]
       75 LENGTH                           R12 R4
       76 ADDK                             R11 R12 K27 [1]
       77 GETUPVAL                         R12 3
       78 GETTABLEKS                       R12 R12 K28 ["createElement"]
       80 LOADK                            R13 K29 ["ImageButton"]
       81 NEWTABLE                         R14 8 0
       83 GETIMPORT                        R15 K31 [UDim2.new]
       85 LOADN                            R16 0
       86 GETTABLEKS                       R17 R3 K21 ["table"]
       88 GETTABLEKS                       R17 R17 K22 ["menu"]
       90 GETTABLEKS                       R17 R17 K32 ["buttonSize"]
       92 LOADN                            R18 0
       93 GETTABLEKS                       R19 R3 K21 ["table"]
       95 GETTABLEKS                       R19 R19 K22 ["menu"]
       97 GETTABLEKS                       R19 R19 K32 ["buttonSize"]
       99 CALL                             R15 4 1
      100 SETTABLEKS                       R15 R14 K33 ["Size"]
      102 LENGTH                           R16 R4
      103 ADDK                             R15 R16 K27 [1]
      104 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
      106 LOADN                            R15 1
      107 SETTABLEKS                       R15 R14 K34 ["BackgroundTransparency"]
      109 GETUPVAL                         R15 3
      110 GETTABLEKS                       R15 R15 K35 ["Ref"]
      112 GETTABLEKS                       R16 R0 K36 ["buttonRef"]
      114 SETTABLE                         R16 R14 R15
      115 GETUPVAL                         R15 3
      116 GETTABLEKS                       R15 R15 K37 ["Event"]
      118 GETTABLEKS                       R15 R15 K38 ["Activated"]
      120 GETTABLEKS                       R16 R0 K6 ["showMenu"]
      122 SETTABLE                         R16 R14 R15
      123 NEWTABLE                         R15 4 1
      125 GETUPVAL                         R17 3
      126 GETTABLEKS                       R17 R17 K28 ["createElement"]
      128 LOADK                            R18 K39 ["UIPadding"]
      129 DUPTABLE                         R19 K41 [{"PaddingBottom"}]
      130 GETIMPORT                        R20 K43 [UDim.new]
      132 LOADN                            R21 0
      133 GETTABLEKS                       R22 R3 K21 ["table"]
      135 GETTABLEKS                       R22 R22 K44 ["item"]
      137 GETTABLEKS                       R22 R22 K45 ["padding"]
      139 CALL                             R20 2 1
      140 SETTABLEKS                       R20 R19 K40 ["PaddingBottom"]
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R15 K46 ["Padding"]
      145 GETUPVAL                         R17 3
      146 GETTABLEKS                       R17 R17 K28 ["createElement"]
      148 GETUPVAL                         R18 4
      149 GETUPVAL                         R19 5
      150 GETTABLEKS                       R19 R19 K47 ["Dictionary"]
      152 GETTABLEKS                       R19 R19 K48 ["join"]
      154 GETTABLEKS                       R20 R3 K11 ["fontStyle"]
      156 GETTABLEKS                       R20 R20 K12 ["Normal"]
      158 DUPTABLE                         R21 K52 [{"Position", "AnchorPoint", "Text", "Font", "BackgroundTransparency", "width"}]
      159 GETIMPORT                        R22 K31 [UDim2.new]
      161 LOADK                            R23 K53 [0.5]
      162 LOADN                            R24 0
      163 LOADK                            R25 K53 [0.5]
      164 LOADN                            R26 0
      165 CALL                             R22 4 1
      166 SETTABLEKS                       R22 R21 K49 ["Position"]
      168 GETIMPORT                        R22 K17 [Vector2.new]
      170 LOADK                            R23 K53 [0.5]
      171 LOADK                            R24 K53 [0.5]
      172 CALL                             R22 2 1
      173 SETTABLEKS                       R22 R21 K50 ["AnchorPoint"]
      175 LOADK                            R22 K54 ["..."]
      176 SETTABLEKS                       R22 R21 K10 ["Text"]
      178 GETIMPORT                        R22 K57 [Enum.Font.SourceSansBold]
      180 SETTABLEKS                       R22 R21 K14 ["Font"]
      182 LOADN                            R22 1
      183 SETTABLEKS                       R22 R21 K34 ["BackgroundTransparency"]
      185 GETTABLEKS                       R22 R3 K21 ["table"]
      187 GETTABLEKS                       R22 R22 K22 ["menu"]
      189 GETTABLEKS                       R22 R22 K32 ["buttonSize"]
      191 SETTABLEKS                       R22 R21 K51 ["width"]
      193 CALL                             R19 2 -1
      194 CALL                             R17 -1 1
      195 SETTABLEKS                       R17 R15 K58 ["Dots"]
      197 GETUPVAL                         R17 3
      198 GETTABLEKS                       R17 R17 K28 ["createElement"]
      200 GETUPVAL                         R18 6
      201 DUPTABLE                         R19 K65 [{"Hide", "Items", "OnFocusLost", "OnItemActivated", "OnRenderItem", "Width"}]
      202 NOT                              R20 R8
      203 SETTABLEKS                       R20 R19 K59 ["Hide"]
      205 SETTABLEKS                       R9 R19 K60 ["Items"]
      207 GETTABLEKS                       R20 R0 K66 ["hideMenu"]
      209 SETTABLEKS                       R20 R19 K61 ["OnFocusLost"]
      211 GETTABLEKS                       R20 R0 K67 ["onItemClicked"]
      213 SETTABLEKS                       R20 R19 K62 ["OnItemActivated"]
      215 NEWCLOSURE                       R20 P0
      216 CAPTURE                          VAL R0
      217 CAPTURE                          VAL R3
      218 CAPTURE                          REF R10
      219 SETTABLEKS                       R20 R19 K63 ["OnRenderItem"]
      221 SETTABLEKS                       R10 R19 K64 ["Width"]
      223 CALL                             R17 2 1
      224 SETTABLEKS                       R17 R15 K68 ["Menu"]
      226 GETUPVAL                         R16 3
      227 GETTABLEKS                       R16 R16 K28 ["createElement"]
      229 GETUPVAL                         R17 7
      230 DUPTABLE                         R18 K70 [{"Cursor"}]
      231 LOADK                            R19 K71 ["PointingHand"]
      232 SETTABLEKS                       R19 R18 K69 ["Cursor"]
      234 CALL                             R16 2 -1
      235 SETLIST                          R15 R16 -1 [1]
      237 CALL                             R12 3 1
      238 SETTABLE                         R12 R7 R11
      239 JUMPIFNOT                        R6 ; [+8]
      240 GETTABLEKS                       R12 R3 K21 ["table"]
      242 GETTABLEKS                       R12 R12 K73 ["icon"]
      244 GETTABLEKS                       R12 R12 K74 ["height"]
      246 ADDK                             R11 R12 K72 [10]
      247 JUMPIF                           R11 ; [+6]
      248 GETTABLEKS                       R11 R3 K21 ["table"]
      250 GETTABLEKS                       R11 R11 K44 ["item"]
      252 GETTABLEKS                       R11 R11 K74 ["height"]
      254 GETUPVAL                         R12 3
      255 GETTABLEKS                       R12 R12 K28 ["createElement"]
      257 LOADK                            R13 K75 ["Frame"]
      258 DUPTABLE                         R14 K78 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      259 GETIMPORT                        R15 K31 [UDim2.new]
      261 LOADN                            R16 1
      262 LOADN                            R17 0
      263 LOADN                            R18 0
      264 MOVE                             R19 R11
      265 CALL                             R15 4 1
      266 SETTABLEKS                       R15 R14 K33 ["Size"]
      268 GETTABLEKS                       R15 R3 K21 ["table"]
      270 GETTABLEKS                       R15 R15 K44 ["item"]
      272 GETTABLEKS                       R15 R15 K79 ["background"]
      274 SETTABLEKS                       R15 R14 K76 ["BackgroundColor3"]
      276 LOADN                            R15 0
      277 SETTABLEKS                       R15 R14 K77 ["BorderSizePixel"]
      279 SETTABLEKS                       R5 R14 K4 ["LayoutOrder"]
      281 GETUPVAL                         R15 5
      282 GETTABLEKS                       R15 R15 K47 ["Dictionary"]
      284 GETTABLEKS                       R15 R15 K48 ["join"]
      286 DUPTABLE                         R16 K81 [{"RowLayout", "Padding"}]
      287 GETUPVAL                         R17 3
      288 GETTABLEKS                       R17 R17 K28 ["createElement"]
      290 LOADK                            R18 K82 ["UIListLayout"]
      291 DUPTABLE                         R19 K87 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      292 GETIMPORT                        R20 K89 [Enum.FillDirection.Horizontal]
      294 SETTABLEKS                       R20 R19 K83 ["FillDirection"]
      296 GETIMPORT                        R20 K91 [Enum.HorizontalAlignment.Left]
      298 SETTABLEKS                       R20 R19 K84 ["HorizontalAlignment"]
      300 GETIMPORT                        R20 K93 [Enum.VerticalAlignment.Center]
      302 SETTABLEKS                       R20 R19 K85 ["VerticalAlignment"]
      304 GETIMPORT                        R20 K94 [Enum.SortOrder.LayoutOrder]
      306 SETTABLEKS                       R20 R19 K86 ["SortOrder"]
      308 CALL                             R17 2 1
      309 SETTABLEKS                       R17 R16 K80 ["RowLayout"]
      311 GETUPVAL                         R17 3
      312 GETTABLEKS                       R17 R17 K28 ["createElement"]
      314 LOADK                            R18 K39 ["UIPadding"]
      315 DUPTABLE                         R19 K97 [{"PaddingLeft", "PaddingRight"}]
      316 GETIMPORT                        R20 K43 [UDim.new]
      318 LOADN                            R21 0
      319 GETTABLEKS                       R22 R3 K21 ["table"]
      321 GETTABLEKS                       R22 R22 K98 ["textPadding"]
      323 CALL                             R20 2 1
      324 SETTABLEKS                       R20 R19 K95 ["PaddingLeft"]
      326 GETIMPORT                        R20 K43 [UDim.new]
      328 LOADN                            R21 0
      329 GETTABLEKS                       R22 R3 K21 ["table"]
      331 GETTABLEKS                       R22 R22 K98 ["textPadding"]
      333 CALL                             R20 2 1
      334 SETTABLEKS                       R20 R19 K96 ["PaddingRight"]
      336 CALL                             R17 2 1
      337 SETTABLEKS                       R17 R16 K46 ["Padding"]
      339 MOVE                             R17 R7
      340 CALL                             R15 2 -1
      341 CALL                             R12 -1 -1
      342 CLOSEUPVALS                      R10
      343 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["FitFrame"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K11 ["withContext"]
       41 GETTABLEKS                       R7 R4 K12 ["UI"]
       43 GETTABLEKS                       R8 R7 K13 ["HoverArea"]
       45 GETTABLEKS                       R9 R7 K14 ["DropdownMenu"]
       47 GETTABLEKS                       R10 R1 K15 ["FitTextLabel"]
       49 GETTABLEKS                       R11 R7 K16 ["Tooltip"]
       51 GETIMPORT                        R12 K18 [game]
       53 LOADK                            R14 K19 ["TextService"]
       54 NAMECALL                         R12 R12 K20 ["GetService"]
       56 CALL                             R12 2 1
       57 GETTABLEKS                       R13 R2 K21 ["PureComponent"]
       59 LOADK                            R15 K22 ["TableWithMenuItem"]
       60 NAMECALL                         R13 R13 K23 ["extend"]
       62 CALL                             R13 2 1
       63 DUPCLOSURE                       R14 K24 [PROTO_0]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R11
       67 DUPCLOSURE                       R15 K25 [PROTO_1]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R11
       71 DUPCLOSURE                       R16 K26 [PROTO_7]
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R16 R13 K27 ["init"]
       75 DUPCLOSURE                       R16 K28 [PROTO_10]
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R16 R13 K29 ["renderMenuItem"]
       82 DUPCLOSURE                       R16 K30 [PROTO_12]
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R16 R13 K31 ["render"]
       93 MOVE                             R16 R6
       94 DUPTABLE                         R17 K34 [{"Stylizer", "Mouse"}]
       95 GETTABLEKS                       R18 R5 K32 ["Stylizer"]
       97 SETTABLEKS                       R18 R17 K32 ["Stylizer"]
       99 GETTABLEKS                       R18 R5 K33 ["Mouse"]
      101 SETTABLEKS                       R18 R17 K33 ["Mouse"]
      103 CALL                             R16 1 1
      104 MOVE                             R17 R13
      105 CALL                             R16 1 1
      106 MOVE                             R13 R16
      107 RETURN                           R13 1
