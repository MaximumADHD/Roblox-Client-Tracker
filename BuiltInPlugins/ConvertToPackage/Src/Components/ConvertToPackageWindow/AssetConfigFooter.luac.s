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
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R10 R10 K11 ["createElement"]
       25 LOADK                            R11 K12 ["Frame"]
       26 DUPTABLE                         R12 K19 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["LayoutOrder"]}]
       27 SETTABLEKS                       R4 R12 K3 ["Size"]
       29 GETTABLEKS                       R13 R8 K20 ["backgroundColor"]
       31 SETTABLEKS                       R13 R12 K15 ["BackgroundColor3"]
       33 GETTABLEKS                       R13 R8 K21 ["borderColor"]
       35 SETTABLEKS                       R13 R12 K18 ["BorderColor3"]
       37 SETTABLEKS                       R5 R12 K4 ["LayoutOrder"]
       39 DUPTABLE                         R13 K26 [{"UIPadding", "UIListLayout", "CancelButton", "PublishButton"}]
       40 GETUPVAL                         R14 0
       41 GETTABLEKS                       R14 R14 K11 ["createElement"]
       43 LOADK                            R15 K22 ["UIPadding"]
       44 DUPTABLE                         R16 K31 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       45 GETIMPORT                        R17 K34 [UDim.new]
       47 LOADN                            R18 0
       48 LOADN                            R19 0
       49 CALL                             R17 2 1
       50 SETTABLEKS                       R17 R16 K27 ["PaddingBottom"]
       52 GETIMPORT                        R17 K34 [UDim.new]
       54 LOADN                            R18 0
       55 LOADN                            R19 35
       56 CALL                             R17 2 1
       57 SETTABLEKS                       R17 R16 K28 ["PaddingLeft"]
       59 GETIMPORT                        R17 K34 [UDim.new]
       61 LOADN                            R18 0
       62 LOADN                            R19 35
       63 CALL                             R17 2 1
       64 SETTABLEKS                       R17 R16 K29 ["PaddingRight"]
       66 GETIMPORT                        R17 K34 [UDim.new]
       68 LOADN                            R18 0
       69 LOADN                            R19 0
       70 CALL                             R17 2 1
       71 SETTABLEKS                       R17 R16 K30 ["PaddingTop"]
       73 CALL                             R14 2 1
       74 SETTABLEKS                       R14 R13 K22 ["UIPadding"]
       76 GETUPVAL                         R14 0
       77 GETTABLEKS                       R14 R14 K11 ["createElement"]
       79 LOADK                            R15 K23 ["UIListLayout"]
       80 DUPTABLE                         R16 K40 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       81 GETIMPORT                        R17 K43 [Enum.FillDirection.Horizontal]
       83 SETTABLEKS                       R17 R16 K35 ["FillDirection"]
       85 GETIMPORT                        R17 K45 [Enum.HorizontalAlignment.Right]
       87 SETTABLEKS                       R17 R16 K36 ["HorizontalAlignment"]
       89 GETIMPORT                        R17 K47 [Enum.VerticalAlignment.Center]
       91 SETTABLEKS                       R17 R16 K37 ["VerticalAlignment"]
       93 GETIMPORT                        R17 K48 [Enum.SortOrder.LayoutOrder]
       95 SETTABLEKS                       R17 R16 K38 ["SortOrder"]
       97 GETIMPORT                        R17 K34 [UDim.new]
       99 LOADN                            R18 0
      100 LOADN                            R19 24
      101 CALL                             R17 2 1
      102 SETTABLEKS                       R17 R16 K39 ["Padding"]
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K23 ["UIListLayout"]
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K11 ["createElement"]
      110 GETUPVAL                         R15 1
      111 DUPTABLE                         R16 K54 [{["LayoutOrder"] = 2, ["OnClick"], ["Size"], ["Style"] = "Round", ["Text"]}]
      112 SETTABLEKS                       R7 R16 K50 ["OnClick"]
      114 GETIMPORT                        R17 K56 [UDim2.new]
      116 LOADN                            R18 0
      117 LOADN                            R19 120
      118 LOADN                            R20 0
      119 LOADN                            R21 35
      120 CALL                             R17 4 1
      121 SETTABLEKS                       R17 R16 K3 ["Size"]
      123 LOADK                            R19 K57 ["Action"]
      124 LOADK                            R20 K58 ["Cancel"]
      125 NAMECALL                         R17 R2 K59 ["getText"]
      127 CALL                             R17 3 1
      128 SETTABLEKS                       R17 R16 K53 ["Text"]
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R13 K24 ["CancelButton"]
      133 GETUPVAL                         R14 0
      134 GETTABLEKS                       R14 R14 K11 ["createElement"]
      136 GETUPVAL                         R15 1
      137 DUPTABLE                         R16 K63 [{["LayoutOrder"] = 3, ["OnClick"], ["Size"], ["Style"] = "RoundPrimary", ["StyleModifier"], ["Text"]}]
      138 SETTABLEKS                       R6 R16 K50 ["OnClick"]
      140 GETIMPORT                        R17 K56 [UDim2.new]
      142 LOADN                            R18 0
      143 LOADN                            R19 120
      144 LOADN                            R20 0
      145 LOADN                            R21 35
      146 CALL                             R17 4 1
      147 SETTABLEKS                       R17 R16 K3 ["Size"]
      149 JUMPIF                           R9 ; [+4]
      150 GETUPVAL                         R17 2
      151 GETTABLEKS                       R17 R17 K64 ["Disabled"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R17
      155 SETTABLEKS                       R17 R16 K62 ["StyleModifier"]
      157 LOADK                            R19 K57 ["Action"]
      158 LOADK                            R20 K65 ["Submit"]
      159 NAMECALL                         R17 R2 K59 ["getText"]
      161 CALL                             R17 3 1
      162 SETTABLEKS                       R17 R16 K53 ["Text"]
      164 CALL                             R14 2 1
      165 SETTABLEKS                       R14 R13 K25 ["PublishButton"]
      167 CALL                             R10 3 -1
      168 RETURN                           R10 -1

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
       20 GETTABLEKS                       R4 R0 K3 ["Packages"]
       22 GETTABLEKS                       R4 R4 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K9 ["withContext"]
       29 GETTABLEKS                       R6 R3 K10 ["Util"]
       31 GETTABLEKS                       R6 R6 K11 ["StyleModifier"]
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
