PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["TagSettingRow"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["new"]
        9 CALL                             R3 0 1
       10 GETIMPORT                        R4 K5 [UDim2.new]
       12 LOADN                            R5 1
       13 GETTABLEKS                       R7 R2 K6 ["TextSize"]
       15 GETTABLEKS                       R7 R7 K7 ["X"]
       17 GETTABLEKS                       R7 R7 K8 ["Offset"]
       19 GETTABLEKS                       R8 R1 K9 ["ControlSize"]
       21 GETTABLEKS                       R8 R8 K7 ["X"]
       23 GETTABLEKS                       R8 R8 K8 ["Offset"]
       25 SUB                              R6 R7 R8
       26 LOADN                            R7 0
       27 GETTABLEKS                       R8 R2 K6 ["TextSize"]
       29 GETTABLEKS                       R8 R8 K10 ["Y"]
       31 GETTABLEKS                       R8 R8 K8 ["Offset"]
       33 CALL                             R4 4 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K11 ["createElement"]
       37 GETUPVAL                         R6 2
       38 DUPTABLE                         R7 K14 [{"Size", "LayoutOrder"}]
       39 GETTABLEKS                       R8 R2 K12 ["Size"]
       41 SETTABLEKS                       R8 R7 K12 ["Size"]
       43 GETTABLEKS                       R8 R1 K13 ["LayoutOrder"]
       45 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       47 NEWTABLE                         R8 0 2
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K11 ["createElement"]
       52 GETUPVAL                         R10 2
       53 DUPTABLE                         R11 K20 [{"Size", "Layout", "HorizontalAlignment", "Spacing", "OnClick", "Style"}]
       54 GETTABLEKS                       R12 R2 K12 ["Size"]
       56 SETTABLEKS                       R12 R11 K12 ["Size"]
       58 GETIMPORT                        R12 K24 [Enum.FillDirection.Horizontal]
       60 SETTABLEKS                       R12 R11 K15 ["Layout"]
       62 GETIMPORT                        R12 K26 [Enum.HorizontalAlignment.Center]
       64 SETTABLEKS                       R12 R11 K16 ["HorizontalAlignment"]
       66 GETTABLEKS                       R12 R2 K17 ["Spacing"]
       68 SETTABLEKS                       R12 R11 K17 ["Spacing"]
       70 GETTABLEKS                       R12 R1 K18 ["OnClick"]
       72 SETTABLEKS                       R12 R11 K18 ["OnClick"]
       74 GETTABLEKS                       R13 R0 K28 ["state"]
       76 GETTABLEKS                       R13 R13 K29 ["hovered"]
       78 ANDK                             R12 R13 K27 ["PaneHover"]
       79 SETTABLEKS                       R12 R11 K19 ["Style"]
       81 DUPTABLE                         R12 K32 [{"RowText", "ControlPane"}]
       82 GETUPVAL                         R13 1
       83 GETTABLEKS                       R13 R13 K11 ["createElement"]
       85 GETUPVAL                         R14 3
       86 DUPTABLE                         R15 K36 [{"Size", "Style", "LayoutOrder", "Text", "TextXAlignment", "TextTruncate"}]
       87 SETTABLEKS                       R4 R15 K12 ["Size"]
       89 GETTABLEKS                       R17 R0 K28 ["state"]
       91 GETTABLEKS                       R17 R17 K29 ["hovered"]
       93 JUMPIFNOT                        R17 ; [+2]
       94 LOADK                            R16 K37 ["ButtonTextHover"]
       95 JUMP                             ; [+1]
       96 LOADK                            R16 K38 ["ButtonText"]
       97 SETTABLEKS                       R16 R15 K19 ["Style"]
       99 NAMECALL                         R16 R3 K39 ["getNextOrder"]
      101 CALL                             R16 1 1
      102 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      104 GETTABLEKS                       R16 R1 K33 ["Text"]
      106 SETTABLEKS                       R16 R15 K33 ["Text"]
      108 GETIMPORT                        R16 K41 [Enum.TextXAlignment.Left]
      110 SETTABLEKS                       R16 R15 K34 ["TextXAlignment"]
      112 GETIMPORT                        R16 K43 [Enum.TextTruncate.AtEnd]
      114 SETTABLEKS                       R16 R15 K35 ["TextTruncate"]
      116 DUPTABLE                         R16 K45 [{"Tooltip"}]
      117 GETUPVAL                         R17 1
      118 GETTABLEKS                       R17 R17 K11 ["createElement"]
      120 GETUPVAL                         R18 4
      121 DUPTABLE                         R19 K48 [{["Text"], ["Priority"] = 1}]
      122 GETTABLEKS                       R20 R1 K49 ["TooltipText"]
      124 SETTABLEKS                       R20 R19 K33 ["Text"]
      126 CALL                             R17 2 1
      127 SETTABLEKS                       R17 R16 K44 ["Tooltip"]
      129 CALL                             R13 3 1
      130 SETTABLEKS                       R13 R12 K30 ["RowText"]
      132 GETUPVAL                         R13 1
      133 GETTABLEKS                       R13 R13 K11 ["createElement"]
      135 GETUPVAL                         R14 2
      136 DUPTABLE                         R15 K50 [{"LayoutOrder", "Size"}]
      137 NAMECALL                         R16 R3 K39 ["getNextOrder"]
      139 CALL                             R16 1 1
      140 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      142 GETTABLEKS                       R16 R1 K9 ["ControlSize"]
      144 SETTABLEKS                       R16 R15 K12 ["Size"]
      146 DUPTABLE                         R16 K52 [{"Control"}]
      147 GETTABLEKS                       R17 R1 K51 ["Control"]
      149 JUMPIFNOT                        R17 ; [+6]
      150 GETUPVAL                         R17 1
      151 GETTABLEKS                       R17 R17 K11 ["createElement"]
      153 GETTABLEKS                       R18 R1 K51 ["Control"]
      155 CALL                             R17 1 1
      156 SETTABLEKS                       R17 R16 K51 ["Control"]
      158 CALL                             R13 3 1
      159 SETTABLEKS                       R13 R12 K31 ["ControlPane"]
      161 CALL                             R9 3 1
      162 GETUPVAL                         R10 1
      163 GETTABLEKS                       R10 R10 K11 ["createElement"]
      165 GETUPVAL                         R11 5
      166 DUPTABLE                         R12 K56 [{"Cursor", "MouseEnter", "MouseLeave"}]
      167 GETTABLEKS                       R14 R1 K18 ["OnClick"]
      169 JUMPIFEQKNIL                     R14 ; [+3]
      171 LOADK                            R13 K57 ["PointingHand"]
      172 JUMP                             ; [+1]
      173 LOADK                            R13 K58 ["Arrow"]
      174 SETTABLEKS                       R13 R12 K53 ["Cursor"]
      176 NEWCLOSURE                       R13 P0
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R13 R12 K54 ["MouseEnter"]
      180 NEWCLOSURE                       R13 P1
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R13 R12 K55 ["MouseLeave"]
      184 CALL                             R10 2 -1
      185 SETLIST                          R8 R9 -1 [1]
      187 CALL                             R5 3 -1
      188 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K11 ["withContext"]
       34 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       36 GETTABLEKS                       R7 R4 K13 ["Localization"]
       38 GETTABLEKS                       R8 R3 K14 ["Style"]
       40 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       42 GETTABLEKS                       R9 R3 K16 ["UI"]
       44 GETTABLEKS                       R10 R9 K17 ["HoverArea"]
       46 GETTABLEKS                       R11 R9 K18 ["Pane"]
       48 GETTABLEKS                       R12 R9 K19 ["TextLabel"]
       50 GETTABLEKS                       R13 R9 K20 ["Tooltip"]
       52 GETTABLEKS                       R14 R3 K21 ["Util"]
       54 GETTABLEKS                       R15 R14 K22 ["LayoutOrderIterator"]
       56 GETTABLEKS                       R16 R2 K23 ["PureComponent"]
       58 LOADK                            R18 K24 ["TagSettingRow"]
       59 NAMECALL                         R16 R16 K25 ["extend"]
       61 CALL                             R16 2 1
       62 DUPCLOSURE                       R17 K26 [PROTO_0]
       63 SETTABLEKS                       R17 R16 K27 ["init"]
       65 DUPCLOSURE                       R17 K28 [PROTO_3]
       66 CAPTURE                          VAL R15
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R10
       72 SETTABLEKS                       R17 R16 K29 ["render"]
       74 MOVE                             R17 R5
       75 DUPTABLE                         R18 K30 [{"Analytics", "Localization", "Stylizer"}]
       76 SETTABLEKS                       R6 R18 K12 ["Analytics"]
       78 SETTABLEKS                       R7 R18 K13 ["Localization"]
       80 SETTABLEKS                       R8 R18 K15 ["Stylizer"]
       82 CALL                             R17 1 1
       83 MOVE                             R18 R16
       84 CALL                             R17 1 1
       85 MOVE                             R16 R17
       86 RETURN                           R16 1
