PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["CGEAlert"]
        8 GETTABLEKS                       R4 R1 K4 ["Title"]
       10 GETTABLEKS                       R5 R1 K5 ["Body"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K6 ["createElement"]
       15 GETUPVAL                         R7 1
       16 DUPTABLE                         R8 K14 [{["LayoutOrder"] = 1, ["AutomaticSize"], ["Padding"], ["BackgroundColor3"], ["Size"], ["OnClick"]}]
       17 GETIMPORT                        R9 K17 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R9 R8 K9 ["AutomaticSize"]
       21 GETTABLEKS                       R9 R3 K10 ["Padding"]
       23 SETTABLEKS                       R9 R8 K10 ["Padding"]
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R9 R9 K18 ["darker"]
       28 GETTABLEKS                       R10 R3 K19 ["BackgroundColor"]
       30 GETTABLEKS                       R11 R3 K20 ["BackgroundColorHoverDarkerMultiplier"]
       32 CALL                             R9 2 1
       33 SETTABLEKS                       R9 R8 K11 ["BackgroundColor3"]
       35 GETIMPORT                        R9 K23 [UDim2.fromScale]
       37 LOADN                            R10 1
       38 LOADN                            R11 0
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K12 ["Size"]
       42 GETTABLEKS                       R9 R1 K13 ["OnClick"]
       44 SETTABLEKS                       R9 R8 K13 ["OnClick"]
       46 DUPTABLE                         R9 K27 [{"UICorner", "UIStroke", "Inner"}]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K6 ["createElement"]
       50 LOADK                            R11 K24 ["UICorner"]
       51 DUPTABLE                         R12 K29 [{"CornerRadius"}]
       52 GETTABLEKS                       R13 R3 K28 ["CornerRadius"]
       54 SETTABLEKS                       R13 R12 K28 ["CornerRadius"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K24 ["UICorner"]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K6 ["createElement"]
       62 LOADK                            R11 K25 ["UIStroke"]
       63 DUPTABLE                         R12 K32 [{"ApplyStrokeMode", "Color"}]
       64 GETIMPORT                        R13 K34 [Enum.ApplyStrokeMode.Border]
       66 SETTABLEKS                       R13 R12 K30 ["ApplyStrokeMode"]
       68 GETTABLEKS                       R13 R3 K35 ["BorderColor"]
       70 SETTABLEKS                       R13 R12 K31 ["Color"]
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K25 ["UIStroke"]
       75 GETUPVAL                         R10 0
       76 GETTABLEKS                       R10 R10 K6 ["createElement"]
       78 GETUPVAL                         R11 1
       79 DUPTABLE                         R12 K39 [{"AutomaticSize", "Padding", "Spacing", "Layout", "HorizontalAlignment", "Size"}]
       80 GETIMPORT                        R13 K17 [Enum.AutomaticSize.Y]
       82 SETTABLEKS                       R13 R12 K9 ["AutomaticSize"]
       84 GETTABLEKS                       R13 R3 K40 ["LinePadding"]
       86 SETTABLEKS                       R13 R12 K10 ["Padding"]
       88 GETTABLEKS                       R13 R3 K41 ["LineSpacing"]
       90 SETTABLEKS                       R13 R12 K36 ["Spacing"]
       92 GETIMPORT                        R13 K44 [Enum.FillDirection.Vertical]
       94 SETTABLEKS                       R13 R12 K37 ["Layout"]
       96 GETIMPORT                        R13 K46 [Enum.HorizontalAlignment.Left]
       98 SETTABLEKS                       R13 R12 K38 ["HorizontalAlignment"]
      100 GETIMPORT                        R13 K23 [UDim2.fromScale]
      102 LOADN                            R14 1
      103 LOADN                            R15 0
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K12 ["Size"]
      107 DUPTABLE                         R13 K48 [{"TopBar", "Body"}]
      108 GETUPVAL                         R14 0
      109 GETTABLEKS                       R14 R14 K6 ["createElement"]
      111 GETUPVAL                         R15 1
      112 DUPTABLE                         R16 K49 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"]}]
      113 GETIMPORT                        R17 K17 [Enum.AutomaticSize.Y]
      115 SETTABLEKS                       R17 R16 K9 ["AutomaticSize"]
      117 GETIMPORT                        R17 K23 [UDim2.fromScale]
      119 LOADN                            R18 1
      120 LOADN                            R19 0
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K12 ["Size"]
      124 DUPTABLE                         R17 K51 [{"Title", "RightSide"}]
      125 GETUPVAL                         R18 0
      126 GETTABLEKS                       R18 R18 K6 ["createElement"]
      128 GETUPVAL                         R19 3
      129 DUPTABLE                         R20 K56 [{["AutomaticSize"], ["Text"], ["TextXAlignment"], ["RichText"] = True, ["LayoutOrder"] = 1}]
      130 GETIMPORT                        R21 K58 [Enum.AutomaticSize.XY]
      132 SETTABLEKS                       R21 R20 K9 ["AutomaticSize"]
      134 LOADK                            R22 K59 ["<b>%*</b>"]
      135 MOVE                             R24 R4
      136 NAMECALL                         R22 R22 K60 ["format"]
      138 CALL                             R22 2 1
      139 MOVE                             R21 R22
      140 SETTABLEKS                       R21 R20 K52 ["Text"]
      142 GETIMPORT                        R21 K61 [Enum.TextXAlignment.Left]
      144 SETTABLEKS                       R21 R20 K53 ["TextXAlignment"]
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R17 K4 ["Title"]
      149 GETUPVAL                         R18 0
      150 GETTABLEKS                       R18 R18 K6 ["createElement"]
      152 GETUPVAL                         R19 1
      153 DUPTABLE                         R20 K65 [{["AnchorPoint"], ["AutomaticSize"], ["Position"], ["Size"], ["LayoutOrder"] = 2}]
      154 GETIMPORT                        R21 K68 [Vector2.new]
      156 LOADN                            R22 1
      157 LOADN                            R23 0
      158 CALL                             R21 2 1
      159 SETTABLEKS                       R21 R20 K62 ["AnchorPoint"]
      161 GETIMPORT                        R21 K70 [Enum.AutomaticSize.X]
      163 SETTABLEKS                       R21 R20 K9 ["AutomaticSize"]
      165 GETIMPORT                        R21 K23 [UDim2.fromScale]
      167 LOADN                            R22 1
      168 LOADN                            R23 0
      169 CALL                             R21 2 1
      170 SETTABLEKS                       R21 R20 K63 ["Position"]
      172 GETIMPORT                        R21 K72 [UDim2.fromOffset]
      174 LOADN                            R22 0
      175 LOADN                            R23 18
      176 CALL                             R21 2 1
      177 SETTABLEKS                       R21 R20 K12 ["Size"]
      179 DUPTABLE                         R21 K74 [{"PrimaryAction"}]
      180 GETUPVAL                         R22 0
      181 GETTABLEKS                       R22 R22 K6 ["createElement"]
      183 GETUPVAL                         R23 3
      184 DUPTABLE                         R24 K77 [{["AutomaticSize"], ["Font"], ["RichText"] = True, ["Text"], ["TextColor"]}]
      185 GETIMPORT                        R25 K58 [Enum.AutomaticSize.XY]
      187 SETTABLEKS                       R25 R24 K9 ["AutomaticSize"]
      189 GETTABLEKS                       R25 R3 K78 ["PrimaryActionFont"]
      191 SETTABLEKS                       R25 R24 K75 ["Font"]
      193 LOADK                            R26 K79 ["<u>%*</u>"]
      194 LOADK                            R30 K80 ["Common"]
      195 LOADK                            R31 K81 ["LearnMore"]
      196 NAMECALL                         R28 R2 K82 ["getText"]
      198 CALL                             R28 3 1
      199 NAMECALL                         R26 R26 K60 ["format"]
      201 CALL                             R26 2 1
      202 MOVE                             R25 R26
      203 SETTABLEKS                       R25 R24 K52 ["Text"]
      205 GETTABLEKS                       R25 R3 K76 ["TextColor"]
      207 SETTABLEKS                       R25 R24 K76 ["TextColor"]
      209 CALL                             R22 2 1
      210 SETTABLEKS                       R22 R21 K73 ["PrimaryAction"]
      212 CALL                             R18 3 1
      213 SETTABLEKS                       R18 R17 K50 ["RightSide"]
      215 CALL                             R14 3 1
      216 SETTABLEKS                       R14 R13 K47 ["TopBar"]
      218 GETUPVAL                         R14 0
      219 GETTABLEKS                       R14 R14 K6 ["createElement"]
      221 GETUPVAL                         R15 3
      222 DUPTABLE                         R16 K84 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True}]
      223 GETIMPORT                        R17 K58 [Enum.AutomaticSize.XY]
      225 SETTABLEKS                       R17 R16 K9 ["AutomaticSize"]
      227 SETTABLEKS                       R5 R16 K52 ["Text"]
      229 GETIMPORT                        R17 K61 [Enum.TextXAlignment.Left]
      231 SETTABLEKS                       R17 R16 K53 ["TextXAlignment"]
      233 CALL                             R14 2 1
      234 SETTABLEKS                       R14 R13 K5 ["Body"]
      236 CALL                             R10 3 1
      237 SETTABLEKS                       R10 R9 K26 ["Inner"]
      239 CALL                             R6 3 -1
      240 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["Style"]
       27 GETTABLEKS                       R4 R4 K10 ["Colors"]
       29 GETTABLEKS                       R5 R2 K11 ["UI"]
       31 GETTABLEKS                       R6 R5 K12 ["Pane"]
       33 GETTABLEKS                       R7 R5 K13 ["TextLabel"]
       35 GETTABLEKS                       R8 R1 K14 ["PureComponent"]
       37 LOADK                            R10 K15 ["CGEAlert"]
       38 NAMECALL                         R8 R8 K16 ["extend"]
       40 CALL                             R8 2 1
       41 DUPCLOSURE                       R9 K17 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R7
       46 SETTABLEKS                       R9 R8 K18 ["render"]
       48 GETTABLEKS                       R9 R3 K19 ["withContext"]
       50 DUPTABLE                         R10 K22 [{"Stylizer", "Localization"}]
       51 GETTABLEKS                       R11 R3 K20 ["Stylizer"]
       53 SETTABLEKS                       R11 R10 K20 ["Stylizer"]
       55 GETTABLEKS                       R11 R3 K21 ["Localization"]
       57 SETTABLEKS                       R11 R10 K21 ["Localization"]
       59 CALL                             R9 1 1
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 MOVE                             R8 R9
       63 RETURN                           R8 1
