PROTO_0:
        0 GETIMPORT                        R2 K2 [Random.new]
        2 CALL                             R2 0 1
        3 LOADN                            R4 1
        4 LENGTH                           R5 R0
        5 NAMECALL                         R2 R2 K3 ["NextInteger"]
        7 CALL                             R2 3 1
        8 GETTABLE                         R1 R0 R2
        9 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"maxTileHeight"}]
        1 GETTABLEKS                       R3 R0 K0 ["maxTileHeight"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K2 ["Y"]
        6 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        8 GETIMPORT                        R2 K5 [math.max]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K0 ["maxTileHeight"]
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{[1] = 0}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["setMaxTileHeight"]
        7 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 GETTABLEKS                       R2 R0 K0 ["props"]
        5 GETTABLEKS                       R2 R2 K1 ["numTiles"]
        7 LOADN                            R3 1
        8 FORNPREP                         R2
        9 LOADK                            R6 K2 ["Tile%*"]
       10 MOVE                             R8 R4
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K4 ["createElement"]
       18 GETUPVAL                         R7 1
       19 DUPTABLE                         R8 K10 [{"Title", "BackgroundColor", "Image", "LayoutOrder", "OnAbsoluteSizeChanged"}]
       20 LOADK                            R10 K11 ["Category %*"]
       21 MOVE                             R12 R4
       22 NAMECALL                         R10 R10 K3 ["format"]
       24 CALL                             R10 2 1
       25 MOVE                             R9 R10
       26 SETTABLEKS                       R9 R8 K5 ["Title"]
       28 GETUPVAL                         R10 2
       29 GETTABLE                         R9 R10 R4
       30 SETTABLEKS                       R9 R8 K6 ["BackgroundColor"]
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R9 R9 K12 ["constructAssetThumbnailUrl"]
       35 GETUPVAL                         R11 4
       36 GETIMPORT                        R12 K15 [Random.new]
       38 CALL                             R12 0 1
       39 LOADN                            R14 1
       40 LENGTH                           R15 R11
       41 NAMECALL                         R12 R12 K16 ["NextInteger"]
       43 CALL                             R12 3 1
       44 GETTABLE                         R10 R11 R12
       45 GETUPVAL                         R11 5
       46 GETUPVAL                         R12 5
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K7 ["Image"]
       50 SETTABLEKS                       R4 R8 K8 ["LayoutOrder"]
       52 GETTABLEKS                       R9 R0 K17 ["setMaxTileHeight"]
       54 SETTABLEKS                       R9 R8 K9 ["OnAbsoluteSizeChanged"]
       56 CALL                             R6 2 1
       57 SETTABLE                         R6 R1 R5
       58 FORNLOOP                         R2
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R2 R2 K4 ["createElement"]
       62 GETUPVAL                         R3 6
       63 DUPTABLE                         R4 K22 [{"AutomaticSize", "CutOffs", "ItemHeight", "Size"}]
       64 GETIMPORT                        R5 K25 [Enum.AutomaticSize.Y]
       66 SETTABLEKS                       R5 R4 K18 ["AutomaticSize"]
       68 NEWTABLE                         R5 0 3
       70 DUPTABLE                         R6 K30 [{["ColumnCount"] = 1, ["MinWidth"] = 0}]
       71 DUPTABLE                         R7 K32 [{["ColumnCount"] = 2, ["MinWidth"]}]
       72 GETTABLEKS                       R9 R0 K0 ["props"]
       74 GETTABLEKS                       R9 R9 K34 ["tileWidth"]
       76 MULK                             R8 R9 K33 [3]
       77 SETTABLEKS                       R8 R7 K28 ["MinWidth"]
       79 DUPTABLE                         R8 K35 [{["ColumnCount"] = 3, ["MinWidth"]}]
       80 GETTABLEKS                       R10 R0 K0 ["props"]
       82 GETTABLEKS                       R10 R10 K34 ["tileWidth"]
       84 MULK                             R9 R10 K36 [8]
       85 SETTABLEKS                       R9 R8 K28 ["MinWidth"]
       87 SETLIST                          R5 R6 3 [1]
       89 SETTABLEKS                       R5 R4 K19 ["CutOffs"]
       91 GETIMPORT                        R5 K38 [UDim.new]
       93 LOADN                            R6 0
       94 GETTABLEKS                       R7 R0 K39 ["state"]
       96 GETTABLEKS                       R7 R7 K40 ["maxTileHeight"]
       98 CALL                             R5 2 1
       99 SETTABLEKS                       R5 R4 K20 ["ItemHeight"]
      101 GETIMPORT                        R5 K43 [UDim2.fromScale]
      103 LOADN                            R6 1
      104 LOADN                            R7 0
      105 CALL                             R5 2 1
      106 SETTABLEKS                       R5 R4 K21 ["Size"]
      108 MOVE                             R5 R1
      109 CALL                             R2 3 -1
      110 RETURN                           R2 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [print]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"IconTile"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K11 [{["BackgroundColor"], ["Image"], ["Key"] = "Click", ["OnClick"], ["Size"], ["Title"] = "Category"}]
       12 GETIMPORT                        R7 K14 [Color3.fromRGB]
       14 LOADN                            R8 50
       15 LOADN                            R9 168
       16 LOADN                            R10 82
       17 CALL                             R7 3 1
       18 SETTABLEKS                       R7 R6 K3 ["BackgroundColor"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K15 ["constructAssetThumbnailUrl"]
       23 GETUPVAL                         R9 4
       24 GETTABLEN                        R8 R9 1
       25 GETUPVAL                         R9 5
       26 GETUPVAL                         R10 5
       27 CALL                             R7 3 1
       28 SETTABLEKS                       R7 R6 K4 ["Image"]
       30 DUPCLOSURE                       R7 K16 [PROTO_5]
       31 SETTABLEKS                       R7 R6 K7 ["OnClick"]
       33 GETIMPORT                        R7 K19 [UDim2.new]
       35 LOADN                            R8 0
       36 LOADN                            R9 75
       37 LOADN                            R10 0
       38 LOADN                            R11 90
       39 CALL                             R7 4 1
       40 SETTABLEKS                       R7 R6 K8 ["Size"]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K1 ["IconTile"]
       45 CALL                             R0 3 -1
       46 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"GridStory"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["GridStory"]
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R1 K1 [print]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"IconTile"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K12 [{["BackgroundColor"], ["Image"], ["Key"] = "Click", ["OnClick"], ["Size"], ["AutomaticSize"], ["Title"] = "OnlyTwentyCharacters"}]
       12 GETIMPORT                        R7 K15 [Color3.fromRGB]
       14 LOADN                            R8 50
       15 LOADN                            R9 168
       16 LOADN                            R10 82
       17 CALL                             R7 3 1
       18 SETTABLEKS                       R7 R6 K3 ["BackgroundColor"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K16 ["constructAssetThumbnailUrl"]
       23 GETUPVAL                         R9 4
       24 GETTABLEN                        R8 R9 1
       25 GETUPVAL                         R9 5
       26 GETUPVAL                         R10 5
       27 CALL                             R7 3 1
       28 SETTABLEKS                       R7 R6 K4 ["Image"]
       30 DUPCLOSURE                       R7 K17 [PROTO_8]
       31 SETTABLEKS                       R7 R6 K7 ["OnClick"]
       33 GETIMPORT                        R7 K20 [UDim2.fromOffset]
       35 LOADN                            R8 120
       36 LOADN                            R9 0
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K8 ["Size"]
       40 GETIMPORT                        R7 K23 [Enum.AutomaticSize.Y]
       42 SETTABLEKS                       R7 R6 K9 ["AutomaticSize"]
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K1 ["IconTile"]
       47 CALL                             R0 3 -1
       48 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["MockWrapper"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Urls"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Util"]
       45 GETTABLEKS                       R6 R6 K13 ["Constants"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Components"]
       54 GETTABLEKS                       R7 R7 K15 ["Categorization"]
       56 GETTABLEKS                       R7 R7 K16 ["IconTile"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R5 K17 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       61 GETTABLEKS                       R8 R1 K18 ["UI"]
       63 GETTABLEKS                       R8 R8 K19 ["ResponsiveGrid"]
       65 NEWTABLE                         R9 0 8
       67 LOADK                            R10 K20 [5657301130]
       68 LOADK                            R11 K21 [13986559755]
       69 LOADK                            R12 K22 [7062372311]
       70 LOADK                            R13 K23 [494291269]
       71 LOADK                            R14 K24 [9346039031]
       72 LOADK                            R15 K25 [14318578453]
       73 LOADK                            R16 K26 [8530191225]
       74 LOADK                            R17 K27 [13902359897]
       75 SETLIST                          R9 R10 8 [1]
       77 NEWTABLE                         R10 0 12
       79 GETIMPORT                        R11 K30 [Color3.fromHex]
       81 LOADK                            R12 K31 ["#005D92"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K30 [Color3.fromHex]
       85 LOADK                            R13 K32 ["#A2120B"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K30 [Color3.fromHex]
       89 LOADK                            R14 K33 ["#008347"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K30 [Color3.fromHex]
       93 LOADK                            R15 K34 ["#AD8007"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K30 [Color3.fromHex]
       97 LOADK                            R16 K35 ["#B61CA2"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K30 [Color3.fromHex]
      101 LOADK                            R17 K36 ["#008BDB"]
      102 CALL                             R16 1 1
      103 GETIMPORT                        R17 K30 [Color3.fromHex]
      105 LOADK                            R18 K37 ["#C2510F"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K30 [Color3.fromHex]
      109 LOADK                            R19 K38 ["#6D34E3"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K30 [Color3.fromHex]
      113 LOADK                            R20 K39 ["#7A0D08"]
      114 CALL                             R19 1 1
      115 GETIMPORT                        R20 K30 [Color3.fromHex]
      117 LOADK                            R21 K34 ["#AD8007"]
      118 CALL                             R20 1 1
      119 GETIMPORT                        R21 K30 [Color3.fromHex]
      121 LOADK                            R22 K40 ["#00456D"]
      122 CALL                             R21 1 1
      123 GETIMPORT                        R22 K30 [Color3.fromHex]
      125 LOADK                            R23 K41 ["#006939"]
      126 CALL                             R22 1 -1
      127 SETLIST                          R10 R11 -1 [1]
      129 DUPCLOSURE                       R11 K42 [PROTO_0]
      130 GETTABLEKS                       R12 R2 K43 ["PureComponent"]
      132 LOADK                            R14 K44 ["GridStory"]
      133 NAMECALL                         R12 R12 K45 ["extend"]
      135 CALL                             R12 2 1
      136 DUPTABLE                         R13 K50 [{["numTiles"] = 10, ["tileWidth"] = 120}]
      137 SETTABLEKS                       R13 R12 K51 ["defaultProps"]
      139 DUPCLOSURE                       R13 K52 [PROTO_3]
      140 SETTABLEKS                       R13 R12 K53 ["init"]
      142 DUPCLOSURE                       R13 K54 [PROTO_4]
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R8
      150 SETTABLEKS                       R13 R12 K55 ["render"]
      152 DUPTABLE                         R13 K59 [{["summary"] = "A generic tile with an icon and flat color background.", ["stories"]}]
      153 NEWTABLE                         R14 0 3
      155 DUPTABLE                         R15 K64 [{["name"] = "Single", ["summary"] = "Sends a key on click and has a pointer cursor.", ["story"]}]
      156 DUPCLOSURE                       R16 K65 [PROTO_6]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R7
      163 SETTABLEKS                       R16 R15 K63 ["story"]
      165 DUPTABLE                         R16 K68 [{["name"] = "Grid", ["summary"] = "A grid of tiles to show off use in responsive layouts", ["story"]}]
      166 DUPCLOSURE                       R17 K69 [PROTO_7]
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R12
      170 SETTABLEKS                       R17 R16 K63 ["story"]
      172 DUPTABLE                         R17 K72 [{["name"] = "Text truncation", ["summary"] = "The title text of an IconTile will truncate on smaller sized tiles", ["story"]}]
      173 DUPCLOSURE                       R18 K73 [PROTO_9]
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R7
      180 SETTABLEKS                       R18 R17 K63 ["story"]
      182 SETLIST                          R14 R15 3 [1]
      184 SETTABLEKS                       R14 R13 K58 ["stories"]
      186 RETURN                           R13 1
