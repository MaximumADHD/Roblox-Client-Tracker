PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["GameId"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 JUMPIFEQKN                       R0 K2 [0] ; [+5]
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onManageClick"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        8 GETTABLEKS                       R3 R1 K2 ["Localization"]
       10 GETTABLEKS                       R4 R1 K3 ["BannerText"]
       12 LOADK                            R7 K4 ["General"]
       13 LOADK                            R8 K5 ["PermissionsBannerManageButton"]
       14 NAMECALL                         R5 R3 K6 ["getText"]
       16 CALL                             R5 3 1
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K7 ["createElement"]
       20 LOADK                            R7 K8 ["Frame"]
       21 DUPTABLE                         R8 K13 [{"Size", "AutomaticSize", "BackgroundColor3", "BackgroundTransparency"}]
       22 GETIMPORT                        R9 K16 [UDim2.new]
       24 LOADN                            R10 1
       25 LOADN                            R11 0
       26 LOADN                            R12 0
       27 LOADN                            R13 0
       28 CALL                             R9 4 1
       29 SETTABLEKS                       R9 R8 K9 ["Size"]
       31 GETIMPORT                        R9 K19 [Enum.AutomaticSize.Y]
       33 SETTABLEKS                       R9 R8 K10 ["AutomaticSize"]
       35 GETTABLEKS                       R10 R2 K20 ["permissionsBanner"]
       37 GETTABLEKS                       R9 R10 K21 ["backgroundColor"]
       39 SETTABLEKS                       R9 R8 K11 ["BackgroundColor3"]
       41 LOADN                            R9 0
       42 SETTABLEKS                       R9 R8 K12 ["BackgroundTransparency"]
       44 DUPTABLE                         R9 K26 [{"UICorner", "UIPadding", "LeftContent", "ManageButton"}]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R10 R11 K7 ["createElement"]
       48 LOADK                            R11 K22 ["UICorner"]
       49 DUPTABLE                         R12 K28 [{"CornerRadius"}]
       50 GETIMPORT                        R13 K30 [UDim.new]
       52 LOADN                            R14 0
       53 LOADN                            R15 8
       54 CALL                             R13 2 1
       55 SETTABLEKS                       R13 R12 K27 ["CornerRadius"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K22 ["UICorner"]
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R10 R11 K7 ["createElement"]
       63 LOADK                            R11 K23 ["UIPadding"]
       64 DUPTABLE                         R12 K35 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       65 GETIMPORT                        R13 K30 [UDim.new]
       67 LOADN                            R14 0
       68 GETTABLEKS                       R17 R2 K20 ["permissionsBanner"]
       70 GETTABLEKS                       R16 R17 K36 ["padding"]
       72 GETTABLEKS                       R15 R16 K37 ["Top"]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K31 ["PaddingTop"]
       77 GETIMPORT                        R13 K30 [UDim.new]
       79 LOADN                            R14 0
       80 GETTABLEKS                       R17 R2 K20 ["permissionsBanner"]
       82 GETTABLEKS                       R16 R17 K36 ["padding"]
       84 GETTABLEKS                       R15 R16 K38 ["Bottom"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K32 ["PaddingBottom"]
       89 GETIMPORT                        R13 K30 [UDim.new]
       91 LOADN                            R14 0
       92 GETTABLEKS                       R17 R2 K20 ["permissionsBanner"]
       94 GETTABLEKS                       R16 R17 K36 ["padding"]
       96 GETTABLEKS                       R15 R16 K39 ["Left"]
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K33 ["PaddingLeft"]
      101 GETIMPORT                        R13 K30 [UDim.new]
      103 LOADN                            R14 0
      104 GETTABLEKS                       R17 R2 K20 ["permissionsBanner"]
      106 GETTABLEKS                       R16 R17 K36 ["padding"]
      108 GETTABLEKS                       R15 R16 K40 ["Right"]
      110 CALL                             R13 2 1
      111 SETTABLEKS                       R13 R12 K34 ["PaddingRight"]
      113 CALL                             R10 2 1
      114 SETTABLEKS                       R10 R9 K23 ["UIPadding"]
      116 GETUPVAL                         R11 1
      117 GETTABLEKS                       R10 R11 K7 ["createElement"]
      119 GETUPVAL                         R11 2
      120 DUPTABLE                         R12 K45 [{"Size", "AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment", "BackgroundTransparency"}]
      121 GETIMPORT                        R13 K16 [UDim2.new]
      123 LOADN                            R14 1
      124 LOADN                            R15 156
      125 LOADN                            R16 0
      126 LOADN                            R17 0
      127 CALL                             R13 4 1
      128 SETTABLEKS                       R13 R12 K9 ["Size"]
      130 GETIMPORT                        R13 K19 [Enum.AutomaticSize.Y]
      132 SETTABLEKS                       R13 R12 K10 ["AutomaticSize"]
      134 GETIMPORT                        R13 K48 [Enum.FillDirection.Horizontal]
      136 SETTABLEKS                       R13 R12 K41 ["Layout"]
      138 LOADN                            R13 12
      139 SETTABLEKS                       R13 R12 K42 ["Spacing"]
      141 GETIMPORT                        R13 K49 [Enum.HorizontalAlignment.Left]
      143 SETTABLEKS                       R13 R12 K43 ["HorizontalAlignment"]
      145 GETIMPORT                        R13 K51 [Enum.VerticalAlignment.Center]
      147 SETTABLEKS                       R13 R12 K44 ["VerticalAlignment"]
      149 LOADN                            R13 1
      150 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
      152 DUPTABLE                         R13 K53 [{"InfoIcon", "BannerText"}]
      153 GETUPVAL                         R15 1
      154 GETTABLEKS                       R14 R15 K7 ["createElement"]
      156 LOADK                            R15 K54 ["ImageLabel"]
      157 DUPTABLE                         R16 K57 [{"Image", "BackgroundTransparency", "Size", "LayoutOrder"}]
      158 GETTABLEKS                       R18 R2 K58 ["genreInfo"]
      160 GETTABLEKS                       R17 R18 K59 ["image"]
      162 SETTABLEKS                       R17 R16 K55 ["Image"]
      164 LOADN                            R17 1
      165 SETTABLEKS                       R17 R16 K12 ["BackgroundTransparency"]
      167 GETIMPORT                        R17 K61 [UDim2.fromOffset]
      169 GETTABLEKS                       R19 R2 K58 ["genreInfo"]
      171 GETTABLEKS                       R18 R19 K62 ["imageSize"]
      173 GETTABLEKS                       R20 R2 K58 ["genreInfo"]
      175 GETTABLEKS                       R19 R20 K62 ["imageSize"]
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K9 ["Size"]
      180 LOADN                            R17 0
      181 SETTABLEKS                       R17 R16 K56 ["LayoutOrder"]
      183 CALL                             R14 2 1
      184 SETTABLEKS                       R14 R13 K52 ["InfoIcon"]
      186 GETUPVAL                         R15 1
      187 GETTABLEKS                       R14 R15 K7 ["createElement"]
      189 LOADK                            R15 K63 ["TextLabel"]
      190 GETUPVAL                         R18 3
      191 GETTABLEKS                       R17 R18 K64 ["Dictionary"]
      193 GETTABLEKS                       R16 R17 K65 ["join"]
      195 GETTABLEKS                       R18 R2 K66 ["fontStyle"]
      197 GETTABLEKS                       R17 R18 K67 ["Normal"]
      199 DUPTABLE                         R18 K73 [{"Text", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
      200 SETTABLEKS                       R4 R18 K68 ["Text"]
      202 GETTABLEKS                       R20 R2 K20 ["permissionsBanner"]
      204 GETTABLEKS                       R19 R20 K74 ["textColor"]
      206 SETTABLEKS                       R19 R18 K69 ["TextColor3"]
      208 GETIMPORT                        R19 K75 [Enum.TextXAlignment.Left]
      210 SETTABLEKS                       R19 R18 K70 ["TextXAlignment"]
      212 GETIMPORT                        R19 K76 [Enum.TextYAlignment.Center]
      214 SETTABLEKS                       R19 R18 K71 ["TextYAlignment"]
      216 LOADB                            R19 1
      217 SETTABLEKS                       R19 R18 K72 ["TextWrapped"]
      219 GETIMPORT                        R19 K78 [Enum.AutomaticSize.XY]
      221 SETTABLEKS                       R19 R18 K10 ["AutomaticSize"]
      223 LOADN                            R19 1
      224 SETTABLEKS                       R19 R18 K12 ["BackgroundTransparency"]
      226 LOADN                            R19 1
      227 SETTABLEKS                       R19 R18 K56 ["LayoutOrder"]
      229 CALL                             R16 2 -1
      230 CALL                             R14 -1 1
      231 SETTABLEKS                       R14 R13 K3 ["BannerText"]
      233 CALL                             R10 3 1
      234 SETTABLEKS                       R10 R9 K24 ["LeftContent"]
      236 GETUPVAL                         R11 1
      237 GETTABLEKS                       R10 R11 K7 ["createElement"]
      239 GETUPVAL                         R11 4
      240 DUPTABLE                         R12 K83 [{"Text", "Style", "Size", "Position", "AnchorPoint", "OnClick"}]
      241 SETTABLEKS                       R5 R12 K68 ["Text"]
      243 LOADK                            R13 K84 ["GameSettingsButton"]
      244 SETTABLEKS                       R13 R12 K79 ["Style"]
      246 GETIMPORT                        R13 K61 [UDim2.fromOffset]
      248 LOADN                            R14 80
      249 LOADN                            R15 32
      250 CALL                             R13 2 1
      251 SETTABLEKS                       R13 R12 K9 ["Size"]
      253 GETIMPORT                        R13 K16 [UDim2.new]
      255 LOADN                            R14 1
      256 GETTABLEKS                       R18 R2 K20 ["permissionsBanner"]
      258 GETTABLEKS                       R17 R18 K36 ["padding"]
      260 GETTABLEKS                       R16 R17 K40 ["Right"]
      262 MINUS                            R15 R16
      263 LOADK                            R16 K85 [0.5]
      264 LOADN                            R17 0
      265 CALL                             R13 4 1
      266 SETTABLEKS                       R13 R12 K80 ["Position"]
      268 GETIMPORT                        R13 K87 [Vector2.new]
      270 LOADN                            R14 1
      271 LOADK                            R15 K85 [0.5]
      272 CALL                             R13 2 1
      273 SETTABLEKS                       R13 R12 K81 ["AnchorPoint"]
      275 GETTABLEKS                       R13 R0 K88 ["onManageClick"]
      277 SETTABLEKS                       R13 R12 K82 ["OnClick"]
      279 CALL                             R10 2 1
      280 SETTABLEKS                       R10 R9 K25 ["ManageButton"]
      282 CALL                             R6 3 -1
      283 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R7 R0 K5 ["Packages"]
       31 GETTABLEKS                       R6 R7 K10 ["Cryo"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R2 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Button"]
       38 GETTABLEKS                       R8 R6 K13 ["Pane"]
       40 GETTABLEKS                       R9 R6 K14 ["TextLabel"]
       42 GETIMPORT                        R11 K4 [require]
       44 GETTABLEKS                       R14 R0 K15 ["Src"]
       46 GETTABLEKS                       R13 R14 K16 ["Util"]
       48 GETTABLEKS                       R12 R13 K17 ["BrowserUtils"]
       50 CALL                             R11 1 1
       51 GETTABLEKS                       R10 R11 K18 ["OpenExperienceSettings"]
       53 GETIMPORT                        R11 K20 [game]
       55 LOADK                            R13 K21 ["RemoveGameSettingsPermissionsPage"]
       56 NAMECALL                         R11 R11 K22 ["GetFastFlag"]
       58 CALL                             R11 2 1
       59 GETTABLEKS                       R12 R1 K23 ["PureComponent"]
       61 LOADK                            R14 K24 ["PermissionsBanner"]
       62 NAMECALL                         R12 R12 K25 ["extend"]
       64 CALL                             R12 2 1
       65 DUPCLOSURE                       R13 K26 [PROTO_1]
       66 CAPTURE                          VAL R10
       67 SETTABLEKS                       R13 R12 K27 ["init"]
       69 DUPCLOSURE                       R13 K28 [PROTO_2]
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R13 R12 K29 ["render"]
       77 MOVE                             R13 R4
       78 DUPTABLE                         R14 K32 [{"Localization", "Stylizer"}]
       79 GETTABLEKS                       R15 R3 K30 ["Localization"]
       81 SETTABLEKS                       R15 R14 K30 ["Localization"]
       83 GETTABLEKS                       R15 R3 K31 ["Stylizer"]
       85 SETTABLEKS                       R15 R14 K31 ["Stylizer"]
       87 CALL                             R13 1 1
       88 MOVE                             R14 R12
       89 CALL                             R13 1 1
       90 MOVE                             R12 R13
       91 RETURN                           R12 1
