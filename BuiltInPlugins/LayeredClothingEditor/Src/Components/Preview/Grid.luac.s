PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SelectedAssets"]
        4 GETTABLEKS                       R3 R1 K2 ["SelectedTab"]
        6 GETTABLE                         R4 R2 R3
        7 JUMPIF                           R4 ; [+2]
        8 NEWTABLE                         R4 0 0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["List"]
       13 GETTABLEKS                       R5 R5 K4 ["toSet"]
       15 MOVE                             R6 R4
       16 CALL                             R5 1 -1
       17 RETURN                           R5 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["UserAddedAssets"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETTABLE                         R4 R3 R1
        6 JUMPIF                           R4 ; [+2]
        7 NEWTABLE                         R4 0 0
        9 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["UpdatePreviewAssetsSelected"]
        5 MOVE                             R3 R0
        6 NOT                              R4 R1
        7 CALL                             R2 2 0
        8 JUMPIF                           R1 ; [+49]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["props"]
       12 GETTABLEKS                       R2 R2 K2 ["SelectedTab"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["props"]
       17 GETTABLEKS                       R3 R3 K3 ["PrebuiltAssetsInfo"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["props"]
       22 GETTABLEKS                       R4 R4 K4 ["Analytics"]
       24 GETTABLE                         R6 R3 R0
       25 JUMPIFEQKNIL                     R6 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K5 ["FirstAction"]
       32 JUMPIF                           R6 ; [+16]
       33 GETUPVAL                         R6 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K6 ["ACTIONS"]
       37 GETTABLEKS                       R7 R7 K7 ["Preview"]
       39 SETTABLEKS                       R7 R6 K5 ["FirstAction"]
       41 LOADK                            R8 K5 ["FirstAction"]
       42 NAMECALL                         R6 R4 K8 ["getHandler"]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R7 R7 K5 ["FirstAction"]
       48 CALL                             R6 1 0
       49 LOADK                            R8 K9 ["PreviewAssetSelected"]
       50 NAMECALL                         R6 R4 K8 ["getHandler"]
       52 CALL                             R6 2 1
       53 MOVE                             R7 R5
       54 MOVE                             R8 R2
       55 MOVE                             R9 R0
       56 LOADB                            R10 1
       57 CALL                             R6 4 0
       58 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["gridRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R1 R0 K2 ["onThumbnailClick"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["UserAddedAssets"]
        4 JUMPIFNOT                        R4 ; [+2]
        5 GETTABLE                         R2 R4 R1
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 NEWTABLE                         R3 0 0
       11 GETIMPORT                        R4 K3 [ipairs]
       13 MOVE                             R5 R2
       14 CALL                             R4 1 3
       15 FORGPREP_INEXT                   R4
       16 GETTABLEKS                       R11 R8 K4 ["uniqueId"]
       18 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       20 MOVE                             R10 R3
       21 GETIMPORT                        R9 K7 [table.insert]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R4 2 [inext] ; [-9]
       26 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["SearchFilter"]
        4 GETTABLEKS                       R4 R2 K2 ["CategoryFilter"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R6 R2 K3 ["PrebuiltAssetsInfo"]
        9 CALL                             R5 1 1
       10 GETTABLEKS                       R7 R0 K0 ["props"]
       12 GETTABLEKS                       R8 R7 K4 ["UserAddedAssets"]
       14 JUMPIFNOT                        R8 ; [+2]
       15 GETTABLE                         R6 R8 R1
       16 JUMPIF                           R6 ; [+2]
       17 NEWTABLE                         R6 0 0
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K5 ["getTabInfo"]
       22 MOVE                             R8 R1
       23 CALL                             R7 1 1
       24 JUMPIFNOT                        R7 ; [+150]
       25 GETUPVAL                         R8 2
       26 MOVE                             R9 R0
       27 MOVE                             R10 R1
       28 CALL                             R8 2 1
       29 NEWTABLE                         R9 0 0
       31 NEWTABLE                         R10 0 0
       33 JUMPIFEQKS                       R4 K6 [""] ; [+8]
       35 GETUPVAL                         R11 3
       36 GETTABLEKS                       R11 R11 K7 ["CategoryPrefixes"]
       38 GETTABLEKS                       R11 R11 K8 ["Default"]
       40 JUMPIFNOTEQ                      R4 R11 ; [+71]
       42 GETTABLEKS                       R11 R7 K9 ["AssetIds"]
       44 JUMPIFNOT                        R11 ; [+32]
       45 GETIMPORT                        R11 K11 [pairs]
       47 GETTABLEKS                       R12 R7 K9 ["AssetIds"]
       49 CALL                             R11 1 3
       50 FORGPREP_NEXT                    R11
       51 GETTABLE                         R16 R5 R15
       52 JUMPIFNOT                        R16 ; [+22]
       53 LOADK                            R17 K12 ["Asset"]
       54 SETTABLEKS                       R17 R16 K13 ["ThumbnailType"]
       56 JUMPIFEQKS                       R3 K6 [""] ; [+11]
       58 GETIMPORT                        R17 K16 [string.find]
       60 GETTABLEKS                       R18 R16 K17 ["Name"]
       62 JUMPIF                           R18 ; [+2]
       63 GETTABLEKS                       R18 R16 K18 ["name"]
       65 MOVE                             R19 R3
       66 CALL                             R17 2 1
       67 JUMPIFNOT                        R17 ; [+7]
       68 FASTCALL2                        TABLE_INSERT R9 R15 ; [+5]
       70 MOVE                             R18 R9
       71 MOVE                             R19 R15
       72 GETIMPORT                        R17 K21 [table.insert]
       74 CALL                             R17 2 0
       75 FORGLOOP                         R11 2 ; [-25]
       77 GETTABLEKS                       R11 R7 K22 ["BundleIds"]
       79 JUMPIFNOT                        R11 ; [+32]
       80 GETIMPORT                        R11 K11 [pairs]
       82 GETTABLEKS                       R12 R7 K22 ["BundleIds"]
       84 CALL                             R11 1 3
       85 FORGPREP_NEXT                    R11
       86 GETTABLE                         R16 R5 R15
       87 JUMPIFNOT                        R16 ; [+22]
       88 LOADK                            R17 K23 ["BundleThumbnail"]
       89 SETTABLEKS                       R17 R16 K13 ["ThumbnailType"]
       91 JUMPIFEQKS                       R3 K6 [""] ; [+11]
       93 GETIMPORT                        R17 K16 [string.find]
       95 GETTABLEKS                       R18 R16 K17 ["Name"]
       97 JUMPIF                           R18 ; [+2]
       98 GETTABLEKS                       R18 R16 K18 ["name"]
      100 MOVE                             R19 R3
      101 CALL                             R17 2 1
      102 JUMPIFNOT                        R17 ; [+7]
      103 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
      105 MOVE                             R18 R10
      106 MOVE                             R19 R15
      107 GETIMPORT                        R17 K21 [table.insert]
      109 CALL                             R17 2 0
      110 FORGLOOP                         R11 2 ; [-25]
      112 NEWTABLE                         R11 0 0
      114 JUMPIFEQKS                       R4 K6 [""] ; [+8]
      116 GETUPVAL                         R12 3
      117 GETTABLEKS                       R12 R12 K7 ["CategoryPrefixes"]
      119 GETTABLEKS                       R12 R12 K24 ["Custom"]
      121 JUMPIFNOTEQ                      R4 R12 ; [+33]
      123 GETIMPORT                        R12 K26 [ipairs]
      125 MOVE                             R13 R6
      126 CALL                             R12 1 3
      127 FORGPREP_INEXT                   R12
      128 JUMPIFEQKS                       R3 K6 [""] ; [+10]
      130 GETIMPORT                        R17 K16 [string.find]
      132 GETTABLEKS                       R18 R16 K27 ["instance"]
      134 GETTABLEKS                       R18 R18 K17 ["Name"]
      136 MOVE                             R19 R3
      137 CALL                             R17 2 1
      138 JUMPIFNOT                        R17 ; [+14]
      139 GETTABLEKS                       R17 R16 K28 ["uniqueId"]
      141 DUPTABLE                         R18 K30 [{["Name"], ["ThumbnailType"] = "", ["Instance"]}]
      142 GETTABLEKS                       R19 R16 K27 ["instance"]
      144 GETTABLEKS                       R19 R19 K17 ["Name"]
      146 SETTABLEKS                       R19 R18 K17 ["Name"]
      148 GETTABLEKS                       R19 R16 K27 ["instance"]
      150 SETTABLEKS                       R19 R18 K29 ["Instance"]
      152 SETTABLE                         R18 R11 R17
      153 FORGLOOP                         R12 2 [inext] ; [-26]
      155 GETUPVAL                         R12 4
      156 GETTABLEKS                       R12 R12 K31 ["Dictionary"]
      158 GETTABLEKS                       R12 R12 K32 ["join"]
      160 MOVE                             R13 R5
      161 MOVE                             R14 R11
      162 CALL                             R12 2 1
      163 GETUPVAL                         R13 4
      164 GETTABLEKS                       R13 R13 K33 ["List"]
      166 GETTABLEKS                       R13 R13 K32 ["join"]
      168 MOVE                             R14 R8
      169 MOVE                             R15 R9
      170 MOVE                             R16 R10
      171 CALL                             R13 3 1
      172 MOVE                             R14 R13
      173 MOVE                             R15 R12
      174 RETURN                           R14 2
      175 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["layoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["Analytics"]
       10 GETTABLEKS                       R6 R1 K5 ["SelectedTab"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["new"]
       15 CALL                             R7 0 1
       16 NEWTABLE                         R8 0 0
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R9 R9 K7 ["getTabInfo"]
       21 MOVE                             R10 R6
       22 CALL                             R9 1 1
       23 JUMPIFNOT                        R9 ; [+53]
       24 GETUPVAL                         R10 2
       25 MOVE                             R11 R0
       26 MOVE                             R12 R6
       27 CALL                             R10 2 2
       28 GETUPVAL                         R12 3
       29 GETTABLEKS                       R12 R12 K8 ["Dictionary"]
       31 GETTABLEKS                       R12 R12 K9 ["join"]
       33 MOVE                             R13 R8
       34 GETUPVAL                         R14 4
       35 DUPTABLE                         R15 K16 [{"AssetIds", "AssetsInfo", "LayoutOrder", "SelectedTiles", "DefaultThumbnail", "OnThumbnailClick"}]
       36 SETTABLEKS                       R10 R15 K10 ["AssetIds"]
       38 SETTABLEKS                       R11 R15 K11 ["AssetsInfo"]
       40 NAMECALL                         R16 R7 K17 ["getNextOrder"]
       42 CALL                             R16 1 1
       43 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
       45 GETTABLEKS                       R17 R0 K0 ["props"]
       47 GETTABLEKS                       R18 R17 K18 ["SelectedAssets"]
       49 GETTABLEKS                       R19 R17 K5 ["SelectedTab"]
       51 GETTABLE                         R20 R18 R19
       52 JUMPIF                           R20 ; [+2]
       53 NEWTABLE                         R20 0 0
       55 GETUPVAL                         R21 3
       56 GETTABLEKS                       R21 R21 K19 ["List"]
       58 GETTABLEKS                       R21 R21 K20 ["toSet"]
       60 MOVE                             R22 R20
       61 CALL                             R21 1 1
       62 MOVE                             R16 R21
       63 SETTABLEKS                       R16 R15 K13 ["SelectedTiles"]
       65 GETTABLEKS                       R17 R4 K21 ["DefaultTileImages"]
       67 GETTABLE                         R16 R17 R6
       68 SETTABLEKS                       R16 R15 K14 ["DefaultThumbnail"]
       70 GETTABLEKS                       R16 R0 K22 ["onThumbnailClick"]
       72 SETTABLEKS                       R16 R15 K15 ["OnThumbnailClick"]
       74 CALL                             R14 1 -1
       75 CALL                             R12 -1 1
       76 MOVE                             R8 R12
       77 GETUPVAL                         R10 5
       78 GETTABLEKS                       R10 R10 K23 ["createElement"]
       80 GETUPVAL                         R11 6
       81 DUPTABLE                         R12 K26 [{"Size", "CellSize", "CellPadding", "LayoutOrder"}]
       82 SETTABLEKS                       R2 R12 K1 ["Size"]
       84 GETTABLEKS                       R13 R4 K27 ["TileSize"]
       86 SETTABLEKS                       R13 R12 K24 ["CellSize"]
       88 GETTABLEKS                       R13 R4 K28 ["TilePadding"]
       90 SETTABLEKS                       R13 R12 K25 ["CellPadding"]
       92 SETTABLEKS                       R3 R12 K12 ["LayoutOrder"]
       94 MOVE                             R13 R8
       95 CALL                             R10 3 -1
       96 RETURN                           R10 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["API"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["AssetServiceWrapper"]
        8 NAMECALL                         R3 R3 K3 ["get"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["getAllAssetIds"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["getAllBundleIds"]
       18 CALL                             R5 0 1
       19 GETTABLEKS                       R6 R0 K0 ["props"]
       21 GETTABLEKS                       R6 R6 K6 ["GetPrebuiltAssetsInfo"]
       23 MOVE                             R7 R2
       24 MOVE                             R8 R3
       25 MOVE                             R9 R4
       26 MOVE                             R10 R5
       27 CALL                             R6 4 0
       28 GETTABLEKS                       R6 R0 K0 ["props"]
       30 GETTABLEKS                       R6 R6 K7 ["UpdatePreviewAssetsSelected"]
       32 CALL                             R6 0 0
       33 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["previewAssets"]
        2 GETTABLEKS                       R3 R0 K1 ["previewStatus"]
        4 DUPTABLE                         R4 K7 [{"PrebuiltAssetsInfo", "SelectedTab", "SearchFilter", "CategoryFilter", "SelectedAssets"}]
        5 GETTABLEKS                       R5 R2 K8 ["prebuiltAssetsInfo"]
        7 SETTABLEKS                       R5 R4 K2 ["PrebuiltAssetsInfo"]
        9 GETTABLEKS                       R5 R3 K9 ["selectedTab"]
       11 SETTABLEKS                       R5 R4 K3 ["SelectedTab"]
       13 GETTABLEKS                       R5 R3 K10 ["searchFilter"]
       15 SETTABLEKS                       R5 R4 K4 ["SearchFilter"]
       17 GETTABLEKS                       R5 R3 K11 ["categoryFilter"]
       19 SETTABLEKS                       R5 R4 K5 ["CategoryFilter"]
       21 GETTABLEKS                       R5 R3 K12 ["selectedAssets"]
       23 SETTABLEKS                       R5 R4 K6 ["SelectedAssets"]
       25 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"GetPrebuiltAssetsInfo", "UpdatePreviewAssetsSelected"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["GetPrebuiltAssetsInfo"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["UpdatePreviewAssetsSelected"]
       11 RETURN                           R1 1

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
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R5 K9 ["AvatarToolsShared"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K10 ["Components"]
       41 GETTABLEKS                       R6 R5 K11 ["ScrollableGrid"]
       43 GETTABLEKS                       R7 R5 K12 ["AssetThumbnailTiles"]
       45 GETTABLEKS                       R8 R4 K13 ["Util"]
       47 GETTABLEKS                       R8 R8 K14 ["AccessoryAndBodyToolShared"]
       49 GETTABLEKS                       R9 R8 K15 ["Constants"]
       51 GETTABLEKS                       R10 R8 K16 ["PreviewConstants"]
       53 GETTABLEKS                       R11 R8 K17 ["PreviewConstantsInterface"]
       55 GETIMPORT                        R12 K4 [require]
       57 GETTABLEKS                       R13 R0 K5 ["Packages"]
       59 GETTABLEKS                       R13 R13 K18 ["Framework"]
       61 CALL                             R12 1 1
       62 GETTABLEKS                       R13 R12 K19 ["ContextServices"]
       64 GETTABLEKS                       R14 R13 K20 ["withContext"]
       66 GETTABLEKS                       R15 R12 K13 ["Util"]
       68 GETTABLEKS                       R16 R15 K21 ["LayoutOrderIterator"]
       70 GETTABLEKS                       R17 R15 K22 ["Typecheck"]
       72 GETTABLEKS                       R18 R15 K23 ["deepCopy"]
       74 GETIMPORT                        R19 K4 [require]
       76 GETTABLEKS                       R20 R0 K24 ["Src"]
       78 GETTABLEKS                       R20 R20 K25 ["Thunks"]
       80 GETTABLEKS                       R20 R20 K26 ["UpdatePreviewAssetsSelected"]
       82 CALL                             R19 1 1
       83 GETIMPORT                        R20 K4 [require]
       85 GETTABLEKS                       R21 R0 K24 ["Src"]
       87 GETTABLEKS                       R21 R21 K25 ["Thunks"]
       89 GETTABLEKS                       R21 R21 K27 ["GetPrebuiltAssetsInfo"]
       91 CALL                             R20 1 1
       92 GETTABLEKS                       R21 R4 K28 ["Contexts"]
       94 GETTABLEKS                       R21 R21 K29 ["EditingItemContext"]
       96 GETTABLEKS                       R22 R4 K28 ["Contexts"]
       98 GETTABLEKS                       R22 R22 K30 ["AssetServiceWrapper"]
      100 GETIMPORT                        R23 K4 [require]
      102 GETTABLEKS                       R24 R0 K24 ["Src"]
      104 GETTABLEKS                       R24 R24 K13 ["Util"]
      106 GETTABLEKS                       R24 R24 K15 ["Constants"]
      108 CALL                             R23 1 1
      109 GETIMPORT                        R24 K4 [require]
      111 GETTABLEKS                       R25 R0 K24 ["Src"]
      113 GETTABLEKS                       R25 R25 K13 ["Util"]
      115 GETTABLEKS                       R25 R25 K31 ["ShowDialog"]
      117 CALL                             R24 1 1
      118 GETIMPORT                        R25 K4 [require]
      120 GETTABLEKS                       R26 R0 K24 ["Src"]
      122 GETTABLEKS                       R26 R26 K13 ["Util"]
      124 GETTABLEKS                       R26 R26 K32 ["AnalyticsGlobals"]
      126 CALL                             R25 1 1
      127 GETTABLEKS                       R26 R1 K33 ["PureComponent"]
      129 LOADK                            R28 K34 ["PreviewGrid"]
      130 NAMECALL                         R26 R26 K35 ["extend"]
      132 CALL                             R26 2 1
      133 GETTABLEKS                       R27 R17 K36 ["wrap"]
      135 MOVE                             R28 R26
      136 GETIMPORT                        R29 K1 [script]
      138 CALL                             R27 2 0
      139 DUPCLOSURE                       R27 K37 [PROTO_0]
      140 CAPTURE                          VAL R3
      141 DUPCLOSURE                       R28 K38 [PROTO_1]
      142 DUPCLOSURE                       R29 K39 [PROTO_3]
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R25
      145 CAPTURE                          VAL R23
      146 SETTABLEKS                       R29 R26 K40 ["init"]
      148 DUPCLOSURE                       R29 K41 [PROTO_4]
      149 DUPCLOSURE                       R30 K42 [PROTO_5]
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R29
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R3
      155 DUPCLOSURE                       R31 K43 [PROTO_6]
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R30
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R6
      163 SETTABLEKS                       R31 R26 K44 ["render"]
      165 DUPCLOSURE                       R31 K45 [PROTO_7]
      166 CAPTURE                          VAL R11
      167 SETTABLEKS                       R31 R26 K46 ["didMount"]
      169 MOVE                             R31 R14
      170 DUPTABLE                         R32 K52 [{"Analytics", "Stylizer", "Localization", "API", "Plugin", "EditingItemContext", "AssetServiceWrapper"}]
      171 GETTABLEKS                       R33 R13 K47 ["Analytics"]
      173 SETTABLEKS                       R33 R32 K47 ["Analytics"]
      175 GETTABLEKS                       R33 R13 K48 ["Stylizer"]
      177 SETTABLEKS                       R33 R32 K48 ["Stylizer"]
      179 GETTABLEKS                       R33 R13 K49 ["Localization"]
      181 SETTABLEKS                       R33 R32 K49 ["Localization"]
      183 GETTABLEKS                       R33 R13 K50 ["API"]
      185 SETTABLEKS                       R33 R32 K50 ["API"]
      187 GETTABLEKS                       R33 R13 K51 ["Plugin"]
      189 SETTABLEKS                       R33 R32 K51 ["Plugin"]
      191 SETTABLEKS                       R21 R32 K29 ["EditingItemContext"]
      193 SETTABLEKS                       R22 R32 K30 ["AssetServiceWrapper"]
      195 CALL                             R31 1 1
      196 MOVE                             R32 R26
      197 CALL                             R31 1 1
      198 MOVE                             R26 R31
      199 DUPCLOSURE                       R31 K53 [PROTO_8]
      200 DUPCLOSURE                       R32 K54 [PROTO_11]
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R19
      203 GETTABLEKS                       R33 R2 K55 ["connect"]
      205 MOVE                             R34 R31
      206 MOVE                             R35 R32
      207 CALL                             R33 2 1
      208 MOVE                             R34 R26
      209 CALL                             R33 1 -1
      210 RETURN                           R33 -1
