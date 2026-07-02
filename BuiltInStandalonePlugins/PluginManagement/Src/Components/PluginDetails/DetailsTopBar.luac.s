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
       23 GETUPVAL                         R7 0
       24 CALL                             R7 0 1
       25 JUMPIFNOT                        R7 ; [+12]
       26 GETTABLEKS                       R6 R5 K7 ["AssetGame"]
       28 GETTABLEKS                       R6 R6 K8 ["AssetThumbnail"]
       30 GETTABLEKS                       R6 R6 K9 ["image"]
       32 MOVE                             R7 R1
       33 CALL                             R6 1 1
       34 NAMECALL                         R6 R6 K10 ["getUrl"]
       36 CALL                             R6 1 1
       37 JUMP                             ; [+6]
       38 GETTABLEKS                       R6 R5 K11 ["Images"]
       40 GETTABLEKS                       R6 R6 K12 ["AssetThumbnailUrl"]
       42 MOVE                             R7 R1
       43 CALL                             R6 1 1
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K13 ["THUMBNAIL_SIZE"]
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K14 ["PLUGIN_HORIZONTAL_PADDING"]
       50 ADD                              R7 R8 R9
       51 GETUPVAL                         R8 2
       52 GETTABLEKS                       R8 R8 K15 ["createElement"]
       54 GETUPVAL                         R9 3
       55 DUPTABLE                         R10 K24 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["contentPadding"], ["FillDirection"], ["LayoutOrder"], ["VerticalAlignment"], ["width"], ["margin"]}]
       56 GETTABLEKS                       R11 R4 K25 ["BackgroundColor"]
       58 SETTABLEKS                       R11 R10 K16 ["BackgroundColor3"]
       60 GETIMPORT                        R11 K28 [UDim.new]
       62 LOADN                            R12 0
       63 LOADN                            R13 18
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K19 ["contentPadding"]
       67 GETIMPORT                        R11 K31 [Enum.FillDirection.Horizontal]
       69 SETTABLEKS                       R11 R10 K20 ["FillDirection"]
       71 SETTABLEKS                       R2 R10 K2 ["LayoutOrder"]
       73 GETIMPORT                        R11 K33 [Enum.VerticalAlignment.Center]
       75 SETTABLEKS                       R11 R10 K21 ["VerticalAlignment"]
       77 GETIMPORT                        R11 K28 [UDim.new]
       79 LOADN                            R12 1
       80 LOADN                            R13 0
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K22 ["width"]
       84 DUPTABLE                         R11 K39 [{["top"] = 18, ["bottom"] = 18, ["left"] = 0, ["right"] = 0}]
       85 SETTABLEKS                       R11 R10 K23 ["margin"]
       87 DUPTABLE                         R11 K44 [{"BackButton", "Border", "Thumbnail", "Name"}]
       88 GETUPVAL                         R12 2
       89 GETTABLEKS                       R12 R12 K15 ["createElement"]
       91 LOADK                            R13 K45 ["ImageButton"]
       92 NEWTABLE                         R14 8 0
       94 LOADN                            R15 1
       95 SETTABLEKS                       R15 R14 K46 ["BackgroundTransparency"]
       97 LOADN                            R15 0
       98 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
      100 LOADK                            R15 K47 ["rbxasset://textures/PluginManagement/back.png"]
      101 SETTABLEKS                       R15 R14 K48 ["Image"]
      103 GETTABLEKS                       R15 R4 K49 ["TextColor"]
      105 SETTABLEKS                       R15 R14 K50 ["ImageColor3"]
      107 GETIMPORT                        R15 K52 [UDim2.new]
      109 LOADN                            R16 0
      110 LOADN                            R17 32
      111 LOADN                            R18 0
      112 LOADN                            R19 32
      113 CALL                             R15 4 1
      114 SETTABLEKS                       R15 R14 K53 ["Size"]
      116 GETUPVAL                         R15 2
      117 GETTABLEKS                       R15 R15 K54 ["Event"]
      119 GETTABLEKS                       R15 R15 K55 ["Activated"]
      121 GETTABLEKS                       R16 R0 K56 ["onBackButtonActivated"]
      123 SETTABLE                         R16 R14 R15
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K40 ["BackButton"]
      127 GETUPVAL                         R12 2
      128 GETTABLEKS                       R12 R12 K15 ["createElement"]
      130 LOADK                            R13 K57 ["Frame"]
      131 DUPTABLE                         R14 K59 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["LayoutOrder"] = 1, ["Size"]}]
      132 GETTABLEKS                       R15 R4 K60 ["BorderColor"]
      134 SETTABLEKS                       R15 R14 K16 ["BackgroundColor3"]
      136 GETIMPORT                        R15 K52 [UDim2.new]
      138 LOADN                            R16 0
      139 LOADN                            R17 1
      140 LOADN                            R18 0
      141 GETUPVAL                         R19 1
      142 GETTABLEKS                       R19 R19 K61 ["DETAILS_THUMBNAIL_SIZE"]
      144 CALL                             R15 4 1
      145 SETTABLEKS                       R15 R14 K53 ["Size"]
      147 CALL                             R12 2 1
      148 SETTABLEKS                       R12 R11 K41 ["Border"]
      150 GETUPVAL                         R12 2
      151 GETTABLEKS                       R12 R12 K15 ["createElement"]
      153 LOADK                            R13 K62 ["ImageLabel"]
      154 DUPTABLE                         R14 K64 [{["BackgroundTransparency"] = 1, ["Image"], ["LayoutOrder"] = 2, ["Size"]}]
      155 SETTABLEKS                       R6 R14 K48 ["Image"]
      157 GETIMPORT                        R15 K52 [UDim2.new]
      159 LOADN                            R16 0
      160 GETUPVAL                         R17 1
      161 GETTABLEKS                       R17 R17 K61 ["DETAILS_THUMBNAIL_SIZE"]
      163 LOADN                            R18 0
      164 GETUPVAL                         R19 1
      165 GETTABLEKS                       R19 R19 K61 ["DETAILS_THUMBNAIL_SIZE"]
      167 CALL                             R15 4 1
      168 SETTABLEKS                       R15 R14 K53 ["Size"]
      170 CALL                             R12 2 1
      171 SETTABLEKS                       R12 R11 K42 ["Thumbnail"]
      173 GETUPVAL                         R12 2
      174 GETTABLEKS                       R12 R12 K15 ["createElement"]
      176 LOADK                            R13 K65 ["TextLabel"]
      177 DUPTABLE                         R14 K74 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 3, ["Size"], ["Text"], ["TextColor3"], ["TextSize"] = 18, ["TextWrapped"] = True, ["TextXAlignment"]}]
      178 GETTABLEKS                       R15 R4 K75 ["FontBold"]
      180 SETTABLEKS                       R15 R14 K66 ["Font"]
      182 GETIMPORT                        R15 K52 [UDim2.new]
      184 LOADK                            R16 K76 [0.5]
      185 MINUS                            R17 R7
      186 LOADN                            R18 0
      187 LOADN                            R19 20
      188 CALL                             R15 4 1
      189 SETTABLEKS                       R15 R14 K53 ["Size"]
      191 SETTABLEKS                       R3 R14 K68 ["Text"]
      193 GETTABLEKS                       R15 R4 K49 ["TextColor"]
      195 SETTABLEKS                       R15 R14 K69 ["TextColor3"]
      197 GETIMPORT                        R15 K78 [Enum.TextXAlignment.Left]
      199 SETTABLEKS                       R15 R14 K73 ["TextXAlignment"]
      201 CALL                             R12 2 1
      202 SETTABLEKS                       R12 R11 K43 ["Name"]
      204 CALL                             R8 3 -1
      205 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Flags"]
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioPluginManagementUpgradeHttp"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K8 ["Packages"]
       24 GETTABLEKS                       R3 R3 K9 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K8 ["Packages"]
       31 GETTABLEKS                       R4 R4 K10 ["FitFrame"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Packages"]
       38 GETTABLEKS                       R5 R5 K11 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       43 GETTABLEKS                       R5 R4 K13 ["withContext"]
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K5 ["Src"]
       49 GETTABLEKS                       R7 R7 K14 ["Util"]
       51 GETTABLEKS                       R7 R7 K15 ["Constants"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K5 ["Src"]
       58 GETTABLEKS                       R8 R8 K12 ["ContextServices"]
       60 GETTABLEKS                       R8 R8 K16 ["PluginAPI2"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K5 ["Src"]
       67 GETTABLEKS                       R9 R9 K12 ["ContextServices"]
       69 GETTABLEKS                       R9 R9 K17 ["Navigation"]
       71 CALL                             R8 1 1
       72 GETTABLEKS                       R9 R3 K18 ["FitFrameVertical"]
       74 GETTABLEKS                       R10 R2 K19 ["Component"]
       76 LOADK                            R12 K20 ["DetailsTopBar"]
       77 NAMECALL                         R10 R10 K21 ["extend"]
       79 CALL                             R10 2 1
       80 DUPTABLE                         R11 K24 [{["name"] = ""}]
       81 SETTABLEKS                       R11 R10 K25 ["defaultProps"]
       83 DUPCLOSURE                       R11 K26 [PROTO_1]
       84 SETTABLEKS                       R11 R10 K27 ["init"]
       86 DUPCLOSURE                       R11 K28 [PROTO_2]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R9
       91 SETTABLEKS                       R11 R10 K29 ["render"]
       93 MOVE                             R11 R5
       94 DUPTABLE                         R12 K32 [{"Navigation", "Stylizer", "API"}]
       95 SETTABLEKS                       R8 R12 K17 ["Navigation"]
       97 GETTABLEKS                       R13 R4 K30 ["Stylizer"]
       99 SETTABLEKS                       R13 R12 K30 ["Stylizer"]
      101 MOVE                             R14 R1
      102 CALL                             R14 0 1
      103 JUMPIFNOT                        R14 ; [+3]
      104 GETTABLEKS                       R13 R4 K31 ["API"]
      106 JUMP                             ; [+1]
      107 MOVE                             R13 R7
      108 SETTABLEKS                       R13 R12 K31 ["API"]
      110 CALL                             R11 1 1
      111 MOVE                             R12 R10
      112 CALL                             R11 1 1
      113 MOVE                             R10 R11
      114 RETURN                           R10 1
