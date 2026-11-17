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
       17 DUPTABLE                         R8 K14 [{["Size"], ["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0}]
       18 GETIMPORT                        R9 K17 [UDim2.new]
       20 LOADN                            R10 1
       21 LOADN                            R11 0
       22 LOADN                            R12 0
       23 LOADN                            R13 0
       24 CALL                             R9 4 1
       25 SETTABLEKS                       R9 R8 K9 ["Size"]
       27 GETIMPORT                        R9 K20 [Enum.AutomaticSize.Y]
       29 SETTABLEKS                       R9 R8 K10 ["AutomaticSize"]
       31 GETTABLEKS                       R9 R2 K21 ["permissionsBanner"]
       33 GETTABLEKS                       R9 R9 K22 ["backgroundColor"]
       35 SETTABLEKS                       R9 R8 K11 ["BackgroundColor3"]
       37 DUPTABLE                         R9 K27 [{"UICorner", "UIPadding", "LeftContent", "ManageButton"}]
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K7 ["createElement"]
       41 LOADK                            R11 K23 ["UICorner"]
       42 DUPTABLE                         R12 K29 [{"CornerRadius"}]
       43 GETIMPORT                        R13 K31 [UDim.new]
       45 LOADN                            R14 0
       46 LOADN                            R15 8
       47 CALL                             R13 2 1
       48 SETTABLEKS                       R13 R12 K28 ["CornerRadius"]
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K23 ["UICorner"]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K7 ["createElement"]
       56 LOADK                            R11 K24 ["UIPadding"]
       57 DUPTABLE                         R12 K36 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       58 GETIMPORT                        R13 K31 [UDim.new]
       60 LOADN                            R14 0
       61 GETTABLEKS                       R15 R2 K21 ["permissionsBanner"]
       63 GETTABLEKS                       R15 R15 K37 ["padding"]
       65 GETTABLEKS                       R15 R15 K38 ["Top"]
       67 CALL                             R13 2 1
       68 SETTABLEKS                       R13 R12 K32 ["PaddingTop"]
       70 GETIMPORT                        R13 K31 [UDim.new]
       72 LOADN                            R14 0
       73 GETTABLEKS                       R15 R2 K21 ["permissionsBanner"]
       75 GETTABLEKS                       R15 R15 K37 ["padding"]
       77 GETTABLEKS                       R15 R15 K39 ["Bottom"]
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K33 ["PaddingBottom"]
       82 GETIMPORT                        R13 K31 [UDim.new]
       84 LOADN                            R14 0
       85 GETTABLEKS                       R15 R2 K21 ["permissionsBanner"]
       87 GETTABLEKS                       R15 R15 K37 ["padding"]
       89 GETTABLEKS                       R15 R15 K40 ["Left"]
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K34 ["PaddingLeft"]
       94 GETIMPORT                        R13 K31 [UDim.new]
       96 LOADN                            R14 0
       97 GETTABLEKS                       R15 R2 K21 ["permissionsBanner"]
       99 GETTABLEKS                       R15 R15 K37 ["padding"]
      101 GETTABLEKS                       R15 R15 K41 ["Right"]
      103 CALL                             R13 2 1
      104 SETTABLEKS                       R13 R12 K35 ["PaddingRight"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K24 ["UIPadding"]
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R10 R10 K7 ["createElement"]
      112 GETUPVAL                         R11 1
      113 DUPTABLE                         R12 K48 [{["Size"], ["AutomaticSize"], ["Layout"], ["Spacing"] = 12, ["HorizontalAlignment"], ["VerticalAlignment"], ["BackgroundTransparency"] = 1}]
      114 GETIMPORT                        R13 K17 [UDim2.new]
      116 LOADN                            R14 1
      117 LOADN                            R15 -100
      118 LOADN                            R16 0
      119 LOADN                            R17 0
      120 CALL                             R13 4 1
      121 SETTABLEKS                       R13 R12 K9 ["Size"]
      123 GETIMPORT                        R13 K20 [Enum.AutomaticSize.Y]
      125 SETTABLEKS                       R13 R12 K10 ["AutomaticSize"]
      127 GETIMPORT                        R13 K51 [Enum.FillDirection.Horizontal]
      129 SETTABLEKS                       R13 R12 K42 ["Layout"]
      131 GETIMPORT                        R13 K52 [Enum.HorizontalAlignment.Left]
      133 SETTABLEKS                       R13 R12 K45 ["HorizontalAlignment"]
      135 GETIMPORT                        R13 K54 [Enum.VerticalAlignment.Center]
      137 SETTABLEKS                       R13 R12 K46 ["VerticalAlignment"]
      139 DUPTABLE                         R13 K56 [{"InfoIcon", "BannerText"}]
      140 GETUPVAL                         R14 0
      141 GETTABLEKS                       R14 R14 K7 ["createElement"]
      143 LOADK                            R15 K57 ["ImageLabel"]
      144 DUPTABLE                         R16 K60 [{["Image"], ["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"] = 0}]
      145 GETTABLEKS                       R17 R2 K61 ["genreInfo"]
      147 GETTABLEKS                       R17 R17 K62 ["image"]
      149 SETTABLEKS                       R17 R16 K58 ["Image"]
      151 GETIMPORT                        R17 K64 [UDim2.fromOffset]
      153 GETTABLEKS                       R18 R2 K61 ["genreInfo"]
      155 GETTABLEKS                       R18 R18 K65 ["imageSize"]
      157 GETTABLEKS                       R19 R2 K61 ["genreInfo"]
      159 GETTABLEKS                       R19 R19 K65 ["imageSize"]
      161 CALL                             R17 2 1
      162 SETTABLEKS                       R17 R16 K9 ["Size"]
      164 CALL                             R14 2 1
      165 SETTABLEKS                       R14 R13 K55 ["InfoIcon"]
      167 GETUPVAL                         R14 0
      168 GETTABLEKS                       R14 R14 K7 ["createElement"]
      170 LOADK                            R15 K66 ["TextLabel"]
      171 GETUPVAL                         R16 2
      172 GETTABLEKS                       R16 R16 K67 ["Dictionary"]
      174 GETTABLEKS                       R16 R16 K68 ["join"]
      176 GETTABLEKS                       R17 R2 K69 ["fontStyle"]
      178 GETTABLEKS                       R17 R17 K70 ["Normal"]
      180 DUPTABLE                         R18 K77 [{["Text"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True, ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      181 SETTABLEKS                       R4 R18 K71 ["Text"]
      183 GETTABLEKS                       R19 R2 K21 ["permissionsBanner"]
      185 GETTABLEKS                       R19 R19 K78 ["textColor"]
      187 SETTABLEKS                       R19 R18 K72 ["TextColor3"]
      189 GETIMPORT                        R19 K79 [Enum.TextXAlignment.Left]
      191 SETTABLEKS                       R19 R18 K73 ["TextXAlignment"]
      193 GETIMPORT                        R19 K80 [Enum.TextYAlignment.Center]
      195 SETTABLEKS                       R19 R18 K74 ["TextYAlignment"]
      197 GETIMPORT                        R19 K82 [Enum.AutomaticSize.XY]
      199 SETTABLEKS                       R19 R18 K10 ["AutomaticSize"]
      201 CALL                             R16 2 -1
      202 CALL                             R14 -1 1
      203 SETTABLEKS                       R14 R13 K3 ["BannerText"]
      205 CALL                             R10 3 1
      206 SETTABLEKS                       R10 R9 K25 ["LeftContent"]
      208 GETUPVAL                         R10 0
      209 GETTABLEKS                       R10 R10 K7 ["createElement"]
      211 GETUPVAL                         R11 3
      212 DUPTABLE                         R12 K88 [{["Text"], ["Style"] = "GameSettingsButton", ["Size"], ["Position"], ["AnchorPoint"], ["OnClick"]}]
      213 SETTABLEKS                       R5 R12 K71 ["Text"]
      215 GETIMPORT                        R13 K64 [UDim2.fromOffset]
      217 LOADN                            R14 80
      218 LOADN                            R15 32
      219 CALL                             R13 2 1
      220 SETTABLEKS                       R13 R12 K9 ["Size"]
      222 GETIMPORT                        R13 K17 [UDim2.new]
      224 LOADN                            R14 1
      225 GETTABLEKS                       R16 R2 K21 ["permissionsBanner"]
      227 GETTABLEKS                       R16 R16 K37 ["padding"]
      229 GETTABLEKS                       R16 R16 K41 ["Right"]
      231 MINUS                            R15 R16
      232 LOADK                            R16 K89 [0.5]
      233 LOADN                            R17 0
      234 CALL                             R13 4 1
      235 SETTABLEKS                       R13 R12 K85 ["Position"]
      237 GETIMPORT                        R13 K91 [Vector2.new]
      239 LOADN                            R14 1
      240 LOADK                            R15 K89 [0.5]
      241 CALL                             R13 2 1
      242 SETTABLEKS                       R13 R12 K86 ["AnchorPoint"]
      244 GETTABLEKS                       R13 R0 K92 ["onManageClick"]
      246 SETTABLEKS                       R13 R12 K87 ["OnClick"]
      248 CALL                             R10 2 1
      249 SETTABLEKS                       R10 R9 K26 ["ManageButton"]
      251 CALL                             R6 3 -1
      252 RETURN                           R6 -1

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
