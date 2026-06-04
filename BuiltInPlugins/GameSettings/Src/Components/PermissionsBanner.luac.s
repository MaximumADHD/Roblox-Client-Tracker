PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["GameId"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["BannerText"]
        8 LOADK                            R7 K4 ["General"]
        9 LOADK                            R8 K5 ["PermissionsBannerManageButton"]
       10 NAMECALL                         R5 R3 K6 ["getText"]
       12 CALL                             R5 3 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K7 ["createElement"]
       16 LOADK                            R7 K8 ["Frame"]
       17 DUPTABLE                         R8 K13 [{"Size", "AutomaticSize", "BackgroundColor3", "BackgroundTransparency"}]
       18 GETIMPORT                        R9 K16 [UDim2.new]
       20 LOADN                            R10 1
       21 LOADN                            R11 0
       22 LOADN                            R12 0
       23 LOADN                            R13 0
       24 CALL                             R9 4 1
       25 SETTABLEKS                       R9 R8 K9 ["Size"]
       27 GETIMPORT                        R9 K19 [Enum.AutomaticSize.Y]
       29 SETTABLEKS                       R9 R8 K10 ["AutomaticSize"]
       31 GETTABLEKS                       R9 R2 K20 ["permissionsBanner"]
       33 GETTABLEKS                       R9 R9 K21 ["backgroundColor"]
       35 SETTABLEKS                       R9 R8 K11 ["BackgroundColor3"]
       37 LOADN                            R9 0
       38 SETTABLEKS                       R9 R8 K12 ["BackgroundTransparency"]
       40 DUPTABLE                         R9 K26 [{"UICorner", "UIPadding", "LeftContent", "ManageButton"}]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K7 ["createElement"]
       44 LOADK                            R11 K22 ["UICorner"]
       45 DUPTABLE                         R12 K28 [{"CornerRadius"}]
       46 GETIMPORT                        R13 K30 [UDim.new]
       48 LOADN                            R14 0
       49 LOADN                            R15 8
       50 CALL                             R13 2 1
       51 SETTABLEKS                       R13 R12 K27 ["CornerRadius"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K22 ["UICorner"]
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K7 ["createElement"]
       59 LOADK                            R11 K23 ["UIPadding"]
       60 DUPTABLE                         R12 K35 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       61 GETIMPORT                        R13 K30 [UDim.new]
       63 LOADN                            R14 0
       64 GETTABLEKS                       R15 R2 K20 ["permissionsBanner"]
       66 GETTABLEKS                       R15 R15 K36 ["padding"]
       68 GETTABLEKS                       R15 R15 K37 ["Top"]
       70 CALL                             R13 2 1
       71 SETTABLEKS                       R13 R12 K31 ["PaddingTop"]
       73 GETIMPORT                        R13 K30 [UDim.new]
       75 LOADN                            R14 0
       76 GETTABLEKS                       R15 R2 K20 ["permissionsBanner"]
       78 GETTABLEKS                       R15 R15 K36 ["padding"]
       80 GETTABLEKS                       R15 R15 K38 ["Bottom"]
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K32 ["PaddingBottom"]
       85 GETIMPORT                        R13 K30 [UDim.new]
       87 LOADN                            R14 0
       88 GETTABLEKS                       R15 R2 K20 ["permissionsBanner"]
       90 GETTABLEKS                       R15 R15 K36 ["padding"]
       92 GETTABLEKS                       R15 R15 K39 ["Left"]
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K33 ["PaddingLeft"]
       97 GETIMPORT                        R13 K30 [UDim.new]
       99 LOADN                            R14 0
      100 GETTABLEKS                       R15 R2 K20 ["permissionsBanner"]
      102 GETTABLEKS                       R15 R15 K36 ["padding"]
      104 GETTABLEKS                       R15 R15 K40 ["Right"]
      106 CALL                             R13 2 1
      107 SETTABLEKS                       R13 R12 K34 ["PaddingRight"]
      109 CALL                             R10 2 1
      110 SETTABLEKS                       R10 R9 K23 ["UIPadding"]
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K7 ["createElement"]
      115 GETUPVAL                         R11 1
      116 DUPTABLE                         R12 K45 [{"Size", "AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment", "BackgroundTransparency"}]
      117 GETIMPORT                        R13 K16 [UDim2.new]
      119 LOADN                            R14 1
      120 LOADN                            R15 156
      121 LOADN                            R16 0
      122 LOADN                            R17 0
      123 CALL                             R13 4 1
      124 SETTABLEKS                       R13 R12 K9 ["Size"]
      126 GETIMPORT                        R13 K19 [Enum.AutomaticSize.Y]
      128 SETTABLEKS                       R13 R12 K10 ["AutomaticSize"]
      130 GETIMPORT                        R13 K48 [Enum.FillDirection.Horizontal]
      132 SETTABLEKS                       R13 R12 K41 ["Layout"]
      134 LOADN                            R13 12
      135 SETTABLEKS                       R13 R12 K42 ["Spacing"]
      137 GETIMPORT                        R13 K49 [Enum.HorizontalAlignment.Left]
      139 SETTABLEKS                       R13 R12 K43 ["HorizontalAlignment"]
      141 GETIMPORT                        R13 K51 [Enum.VerticalAlignment.Center]
      143 SETTABLEKS                       R13 R12 K44 ["VerticalAlignment"]
      145 LOADN                            R13 1
      146 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
      148 DUPTABLE                         R13 K53 [{"InfoIcon", "BannerText"}]
      149 GETUPVAL                         R14 0
      150 GETTABLEKS                       R14 R14 K7 ["createElement"]
      152 LOADK                            R15 K54 ["ImageLabel"]
      153 DUPTABLE                         R16 K57 [{"Image", "BackgroundTransparency", "Size", "LayoutOrder"}]
      154 GETTABLEKS                       R17 R2 K58 ["genreInfo"]
      156 GETTABLEKS                       R17 R17 K59 ["image"]
      158 SETTABLEKS                       R17 R16 K55 ["Image"]
      160 LOADN                            R17 1
      161 SETTABLEKS                       R17 R16 K12 ["BackgroundTransparency"]
      163 GETIMPORT                        R17 K61 [UDim2.fromOffset]
      165 GETTABLEKS                       R18 R2 K58 ["genreInfo"]
      167 GETTABLEKS                       R18 R18 K62 ["imageSize"]
      169 GETTABLEKS                       R19 R2 K58 ["genreInfo"]
      171 GETTABLEKS                       R19 R19 K62 ["imageSize"]
      173 CALL                             R17 2 1
      174 SETTABLEKS                       R17 R16 K9 ["Size"]
      176 LOADN                            R17 0
      177 SETTABLEKS                       R17 R16 K56 ["LayoutOrder"]
      179 CALL                             R14 2 1
      180 SETTABLEKS                       R14 R13 K52 ["InfoIcon"]
      182 GETUPVAL                         R14 0
      183 GETTABLEKS                       R14 R14 K7 ["createElement"]
      185 LOADK                            R15 K63 ["TextLabel"]
      186 GETUPVAL                         R16 2
      187 GETTABLEKS                       R16 R16 K64 ["Dictionary"]
      189 GETTABLEKS                       R16 R16 K65 ["join"]
      191 GETTABLEKS                       R17 R2 K66 ["fontStyle"]
      193 GETTABLEKS                       R17 R17 K67 ["Normal"]
      195 DUPTABLE                         R18 K73 [{"Text", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
      196 SETTABLEKS                       R4 R18 K68 ["Text"]
      198 GETTABLEKS                       R19 R2 K20 ["permissionsBanner"]
      200 GETTABLEKS                       R19 R19 K74 ["textColor"]
      202 SETTABLEKS                       R19 R18 K69 ["TextColor3"]
      204 GETIMPORT                        R19 K75 [Enum.TextXAlignment.Left]
      206 SETTABLEKS                       R19 R18 K70 ["TextXAlignment"]
      208 GETIMPORT                        R19 K76 [Enum.TextYAlignment.Center]
      210 SETTABLEKS                       R19 R18 K71 ["TextYAlignment"]
      212 LOADB                            R19 1
      213 SETTABLEKS                       R19 R18 K72 ["TextWrapped"]
      215 GETIMPORT                        R19 K78 [Enum.AutomaticSize.XY]
      217 SETTABLEKS                       R19 R18 K10 ["AutomaticSize"]
      219 LOADN                            R19 1
      220 SETTABLEKS                       R19 R18 K12 ["BackgroundTransparency"]
      222 LOADN                            R19 1
      223 SETTABLEKS                       R19 R18 K56 ["LayoutOrder"]
      225 CALL                             R16 2 -1
      226 CALL                             R14 -1 1
      227 SETTABLEKS                       R14 R13 K3 ["BannerText"]
      229 CALL                             R10 3 1
      230 SETTABLEKS                       R10 R9 K24 ["LeftContent"]
      232 GETUPVAL                         R10 0
      233 GETTABLEKS                       R10 R10 K7 ["createElement"]
      235 GETUPVAL                         R11 3
      236 DUPTABLE                         R12 K83 [{"Text", "Style", "Size", "Position", "AnchorPoint", "OnClick"}]
      237 SETTABLEKS                       R5 R12 K68 ["Text"]
      239 LOADK                            R13 K84 ["GameSettingsButton"]
      240 SETTABLEKS                       R13 R12 K79 ["Style"]
      242 GETIMPORT                        R13 K61 [UDim2.fromOffset]
      244 LOADN                            R14 80
      245 LOADN                            R15 32
      246 CALL                             R13 2 1
      247 SETTABLEKS                       R13 R12 K9 ["Size"]
      249 GETIMPORT                        R13 K16 [UDim2.new]
      251 LOADN                            R14 1
      252 GETTABLEKS                       R16 R2 K20 ["permissionsBanner"]
      254 GETTABLEKS                       R16 R16 K36 ["padding"]
      256 GETTABLEKS                       R16 R16 K40 ["Right"]
      258 MINUS                            R15 R16
      259 LOADK                            R16 K85 [0.5]
      260 LOADN                            R17 0
      261 CALL                             R13 4 1
      262 SETTABLEKS                       R13 R12 K80 ["Position"]
      264 GETIMPORT                        R13 K87 [Vector2.new]
      266 LOADN                            R14 1
      267 LOADK                            R15 K85 [0.5]
      268 CALL                             R13 2 1
      269 SETTABLEKS                       R13 R12 K81 ["AnchorPoint"]
      271 GETTABLEKS                       R13 R0 K88 ["onManageClick"]
      273 SETTABLEKS                       R13 R12 K82 ["OnClick"]
      275 CALL                             R10 2 1
      276 SETTABLEKS                       R10 R9 K25 ["ManageButton"]
      278 CALL                             R6 3 -1
      279 RETURN                           R6 -1

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
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Packages"]
       31 GETTABLEKS                       R6 R6 K10 ["Cryo"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R2 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Button"]
       38 GETTABLEKS                       R8 R6 K13 ["Pane"]
       40 GETIMPORT                        R9 K4 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Src"]
       44 GETTABLEKS                       R10 R10 K15 ["Util"]
       46 GETTABLEKS                       R10 R10 K16 ["BrowserUtils"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R9 R9 K17 ["OpenExperienceSettings"]
       51 GETTABLEKS                       R10 R1 K18 ["PureComponent"]
       53 LOADK                            R12 K19 ["PermissionsBanner"]
       54 NAMECALL                         R10 R10 K20 ["extend"]
       56 CALL                             R10 2 1
       57 DUPCLOSURE                       R11 K21 [PROTO_1]
       58 CAPTURE                          VAL R9
       59 SETTABLEKS                       R11 R10 K22 ["init"]
       61 DUPCLOSURE                       R11 K23 [PROTO_2]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 SETTABLEKS                       R11 R10 K24 ["render"]
       68 MOVE                             R11 R4
       69 DUPTABLE                         R12 K27 [{"Localization", "Stylizer"}]
       70 GETTABLEKS                       R13 R3 K25 ["Localization"]
       72 SETTABLEKS                       R13 R12 K25 ["Localization"]
       74 GETTABLEKS                       R13 R3 K26 ["Stylizer"]
       76 SETTABLEKS                       R13 R12 K26 ["Stylizer"]
       78 CALL                             R11 1 1
       79 MOVE                             R12 R10
       80 CALL                             R11 1 1
       81 MOVE                             R10 R11
       82 RETURN                           R10 1
