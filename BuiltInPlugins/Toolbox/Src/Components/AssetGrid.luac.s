PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["calculateRenderBounds"]
        2 CALL                             R1 0 0
        3 GETTABLEKS                       R1 R0 K1 ["updateTopContentHeight"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["scrollingFrameRef"]
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R2 K3 ["CanvasPosition"]
       12 GETTABLEKS                       R3 R3 K4 ["Y"]
       14 GETTABLEKS                       R4 R2 K5 ["AbsoluteWindowSize"]
       16 GETTABLEKS                       R4 R4 K4 ["Y"]
       18 GETTABLEKS                       R5 R2 K6 ["CanvasSize"]
       20 GETTABLEKS                       R5 R5 K4 ["Y"]
       22 GETTABLEKS                       R5 R5 K7 ["Offset"]
       24 ADD                              R6 R3 R4
       25 SUB                              R7 R5 R6
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K8 ["DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE"]
       29 JUMPIFNOTLT                      R7 R8 ; [+7]
       31 GETTABLEKS                       R8 R1 K9 ["RequestNextPage"]
       33 JUMPIFNOT                        R8 ; [+3]
       34 GETTABLEKS                       R8 R1 K9 ["RequestNextPage"]
       36 CALL                             R8 0 0
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K10 ["calculateRenderBounds"]
       40 MOVE                             R9 R0
       41 CALL                             R8 1 0
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["shouldShowPrices"]
        6 GETTABLEKS                       R3 R1 K2 ["categoryName"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R0 K3 ["lowerIndexToRender"]
       11 GETTABLEKS                       R4 R0 K4 ["topContentHeight"]
       13 GETTABLEKS                       R5 R0 K5 ["width"]
       15 LOADN                            R9 2
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R10 R10 K6 ["MAIN_VIEW_PADDING"]
       19 MUL                              R8 R9 R10
       20 SUB                              R7 R5 R8
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K7 ["SCROLLBAR_PADDING"]
       24 SUB                              R6 R7 R8
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K8 ["getAssetsPerRow"]
       28 MOVE                             R8 R6
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K9 ["getAssetCellHeightWithPadding"]
       33 MOVE                             R9 R2
       34 CALL                             R8 1 1
       35 DIV                              R12 R3 R7
       36 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       37 GETIMPORT                        R11 K12 [math.floor]
       39 CALL                             R11 1 1
       40 MUL                              R10 R11 R8
       41 FASTCALL2K                       MATH_MAX R10 K13 ; [+4]
       43 LOADK                            R11 K13 [0]
       44 GETIMPORT                        R9 K15 [math.max]
       46 CALL                             R9 2 1
       47 SUB                              R10 R4 R9
       48 JUMPIFNOTLT                      R4 R9 ; [+2]
       50 LOADN                            R10 0
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R11 R11 K16 ["calculateRenderBoundsForScrollingFrame"]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R12 R12 K17 ["scrollingFrameRef"]
       57 GETTABLEKS                       R12 R12 K18 ["current"]
       59 MOVE                             R13 R6
       60 MOVE                             R14 R10
       61 MOVE                             R15 R2
       62 CALL                             R11 4 2
       63 GETUPVAL                         R13 4
       64 JUMPIF                           R13 ; [+8]
       65 GETTABLEKS                       R13 R0 K3 ["lowerIndexToRender"]
       67 JUMPIFNOTEQ                      R11 R13 ; [+5]
       69 GETTABLEKS                       R13 R0 K19 ["upperIndexToRender"]
       71 JUMPIFEQ                         R12 R13 ; [+20]
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R13 R13 K20 ["sliceAssetsFromBounds"]
       76 GETTABLEKS                       R14 R1 K21 ["AssetIds"]
       78 JUMPIF                           R14 ; [+2]
       79 NEWTABLE                         R14 0 0
       81 MOVE                             R15 R11
       82 MOVE                             R16 R12
       83 CALL                             R13 3 1
       84 DUPTABLE                         R14 K23 [{"displayedAssetIds", "lowerIndexToRender", "upperIndexToRender"}]
       85 SETTABLEKS                       R13 R14 K22 ["displayedAssetIds"]
       87 SETTABLEKS                       R11 R14 K3 ["lowerIndexToRender"]
       89 SETTABLEKS                       R12 R14 K19 ["upperIndexToRender"]
       91 RETURN                           R14 1
       92 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R1 R1 K0 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+17]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K1 ["RenderTopContent"]
        8 JUMPIFNOT                        R2 ; [+11]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["CanvasPosition"]
       12 GETTABLEKS                       R2 R2 K3 ["Y"]
       14 GETTABLEKS                       R3 R0 K4 ["topContentHeight"]
       16 JUMPIFLE                         R2 R3 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 GETTABLEKS                       R2 R0 K5 ["hoveredAssetId"]
       22 JUMPIFEQKN                       R2 K6 [0] ; [+5]
       24 DUPTABLE                         R2 K8 [{["hoveredAssetId"] = 0, ["isTopContentWithinView"]}]
       25 SETTABLEKS                       R1 R2 K7 ["isTopContentWithinView"]
       27 RETURN                           R2 1
       28 GETTABLEKS                       R2 R0 K7 ["isTopContentWithinView"]
       30 JUMPIFEQ                         R1 R2 ; [+5]
       32 DUPTABLE                         R2 K9 [{"isTopContentWithinView"}]
       33 SETTABLEKS                       R1 R2 K7 ["isTopContentWithinView"]
       35 RETURN                           R2 1
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["isPreviewing"]
        5 JUMPIF                           R1 ; [+4]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["tryRerender"]
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 NAMECALL                         R1 R1 K3 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Modal"]
        5 GETTABLEKS                       R2 R0 K2 ["hoveredAssetId"]
        7 JUMPIFNOTEQKN                    R2 K3 [0] ; [+10]
        9 GETTABLEKS                       R2 R1 K4 ["canHoverAsset"]
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+5]
       13 DUPTABLE                         R2 K5 [{"hoveredAssetId"}]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R3 R2 K2 ["hoveredAssetId"]
       17 RETURN                           R2 1
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["hoveredAssetId"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 DUPTABLE                         R1 K2 [{[1] = 0}]
        6 RETURN                           R1 1
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Focus]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["onAssetHoverEnded"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R2 R0 K2 ["AbsoluteSize"]
        8 GETTABLEKS                       R3 R0 K3 ["AbsolutePosition"]
       10 GETTABLEKS                       R4 R0 K4 ["CanInsertAsset"]
       12 GETTABLEKS                       R5 R0 K5 ["TryOpenAssetConfig"]
       14 GETTABLEKS                       R6 R0 K6 ["TryInsert"]
       16 GETTABLEKS                       R7 R0 K7 ["AssetMap"]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K8 ["shouldShowPrices"]
       21 GETTABLEKS                       R9 R0 K9 ["categoryName"]
       23 CALL                             R8 1 1
       24 LOADNIL                          R9
       25 JUMPIFNOT                        R8 ; [+17]
       26 GETIMPORT                        R10 K12 [UDim2.new]
       28 LOADN                            R11 0
       29 GETUPVAL                         R12 2
       30 GETTABLEKS                       R12 R12 K13 ["ASSET_WIDTH_NO_PADDING"]
       32 LOADN                            R13 0
       33 GETUPVAL                         R15 2
       34 GETTABLEKS                       R15 R15 K14 ["ASSET_HEIGHT"]
       36 GETUPVAL                         R16 2
       37 GETTABLEKS                       R16 R16 K15 ["PRICE_HEIGHT"]
       39 ADD                              R14 R15 R16
       40 CALL                             R10 4 1
       41 MOVE                             R9 R10
       42 JUMP                             ; [+12]
       43 GETIMPORT                        R10 K12 [UDim2.new]
       45 LOADN                            R11 0
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R12 R12 K13 ["ASSET_WIDTH_NO_PADDING"]
       49 LOADN                            R13 0
       50 GETUPVAL                         R14 2
       51 GETTABLEKS                       R14 R14 K14 ["ASSET_HEIGHT"]
       53 CALL                             R10 4 1
       54 MOVE                             R9 R10
       55 DUPTABLE                         R10 K17 [{"UIGridLayout"}]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R11 R11 K18 ["createElement"]
       59 LOADK                            R12 K16 ["UIGridLayout"]
       60 NEWTABLE                         R13 8 0
       62 GETIMPORT                        R14 K12 [UDim2.new]
       64 LOADN                            R15 0
       65 GETUPVAL                         R16 2
       66 GETTABLEKS                       R16 R16 K19 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
       68 LOADN                            R17 0
       69 GETUPVAL                         R18 2
       70 GETTABLEKS                       R18 R18 K20 ["BETWEEN_ASSETS_VERTICAL_PADDING"]
       72 CALL                             R14 4 1
       73 SETTABLEKS                       R14 R13 K21 ["CellPadding"]
       75 SETTABLEKS                       R9 R13 K22 ["CellSize"]
       77 GETIMPORT                        R14 K26 [Enum.HorizontalAlignment.Left]
       79 SETTABLEKS                       R14 R13 K24 ["HorizontalAlignment"]
       81 GETIMPORT                        R14 K29 [Enum.SortOrder.LayoutOrder]
       83 SETTABLEKS                       R14 R13 K27 ["SortOrder"]
       85 GETUPVAL                         R14 3
       86 GETTABLEKS                       R14 R14 K30 ["Event"]
       88 GETTABLEKS                       R14 R14 K31 ["Changed"]
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R15 R15 K32 ["tryRerender"]
       93 SETTABLE                         R15 R13 R14
       94 CALL                             R11 2 1
       95 SETTABLEKS                       R11 R10 K16 ["UIGridLayout"]
       97 GETIMPORT                        R11 K34 [ipairs]
       99 GETTABLEKS                       R12 R1 K35 ["displayedAssetIds"]
      101 CALL                             R11 1 3
      102 FORGPREP_INEXT                   R11
      103 GETTABLEN                        R16 R15 1
      104 GETTABLE                         R17 R7 R16
      105 FASTCALL1                        TOSTRING R16 ; [+3]
      106 MOVE                             R19 R16
      107 GETIMPORT                        R18 K37 [tostring]
      109 CALL                             R18 1 1
      110 GETUPVAL                         R19 3
      111 GETTABLEKS                       R19 R19 K18 ["createElement"]
      113 GETUPVAL                         R20 4
      114 DUPTABLE                         R21 K52 [{"assetId", "assetData", "assetTileLocation", "canInsertAsset", "isHovered", "LayoutOrder", "logImpression", "onAssetHovered", "onAssetHoverEnded", "onAssetPreviewButtonClicked", "onSearchByCreator", "parentSize", "parentAbsolutePosition", "tryInsert", "tryOpenAssetConfig"}]
      115 SETTABLEKS                       R16 R21 K38 ["assetId"]
      117 SETTABLEKS                       R17 R21 K39 ["assetData"]
      119 GETUPVAL                         R22 2
      120 GETTABLEKS                       R22 R22 K53 ["ASSET_TILE_LOCATION"]
      122 GETTABLEKS                       R22 R22 K54 ["BROWSE"]
      124 SETTABLEKS                       R22 R21 K40 ["assetTileLocation"]
      126 SETTABLEKS                       R4 R21 K41 ["canInsertAsset"]
      128 GETUPVAL                         R23 0
      129 GETTABLEKS                       R23 R23 K1 ["state"]
      131 GETTABLEKS                       R23 R23 K55 ["hoveredAssetId"]
      133 JUMPIFEQ                         R16 R23 ; [+2]
      135 LOADB                            R22 0 +1
      136 LOADB                            R22 1
      137 SETTABLEKS                       R22 R21 K42 ["isHovered"]
      139 SETTABLEKS                       R14 R21 K28 ["LayoutOrder"]
      141 GETTABLEKS                       R22 R0 K56 ["LogAssetImpression"]
      143 SETTABLEKS                       R22 R21 K43 ["logImpression"]
      145 GETUPVAL                         R22 0
      146 GETTABLEKS                       R22 R22 K44 ["onAssetHovered"]
      148 SETTABLEKS                       R22 R21 K44 ["onAssetHovered"]
      150 GETUPVAL                         R22 0
      151 GETTABLEKS                       R22 R22 K45 ["onAssetHoverEnded"]
      153 SETTABLEKS                       R22 R21 K45 ["onAssetHoverEnded"]
      155 GETTABLEKS                       R22 R0 K57 ["OnAssetPreviewButtonClicked"]
      157 SETTABLEKS                       R22 R21 K46 ["onAssetPreviewButtonClicked"]
      159 GETUPVAL                         R23 5
      160 CALL                             R23 0 1
      161 JUMPIFNOT                        R23 ; [+3]
      162 GETTABLEKS                       R22 R0 K58 ["OnSearchByCreator"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R22
      166 SETTABLEKS                       R22 R21 K47 ["onSearchByCreator"]
      168 SETTABLEKS                       R2 R21 K48 ["parentSize"]
      170 SETTABLEKS                       R3 R21 K49 ["parentAbsolutePosition"]
      172 SETTABLEKS                       R6 R21 K50 ["tryInsert"]
      174 SETTABLEKS                       R5 R21 K51 ["tryOpenAssetConfig"]
      176 CALL                             R19 2 1
      177 SETTABLE                         R19 R10 R18
      178 FORGLOOP                         R11 2 [inext] ; [-76]
      180 RETURN                           R10 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R1 R1 K2 ["width"]
        8 LOADN                            R5 2
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K3 ["MAIN_VIEW_PADDING"]
       12 MUL                              R4 R5 R6
       13 SUB                              R3 R1 R4
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["SCROLLBAR_PADDING"]
       17 SUB                              R2 R3 R4
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K5 ["shouldShowPrices"]
       21 GETTABLEKS                       R4 R0 K6 ["categoryName"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R5 R0 K7 ["AssetIds"]
       26 LENGTH                           R4 R5
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K8 ["calculateAssetsHeight"]
       30 MOVE                             R7 R4
       31 MOVE                             R8 R2
       32 MOVE                             R9 R3
       33 CALL                             R6 3 1
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K9 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
       37 ADD                              R5 R6 R7
       38 LOADN                            R8 2
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K3 ["MAIN_VIEW_PADDING"]
       42 MUL                              R7 R8 R9
       43 ADD                              R6 R5 R7
       44 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["scrollingFrameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETTABLEKS                       R2 R0 K2 ["width"]
        8 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       10 GETTABLEKS                       R3 R3 K4 ["X"]
       12 JUMPIFEQ                         R2 R3 ; [+9]
       14 DUPTABLE                         R2 K5 [{"width"}]
       15 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       17 GETTABLEKS                       R3 R3 K4 ["X"]
       19 SETTABLEKS                       R3 R2 K2 ["width"]
       21 RETURN                           R2 1
       22 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["topContentRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R2 R1 K2 ["AbsoluteSize"]
        8 GETTABLEKS                       R2 R2 K3 ["Y"]
       10 JUMPIF                           R2 ; [+1]
       11 LOADN                            R2 0
       12 GETTABLEKS                       R3 R0 K4 ["topContentHeight"]
       14 JUMPIFEQ                         R2 R3 ; [+5]
       16 DUPTABLE                         R3 K5 [{"topContentHeight"}]
       17 SETTABLEKS                       R2 R3 K4 ["topContentHeight"]
       19 RETURN                           R3 1
       20 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R2 K9 [{[1], ["hoveredAssetId"] = 0, ["isTopContentWithinView"] = True, ["lowerIndexToRender"] = 0, ["topContentHeight"] = 0, ["upperIndexToRender"] = 0, ["width"] = 0}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["displayedAssetIds"]
        5 SETTABLEKS                       R2 R0 K10 ["state"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K11 ["createRef"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R0 K12 ["scrollingFrameRef"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K11 ["createRef"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R0 K13 ["topContentRef"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R2 R0 K14 ["tryRerender"]
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U3
       29 SETTABLEKS                       R2 R0 K15 ["calculateRenderBounds"]
       31 NEWCLOSURE                       R2 P2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K16 ["onScroll"]
       35 NEWCLOSURE                       R2 P3
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R2 R0 K17 ["onAssetHovered"]
       39 NEWCLOSURE                       R2 P4
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R2 R0 K18 ["onAssetHoverEnded"]
       43 NEWCLOSURE                       R2 P5
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R2 R0 K19 ["onFocusLost"]
       47 NEWCLOSURE                       R2 P6
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U5
       54 SETTABLEKS                       R2 R0 K20 ["getAssetElements"]
       56 NEWCLOSURE                       R2 P7
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 SETTABLEKS                       R2 R0 K21 ["calculateCanvasHeight"]
       63 NEWCLOSURE                       R2 P8
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R2 R0 K22 ["getWidth"]
       67 NEWCLOSURE                       R2 P9
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R2 R0 K23 ["updateTopContentHeight"]
       71 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R6 R4 K2 ["upperIndexToRender"]
        6 GETTABLEKS                       R7 R4 K3 ["lowerIndexToRender"]
        8 SUB                              R5 R6 R7
        9 GETTABLEKS                       R6 R4 K4 ["displayedAssetIds"]
       11 JUMPIF                           R6 ; [+2]
       12 NEWTABLE                         R6 0 0
       14 LENGTH                           R7 R6
       15 GETTABLEKS                       R8 R3 K5 ["networkErrors"]
       17 JUMPIF                           R8 ; [+2]
       18 NEWTABLE                         R8 0 0
       20 LENGTH                           R10 R8
       21 GETTABLE                         R9 R8 R10
       22 JUMPIF                           R9 ; [+10]
       23 JUMPIFNOTLT                      R7 R5 ; [+9]
       25 JUMPIFEQKN                       R7 K6 [0] ; [+7]
       27 GETTABLEKS                       R10 R3 K7 ["RequestNextPage"]
       29 JUMPIFNOT                        R10 ; [+3]
       30 GETTABLEKS                       R10 R3 K7 ["RequestNextPage"]
       32 CALL                             R10 0 0
       33 GETTABLEKS                       R10 R1 K8 ["AssetIds"]
       35 GETTABLEKS                       R11 R3 K8 ["AssetIds"]
       37 JUMPIFEQ                         R10 R11 ; [+5]
       39 LOADB                            R12 0
       40 NAMECALL                         R10 R0 K9 ["calculateRenderBounds"]
       42 CALL                             R10 2 0
       43 GETTABLEKS                       R10 R2 K10 ["topContentHeight"]
       45 GETTABLEKS                       R11 R4 K10 ["topContentHeight"]
       47 JUMPIFNOTEQ                      R10 R11 ; [+7]
       49 GETTABLEKS                       R10 R2 K11 ["width"]
       51 GETTABLEKS                       R11 R4 K11 ["width"]
       53 JUMPIFEQ                         R10 R11 ; [+5]
       55 GETTABLEKS                       R10 R0 K12 ["tryRerender"]
       57 LOADB                            R11 1
       58 CALL                             R10 1 0
       59 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R1 K1 ["lowerIndexToRender"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K2 ["upperIndexToRender"]
        5 ORK                              R3 R4 K0 [0]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["sliceAssetsFromBounds"]
        9 GETTABLEKS                       R5 R0 K4 ["AssetIds"]
       11 JUMPIF                           R5 ; [+2]
       12 NEWTABLE                         R5 0 0
       14 MOVE                             R6 R2
       15 MOVE                             R7 R3
       16 CALL                             R4 3 1
       17 LOADB                            R5 0
       18 GETIMPORT                        R6 K6 [ipairs]
       20 GETTABLEKS                       R7 R0 K4 ["AssetIds"]
       22 CALL                             R6 1 3
       23 FORGPREP_INEXT                   R6
       24 GETTABLEKS                       R11 R1 K7 ["hoveredAssetId"]
       26 JUMPIFNOTEQ                      R11 R10 ; [+3]
       28 LOADB                            R5 1
       29 JUMP                             ; [+2]
       30 FORGLOOP                         R6 2 [inext] ; [-7]
       32 LOADNIL                          R6
       33 JUMPIFNOT                        R5 ; [+3]
       34 GETTABLEKS                       R6 R1 K7 ["hoveredAssetId"]
       36 JUMP                             ; [+1]
       37 LOADN                            R6 0
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K8 ["Dictionary"]
       41 GETTABLEKS                       R7 R7 K9 ["join"]
       43 MOVE                             R8 R1
       44 DUPTABLE                         R9 K11 [{"displayedAssetIds", "hoveredAssetId", "lowerIndexToRender", "upperIndexToRender"}]
       45 SETTABLEKS                       R4 R9 K10 ["displayedAssetIds"]
       47 SETTABLEKS                       R6 R9 K7 ["hoveredAssetId"]
       49 SETTABLEKS                       R2 R9 K1 ["lowerIndexToRender"]
       51 SETTABLEKS                       R3 R9 K2 ["upperIndexToRender"]
       53 CALL                             R7 2 -1
       54 RETURN                           R7 -1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["categoryName"]
        6 GETTABLEKS                       R4 R1 K3 ["isPreviewing"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["RenderTopContent"]
       14 GETTABLEKS                       R8 R1 K7 ["Size"]
       16 GETTABLEKS                       R9 R1 K8 ["Stylizer"]
       18 GETTABLEKS                       R10 R2 K9 ["lowerIndexToRender"]
       20 GETTABLEKS                       R11 R2 K10 ["topContentHeight"]
       22 GETTABLEKS                       R12 R2 K11 ["width"]
       24 GETTABLEKS                       R13 R0 K12 ["getAssetElements"]
       26 CALL                             R13 0 1
       27 GETTABLEKS                       R14 R0 K13 ["calculateCanvasHeight"]
       29 CALL                             R14 0 1
       30 LOADN                            R18 2
       31 GETUPVAL                         R19 0
       32 GETTABLEKS                       R19 R19 K14 ["MAIN_VIEW_PADDING"]
       34 MUL                              R17 R18 R19
       35 SUB                              R16 R12 R17
       36 GETUPVAL                         R17 0
       37 GETTABLEKS                       R17 R17 K15 ["SCROLLBAR_PADDING"]
       39 SUB                              R15 R16 R17
       40 GETUPVAL                         R16 1
       41 GETTABLEKS                       R16 R16 K16 ["shouldShowPrices"]
       43 MOVE                             R17 R3
       44 CALL                             R16 1 1
       45 GETUPVAL                         R17 2
       46 GETTABLEKS                       R17 R17 K17 ["getAssetsPerRow"]
       48 MOVE                             R18 R15
       49 CALL                             R17 1 1
       50 GETUPVAL                         R18 2
       51 GETTABLEKS                       R18 R18 K18 ["getAssetCellHeightWithPadding"]
       53 MOVE                             R19 R16
       54 CALL                             R18 1 1
       55 DIV                              R22 R10 R17
       56 FASTCALL1                        MATH_FLOOR R22 ; [+2]
       57 GETIMPORT                        R21 K21 [math.floor]
       59 CALL                             R21 1 1
       60 MUL                              R20 R21 R18
       61 FASTCALL2K                       MATH_MAX R20 K22 ; [+4]
       63 LOADK                            R21 K22 [0]
       64 GETIMPORT                        R19 K24 [math.max]
       66 CALL                             R19 2 1
       67 SUB                              R20 R11 R19
       68 JUMPIFNOTLT                      R11 R19 ; [+2]
       70 LOADN                            R20 0
       71 JUMPIFNOT                        R7 ; [+3]
       72 MOVE                             R21 R7
       73 CALL                             R21 0 1
       74 JUMPIF                           R21 ; [+1]
       75 LOADNIL                          R21
       76 JUMPIFNOT                        R21 ; [+1]
       77 ADDK                             R19 R19 K25 [10]
       78 GETTABLEKS                       R22 R0 K1 ["state"]
       80 GETTABLEKS                       R22 R22 K26 ["isTopContentWithinView"]
       82 AND                              R21 R22 R21
       83 GETUPVAL                         R22 3
       84 GETTABLEKS                       R22 R22 K27 ["createElement"]
       86 GETUPVAL                         R23 4
       87 NEWTABLE                         R24 8 0
       89 GETIMPORT                        R25 K30 [UDim2.new]
       91 LOADN                            R26 0
       92 LOADN                            R27 0
       93 LOADN                            R28 0
       94 MOVE                             R29 R14
       95 CALL                             R25 4 1
       96 SETTABLEKS                       R25 R24 K31 ["CanvasSize"]
       98 SETTABLEKS                       R5 R24 K4 ["LayoutOrder"]
      100 GETTABLEKS                       R25 R0 K32 ["onScroll"]
      102 SETTABLEKS                       R25 R24 K32 ["onScroll"]
      104 NOT                              R25 R4
      105 SETTABLEKS                       R25 R24 K33 ["scrollingEnabled"]
      107 GETIMPORT                        R25 K30 [UDim2.new]
      109 LOADN                            R26 1
      110 LOADN                            R27 0
      111 LOADN                            R28 1
      112 LOADN                            R29 0
      113 CALL                             R25 4 1
      114 SETTABLEKS                       R25 R24 K7 ["Size"]
      116 GETTABLEKS                       R25 R9 K34 ["homeView"]
      118 GETTABLEKS                       R25 R25 K35 ["backgroundColor"]
      120 SETTABLEKS                       R25 R24 K36 ["BackgroundColor"]
      122 GETUPVAL                         R25 3
      123 GETTABLEKS                       R25 R25 K37 ["Ref"]
      125 GETTABLEKS                       R26 R0 K38 ["scrollingFrameRef"]
      127 SETTABLE                         R26 R24 R25
      128 GETTABLEKS                       R25 R0 K39 ["getWidth"]
      130 SETTABLEKS                       R25 R24 K40 ["OnAbsoluteSizeChanged"]
      132 DUPTABLE                         R25 K44 [{"UIPadding", "TopContent", "InnerGrid"}]
      133 GETUPVAL                         R26 3
      134 GETTABLEKS                       R26 R26 K27 ["createElement"]
      136 LOADK                            R27 K41 ["UIPadding"]
      137 DUPTABLE                         R28 K49 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      138 GETIMPORT                        R29 K51 [UDim.new]
      140 LOADN                            R30 0
      141 GETUPVAL                         R31 0
      142 GETTABLEKS                       R31 R31 K14 ["MAIN_VIEW_PADDING"]
      144 CALL                             R29 2 1
      145 SETTABLEKS                       R29 R28 K45 ["PaddingBottom"]
      147 GETIMPORT                        R29 K51 [UDim.new]
      149 LOADN                            R30 0
      150 GETUPVAL                         R31 0
      151 GETTABLEKS                       R31 R31 K14 ["MAIN_VIEW_PADDING"]
      153 CALL                             R29 2 1
      154 SETTABLEKS                       R29 R28 K46 ["PaddingLeft"]
      156 GETIMPORT                        R29 K51 [UDim.new]
      158 LOADN                            R30 0
      159 GETUPVAL                         R31 0
      160 GETTABLEKS                       R31 R31 K14 ["MAIN_VIEW_PADDING"]
      162 CALL                             R29 2 1
      163 SETTABLEKS                       R29 R28 K47 ["PaddingRight"]
      165 GETIMPORT                        R29 K51 [UDim.new]
      167 LOADN                            R30 0
      168 GETUPVAL                         R31 0
      169 GETTABLEKS                       R31 R31 K14 ["MAIN_VIEW_PADDING"]
      171 CALL                             R29 2 1
      172 SETTABLEKS                       R29 R28 K48 ["PaddingTop"]
      174 CALL                             R26 2 1
      175 SETTABLEKS                       R26 R25 K41 ["UIPadding"]
      177 JUMPIFNOT                        R21 ; [+46]
      178 GETUPVAL                         R26 3
      179 GETTABLEKS                       R26 R26 K27 ["createElement"]
      181 LOADK                            R27 K52 ["Frame"]
      182 NEWTABLE                         R28 8 0
      184 GETIMPORT                        R29 K56 [Enum.AutomaticSize.Y]
      186 SETTABLEKS                       R29 R28 K54 ["AutomaticSize"]
      188 LOADN                            R29 1
      189 SETTABLEKS                       R29 R28 K57 ["BackgroundTransparency"]
      191 GETIMPORT                        R29 K30 [UDim2.new]
      193 LOADN                            R30 1
      194 LOADN                            R31 0
      195 LOADN                            R32 0
      196 MOVE                             R33 R11
      197 CALL                             R29 4 1
      198 SETTABLEKS                       R29 R28 K7 ["Size"]
      200 GETUPVAL                         R29 3
      201 GETTABLEKS                       R29 R29 K58 ["Change"]
      203 GETTABLEKS                       R29 R29 K59 ["AbsoluteSize"]
      205 GETTABLEKS                       R30 R0 K60 ["updateTopContentHeight"]
      207 SETTABLE                         R30 R28 R29
      208 GETUPVAL                         R29 3
      209 GETTABLEKS                       R29 R29 K37 ["Ref"]
      211 GETTABLEKS                       R30 R0 K61 ["topContentRef"]
      213 SETTABLE                         R30 R28 R29
      214 LOADN                            R29 2
      215 SETTABLEKS                       R29 R28 K62 ["ZIndex"]
      217 NEWTABLE                         R29 0 1
      219 MOVE                             R30 R21
      220 SETLIST                          R29 R30 1 [1]
      222 CALL                             R26 3 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R26
      225 SETTABLEKS                       R26 R25 K42 ["TopContent"]
      227 GETUPVAL                         R26 3
      228 GETTABLEKS                       R26 R26 K27 ["createElement"]
      230 LOADK                            R27 K52 ["Frame"]
      231 NEWTABLE                         R28 4 0
      233 LOADN                            R29 1
      234 SETTABLEKS                       R29 R28 K57 ["BackgroundTransparency"]
      236 GETIMPORT                        R29 K30 [UDim2.new]
      238 LOADN                            R30 0
      239 LOADN                            R31 0
      240 LOADN                            R32 0
      241 ADD                              R33 R19 R20
      242 CALL                             R29 4 1
      243 SETTABLEKS                       R29 R28 K5 ["Position"]
      245 GETIMPORT                        R29 K30 [UDim2.new]
      247 LOADN                            R30 1
      248 LOADN                            R31 0
      249 LOADN                            R32 1
      250 MINUS                            R33 R20
      251 CALL                             R29 4 1
      252 SETTABLEKS                       R29 R28 K7 ["Size"]
      254 GETUPVAL                         R29 3
      255 GETTABLEKS                       R29 R29 K63 ["Event"]
      257 GETTABLEKS                       R29 R29 K64 ["InputEnded"]
      259 GETTABLEKS                       R30 R0 K65 ["onFocusLost"]
      261 SETTABLE                         R30 R28 R29
      262 MOVE                             R29 R13
      263 CALL                             R26 3 1
      264 SETTABLEKS                       R26 R25 K43 ["InnerGrid"]
      266 CALL                             R22 3 1
      267 GETUPVAL                         R23 3
      268 GETTABLEKS                       R23 R23 K27 ["createElement"]
      270 GETUPVAL                         R24 5
      271 GETUPVAL                         R25 6
      272 GETTABLEKS                       R25 R25 K66 ["join"]
      274 DUPTABLE                         R26 K67 [{"BackgroundColor", "LayoutOrder", "Position", "Size"}]
      275 GETTABLEKS                       R27 R9 K34 ["homeView"]
      277 GETTABLEKS                       R27 R27 K35 ["backgroundColor"]
      279 SETTABLEKS                       R27 R26 K36 ["BackgroundColor"]
      281 SETTABLEKS                       R5 R26 K4 ["LayoutOrder"]
      283 SETTABLEKS                       R6 R26 K5 ["Position"]
      285 SETTABLEKS                       R8 R26 K7 ["Size"]
      287 GETTABLEKS                       R27 R1 K68 ["WrapperProps"]
      289 CALL                             R25 2 1
      290 DUPTABLE                         R26 K70 [{"StyledScrollingFrame"}]
      291 SETTABLEKS                       R22 R26 K69 ["StyledScrollingFrame"]
      293 CALL                             R23 3 -1
      294 RETURN                           R23 -1

PROTO_21:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["assets"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["pageInfo"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R3 K2 ["categoryName"]
       17 JUMPIF                           R4 ; [+5]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["DEFAULT"]
       21 GETTABLEKS                       R4 R4 K4 ["name"]
       23 GETTABLEKS                       R5 R1 K5 ["AssetMap"]
       25 DUPTABLE                         R6 K9 [{"assetMap", "categoryName", "isPreviewing", "networkErrors"}]
       26 SETTABLEKS                       R5 R6 K6 ["assetMap"]
       28 SETTABLEKS                       R4 R6 K2 ["categoryName"]
       30 GETTABLEKS                       R8 R2 K7 ["isPreviewing"]
       32 ORK                              R7 R8 K10 [False]
       33 SETTABLEKS                       R7 R6 K7 ["isPreviewing"]
       35 GETTABLEKS                       R7 R0 K8 ["networkErrors"]
       37 JUMPIF                           R7 ; [+2]
       38 NEWTABLE                         R7 0 0
       40 SETTABLEKS                       R7 R6 K8 ["networkErrors"]
       42 RETURN                           R6 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R1 K8 ["Roact"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K5 [require]
       28 GETTABLEKS                       R6 R1 K9 ["RoactRodux"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R1 K10 ["Dash"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R3 K11 ["UI"]
       38 GETTABLEKS                       R7 R7 K12 ["Pane"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Src"]
       44 GETTABLEKS                       R9 R9 K14 ["Util"]
       46 GETTABLEKS                       R9 R9 K15 ["Constants"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Src"]
       53 GETTABLEKS                       R10 R10 K14 ["Util"]
       55 GETTABLEKS                       R10 R10 K16 ["Layouter"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K13 ["Src"]
       62 GETTABLEKS                       R11 R11 K17 ["ContextServices"]
       64 GETTABLEKS                       R11 R11 K18 ["Settings"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R12 R0 K13 ["Src"]
       71 GETTABLEKS                       R12 R12 K17 ["ContextServices"]
       73 GETTABLEKS                       R12 R12 K19 ["ModalContext"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K5 [require]
       78 GETTABLEKS                       R13 R0 K13 ["Src"]
       80 GETTABLEKS                       R13 R13 K20 ["Types"]
       82 GETTABLEKS                       R13 R13 K21 ["AssetLogicTypes"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K5 [require]
       87 GETTABLEKS                       R14 R0 K13 ["Src"]
       89 GETTABLEKS                       R14 R14 K20 ["Types"]
       91 GETTABLEKS                       R14 R14 K22 ["Category"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K13 ["Src"]
       98 GETTABLEKS                       R15 R15 K23 ["Components"]
      100 GETTABLEKS                       R15 R15 K24 ["Asset"]
      102 GETTABLEKS                       R15 R15 K24 ["Asset"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K13 ["Src"]
      109 GETTABLEKS                       R16 R16 K23 ["Components"]
      111 GETTABLEKS                       R16 R16 K25 ["StyledScrollingFrame"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K13 ["Src"]
      118 GETTABLEKS                       R17 R17 K26 ["Models"]
      120 GETTABLEKS                       R17 R17 K27 ["AssetInfo"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R1 K7 ["Framework"]
      127 CALL                             R17 1 1
      128 GETTABLEKS                       R17 R17 K17 ["ContextServices"]
      130 GETTABLEKS                       R18 R17 K28 ["withContext"]
      132 GETTABLEKS                       R19 R3 K29 ["Wrappers"]
      134 GETTABLEKS                       R19 R19 K30 ["withAbsoluteSizeAndPosition"]
      136 GETIMPORT                        R20 K5 [require]
      138 GETTABLEKS                       R21 R0 K13 ["Src"]
      140 GETTABLEKS                       R21 R21 K14 ["Util"]
      142 GETTABLEKS                       R21 R21 K31 ["SharedFlags"]
      144 GETTABLEKS                       R21 R21 K32 ["getFFlagToolboxFixInventoryGridSearch"]
      146 CALL                             R20 1 1
      147 GETTABLEKS                       R21 R4 K33 ["PureComponent"]
      149 LOADK                            R23 K34 ["AssetGrid"]
      150 NAMECALL                         R21 R21 K35 ["extend"]
      152 CALL                             R21 2 1
      153 DUPTABLE                         R22 K38 [{"AssetIds", "Size"}]
      154 NEWTABLE                         R23 0 0
      156 SETTABLEKS                       R23 R22 K36 ["AssetIds"]
      158 GETIMPORT                        R23 K41 [UDim2.new]
      160 LOADN                            R24 1
      161 LOADN                            R25 0
      162 LOADN                            R26 1
      163 LOADN                            R27 0
      164 CALL                             R23 4 1
      165 SETTABLEKS                       R23 R22 K37 ["Size"]
      167 SETTABLEKS                       R22 R21 K42 ["defaultProps"]
      169 DUPCLOSURE                       R22 K43 [PROTO_0]
      170 SETTABLEKS                       R22 R21 K44 ["didMount"]
      172 DUPCLOSURE                       R22 K45 [PROTO_17]
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R20
      179 SETTABLEKS                       R22 R21 K46 ["init"]
      181 DUPCLOSURE                       R22 K47 [PROTO_18]
      182 SETTABLEKS                       R22 R21 K48 ["didUpdate"]
      184 DUPCLOSURE                       R22 K49 [PROTO_19]
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R2
      187 SETTABLEKS                       R22 R21 K50 ["getDerivedStateFromProps"]
      189 DUPCLOSURE                       R22 K51 [PROTO_20]
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R6
      197 SETTABLEKS                       R22 R21 K52 ["render"]
      199 MOVE                             R22 R18
      200 DUPTABLE                         R23 K55 [{"Settings", "Stylizer", "Modal"}]
      201 SETTABLEKS                       R10 R23 K18 ["Settings"]
      203 GETTABLEKS                       R24 R17 K53 ["Stylizer"]
      205 SETTABLEKS                       R24 R23 K53 ["Stylizer"]
      207 SETTABLEKS                       R11 R23 K54 ["Modal"]
      209 CALL                             R22 1 1
      210 MOVE                             R23 R21
      211 CALL                             R22 1 1
      212 MOVE                             R21 R22
      213 DUPCLOSURE                       R22 K56 [PROTO_21]
      214 CAPTURE                          VAL R13
      215 GETTABLEKS                       R23 R5 K57 ["connect"]
      217 MOVE                             R24 R22
      218 LOADNIL                          R25
      219 CALL                             R23 2 1
      220 MOVE                             R24 R21
      221 CALL                             R23 1 1
      222 MOVE                             R21 R23
      223 NEWCLOSURE                       R23 P6
      224 CAPTURE                          VAL R4
      225 CAPTURE                          REF R21
      226 SETGLOBAL                        R23 K58 ["TypedComponent"]
      228 MOVE                             R23 R19
      229 GETGLOBAL                        R24 K58 ["TypedComponent"]
      231 CALL                             R23 1 -1
      232 CLOSEUPVALS                      R21
      233 RETURN                           R23 -1
