PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 SETTABLEKS                       R1 R0 K1 ["onManageClick"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 LOADK                            R6 K3 ["Banner"]
        7 LOADK                            R7 K4 ["PublishEligibility"]
        8 NAMECALL                         R4 R3 K5 ["getText"]
       10 CALL                             R4 3 1
       11 LOADK                            R7 K6 ["Button"]
       12 LOADK                            R8 K7 ["Manage"]
       13 NAMECALL                         R5 R3 K5 ["getText"]
       15 CALL                             R5 3 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K8 ["createElement"]
       19 LOADK                            R7 K9 ["Frame"]
       20 DUPTABLE                         R8 K16 [{["Position"], ["Size"], ["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0}]
       21 GETTABLEKS                       R9 R1 K10 ["Position"]
       23 SETTABLEKS                       R9 R8 K10 ["Position"]
       25 GETIMPORT                        R9 K19 [UDim2.new]
       27 LOADN                            R10 1
       28 LOADN                            R11 0
       29 LOADN                            R12 0
       30 LOADN                            R13 0
       31 CALL                             R9 4 1
       32 SETTABLEKS                       R9 R8 K11 ["Size"]
       34 GETIMPORT                        R9 K22 [Enum.AutomaticSize.Y]
       36 SETTABLEKS                       R9 R8 K12 ["AutomaticSize"]
       38 GETTABLEKS                       R9 R2 K23 ["eligibilityBanner"]
       40 GETTABLEKS                       R9 R9 K24 ["backgroundColor"]
       42 SETTABLEKS                       R9 R8 K13 ["BackgroundColor3"]
       44 DUPTABLE                         R9 K29 [{"UICorner", "UIPadding", "LeftContent", "ManageButton"}]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K8 ["createElement"]
       48 LOADK                            R11 K25 ["UICorner"]
       49 DUPTABLE                         R12 K31 [{"CornerRadius"}]
       50 GETIMPORT                        R13 K33 [UDim.new]
       52 LOADN                            R14 0
       53 LOADN                            R15 8
       54 CALL                             R13 2 1
       55 SETTABLEKS                       R13 R12 K30 ["CornerRadius"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K25 ["UICorner"]
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R10 R10 K8 ["createElement"]
       63 LOADK                            R11 K26 ["UIPadding"]
       64 DUPTABLE                         R12 K38 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       65 GETIMPORT                        R13 K33 [UDim.new]
       67 LOADN                            R14 0
       68 LOADN                            R15 12
       69 CALL                             R13 2 1
       70 SETTABLEKS                       R13 R12 K34 ["PaddingTop"]
       72 GETIMPORT                        R13 K33 [UDim.new]
       74 LOADN                            R14 0
       75 LOADN                            R15 12
       76 CALL                             R13 2 1
       77 SETTABLEKS                       R13 R12 K35 ["PaddingBottom"]
       79 GETIMPORT                        R13 K33 [UDim.new]
       81 LOADN                            R14 0
       82 LOADN                            R15 16
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K36 ["PaddingLeft"]
       86 GETIMPORT                        R13 K33 [UDim.new]
       88 LOADN                            R14 0
       89 LOADN                            R15 16
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K37 ["PaddingRight"]
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R9 K26 ["UIPadding"]
       96 GETUPVAL                         R10 0
       97 GETTABLEKS                       R10 R10 K8 ["createElement"]
       99 GETUPVAL                         R11 1
      100 DUPTABLE                         R12 K45 [{["Size"], ["AutomaticSize"], ["Layout"], ["Spacing"] = 12, ["HorizontalAlignment"], ["VerticalAlignment"], ["BackgroundTransparency"] = 1}]
      101 GETIMPORT                        R13 K19 [UDim2.new]
      103 LOADN                            R14 1
      104 LOADN                            R15 -100
      105 LOADN                            R16 0
      106 LOADN                            R17 0
      107 CALL                             R13 4 1
      108 SETTABLEKS                       R13 R12 K11 ["Size"]
      110 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
      112 SETTABLEKS                       R13 R12 K12 ["AutomaticSize"]
      114 GETIMPORT                        R13 K48 [Enum.FillDirection.Horizontal]
      116 SETTABLEKS                       R13 R12 K39 ["Layout"]
      118 GETIMPORT                        R13 K50 [Enum.HorizontalAlignment.Left]
      120 SETTABLEKS                       R13 R12 K42 ["HorizontalAlignment"]
      122 GETIMPORT                        R13 K52 [Enum.VerticalAlignment.Center]
      124 SETTABLEKS                       R13 R12 K43 ["VerticalAlignment"]
      126 DUPTABLE                         R13 K55 [{"InfoIcon", "BannerText"}]
      127 GETUPVAL                         R14 0
      128 GETTABLEKS                       R14 R14 K8 ["createElement"]
      130 LOADK                            R15 K56 ["ImageLabel"]
      131 DUPTABLE                         R16 K59 [{["Image"], ["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"] = 0}]
      132 GETTABLEKS                       R17 R2 K60 ["genreInfo"]
      134 GETTABLEKS                       R17 R17 K61 ["image"]
      136 SETTABLEKS                       R17 R16 K57 ["Image"]
      138 GETIMPORT                        R17 K63 [UDim2.fromOffset]
      140 GETTABLEKS                       R18 R2 K60 ["genreInfo"]
      142 GETTABLEKS                       R18 R18 K64 ["imageSize"]
      144 GETTABLEKS                       R19 R2 K60 ["genreInfo"]
      146 GETTABLEKS                       R19 R19 K64 ["imageSize"]
      148 CALL                             R17 2 1
      149 SETTABLEKS                       R17 R16 K11 ["Size"]
      151 CALL                             R14 2 1
      152 SETTABLEKS                       R14 R13 K53 ["InfoIcon"]
      154 GETUPVAL                         R14 0
      155 GETTABLEKS                       R14 R14 K8 ["createElement"]
      157 LOADK                            R15 K65 ["TextLabel"]
      158 GETUPVAL                         R16 2
      159 GETTABLEKS                       R16 R16 K66 ["Dictionary"]
      161 GETTABLEKS                       R16 R16 K67 ["join"]
      163 GETTABLEKS                       R17 R2 K68 ["fontStyle"]
      165 GETTABLEKS                       R17 R17 K69 ["Normal"]
      167 DUPTABLE                         R18 K76 [{["Text"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True, ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      168 SETTABLEKS                       R4 R18 K70 ["Text"]
      170 GETTABLEKS                       R19 R2 K23 ["eligibilityBanner"]
      172 GETTABLEKS                       R19 R19 K77 ["textColor"]
      174 SETTABLEKS                       R19 R18 K71 ["TextColor3"]
      176 GETIMPORT                        R19 K78 [Enum.TextXAlignment.Left]
      178 SETTABLEKS                       R19 R18 K72 ["TextXAlignment"]
      180 GETIMPORT                        R19 K79 [Enum.TextYAlignment.Center]
      182 SETTABLEKS                       R19 R18 K73 ["TextYAlignment"]
      184 GETIMPORT                        R19 K81 [Enum.AutomaticSize.XY]
      186 SETTABLEKS                       R19 R18 K12 ["AutomaticSize"]
      188 CALL                             R16 2 -1
      189 CALL                             R14 -1 1
      190 SETTABLEKS                       R14 R13 K54 ["BannerText"]
      192 CALL                             R10 3 1
      193 SETTABLEKS                       R10 R9 K27 ["LeftContent"]
      195 GETUPVAL                         R10 0
      196 GETTABLEKS                       R10 R10 K8 ["createElement"]
      198 GETUPVAL                         R11 3
      199 DUPTABLE                         R12 K85 [{["Text"], ["Style"] = "ManageButton", ["Size"], ["Position"], ["AnchorPoint"], ["OnClick"]}]
      200 SETTABLEKS                       R5 R12 K70 ["Text"]
      202 GETIMPORT                        R13 K63 [UDim2.fromOffset]
      204 LOADN                            R14 80
      205 LOADN                            R15 32
      206 CALL                             R13 2 1
      207 SETTABLEKS                       R13 R12 K11 ["Size"]
      209 GETIMPORT                        R13 K19 [UDim2.new]
      211 LOADN                            R14 1
      212 LOADN                            R15 -16
      213 LOADK                            R16 K86 [0.5]
      214 LOADN                            R17 0
      215 CALL                             R13 4 1
      216 SETTABLEKS                       R13 R12 K10 ["Position"]
      218 GETIMPORT                        R13 K88 [Vector2.new]
      220 LOADN                            R14 1
      221 LOADK                            R15 K86 [0.5]
      222 CALL                             R13 2 1
      223 SETTABLEKS                       R13 R12 K83 ["AnchorPoint"]
      225 GETTABLEKS                       R13 R0 K89 ["onManageClick"]
      227 SETTABLEKS                       R13 R12 K84 ["OnClick"]
      229 CALL                             R10 2 1
      230 SETTABLEKS                       R10 R9 K28 ["ManageButton"]
      232 CALL                             R6 3 -1
      233 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["GuiService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["withContext"]
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Packages"]
       37 GETTABLEKS                       R7 R7 K14 ["Cryo"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R3 K15 ["UI"]
       42 GETTABLEKS                       R8 R7 K16 ["Button"]
       44 GETTABLEKS                       R9 R7 K17 ["Pane"]
       46 GETIMPORT                        R10 K4 [game]
       48 LOADK                            R12 K18 ["StudioPublishEligibilityBannerLink"]
       49 NAMECALL                         R10 R10 K19 ["GetFastString"]
       51 CALL                             R10 2 1
       52 GETTABLEKS                       R11 R2 K20 ["PureComponent"]
       54 LOADK                            R13 K21 ["EligibilityBanner"]
       55 NAMECALL                         R11 R11 K22 ["extend"]
       57 CALL                             R11 2 1
       58 DUPCLOSURE                       R12 K23 [PROTO_1]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R10
       61 SETTABLEKS                       R12 R11 K24 ["init"]
       63 DUPCLOSURE                       R12 K25 [PROTO_2]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R12 R11 K26 ["render"]
       70 MOVE                             R12 R5
       71 DUPTABLE                         R13 K29 [{"Localization", "Stylizer"}]
       72 GETTABLEKS                       R14 R4 K27 ["Localization"]
       74 SETTABLEKS                       R14 R13 K27 ["Localization"]
       76 GETTABLEKS                       R14 R4 K28 ["Stylizer"]
       78 SETTABLEKS                       R14 R13 K28 ["Stylizer"]
       80 CALL                             R12 1 1
       81 MOVE                             R13 R11
       82 CALL                             R12 1 1
       83 MOVE                             R11 R12
       84 RETURN                           R11 1
