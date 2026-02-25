PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["tryPublish"]
       12 JUMPIF                           R6 ; [+1]
       13 DUPCLOSURE                       R6 K6 [PROTO_0]
       14 GETTABLEKS                       R7 R1 K7 ["tryCancel"]
       16 JUMPIF                           R7 ; [+1]
       17 DUPCLOSURE                       R7 K8 [PROTO_1]
       18 GETTABLEKS                       R8 R3 K9 ["footer"]
       20 GETTABLEKS                       R9 R1 K10 ["CanSave"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K11 ["createElement"]
       25 LOADK                            R11 K12 ["Frame"]
       26 DUPTABLE                         R12 K17 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "LayoutOrder"}]
       27 SETTABLEKS                       R4 R12 K3 ["Size"]
       29 LOADN                            R13 0
       30 SETTABLEKS                       R13 R12 K13 ["BackgroundTransparency"]
       32 GETTABLEKS                       R13 R8 K18 ["backgroundColor"]
       34 SETTABLEKS                       R13 R12 K14 ["BackgroundColor3"]
       36 LOADN                            R13 1
       37 SETTABLEKS                       R13 R12 K15 ["BorderSizePixel"]
       39 GETTABLEKS                       R13 R8 K19 ["borderColor"]
       41 SETTABLEKS                       R13 R12 K16 ["BorderColor3"]
       43 SETTABLEKS                       R5 R12 K4 ["LayoutOrder"]
       45 DUPTABLE                         R13 K24 [{"UIPadding", "UIListLayout", "CancelButton", "PublishButton"}]
       46 GETUPVAL                         R15 0
       47 GETTABLEKS                       R14 R15 K11 ["createElement"]
       49 LOADK                            R15 K20 ["UIPadding"]
       50 DUPTABLE                         R16 K29 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       51 GETIMPORT                        R17 K32 [UDim.new]
       53 LOADN                            R18 0
       54 LOADN                            R19 0
       55 CALL                             R17 2 1
       56 SETTABLEKS                       R17 R16 K25 ["PaddingBottom"]
       58 GETIMPORT                        R17 K32 [UDim.new]
       60 LOADN                            R18 0
       61 LOADN                            R19 35
       62 CALL                             R17 2 1
       63 SETTABLEKS                       R17 R16 K26 ["PaddingLeft"]
       65 GETIMPORT                        R17 K32 [UDim.new]
       67 LOADN                            R18 0
       68 LOADN                            R19 35
       69 CALL                             R17 2 1
       70 SETTABLEKS                       R17 R16 K27 ["PaddingRight"]
       72 GETIMPORT                        R17 K32 [UDim.new]
       74 LOADN                            R18 0
       75 LOADN                            R19 0
       76 CALL                             R17 2 1
       77 SETTABLEKS                       R17 R16 K28 ["PaddingTop"]
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K20 ["UIPadding"]
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R14 R15 K11 ["createElement"]
       85 LOADK                            R15 K21 ["UIListLayout"]
       86 DUPTABLE                         R16 K38 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       87 GETIMPORT                        R17 K41 [Enum.FillDirection.Horizontal]
       89 SETTABLEKS                       R17 R16 K33 ["FillDirection"]
       91 GETIMPORT                        R17 K43 [Enum.HorizontalAlignment.Right]
       93 SETTABLEKS                       R17 R16 K34 ["HorizontalAlignment"]
       95 GETIMPORT                        R17 K45 [Enum.VerticalAlignment.Center]
       97 SETTABLEKS                       R17 R16 K35 ["VerticalAlignment"]
       99 GETIMPORT                        R17 K46 [Enum.SortOrder.LayoutOrder]
      101 SETTABLEKS                       R17 R16 K36 ["SortOrder"]
      103 GETIMPORT                        R17 K32 [UDim.new]
      105 LOADN                            R18 0
      106 LOADN                            R19 24
      107 CALL                             R17 2 1
      108 SETTABLEKS                       R17 R16 K37 ["Padding"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K21 ["UIListLayout"]
      113 GETUPVAL                         R15 0
      114 GETTABLEKS                       R14 R15 K11 ["createElement"]
      116 GETUPVAL                         R15 1
      117 DUPTABLE                         R16 K50 [{"LayoutOrder", "OnClick", "Size", "Style", "Text"}]
      118 LOADN                            R17 2
      119 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      121 SETTABLEKS                       R7 R16 K47 ["OnClick"]
      123 GETIMPORT                        R17 K52 [UDim2.new]
      125 LOADN                            R18 0
      126 LOADN                            R19 120
      127 LOADN                            R20 0
      128 LOADN                            R21 35
      129 CALL                             R17 4 1
      130 SETTABLEKS                       R17 R16 K3 ["Size"]
      132 LOADK                            R17 K53 ["Round"]
      133 SETTABLEKS                       R17 R16 K48 ["Style"]
      135 LOADK                            R19 K54 ["Action"]
      136 LOADK                            R20 K55 ["Cancel"]
      137 NAMECALL                         R17 R2 K56 ["getText"]
      139 CALL                             R17 3 1
      140 SETTABLEKS                       R17 R16 K49 ["Text"]
      142 CALL                             R14 2 1
      143 SETTABLEKS                       R14 R13 K22 ["CancelButton"]
      145 GETUPVAL                         R15 0
      146 GETTABLEKS                       R14 R15 K11 ["createElement"]
      148 GETUPVAL                         R15 1
      149 DUPTABLE                         R16 K58 [{"LayoutOrder", "OnClick", "Size", "Style", "StyleModifier", "Text"}]
      150 LOADN                            R17 3
      151 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      153 SETTABLEKS                       R6 R16 K47 ["OnClick"]
      155 GETIMPORT                        R17 K52 [UDim2.new]
      157 LOADN                            R18 0
      158 LOADN                            R19 120
      159 LOADN                            R20 0
      160 LOADN                            R21 35
      161 CALL                             R17 4 1
      162 SETTABLEKS                       R17 R16 K3 ["Size"]
      164 LOADK                            R17 K59 ["RoundPrimary"]
      165 SETTABLEKS                       R17 R16 K48 ["Style"]
      167 JUMPIF                           R9 ; [+4]
      168 GETUPVAL                         R18 2
      169 GETTABLEKS                       R17 R18 K60 ["Disabled"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R17
      173 SETTABLEKS                       R17 R16 K57 ["StyleModifier"]
      175 LOADK                            R19 K54 ["Action"]
      176 LOADK                            R20 K61 ["Submit"]
      177 NAMECALL                         R17 R2 K56 ["getText"]
      179 CALL                             R17 3 1
      180 SETTABLEKS                       R17 R16 K49 ["Text"]
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R13 K23 ["PublishButton"]
      185 CALL                             R10 3 -1
      186 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K3 ["Packages"]
       22 GETTABLEKS                       R4 R5 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K9 ["withContext"]
       29 GETTABLEKS                       R7 R3 K10 ["Util"]
       31 GETTABLEKS                       R6 R7 K11 ["StyleModifier"]
       33 GETTABLEKS                       R7 R3 K12 ["UI"]
       35 GETTABLEKS                       R8 R7 K13 ["Button"]
       37 GETTABLEKS                       R9 R2 K14 ["PureComponent"]
       39 LOADK                            R11 K15 ["AssetConfigFooter"]
       40 NAMECALL                         R9 R9 K16 ["extend"]
       42 CALL                             R9 2 1
       43 DUPCLOSURE                       R10 K17 [PROTO_2]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R8
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R10 R9 K18 ["render"]
       49 MOVE                             R10 R5
       50 DUPTABLE                         R11 K21 [{"Localization", "Stylizer"}]
       51 GETTABLEKS                       R12 R4 K19 ["Localization"]
       53 SETTABLEKS                       R12 R11 K19 ["Localization"]
       55 GETTABLEKS                       R12 R4 K20 ["Stylizer"]
       57 SETTABLEKS                       R12 R11 K20 ["Stylizer"]
       59 CALL                             R10 1 1
       60 MOVE                             R11 R9
       61 CALL                             R10 1 1
       62 MOVE                             R9 R10
       63 RETURN                           R9 1
