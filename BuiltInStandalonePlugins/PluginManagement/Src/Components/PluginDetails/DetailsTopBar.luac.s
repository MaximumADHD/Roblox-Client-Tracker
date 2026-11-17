PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Navigation"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K3 ["navigation"]
       10 GETTABLEKS                       R1 R1 K4 ["goBack"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onBackButtonActivated"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["assetId"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["LayoutOrder"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["name"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["Stylizer"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["API"]
       20 NAMECALL                         R5 R5 K6 ["get"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R6 R5 K7 ["AssetGame"]
       25 GETTABLEKS                       R6 R6 K8 ["AssetThumbnail"]
       27 GETTABLEKS                       R6 R6 K9 ["image"]
       29 MOVE                             R7 R1
       30 CALL                             R6 1 1
       31 NAMECALL                         R6 R6 K10 ["getUrl"]
       33 CALL                             R6 1 1
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K11 ["THUMBNAIL_SIZE"]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K12 ["PLUGIN_HORIZONTAL_PADDING"]
       40 ADD                              R7 R8 R9
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K13 ["createElement"]
       44 GETUPVAL                         R9 2
       45 DUPTABLE                         R10 K22 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["contentPadding"], ["FillDirection"], ["LayoutOrder"], ["VerticalAlignment"], ["width"], ["margin"]}]
       46 GETTABLEKS                       R11 R4 K23 ["BackgroundColor"]
       48 SETTABLEKS                       R11 R10 K14 ["BackgroundColor3"]
       50 GETIMPORT                        R11 K26 [UDim.new]
       52 LOADN                            R12 0
       53 LOADN                            R13 18
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K17 ["contentPadding"]
       57 GETIMPORT                        R11 K29 [Enum.FillDirection.Horizontal]
       59 SETTABLEKS                       R11 R10 K18 ["FillDirection"]
       61 SETTABLEKS                       R2 R10 K2 ["LayoutOrder"]
       63 GETIMPORT                        R11 K31 [Enum.VerticalAlignment.Center]
       65 SETTABLEKS                       R11 R10 K19 ["VerticalAlignment"]
       67 GETIMPORT                        R11 K26 [UDim.new]
       69 LOADN                            R12 1
       70 LOADN                            R13 0
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K20 ["width"]
       74 DUPTABLE                         R11 K37 [{["top"] = 18, ["bottom"] = 18, ["left"] = 0, ["right"] = 0}]
       75 SETTABLEKS                       R11 R10 K21 ["margin"]
       77 DUPTABLE                         R11 K42 [{"BackButton", "Border", "Thumbnail", "Name"}]
       78 GETUPVAL                         R12 1
       79 GETTABLEKS                       R12 R12 K13 ["createElement"]
       81 LOADK                            R13 K43 ["ImageButton"]
       82 NEWTABLE                         R14 8 0
       84 LOADN                            R15 1
       85 SETTABLEKS                       R15 R14 K44 ["BackgroundTransparency"]
       87 LOADN                            R15 0
       88 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
       90 LOADK                            R15 K45 ["rbxasset://textures/PluginManagement/back.png"]
       91 SETTABLEKS                       R15 R14 K46 ["Image"]
       93 GETTABLEKS                       R15 R4 K47 ["TextColor"]
       95 SETTABLEKS                       R15 R14 K48 ["ImageColor3"]
       97 GETIMPORT                        R15 K50 [UDim2.new]
       99 LOADN                            R16 0
      100 LOADN                            R17 32
      101 LOADN                            R18 0
      102 LOADN                            R19 32
      103 CALL                             R15 4 1
      104 SETTABLEKS                       R15 R14 K51 ["Size"]
      106 GETUPVAL                         R15 1
      107 GETTABLEKS                       R15 R15 K52 ["Event"]
      109 GETTABLEKS                       R15 R15 K53 ["Activated"]
      111 GETTABLEKS                       R16 R0 K54 ["onBackButtonActivated"]
      113 SETTABLE                         R16 R14 R15
      114 CALL                             R12 2 1
      115 SETTABLEKS                       R12 R11 K38 ["BackButton"]
      117 GETUPVAL                         R12 1
      118 GETTABLEKS                       R12 R12 K13 ["createElement"]
      120 LOADK                            R13 K55 ["Frame"]
      121 DUPTABLE                         R14 K57 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["LayoutOrder"] = 1, ["Size"]}]
      122 GETTABLEKS                       R15 R4 K58 ["BorderColor"]
      124 SETTABLEKS                       R15 R14 K14 ["BackgroundColor3"]
      126 GETIMPORT                        R15 K50 [UDim2.new]
      128 LOADN                            R16 0
      129 LOADN                            R17 1
      130 LOADN                            R18 0
      131 GETUPVAL                         R19 0
      132 GETTABLEKS                       R19 R19 K59 ["DETAILS_THUMBNAIL_SIZE"]
      134 CALL                             R15 4 1
      135 SETTABLEKS                       R15 R14 K51 ["Size"]
      137 CALL                             R12 2 1
      138 SETTABLEKS                       R12 R11 K39 ["Border"]
      140 GETUPVAL                         R12 1
      141 GETTABLEKS                       R12 R12 K13 ["createElement"]
      143 LOADK                            R13 K60 ["ImageLabel"]
      144 DUPTABLE                         R14 K62 [{["BackgroundTransparency"] = 1, ["Image"], ["LayoutOrder"] = 2, ["Size"]}]
      145 SETTABLEKS                       R6 R14 K46 ["Image"]
      147 GETIMPORT                        R15 K50 [UDim2.new]
      149 LOADN                            R16 0
      150 GETUPVAL                         R17 0
      151 GETTABLEKS                       R17 R17 K59 ["DETAILS_THUMBNAIL_SIZE"]
      153 LOADN                            R18 0
      154 GETUPVAL                         R19 0
      155 GETTABLEKS                       R19 R19 K59 ["DETAILS_THUMBNAIL_SIZE"]
      157 CALL                             R15 4 1
      158 SETTABLEKS                       R15 R14 K51 ["Size"]
      160 CALL                             R12 2 1
      161 SETTABLEKS                       R12 R11 K40 ["Thumbnail"]
      163 GETUPVAL                         R12 1
      164 GETTABLEKS                       R12 R12 K13 ["createElement"]
      166 LOADK                            R13 K63 ["TextLabel"]
      167 DUPTABLE                         R14 K72 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 3, ["Size"], ["Text"], ["TextColor3"], ["TextSize"] = 18, ["TextWrapped"] = True, ["TextXAlignment"]}]
      168 GETTABLEKS                       R15 R4 K73 ["FontBold"]
      170 SETTABLEKS                       R15 R14 K64 ["Font"]
      172 GETIMPORT                        R15 K50 [UDim2.new]
      174 LOADK                            R16 K74 [0.5]
      175 MINUS                            R17 R7
      176 LOADN                            R18 0
      177 LOADN                            R19 20
      178 CALL                             R15 4 1
      179 SETTABLEKS                       R15 R14 K51 ["Size"]
      181 SETTABLEKS                       R3 R14 K66 ["Text"]
      183 GETTABLEKS                       R15 R4 K47 ["TextColor"]
      185 SETTABLEKS                       R15 R14 K67 ["TextColor3"]
      187 GETIMPORT                        R15 K76 [Enum.TextXAlignment.Left]
      189 SETTABLEKS                       R15 R14 K71 ["TextXAlignment"]
      191 CALL                             R12 2 1
      192 SETTABLEKS                       R12 R11 K41 ["Name"]
      194 CALL                             R8 3 -1
      195 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["FitFrame"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R3 R3 K9 ["ContextServices"]
       34 GETTABLEKS                       R4 R3 K10 ["withContext"]
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K11 ["Src"]
       40 GETTABLEKS                       R6 R6 K12 ["Util"]
       42 GETTABLEKS                       R6 R6 K13 ["Constants"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K11 ["Src"]
       49 GETTABLEKS                       R7 R7 K9 ["ContextServices"]
       51 GETTABLEKS                       R7 R7 K14 ["Navigation"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R7 R2 K15 ["FitFrameVertical"]
       56 GETTABLEKS                       R8 R1 K16 ["Component"]
       58 LOADK                            R10 K17 ["DetailsTopBar"]
       59 NAMECALL                         R8 R8 K18 ["extend"]
       61 CALL                             R8 2 1
       62 DUPTABLE                         R9 K21 [{["name"] = ""}]
       63 SETTABLEKS                       R9 R8 K22 ["defaultProps"]
       65 DUPCLOSURE                       R9 K23 [PROTO_1]
       66 SETTABLEKS                       R9 R8 K24 ["init"]
       68 DUPCLOSURE                       R9 K25 [PROTO_2]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 SETTABLEKS                       R9 R8 K26 ["render"]
       74 MOVE                             R9 R4
       75 DUPTABLE                         R10 K29 [{"Navigation", "Stylizer", "API"}]
       76 SETTABLEKS                       R6 R10 K14 ["Navigation"]
       78 GETTABLEKS                       R11 R3 K27 ["Stylizer"]
       80 SETTABLEKS                       R11 R10 K27 ["Stylizer"]
       82 GETTABLEKS                       R11 R3 K28 ["API"]
       84 SETTABLEKS                       R11 R10 K28 ["API"]
       86 CALL                             R9 1 1
       87 MOVE                             R10 R8
       88 CALL                             R9 1 1
       89 MOVE                             R8 R9
       90 RETURN                           R8 1
