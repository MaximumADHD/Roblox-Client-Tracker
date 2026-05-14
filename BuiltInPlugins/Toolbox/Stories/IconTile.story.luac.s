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
        0 DUPTABLE                         R1 K1 [{"maxTileHeight"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["maxTileHeight"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["setMaxTileHeight"]
       10 RETURN                           R0 0

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
       70 DUPTABLE                         R6 K28 [{"ColumnCount", "MinWidth"}]
       71 LOADN                            R7 1
       72 SETTABLEKS                       R7 R6 K26 ["ColumnCount"]
       74 LOADN                            R7 0
       75 SETTABLEKS                       R7 R6 K27 ["MinWidth"]
       77 DUPTABLE                         R7 K28 [{"ColumnCount", "MinWidth"}]
       78 LOADN                            R8 2
       79 SETTABLEKS                       R8 R7 K26 ["ColumnCount"]
       81 GETTABLEKS                       R9 R0 K0 ["props"]
       83 GETTABLEKS                       R9 R9 K30 ["tileWidth"]
       85 MULK                             R8 R9 K29 [3]
       86 SETTABLEKS                       R8 R7 K27 ["MinWidth"]
       88 DUPTABLE                         R8 K28 [{"ColumnCount", "MinWidth"}]
       89 LOADN                            R9 3
       90 SETTABLEKS                       R9 R8 K26 ["ColumnCount"]
       92 GETTABLEKS                       R10 R0 K0 ["props"]
       94 GETTABLEKS                       R10 R10 K30 ["tileWidth"]
       96 MULK                             R9 R10 K31 [8]
       97 SETTABLEKS                       R9 R8 K27 ["MinWidth"]
       99 SETLIST                          R5 R6 3 [1]
      101 SETTABLEKS                       R5 R4 K19 ["CutOffs"]
      103 GETIMPORT                        R5 K33 [UDim.new]
      105 LOADN                            R6 0
      106 GETTABLEKS                       R7 R0 K34 ["state"]
      108 GETTABLEKS                       R7 R7 K35 ["maxTileHeight"]
      110 CALL                             R5 2 1
      111 SETTABLEKS                       R5 R4 K20 ["ItemHeight"]
      113 GETIMPORT                        R5 K38 [UDim2.fromScale]
      115 LOADN                            R6 1
      116 LOADN                            R7 0
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R4 K21 ["Size"]
      120 MOVE                             R5 R1
      121 CALL                             R2 3 -1
      122 RETURN                           R2 -1

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
       11 DUPTABLE                         R6 K9 [{"BackgroundColor", "Image", "Key", "OnClick", "Size", "Title"}]
       12 GETIMPORT                        R7 K12 [Color3.fromRGB]
       14 LOADN                            R8 50
       15 LOADN                            R9 168
       16 LOADN                            R10 82
       17 CALL                             R7 3 1
       18 SETTABLEKS                       R7 R6 K3 ["BackgroundColor"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K13 ["constructAssetThumbnailUrl"]
       23 GETUPVAL                         R9 4
       24 GETTABLEN                        R8 R9 1
       25 GETUPVAL                         R9 5
       26 GETUPVAL                         R10 5
       27 CALL                             R7 3 1
       28 SETTABLEKS                       R7 R6 K4 ["Image"]
       30 LOADK                            R7 K14 ["Click"]
       31 SETTABLEKS                       R7 R6 K5 ["Key"]
       33 DUPCLOSURE                       R7 K15 [PROTO_5]
       34 SETTABLEKS                       R7 R6 K6 ["OnClick"]
       36 GETIMPORT                        R7 K18 [UDim2.new]
       38 LOADN                            R8 0
       39 LOADN                            R9 75
       40 LOADN                            R10 0
       41 LOADN                            R11 90
       42 CALL                             R7 4 1
       43 SETTABLEKS                       R7 R6 K7 ["Size"]
       45 LOADK                            R7 K19 ["Category"]
       46 SETTABLEKS                       R7 R6 K8 ["Title"]
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R3 K1 ["IconTile"]
       51 CALL                             R0 3 -1
       52 RETURN                           R0 -1

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
       11 DUPTABLE                         R6 K10 [{"BackgroundColor", "Image", "Key", "OnClick", "Size", "AutomaticSize", "Title"}]
       12 GETIMPORT                        R7 K13 [Color3.fromRGB]
       14 LOADN                            R8 50
       15 LOADN                            R9 168
       16 LOADN                            R10 82
       17 CALL                             R7 3 1
       18 SETTABLEKS                       R7 R6 K3 ["BackgroundColor"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K14 ["constructAssetThumbnailUrl"]
       23 GETUPVAL                         R9 4
       24 GETTABLEN                        R8 R9 1
       25 GETUPVAL                         R9 5
       26 GETUPVAL                         R10 5
       27 CALL                             R7 3 1
       28 SETTABLEKS                       R7 R6 K4 ["Image"]
       30 LOADK                            R7 K15 ["Click"]
       31 SETTABLEKS                       R7 R6 K5 ["Key"]
       33 DUPCLOSURE                       R7 K16 [PROTO_8]
       34 SETTABLEKS                       R7 R6 K6 ["OnClick"]
       36 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       38 LOADN                            R8 120
       39 LOADN                            R9 0
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K7 ["Size"]
       43 GETIMPORT                        R7 K22 [Enum.AutomaticSize.Y]
       45 SETTABLEKS                       R7 R6 K8 ["AutomaticSize"]
       47 LOADK                            R7 K23 ["OnlyTwentyCharacters"]
       48 SETTABLEKS                       R7 R6 K9 ["Title"]
       50 CALL                             R4 2 1
       51 SETTABLEKS                       R4 R3 K1 ["IconTile"]
       53 CALL                             R0 3 -1
       54 RETURN                           R0 -1

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
      136 DUPTABLE                         R13 K48 [{"numTiles", "tileWidth"}]
      137 LOADN                            R14 10
      138 SETTABLEKS                       R14 R13 K46 ["numTiles"]
      140 LOADN                            R14 120
      141 SETTABLEKS                       R14 R13 K47 ["tileWidth"]
      143 SETTABLEKS                       R13 R12 K49 ["defaultProps"]
      145 DUPCLOSURE                       R13 K50 [PROTO_3]
      146 SETTABLEKS                       R13 R12 K51 ["init"]
      148 DUPCLOSURE                       R13 K52 [PROTO_4]
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R8
      156 SETTABLEKS                       R13 R12 K53 ["render"]
      158 DUPTABLE                         R13 K56 [{"summary", "stories"}]
      159 LOADK                            R14 K57 ["A generic tile with an icon and flat color background."]
      160 SETTABLEKS                       R14 R13 K54 ["summary"]
      162 NEWTABLE                         R14 0 3
      164 DUPTABLE                         R15 K60 [{"name", "summary", "story"}]
      165 LOADK                            R16 K61 ["Single"]
      166 SETTABLEKS                       R16 R15 K58 ["name"]
      168 LOADK                            R16 K62 ["Sends a key on click and has a pointer cursor."]
      169 SETTABLEKS                       R16 R15 K54 ["summary"]
      171 DUPCLOSURE                       R16 K63 [PROTO_6]
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R7
      178 SETTABLEKS                       R16 R15 K59 ["story"]
      180 DUPTABLE                         R16 K60 [{"name", "summary", "story"}]
      181 LOADK                            R17 K64 ["Grid"]
      182 SETTABLEKS                       R17 R16 K58 ["name"]
      184 LOADK                            R17 K65 ["A grid of tiles to show off use in responsive layouts"]
      185 SETTABLEKS                       R17 R16 K54 ["summary"]
      187 DUPCLOSURE                       R17 K66 [PROTO_7]
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R12
      191 SETTABLEKS                       R17 R16 K59 ["story"]
      193 DUPTABLE                         R17 K60 [{"name", "summary", "story"}]
      194 LOADK                            R18 K67 ["Text truncation"]
      195 SETTABLEKS                       R18 R17 K58 ["name"]
      197 LOADK                            R18 K68 ["The title text of an IconTile will truncate on smaller sized tiles"]
      198 SETTABLEKS                       R18 R17 K54 ["summary"]
      200 DUPCLOSURE                       R18 K69 [PROTO_9]
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R7
      207 SETTABLEKS                       R18 R17 K59 ["story"]
      209 SETLIST                          R14 R15 3 [1]
      211 SETTABLEKS                       R14 R13 K55 ["stories"]
      213 RETURN                           R13 1
