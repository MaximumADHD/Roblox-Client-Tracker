PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LENGTH                           R6 R1
        3 ADDK                             R5 R6 K0 [1]
        4 DIVRK                            R4 K0 [1] R5
        5 LOADN                            R7 0
        6 LENGTH                           R5 R1
        7 LOADN                            R6 1
        8 FORNPREP                         R5
        9 GETTABLE                         R8 R1 R7
       10 LOADNIL                          R9
       11 JUMPIFNOTEQKN                    R7 K1 [0] ; [+56]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K2 ["createElement"]
       16 LOADK                            R11 K3 ["Frame"]
       17 DUPTABLE                         R12 K6 [{["Size"], ["BackgroundTransparency"] = 1}]
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
       37 DUPTABLE                         R13 K14 [{"Icon"}]
       38 SETTABLEKS                       R2 R13 K13 ["Icon"]
       40 CALL                             R10 3 1
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R11 R11 K2 ["createElement"]
       44 LOADK                            R12 K3 ["Frame"]
       45 DUPTABLE                         R13 K16 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
       46 SETTABLEKS                       R7 R13 K15 ["LayoutOrder"]
       48 GETIMPORT                        R14 K9 [UDim2.new]
       50 MOVE                             R15 R4
       51 LOADN                            R16 0
       52 LOADN                            R17 0
       53 GETTABLEKS                       R18 R0 K10 ["table"]
       55 GETTABLEKS                       R18 R18 K11 ["icon"]
       57 GETTABLEKS                       R18 R18 K12 ["height"]
       59 CALL                             R14 4 1
       60 SETTABLEKS                       R14 R13 K4 ["Size"]
       62 DUPTABLE                         R14 K14 [{"Icon"}]
       63 SETTABLEKS                       R10 R14 K13 ["Icon"]
       65 CALL                             R11 3 1
       66 MOVE                             R9 R11
       67 JUMP                             ; [+118]
       68 LENGTH                           R10 R1
       69 JUMPIFEQ                         R7 R10 ; [+56]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K2 ["createElement"]
       74 LOADK                            R11 K17 ["TextLabel"]
       75 GETUPVAL                         R12 1
       76 GETTABLEKS                       R12 R12 K18 ["Dictionary"]
       78 GETTABLEKS                       R12 R12 K19 ["join"]
       80 GETTABLEKS                       R13 R0 K20 ["fontStyle"]
       82 GETTABLEKS                       R13 R13 K21 ["Smaller"]
       84 DUPTABLE                         R14 K25 [{["Size"], ["LayoutOrder"], ["Text"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextTruncate"]}]
       85 GETIMPORT                        R15 K9 [UDim2.new]
       87 MOVE                             R16 R4
       88 LOADN                            R17 0
       89 LOADN                            R18 0
       90 GETTABLEKS                       R19 R0 K10 ["table"]
       92 GETTABLEKS                       R19 R19 K26 ["item"]
       94 GETTABLEKS                       R19 R19 K12 ["height"]
       96 CALL                             R15 4 1
       97 SETTABLEKS                       R15 R14 K4 ["Size"]
       99 SETTABLEKS                       R7 R14 K15 ["LayoutOrder"]
      101 SETTABLEKS                       R8 R14 K22 ["Text"]
      103 GETIMPORT                        R15 K29 [Enum.TextXAlignment.Left]
      105 SETTABLEKS                       R15 R14 K23 ["TextXAlignment"]
      107 GETIMPORT                        R15 K31 [Enum.TextTruncate.AtEnd]
      109 SETTABLEKS                       R15 R14 K24 ["TextTruncate"]
      111 CALL                             R12 2 1
      112 DUPTABLE                         R13 K33 [{"Tooltip"}]
      113 GETUPVAL                         R14 0
      114 GETTABLEKS                       R14 R14 K2 ["createElement"]
      116 GETUPVAL                         R15 2
      117 DUPTABLE                         R16 K36 [{["Text"], ["Enabled"] = True}]
      118 SETTABLEKS                       R8 R16 K22 ["Text"]
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K32 ["Tooltip"]
      123 CALL                             R10 3 1
      124 MOVE                             R9 R10
      125 JUMP                             ; [+60]
      126 GETUPVAL                         R10 0
      127 GETTABLEKS                       R10 R10 K2 ["createElement"]
      129 LOADK                            R11 K17 ["TextLabel"]
      130 GETUPVAL                         R12 1
      131 GETTABLEKS                       R12 R12 K18 ["Dictionary"]
      133 GETTABLEKS                       R12 R12 K19 ["join"]
      135 GETTABLEKS                       R13 R0 K20 ["fontStyle"]
      137 GETTABLEKS                       R13 R13 K21 ["Smaller"]
      139 DUPTABLE                         R14 K25 [{["Size"], ["LayoutOrder"], ["Text"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextTruncate"]}]
      140 GETIMPORT                        R15 K9 [UDim2.new]
      142 MOVE                             R16 R4
      143 GETTABLEKS                       R18 R0 K10 ["table"]
      145 GETTABLEKS                       R18 R18 K37 ["menu"]
      147 GETTABLEKS                       R18 R18 K38 ["buttonSize"]
      149 MINUS                            R17 R18
      150 LOADN                            R18 0
      151 GETTABLEKS                       R19 R0 K10 ["table"]
      153 GETTABLEKS                       R19 R19 K26 ["item"]
      155 GETTABLEKS                       R19 R19 K12 ["height"]
      157 CALL                             R15 4 1
      158 SETTABLEKS                       R15 R14 K4 ["Size"]
      160 SETTABLEKS                       R7 R14 K15 ["LayoutOrder"]
      162 SETTABLEKS                       R8 R14 K22 ["Text"]
      164 GETIMPORT                        R15 K29 [Enum.TextXAlignment.Left]
      166 SETTABLEKS                       R15 R14 K23 ["TextXAlignment"]
      168 GETIMPORT                        R15 K31 [Enum.TextTruncate.AtEnd]
      170 SETTABLEKS                       R15 R14 K24 ["TextTruncate"]
      172 CALL                             R12 2 1
      173 DUPTABLE                         R13 K33 [{"Tooltip"}]
      174 GETUPVAL                         R14 0
      175 GETTABLEKS                       R14 R14 K2 ["createElement"]
      177 GETUPVAL                         R15 2
      178 DUPTABLE                         R16 K36 [{["Text"], ["Enabled"] = True}]
      179 SETTABLEKS                       R8 R16 K22 ["Text"]
      181 CALL                             R14 2 1
      182 SETTABLEKS                       R14 R13 K32 ["Tooltip"]
      184 CALL                             R10 3 1
      185 MOVE                             R9 R10
      186 SETTABLE                         R9 R3 R7
      187 FORNLOOP                         R5
      188 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R1
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 GETTABLE                         R6 R1 R5
        7 LOADNIL                          R7
        8 LENGTH                           R8 R1
        9 JUMPIFEQ                         R5 R8 ; [+57]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K0 ["createElement"]
       14 LOADK                            R9 K1 ["TextLabel"]
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K2 ["Dictionary"]
       18 GETTABLEKS                       R10 R10 K3 ["join"]
       20 GETTABLEKS                       R11 R0 K4 ["fontStyle"]
       22 GETTABLEKS                       R11 R11 K5 ["Smaller"]
       24 DUPTABLE                         R12 K13 [{["Size"], ["LayoutOrder"], ["Text"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextTruncate"]}]
       25 GETIMPORT                        R13 K16 [UDim2.new]
       27 LENGTH                           R15 R1
       28 DIVRK                            R14 K10 [1] R15
       29 LOADN                            R15 0
       30 LOADN                            R16 0
       31 GETTABLEKS                       R17 R0 K17 ["table"]
       33 GETTABLEKS                       R17 R17 K18 ["item"]
       35 GETTABLEKS                       R17 R17 K19 ["height"]
       37 CALL                             R13 4 1
       38 SETTABLEKS                       R13 R12 K6 ["Size"]
       40 SETTABLEKS                       R5 R12 K7 ["LayoutOrder"]
       42 SETTABLEKS                       R6 R12 K8 ["Text"]
       44 GETIMPORT                        R13 K22 [Enum.TextXAlignment.Left]
       46 SETTABLEKS                       R13 R12 K11 ["TextXAlignment"]
       48 GETIMPORT                        R13 K24 [Enum.TextTruncate.AtEnd]
       50 SETTABLEKS                       R13 R12 K12 ["TextTruncate"]
       52 CALL                             R10 2 1
       53 DUPTABLE                         R11 K26 [{"Tooltip"}]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R12 R12 K0 ["createElement"]
       57 GETUPVAL                         R13 2
       58 DUPTABLE                         R14 K29 [{["Text"], ["Enabled"] = True}]
       59 SETTABLEKS                       R6 R14 K8 ["Text"]
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K25 ["Tooltip"]
       64 CALL                             R8 3 1
       65 MOVE                             R7 R8
       66 JUMP                             ; [+61]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K0 ["createElement"]
       70 LOADK                            R9 K1 ["TextLabel"]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K2 ["Dictionary"]
       74 GETTABLEKS                       R10 R10 K3 ["join"]
       76 GETTABLEKS                       R11 R0 K4 ["fontStyle"]
       78 GETTABLEKS                       R11 R11 K5 ["Smaller"]
       80 DUPTABLE                         R12 K13 [{["Size"], ["LayoutOrder"], ["Text"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextTruncate"]}]
       81 GETIMPORT                        R13 K16 [UDim2.new]
       83 LENGTH                           R15 R1
       84 DIVRK                            R14 K10 [1] R15
       85 GETTABLEKS                       R16 R0 K17 ["table"]
       87 GETTABLEKS                       R16 R16 K30 ["menu"]
       89 GETTABLEKS                       R16 R16 K31 ["buttonSize"]
       91 MINUS                            R15 R16
       92 LOADN                            R16 0
       93 GETTABLEKS                       R17 R0 K17 ["table"]
       95 GETTABLEKS                       R17 R17 K18 ["item"]
       97 GETTABLEKS                       R17 R17 K19 ["height"]
       99 CALL                             R13 4 1
      100 SETTABLEKS                       R13 R12 K6 ["Size"]
      102 SETTABLEKS                       R5 R12 K7 ["LayoutOrder"]
      104 SETTABLEKS                       R6 R12 K8 ["Text"]
      106 GETIMPORT                        R13 K22 [Enum.TextXAlignment.Left]
      108 SETTABLEKS                       R13 R12 K11 ["TextXAlignment"]
      110 GETIMPORT                        R13 K24 [Enum.TextTruncate.AtEnd]
      112 SETTABLEKS                       R13 R12 K12 ["TextTruncate"]
      114 CALL                             R10 2 1
      115 DUPTABLE                         R11 K26 [{"Tooltip"}]
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R12 R12 K0 ["createElement"]
      119 GETUPVAL                         R13 2
      120 DUPTABLE                         R14 K29 [{["Text"], ["Enabled"] = True}]
      121 SETTABLEKS                       R6 R14 K8 ["Text"]
      123 CALL                             R12 2 1
      124 SETTABLEKS                       R12 R11 K25 ["Tooltip"]
      126 CALL                             R8 3 1
      127 MOVE                             R7 R8
      128 SETTABLE                         R7 R2 R5
      129 FORNLOOP                         R3
      130 RETURN                           R2 1

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
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = False, ["menuItem"]}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K4 ["None"]
        5 SETTABLEKS                       R3 R2 K2 ["menuItem"]
        7 NAMECALL                         R0 R0 K5 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K5 [{[1] = False, ["isButtonHovered"] = False, ["menuItem"] = }]
        1 SETTABLEKS                       R1 R0 K6 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K7 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K8 ["buttonRef"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K9 ["onItemClicked"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K0 ["showMenu"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R1 R0 K10 ["hideMenu"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K11 ["onMenuItemEnter"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 SETTABLEKS                       R1 R0 K12 ["onMenuItemLeave"]
       31 RETURN                           R0 0

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
      106 DUPTABLE                         R17 K35 [{["Cursor"] = "PointingHand"}]
      107 CALL                             R15 2 1
      108 SETLIST                          R14 R15 1 [1]
      110 GETUPVAL                         R16 1
      111 GETTABLEKS                       R16 R16 K16 ["createElement"]
      113 LOADK                            R17 K36 ["TextLabel"]
      114 GETUPVAL                         R18 3
      115 GETTABLEKS                       R18 R18 K37 ["Dictionary"]
      117 GETTABLEKS                       R18 R18 K38 ["join"]
      119 GETTABLEKS                       R19 R4 K4 ["fontStyle"]
      121 GETTABLEKS                       R19 R19 K39 ["Smaller"]
      123 DUPTABLE                         R20 K45 [{["Size"], ["Position"], ["AnchorPoint"], ["Text"], ["TextXAlignment"], ["BackgroundTransparency"] = 1}]
      124 GETIMPORT                        R21 K19 [UDim2.new]
      126 LOADN                            R22 1
      127 LOADN                            R23 0
      128 LOADN                            R24 0
      129 GETTABLEKS                       R25 R9 K20 ["Y"]
      131 CALL                             R21 4 1
      132 SETTABLEKS                       R21 R20 K24 ["Size"]
      134 GETIMPORT                        R21 K19 [UDim2.new]
      136 LOADN                            R22 0
      137 GETTABLEKS                       R23 R4 K21 ["table"]
      139 GETTABLEKS                       R23 R23 K46 ["textPadding"]
      141 LOADK                            R24 K47 [0.5]
      142 LOADN                            R25 0
      143 CALL                             R21 4 1
      144 SETTABLEKS                       R21 R20 K40 ["Position"]
      146 GETIMPORT                        R21 K10 [Vector2.new]
      148 LOADN                            R22 0
      149 LOADK                            R23 K47 [0.5]
      150 CALL                             R21 2 1
      151 SETTABLEKS                       R21 R20 K41 ["AnchorPoint"]
      153 SETTABLEKS                       R7 R20 K1 ["Text"]
      155 GETIMPORT                        R21 K50 [Enum.TextXAlignment.Left]
      157 SETTABLEKS                       R21 R20 K42 ["TextXAlignment"]
      159 CALL                             R18 2 -1
      160 CALL                             R16 -1 1
      161 SETTABLEKS                       R16 R14 K51 ["Label"]
      163 CALL                             R11 3 -1
      164 RETURN                           R11 -1

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
      158 DUPTABLE                         R21 K53 [{["Position"], ["AnchorPoint"], ["Text"] = "...", ["Font"], ["BackgroundTransparency"] = 1, ["width"]}]
      159 GETIMPORT                        R22 K31 [UDim2.new]
      161 LOADK                            R23 K54 [0.5]
      162 LOADN                            R24 0
      163 LOADK                            R25 K54 [0.5]
      164 LOADN                            R26 0
      165 CALL                             R22 4 1
      166 SETTABLEKS                       R22 R21 K49 ["Position"]
      168 GETIMPORT                        R22 K17 [Vector2.new]
      170 LOADK                            R23 K54 [0.5]
      171 LOADK                            R24 K54 [0.5]
      172 CALL                             R22 2 1
      173 SETTABLEKS                       R22 R21 K50 ["AnchorPoint"]
      175 GETIMPORT                        R22 K57 [Enum.Font.SourceSansBold]
      177 SETTABLEKS                       R22 R21 K14 ["Font"]
      179 GETTABLEKS                       R22 R3 K21 ["table"]
      181 GETTABLEKS                       R22 R22 K22 ["menu"]
      183 GETTABLEKS                       R22 R22 K32 ["buttonSize"]
      185 SETTABLEKS                       R22 R21 K52 ["width"]
      187 CALL                             R19 2 -1
      188 CALL                             R17 -1 1
      189 SETTABLEKS                       R17 R15 K58 ["Dots"]
      191 GETUPVAL                         R17 3
      192 GETTABLEKS                       R17 R17 K28 ["createElement"]
      194 GETUPVAL                         R18 6
      195 DUPTABLE                         R19 K65 [{"Hide", "Items", "OnFocusLost", "OnItemActivated", "OnRenderItem", "Width"}]
      196 NOT                              R20 R8
      197 SETTABLEKS                       R20 R19 K59 ["Hide"]
      199 SETTABLEKS                       R9 R19 K60 ["Items"]
      201 GETTABLEKS                       R20 R0 K66 ["hideMenu"]
      203 SETTABLEKS                       R20 R19 K61 ["OnFocusLost"]
      205 GETTABLEKS                       R20 R0 K67 ["onItemClicked"]
      207 SETTABLEKS                       R20 R19 K62 ["OnItemActivated"]
      209 NEWCLOSURE                       R20 P0
      210 CAPTURE                          VAL R0
      211 CAPTURE                          VAL R3
      212 CAPTURE                          REF R10
      213 SETTABLEKS                       R20 R19 K63 ["OnRenderItem"]
      215 SETTABLEKS                       R10 R19 K64 ["Width"]
      217 CALL                             R17 2 1
      218 SETTABLEKS                       R17 R15 K68 ["Menu"]
      220 GETUPVAL                         R16 3
      221 GETTABLEKS                       R16 R16 K28 ["createElement"]
      223 GETUPVAL                         R17 7
      224 DUPTABLE                         R18 K71 [{["Cursor"] = "PointingHand"}]
      225 CALL                             R16 2 -1
      226 SETLIST                          R15 R16 -1 [1]
      228 CALL                             R12 3 1
      229 SETTABLE                         R12 R7 R11
      230 JUMPIFNOT                        R6 ; [+8]
      231 GETTABLEKS                       R12 R3 K21 ["table"]
      233 GETTABLEKS                       R12 R12 K73 ["icon"]
      235 GETTABLEKS                       R12 R12 K74 ["height"]
      237 ADDK                             R11 R12 K72 [10]
      238 JUMPIF                           R11 ; [+6]
      239 GETTABLEKS                       R11 R3 K21 ["table"]
      241 GETTABLEKS                       R11 R11 K44 ["item"]
      243 GETTABLEKS                       R11 R11 K74 ["height"]
      245 GETUPVAL                         R12 3
      246 GETTABLEKS                       R12 R12 K28 ["createElement"]
      248 LOADK                            R13 K75 ["Frame"]
      249 DUPTABLE                         R14 K79 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      250 GETIMPORT                        R15 K31 [UDim2.new]
      252 LOADN                            R16 1
      253 LOADN                            R17 0
      254 LOADN                            R18 0
      255 MOVE                             R19 R11
      256 CALL                             R15 4 1
      257 SETTABLEKS                       R15 R14 K33 ["Size"]
      259 GETTABLEKS                       R15 R3 K21 ["table"]
      261 GETTABLEKS                       R15 R15 K44 ["item"]
      263 GETTABLEKS                       R15 R15 K80 ["background"]
      265 SETTABLEKS                       R15 R14 K76 ["BackgroundColor3"]
      267 SETTABLEKS                       R5 R14 K4 ["LayoutOrder"]
      269 GETUPVAL                         R15 5
      270 GETTABLEKS                       R15 R15 K47 ["Dictionary"]
      272 GETTABLEKS                       R15 R15 K48 ["join"]
      274 DUPTABLE                         R16 K82 [{"RowLayout", "Padding"}]
      275 GETUPVAL                         R17 3
      276 GETTABLEKS                       R17 R17 K28 ["createElement"]
      278 LOADK                            R18 K83 ["UIListLayout"]
      279 DUPTABLE                         R19 K88 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      280 GETIMPORT                        R20 K90 [Enum.FillDirection.Horizontal]
      282 SETTABLEKS                       R20 R19 K84 ["FillDirection"]
      284 GETIMPORT                        R20 K92 [Enum.HorizontalAlignment.Left]
      286 SETTABLEKS                       R20 R19 K85 ["HorizontalAlignment"]
      288 GETIMPORT                        R20 K94 [Enum.VerticalAlignment.Center]
      290 SETTABLEKS                       R20 R19 K86 ["VerticalAlignment"]
      292 GETIMPORT                        R20 K95 [Enum.SortOrder.LayoutOrder]
      294 SETTABLEKS                       R20 R19 K87 ["SortOrder"]
      296 CALL                             R17 2 1
      297 SETTABLEKS                       R17 R16 K81 ["RowLayout"]
      299 GETUPVAL                         R17 3
      300 GETTABLEKS                       R17 R17 K28 ["createElement"]
      302 LOADK                            R18 K39 ["UIPadding"]
      303 DUPTABLE                         R19 K98 [{"PaddingLeft", "PaddingRight"}]
      304 GETIMPORT                        R20 K43 [UDim.new]
      306 LOADN                            R21 0
      307 GETTABLEKS                       R22 R3 K21 ["table"]
      309 GETTABLEKS                       R22 R22 K99 ["textPadding"]
      311 CALL                             R20 2 1
      312 SETTABLEKS                       R20 R19 K96 ["PaddingLeft"]
      314 GETIMPORT                        R20 K43 [UDim.new]
      316 LOADN                            R21 0
      317 GETTABLEKS                       R22 R3 K21 ["table"]
      319 GETTABLEKS                       R22 R22 K99 ["textPadding"]
      321 CALL                             R20 2 1
      322 SETTABLEKS                       R20 R19 K97 ["PaddingRight"]
      324 CALL                             R17 2 1
      325 SETTABLEKS                       R17 R16 K46 ["Padding"]
      327 MOVE                             R17 R7
      328 CALL                             R15 2 -1
      329 CALL                             R12 -1 -1
      330 CLOSEUPVALS                      R10
      331 RETURN                           R12 -1

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
