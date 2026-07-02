PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnItemClicked"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hoveredItem"}]
        2 SETTABLEKS                       R0 R3 K0 ["hoveredItem"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["hoveredItem"]
        5 JUMPIFNOTEQ                      R1 R0 ; [+11]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K2 [{"hoveredItem"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["None"]
       12 SETTABLEKS                       R4 R3 K1 ["hoveredItem"]
       14 NAMECALL                         R1 R1 K4 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentText"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R2 ; [+7]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["state"]
        4 GETTABLEKS                       R3 R3 K1 ["hoveredItem"]
        6 JUMPIFNOTEQKNIL                  R3 ; [+10]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["props"]
       11 GETTABLEKS                       R3 R3 K3 ["FocusChanged"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 MOVE                             R6 R2
       16 CALL                             R3 3 0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["updateText"]
       20 GETTABLEKS                       R4 R0 K5 ["Text"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K3 [{[1] = , ["currentText"]}]
        1 GETTABLEKS                       R4 R1 K5 ["Text"]
        3 ORK                              R3 R4 K4 [""]
        4 SETTABLEKS                       R3 R2 K2 ["currentText"]
        6 SETTABLEKS                       R2 R0 K6 ["state"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K7 ["createRef"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R0 K8 ["frameRef"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K9 ["onItemClicked"]
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K10 ["onItemMouseEnter"]
       22 NEWCLOSURE                       R2 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 SETTABLEKS                       R2 R0 K11 ["onItemMouseLeave"]
       27 NEWCLOSURE                       R2 P3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R2 R0 K12 ["updateText"]
       31 NEWCLOSURE                       R2 P4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K13 ["onFocusChanged"]
       35 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K2 [string.find]
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 0
        4 LOADN                            R5 1
        5 LOADB                            R6 1
        6 CALL                             R2 4 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onItemMouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onItemMouseLeave"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 LOADK                            R4 K1 ["TextButton"]
        4 NEWTABLE                         R5 16 0
        6 GETIMPORT                        R6 K4 [UDim2.new]
        8 LOADN                            R7 0
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K5 ["Width"]
       12 LOADN                            R9 0
       13 LOADN                            R10 22
       14 CALL                             R6 4 1
       15 SETTABLEKS                       R6 R5 K6 ["Size"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K7 ["font"]
       20 SETTABLEKS                       R6 R5 K8 ["Font"]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K9 ["textSize"]
       25 SETTABLEKS                       R6 R5 K10 ["TextSize"]
       27 SETTABLEKS                       R0 R5 K11 ["Text"]
       29 GETIMPORT                        R6 K15 [Enum.TextTruncate.AtEnd]
       31 SETTABLEKS                       R6 R5 K13 ["TextTruncate"]
       33 GETIMPORT                        R6 K18 [Enum.TextXAlignment.Left]
       35 SETTABLEKS                       R6 R5 K16 ["TextXAlignment"]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K19 ["textColor"]
       40 SETTABLEKS                       R6 R5 K20 ["TextColor3"]
       42 GETUPVAL                         R7 4
       43 JUMPIFNOTEQ                      R7 R0 ; [+5]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R6 R6 K21 ["hoveredItemColor"]
       48 JUMPIF                           R6 ; [+3]
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K22 ["itemColor"]
       52 SETTABLEKS                       R6 R5 K23 ["BackgroundColor3"]
       54 LOADN                            R6 0
       55 SETTABLEKS                       R6 R5 K24 ["BorderSizePixel"]
       57 LOADB                            R6 0
       58 SETTABLEKS                       R6 R5 K25 ["AutoButtonColor"]
       60 SETTABLEKS                       R1 R5 K26 ["LayoutOrder"]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K27 ["Event"]
       65 GETTABLEKS                       R6 R6 K28 ["Activated"]
       67 SETTABLE                         R2 R5 R6
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K27 ["Event"]
       71 GETTABLEKS                       R6 R6 K29 ["MouseEnter"]
       73 NEWCLOSURE                       R7 P0
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          VAL R0
       76 SETTABLE                         R7 R5 R6
       77 GETUPVAL                         R6 0
       78 GETTABLEKS                       R6 R6 K27 ["Event"]
       80 GETTABLEKS                       R6 R6 K30 ["MouseLeave"]
       82 NEWCLOSURE                       R7 P1
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          VAL R0
       85 SETTABLE                         R7 R5 R6
       86 DUPTABLE                         R6 K32 [{"Padding"}]
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R7 R7 K0 ["createElement"]
       90 LOADK                            R8 K33 ["UIPadding"]
       91 DUPTABLE                         R9 K35 [{"PaddingLeft"}]
       92 GETIMPORT                        R10 K37 [UDim.new]
       94 LOADN                            R11 0
       95 LOADN                            R12 5
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K34 ["PaddingLeft"]
       99 CALL                             R7 2 1
      100 SETTABLEKS                       R7 R6 K31 ["Padding"]
      102 CALL                             R3 3 -1
      103 RETURN                           R3 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["dropdownTheme"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R0 K4 ["frameRef"]
       10 JUMPIFNOT                        R5 ; [+4]
       11 GETTABLEKS                       R5 R0 K4 ["frameRef"]
       13 GETTABLEKS                       R5 R5 K5 ["current"]
       15 LOADNIL                          R6
       16 JUMPIFNOT                        R5 ; [+17]
       17 GETTABLEKS                       R7 R5 K6 ["AbsolutePosition"]
       19 GETTABLEKS                       R8 R5 K7 ["AbsoluteSize"]
       21 ADD                              R9 R7 R8
       22 GETIMPORT                        R10 K10 [Rect.new]
       24 GETTABLEKS                       R11 R7 K11 ["X"]
       26 GETTABLEKS                       R12 R7 K12 ["Y"]
       28 GETTABLEKS                       R13 R9 K11 ["X"]
       30 GETTABLEKS                       R14 R9 K12 ["Y"]
       32 CALL                             R10 4 1
       33 MOVE                             R6 R10
       34 GETTABLEKS                       R7 R1 K13 ["Items"]
       36 JUMPIF                           R7 ; [+2]
       37 NEWTABLE                         R7 0 0
       39 GETTABLEKS                       R8 R1 K14 ["Size"]
       41 GETTABLEKS                       R9 R1 K15 ["Position"]
       43 GETTABLEKS                       R10 R1 K16 ["MaxItems"]
       45 GETTABLEKS                       R11 R4 K17 ["currentText"]
       47 GETTABLEKS                       R12 R4 K18 ["hoveredItem"]
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R13 R13 K19 ["List"]
       52 GETTABLEKS                       R13 R13 K20 ["filter"]
       54 MOVE                             R14 R7
       55 NEWCLOSURE                       R15 P0
       56 CAPTURE                          VAL R11
       57 CALL                             R13 2 1
       58 GETUPVAL                         R14 1
       59 GETTABLEKS                       R14 R14 K21 ["createElement"]
       61 LOADK                            R15 K22 ["Frame"]
       62 NEWTABLE                         R16 4 0
       64 SETTABLEKS                       R8 R16 K14 ["Size"]
       66 SETTABLEKS                       R9 R16 K15 ["Position"]
       68 LOADN                            R17 1
       69 SETTABLEKS                       R17 R16 K23 ["BackgroundTransparency"]
       71 GETUPVAL                         R17 1
       72 GETTABLEKS                       R17 R17 K24 ["Ref"]
       74 GETTABLEKS                       R18 R0 K4 ["frameRef"]
       76 SETTABLE                         R18 R16 R17
       77 DUPTABLE                         R17 K27 [{"TextBox", "Dropdown"}]
       78 GETUPVAL                         R18 1
       79 GETTABLEKS                       R18 R18 K21 ["createElement"]
       81 GETUPVAL                         R19 2
       82 GETUPVAL                         R20 0
       83 GETTABLEKS                       R20 R20 K28 ["Dictionary"]
       85 GETTABLEKS                       R20 R20 K29 ["join"]
       87 MOVE                             R21 R1
       88 DUPTABLE                         R22 K32 [{"Size", "FocusChanged", "TextChanged"}]
       89 GETIMPORT                        R23 K34 [UDim2.new]
       91 LOADN                            R24 1
       92 LOADN                            R25 0
       93 LOADN                            R26 1
       94 LOADN                            R27 0
       95 CALL                             R23 4 1
       96 SETTABLEKS                       R23 R22 K14 ["Size"]
       98 GETTABLEKS                       R23 R0 K35 ["onFocusChanged"]
      100 SETTABLEKS                       R23 R22 K30 ["FocusChanged"]
      102 GETTABLEKS                       R23 R0 K36 ["updateText"]
      104 SETTABLEKS                       R23 R22 K31 ["TextChanged"]
      106 CALL                             R20 2 -1
      107 CALL                             R18 -1 1
      108 SETTABLEKS                       R18 R17 K25 ["TextBox"]
      110 LOADB                            R18 0
      111 LENGTH                           R19 R13
      112 LOADN                            R20 0
      113 JUMPIFNOTLT                      R20 R19 ; [+42]
      115 MOVE                             R18 R5
      116 JUMPIFNOT                        R18 ; [+39]
      117 GETUPVAL                         R18 1
      118 GETTABLEKS                       R18 R18 K21 ["createElement"]
      120 GETUPVAL                         R19 3
      121 DUPTABLE                         R20 K49 [{["OnItemActivated"], ["OnFocusLost"], ["SourceExtents"], ["MaxHeight"], ["Width"], ["ShowBorder"] = True, ["ScrollBarPadding"] = 2, ["ScrollBarThickness"] = 10, ["Items"], ["OnRenderItem"]}]
      122 GETTABLEKS                       R21 R0 K50 ["onItemClicked"]
      124 SETTABLEKS                       R21 R20 K37 ["OnItemActivated"]
      126 GETTABLEKS                       R21 R0 K51 ["hideDropdown"]
      128 SETTABLEKS                       R21 R20 K38 ["OnFocusLost"]
      130 SETTABLEKS                       R6 R20 K39 ["SourceExtents"]
      132 JUMPIFNOT                        R10 ; [+4]
      133 GETTABLEKS                       R22 R3 K52 ["itemHeight"]
      135 MUL                              R21 R22 R10
      136 JUMPIF                           R21 ; [+1]
      137 LOADNIL                          R21
      138 SETTABLEKS                       R21 R20 K40 ["MaxHeight"]
      140 GETTABLEKS                       R21 R6 K41 ["Width"]
      142 SETTABLEKS                       R21 R20 K41 ["Width"]
      144 SETTABLEKS                       R13 R20 K13 ["Items"]
      146 NEWCLOSURE                       R21 P1
      147 CAPTURE                          UPVAL U1
      148 CAPTURE                          REF R6
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R0
      153 SETTABLEKS                       R21 R20 K48 ["OnRenderItem"]
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K26 ["Dropdown"]
      158 CALL                             R14 3 -1
      159 CLOSEUPVALS                      R6
      160 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["UI"]
       30 GETTABLEKS                       R4 R4 K11 ["DropdownMenu"]
       32 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K13 ["withContext"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Components"]
       42 GETTABLEKS                       R8 R8 K16 ["TextBox"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R1 K17 ["PureComponent"]
       47 LOADK                            R10 K18 ["FilteringTextBox"]
       48 NAMECALL                         R8 R8 K19 ["extend"]
       50 CALL                             R8 2 1
       51 DUPCLOSURE                       R9 K20 [PROTO_5]
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R9 R8 K21 ["init"]
       55 DUPCLOSURE                       R9 K22 [PROTO_10]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R9 R8 K23 ["render"]
       62 MOVE                             R9 R6
       63 DUPTABLE                         R10 K25 [{"Stylizer"}]
       64 GETTABLEKS                       R11 R5 K24 ["Stylizer"]
       66 SETTABLEKS                       R11 R10 K24 ["Stylizer"]
       68 CALL                             R9 1 1
       69 MOVE                             R10 R8
       70 CALL                             R9 1 1
       71 MOVE                             R8 R9
       72 RETURN                           R8 1
