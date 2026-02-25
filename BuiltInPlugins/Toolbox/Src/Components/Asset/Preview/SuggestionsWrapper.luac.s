PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["hoveredAssetId"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["hoveredAssetId"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["None"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+6]
       10 DUPTABLE                         R1 K2 [{"hoveredAssetId"}]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K0 ["hoveredAssetId"]
       14 RETURN                           R1 1
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["hoveredAssetId"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+8]
        5 DUPTABLE                         R1 K1 [{"hoveredAssetId"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["None"]
        9 SETTABLEKS                       R2 R1 K0 ["hoveredAssetId"]
       11 RETURN                           R1 1
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Assets"]
        5 LOADNIL                          R3
        6 GETIMPORT                        R4 K3 [pairs]
        8 MOVE                             R5 R2
        9 CALL                             R4 1 3
       10 FORGPREP_NEXT                    R4
       11 GETTABLEKS                       R10 R8 K4 ["Asset"]
       13 GETTABLEKS                       R9 R10 K5 ["Id"]
       15 GETTABLEKS                       R10 R1 K6 ["OriginalAssetId"]
       17 JUMPIFNOTEQ                      R9 R10 ; [+3]
       19 MOVE                             R3 R7
       20 JUMP                             ; [+2]
       21 FORGLOOP                         R4 2 ; [-11]
       23 JUMPIFNOT                        R3 ; [+5]
       24 GETIMPORT                        R4 K9 [table.remove]
       26 MOVE                             R5 R2
       27 MOVE                             R6 R3
       28 CALL                             R4 2 0
       29 DUPTABLE                         R4 K11 [{"assetsList"}]
       30 SETTABLEKS                       R2 R4 K10 ["assetsList"]
       32 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 DUPTABLE                         R4 K2 [{"hoveredAssetId"}]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K3 ["None"]
        8 SETTABLEKS                       R5 R4 K1 ["hoveredAssetId"]
       10 NAMECALL                         R2 R2 K4 ["setState"]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R1 K5 ["OnAssetPreviewButtonClicked"]
       15 MOVE                             R3 R0
       16 LOADK                            R4 K6 ["Suggestions"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"assetsList", "hoveredAssetId"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["assetsList"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K3 ["None"]
        8 SETTABLEKS                       R2 R1 K1 ["hoveredAssetId"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R1 R0 K5 ["onAssetHovered"]
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R1 R0 K6 ["onAssetHoverEnded"]
       22 NEWCLOSURE                       R1 P2
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K7 ["filterOutOriginalAsset"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 SETTABLEKS                       R1 R0 K8 ["onAssetPreviewButtonClicked"]
       31 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["filterOutOriginalAsset"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["Assets"]
        4 GETTABLEKS                       R5 R3 K1 ["Assets"]
        6 JUMPIFNOTEQ                      R4 R5 ; [+7]
        8 GETTABLEKS                       R4 R1 K2 ["OriginalAssetId"]
       10 GETTABLEKS                       R5 R3 K2 ["OriginalAssetId"]
       12 JUMPIFEQ                         R4 R5 ; [+4]
       14 GETTABLEKS                       R4 R0 K3 ["filterOutOriginalAsset"]
       16 CALL                             R4 0 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R1 K0 ["Asset"]
        2 GETTABLEKS                       R2 R3 K1 ["Id"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K18 [{"assetId", "assetData", "assetTileLocation", "canInsertAsset", "hideCreatorName", "isHovered", "logImpression", "originalAssetId", "onAssetHovered", "onAssetHoverEnded", "onAssetPreviewButtonClicked", "parentAbsolutePosition", "parentSize", "tryInsert", "tryOpenAssetConfig"}]
        9 SETTABLEKS                       R2 R5 K3 ["assetId"]
       11 SETTABLEKS                       R1 R5 K4 ["assetData"]
       13 GETUPVAL                         R8 2
       14 GETTABLEKS                       R7 R8 K19 ["ASSET_TILE_LOCATION"]
       16 GETTABLEKS                       R6 R7 K20 ["MORE_FROM"]
       18 SETTABLEKS                       R6 R5 K5 ["assetTileLocation"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K21 ["CanInsertAsset"]
       23 SETTABLEKS                       R6 R5 K6 ["canInsertAsset"]
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K7 ["hideCreatorName"]
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R7 R8 K22 ["hoveredAssetId"]
       31 JUMPIFEQ                         R2 R7 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 SETTABLEKS                       R6 R5 K8 ["isHovered"]
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R6 R7 K23 ["LogAssetImpression"]
       40 SETTABLEKS                       R6 R5 K9 ["logImpression"]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R6 R7 K24 ["OriginalAssetId"]
       45 SETTABLEKS                       R6 R5 K10 ["originalAssetId"]
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R6 R7 K11 ["onAssetHovered"]
       50 SETTABLEKS                       R6 R5 K11 ["onAssetHovered"]
       52 GETUPVAL                         R7 5
       53 GETTABLEKS                       R6 R7 K12 ["onAssetHoverEnded"]
       55 SETTABLEKS                       R6 R5 K12 ["onAssetHoverEnded"]
       57 GETUPVAL                         R7 5
       58 GETTABLEKS                       R6 R7 K13 ["onAssetPreviewButtonClicked"]
       60 SETTABLEKS                       R6 R5 K13 ["onAssetPreviewButtonClicked"]
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R6 R7 K25 ["ParentAbsolutePosition"]
       65 SETTABLEKS                       R6 R5 K14 ["parentAbsolutePosition"]
       67 GETUPVAL                         R7 3
       68 GETTABLEKS                       R6 R7 K26 ["ParentAbsoluteSize"]
       70 SETTABLEKS                       R6 R5 K15 ["parentSize"]
       72 GETUPVAL                         R7 5
       73 GETTABLEKS                       R6 R7 K13 ["onAssetPreviewButtonClicked"]
       75 SETTABLEKS                       R6 R5 K16 ["tryInsert"]
       77 GETUPVAL                         R7 3
       78 GETTABLEKS                       R6 R7 K27 ["TryOpenAssetConfig"]
       80 SETTABLEKS                       R6 R5 K17 ["tryOpenAssetConfig"]
       82 CALL                             R3 2 -1
       83 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["getAssetSize"]
        7 GETTABLEKS                       R6 R2 K3 ["CategoryName"]
        9 CALL                             R5 1 1
       10 GETTABLEKS                       R4 R5 K4 ["Y"]
       12 GETTABLEKS                       R3 R4 K5 ["Offset"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 GETTABLEKS                       R6 R1 K6 ["assetsList"]
       23 LENGTH                           R5 R6
       24 JUMPIFNOTEQKN                    R5 K7 [0] ; [+2]
       26 RETURN                           R0 0
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K8 ["createElement"]
       30 GETUPVAL                         R6 4
       31 DUPTABLE                         R7 K13 [{"AutomaticSize", "LayoutOrder", "Padding", "Size"}]
       32 GETIMPORT                        R8 K16 [Enum.AutomaticSize.XY]
       34 SETTABLEKS                       R8 R7 K9 ["AutomaticSize"]
       36 GETTABLEKS                       R8 R2 K10 ["LayoutOrder"]
       38 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       40 DUPTABLE                         R8 K18 [{"Bottom"}]
       41 GETUPVAL                         R10 5
       42 ADDK                             R9 R10 K19 [10]
       43 SETTABLEKS                       R9 R8 K17 ["Bottom"]
       45 SETTABLEKS                       R8 R7 K11 ["Padding"]
       47 GETIMPORT                        R8 K22 [UDim2.new]
       49 LOADN                            R9 1
       50 LOADN                            R10 0
       51 LOADN                            R11 0
       52 LOADN                            R12 0
       53 CALL                             R8 4 1
       54 SETTABLEKS                       R8 R7 K12 ["Size"]
       56 DUPTABLE                         R8 K24 [{"Swimlane"}]
       57 GETUPVAL                         R10 1
       58 GETTABLEKS                       R9 R10 K8 ["createElement"]
       60 GETUPVAL                         R10 6
       61 DUPTABLE                         R11 K32 [{"Data", "IsLoading", "IsHeaderResponsive", "OnClickSeeAll", "OnRenderItem", "Size", "SeeAllTextSize", "Title"}]
       62 GETTABLEKS                       R12 R1 K6 ["assetsList"]
       64 SETTABLEKS                       R12 R11 K25 ["Data"]
       66 GETTABLEKS                       R12 R2 K26 ["IsLoading"]
       68 SETTABLEKS                       R12 R11 K26 ["IsLoading"]
       70 LOADB                            R12 1
       71 SETTABLEKS                       R12 R11 K27 ["IsHeaderResponsive"]
       73 GETTABLEKS                       R12 R2 K28 ["OnClickSeeAll"]
       75 SETTABLEKS                       R12 R11 K28 ["OnClickSeeAll"]
       77 SETTABLEKS                       R4 R11 K29 ["OnRenderItem"]
       79 GETIMPORT                        R12 K22 [UDim2.new]
       81 LOADN                            R13 1
       82 LOADN                            R14 0
       83 LOADN                            R15 0
       84 MOVE                             R16 R3
       85 CALL                             R12 4 1
       86 SETTABLEKS                       R12 R11 K12 ["Size"]
       88 LOADN                            R12 18
       89 SETTABLEKS                       R12 R11 K30 ["SeeAllTextSize"]
       91 GETTABLEKS                       R12 R2 K33 ["Localization"]
       93 LOADK                            R14 K34 ["Suggestion"]
       94 LOADK                            R15 K35 ["MoreFromCreator"]
       95 DUPTABLE                         R16 K37 [{"creatorName"}]
       96 GETTABLEKS                       R17 R2 K38 ["CreatorName"]
       98 SETTABLEKS                       R17 R16 K36 ["creatorName"]
      100 NAMECALL                         R12 R12 K39 ["getText"]
      102 CALL                             R12 4 1
      103 SETTABLEKS                       R12 R11 K31 ["Title"]
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R8 K23 ["Swimlane"]
      108 CALL                             R5 3 -1
      109 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R3 K9 ["UI"]
       21 GETTABLEKS                       R4 R5 K10 ["Pane"]
       23 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       25 GETTABLEKS                       R6 R5 K12 ["withContext"]
       27 GETIMPORT                        R7 K6 [require]
       29 GETTABLEKS                       R11 R0 K13 ["Src"]
       31 GETTABLEKS                       R10 R11 K14 ["Components"]
       33 GETTABLEKS                       R9 R10 K15 ["Asset"]
       35 GETTABLEKS                       R8 R9 K15 ["Asset"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R12 R0 K13 ["Src"]
       42 GETTABLEKS                       R11 R12 K14 ["Components"]
       44 GETTABLEKS                       R10 R11 K16 ["Categorization"]
       46 GETTABLEKS                       R9 R10 K17 ["Swimlane"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R9 R10 K18 ["Util"]
       53 GETIMPORT                        R10 K6 [require]
       55 GETTABLEKS                       R11 R9 K19 ["Constants"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K6 [require]
       60 GETTABLEKS                       R12 R9 K20 ["AssetUtil"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K6 [require]
       65 GETTABLEKS                       R15 R0 K13 ["Src"]
       67 GETTABLEKS                       R14 R15 K21 ["Types"]
       69 GETTABLEKS                       R13 R14 K22 ["AssetLogicTypes"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R18 R10 K24 ["ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING_COUNT"]
       74 MULK                             R17 R18 K23 [2]
       75 GETTABLEKS                       R18 R10 K25 ["ASSET_CREATOR_NAME_HEIGHT"]
       77 ADD                              R16 R17 R18
       78 GETTABLEKS                       R17 R10 K26 ["PRICE_HEIGHT"]
       80 ADD                              R15 R16 R17
       81 GETTABLEKS                       R16 R10 K27 ["ASSET_VOTE_BUTTONS_SCRIPT_PADDING"]
       83 ADD                              R14 R15 R16
       84 GETTABLEKS                       R15 R10 K28 ["ASSET_INNER_PADDING"]
       86 ADD                              R13 R14 R15
       87 GETTABLEKS                       R14 R2 K29 ["PureComponent"]
       89 LOADK                            R16 K30 ["SuggestionsWrapper"]
       90 NAMECALL                         R14 R14 K31 ["extend"]
       92 CALL                             R14 2 1
       93 DUPTABLE                         R15 K33 [{"Size"}]
       94 GETIMPORT                        R16 K36 [UDim2.new]
       96 LOADN                            R17 1
       97 LOADN                            R18 0
       98 LOADN                            R19 1
       99 LOADN                            R20 0
      100 CALL                             R16 4 1
      101 SETTABLEKS                       R16 R15 K32 ["Size"]
      103 SETTABLEKS                       R15 R14 K37 ["defaultProps"]
      105 DUPCLOSURE                       R15 K38 [PROTO_7]
      106 CAPTURE                          VAL R2
      107 SETTABLEKS                       R15 R14 K39 ["init"]
      109 DUPCLOSURE                       R15 K40 [PROTO_8]
      110 SETTABLEKS                       R15 R14 K41 ["didMount"]
      112 DUPCLOSURE                       R15 K42 [PROTO_9]
      113 SETTABLEKS                       R15 R14 K43 ["didUpdate"]
      115 DUPCLOSURE                       R15 K44 [PROTO_11]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R8
      123 SETTABLEKS                       R15 R14 K45 ["render"]
      125 MOVE                             R15 R6
      126 DUPTABLE                         R16 K48 [{"Localization", "Settings"}]
      127 GETTABLEKS                       R17 R5 K46 ["Localization"]
      129 SETTABLEKS                       R17 R16 K46 ["Localization"]
      131 GETTABLEKS                       R17 R5 K47 ["Settings"]
      133 SETTABLEKS                       R17 R16 K47 ["Settings"]
      135 CALL                             R15 1 1
      136 MOVE                             R16 R14
      137 CALL                             R15 1 1
      138 MOVE                             R14 R15
      139 RETURN                           R14 1
