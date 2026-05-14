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
       23 GETTABLEKS                       R6 R5 K7 ["Images"]
       25 GETTABLEKS                       R6 R6 K8 ["AssetThumbnailUrl"]
       27 MOVE                             R7 R1
       28 CALL                             R6 1 1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K9 ["THUMBNAIL_SIZE"]
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K10 ["PLUGIN_HORIZONTAL_PADDING"]
       35 ADD                              R7 R8 R9
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K11 ["createElement"]
       39 GETUPVAL                         R9 2
       40 DUPTABLE                         R10 K19 [{"BackgroundColor3", "BorderSizePixel", "contentPadding", "FillDirection", "LayoutOrder", "VerticalAlignment", "width", "margin"}]
       41 GETTABLEKS                       R11 R4 K20 ["BackgroundColor"]
       43 SETTABLEKS                       R11 R10 K12 ["BackgroundColor3"]
       45 LOADN                            R11 0
       46 SETTABLEKS                       R11 R10 K13 ["BorderSizePixel"]
       48 GETIMPORT                        R11 K23 [UDim.new]
       50 LOADN                            R12 0
       51 LOADN                            R13 18
       52 CALL                             R11 2 1
       53 SETTABLEKS                       R11 R10 K14 ["contentPadding"]
       55 GETIMPORT                        R11 K26 [Enum.FillDirection.Horizontal]
       57 SETTABLEKS                       R11 R10 K15 ["FillDirection"]
       59 SETTABLEKS                       R2 R10 K2 ["LayoutOrder"]
       61 GETIMPORT                        R11 K28 [Enum.VerticalAlignment.Center]
       63 SETTABLEKS                       R11 R10 K16 ["VerticalAlignment"]
       65 GETIMPORT                        R11 K23 [UDim.new]
       67 LOADN                            R12 1
       68 LOADN                            R13 0
       69 CALL                             R11 2 1
       70 SETTABLEKS                       R11 R10 K17 ["width"]
       72 DUPTABLE                         R11 K33 [{"top", "bottom", "left", "right"}]
       73 LOADN                            R12 18
       74 SETTABLEKS                       R12 R11 K29 ["top"]
       76 LOADN                            R12 18
       77 SETTABLEKS                       R12 R11 K30 ["bottom"]
       79 LOADN                            R12 0
       80 SETTABLEKS                       R12 R11 K31 ["left"]
       82 LOADN                            R12 0
       83 SETTABLEKS                       R12 R11 K32 ["right"]
       85 SETTABLEKS                       R11 R10 K18 ["margin"]
       87 DUPTABLE                         R11 K38 [{"BackButton", "Border", "Thumbnail", "Name"}]
       88 GETUPVAL                         R12 1
       89 GETTABLEKS                       R12 R12 K11 ["createElement"]
       91 LOADK                            R13 K39 ["ImageButton"]
       92 NEWTABLE                         R14 8 0
       94 LOADN                            R15 1
       95 SETTABLEKS                       R15 R14 K40 ["BackgroundTransparency"]
       97 LOADN                            R15 0
       98 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
      100 LOADK                            R15 K41 ["rbxasset://textures/PluginManagement/back.png"]
      101 SETTABLEKS                       R15 R14 K42 ["Image"]
      103 GETTABLEKS                       R15 R4 K43 ["TextColor"]
      105 SETTABLEKS                       R15 R14 K44 ["ImageColor3"]
      107 GETIMPORT                        R15 K46 [UDim2.new]
      109 LOADN                            R16 0
      110 LOADN                            R17 32
      111 LOADN                            R18 0
      112 LOADN                            R19 32
      113 CALL                             R15 4 1
      114 SETTABLEKS                       R15 R14 K47 ["Size"]
      116 GETUPVAL                         R15 1
      117 GETTABLEKS                       R15 R15 K48 ["Event"]
      119 GETTABLEKS                       R15 R15 K49 ["Activated"]
      121 GETTABLEKS                       R16 R0 K50 ["onBackButtonActivated"]
      123 SETTABLE                         R16 R14 R15
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K34 ["BackButton"]
      127 GETUPVAL                         R12 1
      128 GETTABLEKS                       R12 R12 K11 ["createElement"]
      130 LOADK                            R13 K51 ["Frame"]
      131 DUPTABLE                         R14 K52 [{"BorderSizePixel", "BackgroundColor3", "LayoutOrder", "Size"}]
      132 LOADN                            R15 0
      133 SETTABLEKS                       R15 R14 K13 ["BorderSizePixel"]
      135 GETTABLEKS                       R15 R4 K53 ["BorderColor"]
      137 SETTABLEKS                       R15 R14 K12 ["BackgroundColor3"]
      139 LOADN                            R15 1
      140 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
      142 GETIMPORT                        R15 K46 [UDim2.new]
      144 LOADN                            R16 0
      145 LOADN                            R17 1
      146 LOADN                            R18 0
      147 GETUPVAL                         R19 0
      148 GETTABLEKS                       R19 R19 K54 ["DETAILS_THUMBNAIL_SIZE"]
      150 CALL                             R15 4 1
      151 SETTABLEKS                       R15 R14 K47 ["Size"]
      153 CALL                             R12 2 1
      154 SETTABLEKS                       R12 R11 K35 ["Border"]
      156 GETUPVAL                         R12 1
      157 GETTABLEKS                       R12 R12 K11 ["createElement"]
      159 LOADK                            R13 K55 ["ImageLabel"]
      160 DUPTABLE                         R14 K56 [{"BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
      161 LOADN                            R15 1
      162 SETTABLEKS                       R15 R14 K40 ["BackgroundTransparency"]
      164 SETTABLEKS                       R6 R14 K42 ["Image"]
      166 LOADN                            R15 2
      167 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
      169 GETIMPORT                        R15 K46 [UDim2.new]
      171 LOADN                            R16 0
      172 GETUPVAL                         R17 0
      173 GETTABLEKS                       R17 R17 K54 ["DETAILS_THUMBNAIL_SIZE"]
      175 LOADN                            R18 0
      176 GETUPVAL                         R19 0
      177 GETTABLEKS                       R19 R19 K54 ["DETAILS_THUMBNAIL_SIZE"]
      179 CALL                             R15 4 1
      180 SETTABLEKS                       R15 R14 K47 ["Size"]
      182 CALL                             R12 2 1
      183 SETTABLEKS                       R12 R11 K36 ["Thumbnail"]
      185 GETUPVAL                         R12 1
      186 GETTABLEKS                       R12 R12 K11 ["createElement"]
      188 LOADK                            R13 K57 ["TextLabel"]
      189 DUPTABLE                         R14 K64 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment"}]
      190 LOADN                            R15 1
      191 SETTABLEKS                       R15 R14 K40 ["BackgroundTransparency"]
      193 GETTABLEKS                       R15 R4 K65 ["FontBold"]
      195 SETTABLEKS                       R15 R14 K58 ["Font"]
      197 LOADN                            R15 3
      198 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
      200 GETIMPORT                        R15 K46 [UDim2.new]
      202 LOADK                            R16 K66 [0.5]
      203 MINUS                            R17 R7
      204 LOADN                            R18 0
      205 LOADN                            R19 20
      206 CALL                             R15 4 1
      207 SETTABLEKS                       R15 R14 K47 ["Size"]
      209 SETTABLEKS                       R3 R14 K59 ["Text"]
      211 GETTABLEKS                       R15 R4 K43 ["TextColor"]
      213 SETTABLEKS                       R15 R14 K60 ["TextColor3"]
      215 LOADN                            R15 18
      216 SETTABLEKS                       R15 R14 K61 ["TextSize"]
      218 LOADB                            R15 1
      219 SETTABLEKS                       R15 R14 K62 ["TextWrapped"]
      221 GETIMPORT                        R15 K68 [Enum.TextXAlignment.Left]
      223 SETTABLEKS                       R15 R14 K63 ["TextXAlignment"]
      225 CALL                             R12 2 1
      226 SETTABLEKS                       R12 R11 K37 ["Name"]
      228 CALL                             R8 3 -1
      229 RETURN                           R8 -1

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
       51 GETTABLEKS                       R7 R7 K14 ["PluginAPI2"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K9 ["ContextServices"]
       60 GETTABLEKS                       R8 R8 K15 ["Navigation"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R8 R2 K16 ["FitFrameVertical"]
       65 GETTABLEKS                       R9 R1 K17 ["Component"]
       67 LOADK                            R11 K18 ["DetailsTopBar"]
       68 NAMECALL                         R9 R9 K19 ["extend"]
       70 CALL                             R9 2 1
       71 DUPTABLE                         R10 K21 [{"name"}]
       72 LOADK                            R11 K22 [""]
       73 SETTABLEKS                       R11 R10 K20 ["name"]
       75 SETTABLEKS                       R10 R9 K23 ["defaultProps"]
       77 DUPCLOSURE                       R10 K24 [PROTO_1]
       78 SETTABLEKS                       R10 R9 K25 ["init"]
       80 DUPCLOSURE                       R10 K26 [PROTO_2]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R8
       84 SETTABLEKS                       R10 R9 K27 ["render"]
       86 MOVE                             R10 R4
       87 DUPTABLE                         R11 K30 [{"Navigation", "Stylizer", "API"}]
       88 SETTABLEKS                       R7 R11 K15 ["Navigation"]
       90 GETTABLEKS                       R12 R3 K28 ["Stylizer"]
       92 SETTABLEKS                       R12 R11 K28 ["Stylizer"]
       94 SETTABLEKS                       R6 R11 K29 ["API"]
       96 CALL                             R10 1 1
       97 MOVE                             R11 R9
       98 CALL                             R10 1 1
       99 MOVE                             R9 R10
      100 RETURN                           R9 1
