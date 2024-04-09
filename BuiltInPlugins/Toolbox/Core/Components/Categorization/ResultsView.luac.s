PROTO_0:
  GETTABLEKS R1 R0 K0 ["pageInfo"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["FFlagToolboxContextualRecommendations not enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["contextualAssets"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_2:
  LOADK R1 K0 ["< "]
  GETUPVAL R2 0
  LOADK R4 K1 ["General"]
  LOADK R5 K2 ["BackToHome"]
  DUPTABLE R6 K4 [{"assetType"}]
  GETUPVAL R8 1
  GETUPVAL R9 0
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["CategoryName"]
  GETTABLE R7 R8 R9
  SETTABLEKS R7 R6 K3 ["assetType"]
  NAMECALL R2 R2 K6 ["getText"]
  CALL R2 4 1
  CONCAT R0 R1 R2
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K7 ["createElement"]
  GETUPVAL R2 4
  DUPTABLE R3 K12 [{"LayoutOrder", "OnClick", "Style", "Text"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K8 ["LayoutOrder"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K13 ["OnClickBack"]
  SETTABLEKS R4 R3 K9 ["OnClick"]
  LOADK R4 K14 ["Unobtrusive"]
  SETTABLEKS R4 R3 K10 ["Style"]
  SETTABLEKS R0 R3 K11 ["Text"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["loading"]
  JUMPIFNOT R1 [+57]
  GETTABLEKS R2 R0 K1 ["assetIds"]
  LENGTH R1 R2
  JUMPIFNOTEQKN R1 K2 [0] [+53]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createElement"]
  LOADK R2 K4 ["Frame"]
  DUPTABLE R3 K9 [{"BackgroundColor3", "LayoutOrder", "Position", "Size"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["backgroundColor"]
  SETTABLEKS R4 R3 K5 ["BackgroundColor3"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["LayoutOrder"]
  SETTABLEKS R4 R3 K6 ["LayoutOrder"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["Position"]
  SETTABLEKS R4 R3 K7 ["Position"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["Size"]
  SETTABLEKS R4 R3 K8 ["Size"]
  DUPTABLE R4 K12 [{"LoadingIndicator"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K14 [{"AnchorPoint", "Position"}]
  GETIMPORT R8 K17 [Vector2.new]
  LOADK R9 K18 [0.5]
  LOADK R10 K18 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["AnchorPoint"]
  GETIMPORT R8 K20 [UDim2.new]
  LOADK R9 K18 [0.5]
  LOADN R10 0
  LOADK R11 K18 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K7 ["Position"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["LoadingIndicator"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K21 ["categoryIsAudio"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K22 ["CategoryName"]
  CALL R1 1 1
  JUMPIFNOT R1 [+43]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 5
  DUPTABLE R3 K27 [{"ResultsState", "PageSize", "RenderTopContent", "AssetLogicWrapperProps"}]
  SETTABLEKS R0 R3 K23 ["ResultsState"]
  GETUPVAL R4 6
  SETTABLEKS R4 R3 K24 ["PageSize"]
  GETUPVAL R4 7
  SETTABLEKS R4 R3 K25 ["RenderTopContent"]
  DUPTABLE R4 K33 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K28 ["CanInsertAsset"]
  SETTABLEKS R5 R4 K28 ["CanInsertAsset"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K29 ["LogAssetImpression"]
  SETTABLEKS R5 R4 K29 ["LogAssetImpression"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K30 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R5 R4 K30 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K31 ["TryInsert"]
  SETTABLEKS R5 R4 K31 ["TryInsert"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R5 R4 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R4 R3 K26 ["AssetLogicWrapperProps"]
  CALL R1 2 -1
  RETURN R1 -1
  GETUPVAL R1 8
  DUPTABLE R2 K38 [{"AssetIds", "AssetMap", "LayoutOrder", "Position", "RenderTopContent", "RequestNextPage", "Size", "CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "TryInsert", "TryOpenAssetConfig"}]
  GETTABLEKS R3 R0 K1 ["assetIds"]
  SETTABLEKS R3 R2 K34 ["AssetIds"]
  GETTABLEKS R3 R0 K39 ["assetMap"]
  SETTABLEKS R3 R2 K35 ["AssetMap"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["LayoutOrder"]
  SETTABLEKS R3 R2 K6 ["LayoutOrder"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["Position"]
  SETTABLEKS R3 R2 K7 ["Position"]
  GETUPVAL R3 7
  SETTABLEKS R3 R2 K25 ["RenderTopContent"]
  GETTABLEKS R3 R0 K40 ["fetchNextPage"]
  SETTABLEKS R3 R2 K36 ["RequestNextPage"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["Size"]
  SETTABLEKS R3 R2 K8 ["Size"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K28 ["CanInsertAsset"]
  SETTABLEKS R3 R2 K28 ["CanInsertAsset"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K29 ["LogAssetImpression"]
  SETTABLEKS R3 R2 K29 ["LogAssetImpression"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K30 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R3 R2 K30 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R4 9
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K37 ["OnSearchByCreator"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K37 ["OnSearchByCreator"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K31 ["TryInsert"]
  SETTABLEKS R3 R2 K31 ["TryInsert"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R3 R2 K32 ["TryOpenAssetConfig"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["ContextServices"]
  GETTABLEKS R2 R3 K2 ["Localization"]
  NAMECALL R2 R2 K3 ["use"]
  CALL R2 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["ContextServices"]
  GETTABLEKS R3 R4 K4 ["Stylizer"]
  NAMECALL R3 R3 K3 ["use"]
  CALL R3 1 1
  GETUPVAL R4 3
  NAMECALL R4 R4 K3 ["use"]
  CALL R4 1 1
  GETUPVAL R5 4
  GETUPVAL R6 5
  CALL R5 1 1
  GETUPVAL R7 6
  CALL R7 0 1
  JUMPIFNOT R7 [+4]
  GETUPVAL R6 4
  GETUPVAL R7 7
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  GETUPVAL R7 8
  NEWCLOSURE R8 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  NEWTABLE R9 0 3
  MOVE R10 R2
  GETTABLEKS R11 R1 K5 ["CategoryName"]
  GETTABLEKS R12 R1 K6 ["OnClickBack"]
  SETLIST R9 R10 3 [1]
  CALL R7 2 1
  GETUPVAL R8 8
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U10
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE VAL R7
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  NEWTABLE R10 0 0
  CALL R8 2 1
  GETUPVAL R10 18
  GETTABLEKS R9 R10 K7 ["Generator"]
  DUPTABLE R10 K21 [{"assetsInCameraViewport", "assetsInCameraVicinity", "networkInterface", "categoryName", "sectionName", "sortName", "searchTerm", "queryParams", "initialPageSize", "includeUnverifiedCreators", "searchSource", "qualityFilterData", "render"}]
  GETUPVAL R12 6
  CALL R12 0 1
  JUMPIFNOT R12 [+10]
  GETTABLEKS R12 R1 K22 ["SectionName"]
  GETUPVAL R14 19
  GETTABLEKS R13 R14 K23 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R12 R13 [+4]
  GETTABLEKS R11 R6 K8 ["assetsInCameraViewport"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K8 ["assetsInCameraViewport"]
  GETUPVAL R12 6
  CALL R12 0 1
  JUMPIFNOT R12 [+10]
  GETTABLEKS R12 R1 K22 ["SectionName"]
  GETUPVAL R14 19
  GETTABLEKS R13 R14 K23 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R12 R13 [+4]
  GETTABLEKS R11 R6 K9 ["assetsInCameraVicinity"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K9 ["assetsInCameraVicinity"]
  GETTABLEKS R11 R4 K10 ["networkInterface"]
  SETTABLEKS R11 R10 K10 ["networkInterface"]
  GETTABLEKS R11 R1 K5 ["CategoryName"]
  SETTABLEKS R11 R10 K11 ["categoryName"]
  GETTABLEKS R11 R1 K22 ["SectionName"]
  SETTABLEKS R11 R10 K12 ["sectionName"]
  GETTABLEKS R11 R1 K24 ["SortName"]
  SETTABLEKS R11 R10 K13 ["sortName"]
  GETTABLEKS R11 R1 K25 ["SearchTerm"]
  SETTABLEKS R11 R10 K14 ["searchTerm"]
  GETTABLEKS R11 R1 K26 ["QueryParams"]
  SETTABLEKS R11 R10 K15 ["queryParams"]
  GETUPVAL R11 15
  SETTABLEKS R11 R10 K16 ["initialPageSize"]
  GETTABLEKS R11 R5 K17 ["includeUnverifiedCreators"]
  SETTABLEKS R11 R10 K17 ["includeUnverifiedCreators"]
  GETTABLEKS R11 R1 K27 ["SearchSource"]
  SETTABLEKS R11 R10 K18 ["searchSource"]
  GETUPVAL R12 20
  CALL R12 0 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R5 K28 ["ualityFilterData"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K19 ["qualityFilterData"]
  SETTABLEKS R8 R10 K20 ["render"]
  CALL R9 1 -1
  RETURN R9 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnClickBack"]
  JUMPIFNOT R2 [+2]
  MOVE R3 R2
  CALL R3 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  LOADK R3 K2 ["< "]
  LOADK R6 K3 ["General"]
  LOADK R7 K4 ["BackToHome"]
  DUPTABLE R8 K6 [{"assetType"}]
  GETUPVAL R10 1
  MOVE R11 R1
  CALL R10 1 1
  GETTABLEKS R11 R0 K7 ["CategoryName"]
  GETTABLE R9 R10 R11
  SETTABLEKS R9 R8 K5 ["assetType"]
  NAMECALL R4 R1 K8 ["getText"]
  CALL R4 4 1
  CONCAT R2 R3 R4
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 3
  DUPTABLE R5 K14 [{"LayoutOrder", "OnClick", "Style", "Text"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["LayoutOrder"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K15 ["onClickBack"]
  SETTABLEKS R6 R5 K11 ["OnClick"]
  LOADK R6 K16 ["Unobtrusive"]
  SETTABLEKS R6 R5 K12 ["Style"]
  SETTABLEKS R2 R5 K13 ["Text"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_7:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onClickBack"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K1 ["createTopContent"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["loading"]
  JUMPIFNOT R1 [+51]
  GETTABLEKS R2 R0 K1 ["assetIds"]
  LENGTH R1 R2
  JUMPIFNOTEQKN R1 K2 [0] [+47]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createElement"]
  LOADK R2 K4 ["Frame"]
  DUPTABLE R3 K9 [{"BackgroundColor3", "LayoutOrder", "Position", "Size"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["backgroundColor"]
  SETTABLEKS R4 R3 K5 ["BackgroundColor3"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K6 ["LayoutOrder"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K7 ["Position"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K8 ["Size"]
  DUPTABLE R4 K12 [{"LoadingIndicator"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K14 [{"AnchorPoint", "Position"}]
  GETIMPORT R8 K17 [Vector2.new]
  LOADK R9 K18 [0.5]
  LOADK R10 K18 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["AnchorPoint"]
  GETIMPORT R8 K20 [UDim2.new]
  LOADK R9 K18 [0.5]
  LOADN R10 0
  LOADK R11 K18 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K7 ["Position"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["LoadingIndicator"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K21 ["categoryIsAudio"]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K22 ["CategoryName"]
  CALL R1 1 1
  JUMPIFNOT R1 [+43]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 8
  DUPTABLE R3 K27 [{"ResultsState", "PageSize", "RenderTopContent", "AssetLogicWrapperProps"}]
  SETTABLEKS R0 R3 K23 ["ResultsState"]
  GETUPVAL R4 9
  SETTABLEKS R4 R3 K24 ["PageSize"]
  GETUPVAL R4 10
  SETTABLEKS R4 R3 K25 ["RenderTopContent"]
  DUPTABLE R4 K33 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K28 ["CanInsertAsset"]
  SETTABLEKS R5 R4 K28 ["CanInsertAsset"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K29 ["LogAssetImpression"]
  SETTABLEKS R5 R4 K29 ["LogAssetImpression"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K30 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R5 R4 K30 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K31 ["TryInsert"]
  SETTABLEKS R5 R4 K31 ["TryInsert"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R5 R4 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R4 R3 K26 ["AssetLogicWrapperProps"]
  CALL R1 2 -1
  RETURN R1 -1
  GETUPVAL R1 11
  DUPTABLE R2 K38 [{"AssetIds", "AssetMap", "LayoutOrder", "Position", "RenderTopContent", "RequestNextPage", "Size", "CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "TryInsert", "TryOpenAssetConfig"}]
  GETTABLEKS R3 R0 K1 ["assetIds"]
  SETTABLEKS R3 R2 K34 ["AssetIds"]
  GETTABLEKS R3 R0 K39 ["assetMap"]
  SETTABLEKS R3 R2 K35 ["AssetMap"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K6 ["LayoutOrder"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K7 ["Position"]
  GETUPVAL R3 10
  SETTABLEKS R3 R2 K25 ["RenderTopContent"]
  GETTABLEKS R3 R0 K40 ["fetchNextPage"]
  SETTABLEKS R3 R2 K36 ["RequestNextPage"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K8 ["Size"]
  GETUPVAL R3 12
  SETTABLEKS R3 R2 K28 ["CanInsertAsset"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K29 ["LogAssetImpression"]
  SETTABLEKS R3 R2 K29 ["LogAssetImpression"]
  GETUPVAL R3 13
  SETTABLEKS R3 R2 K30 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R4 14
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K37 ["OnSearchByCreator"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K37 ["OnSearchByCreator"]
  GETUPVAL R3 15
  SETTABLEKS R3 R2 K31 ["TryInsert"]
  GETUPVAL R3 16
  SETTABLEKS R3 R2 K32 ["TryOpenAssetConfig"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R1 K1 ["assetsInCameraViewport"]
  JUMP [+1]
  LOADNIL R2
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R1 K2 ["assetsInCameraVicinity"]
  JUMP [+1]
  LOADNIL R3
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Position"]
  GETTABLEKS R6 R1 K5 ["Size"]
  GETTABLEKS R7 R1 K6 ["Stylizer"]
  GETTABLEKS R8 R1 K7 ["CategoryName"]
  GETTABLEKS R9 R1 K8 ["SearchTerm"]
  GETTABLEKS R10 R1 K9 ["QueryParams"]
  GETTABLEKS R11 R1 K10 ["SectionName"]
  GETTABLEKS R12 R1 K11 ["SortName"]
  GETTABLEKS R13 R1 K12 ["IncludeUnverifiedCreators"]
  GETTABLEKS R14 R1 K13 ["CanInsertAsset"]
  GETTABLEKS R15 R1 K14 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R16 R1 K15 ["TryInsert"]
  GETTABLEKS R17 R1 K16 ["TryOpenAssetConfig"]
  GETTABLEKS R18 R1 K17 ["SearchSource"]
  GETTABLEKS R19 R0 K18 ["createTopContent"]
  CALL R19 0 1
  NEWCLOSURE R20 P0
  CAPTURE VAL R19
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K19 ["Generator"]
  DUPTABLE R22 K31 [{"assetsInCameraViewport", "assetsInCameraVicinity", "networkInterface", "categoryName", "sectionName", "sortName", "searchTerm", "queryParams", "initialPageSize", "includeUnverifiedCreators", "searchSource", "qualityFilterData", "render"}]
  GETUPVAL R24 0
  CALL R24 0 1
  JUMPIFNOT R24 [+7]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K32 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R11 R24 [+3]
  MOVE R23 R2
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K1 ["assetsInCameraViewport"]
  GETUPVAL R24 0
  CALL R24 0 1
  JUMPIFNOT R24 [+7]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K32 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R11 R24 [+3]
  MOVE R23 R3
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K2 ["assetsInCameraVicinity"]
  GETTABLEKS R24 R1 K33 ["Network"]
  GETTABLEKS R23 R24 K20 ["networkInterface"]
  SETTABLEKS R23 R22 K20 ["networkInterface"]
  SETTABLEKS R8 R22 K21 ["categoryName"]
  SETTABLEKS R11 R22 K22 ["sectionName"]
  SETTABLEKS R12 R22 K23 ["sortName"]
  SETTABLEKS R9 R22 K24 ["searchTerm"]
  SETTABLEKS R10 R22 K25 ["queryParams"]
  GETUPVAL R23 3
  SETTABLEKS R23 R22 K26 ["initialPageSize"]
  SETTABLEKS R13 R22 K27 ["includeUnverifiedCreators"]
  SETTABLEKS R18 R22 K28 ["searchSource"]
  GETUPVAL R24 4
  CALL R24 0 1
  JUMPIFNOT R24 [+3]
  GETTABLEKS R23 R1 K34 ["QualityFilterData"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K29 ["qualityFilterData"]
  NEWCLOSURE R23 P1
  CAPTURE UPVAL U5
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U3
  CAPTURE VAL R20
  CAPTURE UPVAL U9
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE UPVAL U10
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R23 R22 K30 ["render"]
  CALL R21 1 -1
  RETURN R21 -1

PROTO_11:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["pageInfo"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETTABLEKS R3 R0 K1 ["contextualAssets"]
  JUMPIF R3 [+4]
  NEWTABLE R3 0 0
  JUMP [+1]
  LOADNIL R3
  DUPTABLE R4 K6 [{"assetsInCameraViewport", "assetsInCameraVicinity", "IncludeUnverifiedCreators", "QualityFilterData"}]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K2 ["assetsInCameraViewport"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["assetsInCameraViewport"]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K3 ["assetsInCameraVicinity"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K3 ["assetsInCameraVicinity"]
  GETTABLEKS R5 R2 K7 ["includeUnverifiedCreators"]
  SETTABLEKS R5 R4 K4 ["IncludeUnverifiedCreators"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R2 K8 ["qualityFilterData"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K5 ["QualityFilterData"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagToolboxFunctionalComponentsForContextualRecs"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIFNOT R2 [+222]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Core"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["AssetGrid"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Core"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K15 ["AssetLogicWrapper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K6 ["Core"]
  GETTABLEKS R10 R11 K13 ["Components"]
  GETTABLEKS R9 R10 K16 ["Audio"]
  GETTABLEKS R8 R9 K17 ["AudioScrollerWrapper"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Core"]
  GETTABLEKS R10 R11 K18 ["Types"]
  GETTABLEKS R9 R10 K19 ["Category"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Core"]
  GETTABLEKS R11 R12 K20 ["Util"]
  GETTABLEKS R10 R11 K21 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Core"]
  GETTABLEKS R12 R13 K22 ["Localization"]
  GETTABLEKS R11 R12 K23 ["getLocalizedCategoryMap"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Core"]
  GETTABLEKS R13 R14 K18 ["Types"]
  GETTABLEKS R12 R13 K24 ["HomeTypes"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K6 ["Core"]
  GETTABLEKS R14 R15 K25 ["ContextServices"]
  GETTABLEKS R13 R14 K26 ["NetworkContext"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Core"]
  GETTABLEKS R15 R16 K13 ["Components"]
  GETTABLEKS R14 R15 K27 ["ResultsFetcher"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Core"]
  GETTABLEKS R16 R17 K18 ["Types"]
  GETTABLEKS R15 R16 K28 ["Sort"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K6 ["Core"]
  GETTABLEKS R17 R18 K29 ["Hooks"]
  GETTABLEKS R16 R17 K30 ["useSelector"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R20 R0 K6 ["Core"]
  GETTABLEKS R19 R20 K20 ["Util"]
  GETTABLEKS R18 R19 K31 ["SharedFlags"]
  GETTABLEKS R17 R18 K32 ["getFFlagToolboxFixInventoryGridSearch"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R21 R0 K6 ["Core"]
  GETTABLEKS R20 R21 K20 ["Util"]
  GETTABLEKS R19 R20 K31 ["SharedFlags"]
  GETTABLEKS R18 R19 K33 ["getFFlagToolboxContextualRecommendations"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K6 ["Core"]
  GETTABLEKS R20 R21 K7 ["Flags"]
  GETTABLEKS R19 R20 K34 ["getFFlagQualityFiltersInToolboxSearch"]
  CALL R18 1 1
  GETTABLEKS R20 R3 K35 ["UI"]
  GETTABLEKS R19 R20 K36 ["LoadingIndicator"]
  GETTABLEKS R21 R3 K35 ["UI"]
  GETTABLEKS R20 R21 K37 ["LinkText"]
  GETTABLEKS R21 R2 K38 ["useCallback"]
  GETTABLEKS R22 R9 K39 ["TOOLBOX_ITEM_SEARCH_LIMIT"]
  DUPTABLE R23 K44 [{"Size", "Category", "SearchTerm", "SectionName", "SortName"}]
  GETIMPORT R24 K47 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K40 ["Size"]
  GETTABLEKS R25 R8 K48 ["FREE_MODELS"]
  GETTABLEKS R24 R25 K49 ["name"]
  SETTABLEKS R24 R23 K19 ["Category"]
  LOADNIL R24
  SETTABLEKS R24 R23 K41 ["SearchTerm"]
  LOADNIL R24
  SETTABLEKS R24 R23 K42 ["SectionName"]
  GETTABLEKS R24 R14 K50 ["getDefaultSortNameForCategory"]
  GETTABLEKS R26 R8 K48 ["FREE_MODELS"]
  GETTABLEKS R25 R26 K49 ["name"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K43 ["SortName"]
  DUPCLOSURE R24 K51 [PROTO_0]
  DUPCLOSURE R25 K52 [PROTO_1]
  CAPTURE VAL R17
  DUPCLOSURE R26 K53 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R23
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R24
  CAPTURE VAL R17
  CAPTURE VAL R25
  CAPTURE VAL R21
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R22
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R18
  RETURN R26 1
  GETTABLEKS R2 R0 K9 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K54 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K11 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Core"]
  GETTABLEKS R7 R8 K18 ["Types"]
  GETTABLEKS R6 R7 K28 ["Sort"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K55 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K12 ["Dash"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K25 ["ContextServices"]
  GETTABLEKS R9 R8 K56 ["withContext"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Core"]
  GETTABLEKS R12 R13 K25 ["ContextServices"]
  GETTABLEKS R11 R12 K26 ["NetworkContext"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K35 ["UI"]
  GETTABLEKS R12 R11 K36 ["LoadingIndicator"]
  GETTABLEKS R13 R11 K37 ["LinkText"]
  GETTABLEKS R14 R11 K57 ["Pane"]
  GETTABLEKS R15 R11 K58 ["TextLabel"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Core"]
  GETTABLEKS R18 R19 K13 ["Components"]
  GETTABLEKS R17 R18 K15 ["AssetLogicWrapper"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Core"]
  GETTABLEKS R19 R20 K13 ["Components"]
  GETTABLEKS R18 R19 K14 ["AssetGrid"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R22 R0 K6 ["Core"]
  GETTABLEKS R21 R22 K13 ["Components"]
  GETTABLEKS R20 R21 K16 ["Audio"]
  GETTABLEKS R19 R20 K17 ["AudioScrollerWrapper"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K6 ["Core"]
  GETTABLEKS R21 R22 K13 ["Components"]
  GETTABLEKS R20 R21 K27 ["ResultsFetcher"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K6 ["Core"]
  GETTABLEKS R22 R23 K22 ["Localization"]
  GETTABLEKS R21 R22 K23 ["getLocalizedCategoryMap"]
  CALL R20 1 1
  GETTABLEKS R22 R0 K6 ["Core"]
  GETTABLEKS R21 R22 K20 ["Util"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R21 K21 ["Constants"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K6 ["Core"]
  GETTABLEKS R25 R26 K18 ["Types"]
  GETTABLEKS R24 R25 K19 ["Category"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K6 ["Core"]
  GETTABLEKS R26 R27 K18 ["Types"]
  GETTABLEKS R25 R26 K24 ["HomeTypes"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K6 ["Core"]
  GETTABLEKS R27 R28 K59 ["Models"]
  GETTABLEKS R26 R27 K60 ["AssetInfo"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R30 R0 K6 ["Core"]
  GETTABLEKS R29 R30 K20 ["Util"]
  GETTABLEKS R28 R29 K31 ["SharedFlags"]
  GETTABLEKS R27 R28 K32 ["getFFlagToolboxFixInventoryGridSearch"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R31 R0 K6 ["Core"]
  GETTABLEKS R30 R31 K20 ["Util"]
  GETTABLEKS R29 R30 K31 ["SharedFlags"]
  GETTABLEKS R28 R29 K33 ["getFFlagToolboxContextualRecommendations"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R31 R0 K6 ["Core"]
  GETTABLEKS R30 R31 K7 ["Flags"]
  GETTABLEKS R29 R30 K34 ["getFFlagQualityFiltersInToolboxSearch"]
  CALL R28 1 1
  GETTABLEKS R29 R22 K39 ["TOOLBOX_ITEM_SEARCH_LIMIT"]
  GETTABLEKS R30 R3 K61 ["PureComponent"]
  LOADK R32 K62 ["ResultsView"]
  NAMECALL R30 R30 K63 ["extend"]
  CALL R30 2 1
  DUPTABLE R31 K44 [{"Size", "Category", "SearchTerm", "SectionName", "SortName"}]
  GETIMPORT R32 K47 [UDim2.new]
  LOADN R33 1
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K40 ["Size"]
  GETTABLEKS R33 R23 K48 ["FREE_MODELS"]
  GETTABLEKS R32 R33 K49 ["name"]
  SETTABLEKS R32 R31 K19 ["Category"]
  LOADNIL R32
  SETTABLEKS R32 R31 K41 ["SearchTerm"]
  LOADNIL R32
  SETTABLEKS R32 R31 K42 ["SectionName"]
  GETTABLEKS R32 R5 K50 ["getDefaultSortNameForCategory"]
  GETTABLEKS R34 R23 K48 ["FREE_MODELS"]
  GETTABLEKS R33 R34 K49 ["name"]
  CALL R32 1 1
  SETTABLEKS R32 R31 K43 ["SortName"]
  SETTABLEKS R31 R30 K64 ["defaultProps"]
  DUPCLOSURE R31 K65 [PROTO_7]
  CAPTURE VAL R20
  CAPTURE VAL R3
  CAPTURE VAL R13
  SETTABLEKS R31 R30 K66 ["init"]
  DUPCLOSURE R31 K67 [PROTO_10]
  CAPTURE VAL R27
  CAPTURE VAL R19
  CAPTURE VAL R22
  CAPTURE VAL R29
  CAPTURE VAL R28
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R23
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R26
  SETTABLEKS R31 R30 K68 ["render"]
  DUPCLOSURE R31 K69 [PROTO_11]
  CAPTURE VAL R27
  CAPTURE VAL R28
  SETGLOBAL R31 K70 ["mapStateToProps"]
  MOVE R31 R9
  DUPTABLE R32 K73 [{"Localization", "Stylizer", "Network"}]
  GETTABLEKS R33 R8 K22 ["Localization"]
  SETTABLEKS R33 R32 K22 ["Localization"]
  GETTABLEKS R33 R8 K71 ["Stylizer"]
  SETTABLEKS R33 R32 K71 ["Stylizer"]
  SETTABLEKS R10 R32 K72 ["Network"]
  CALL R31 1 1
  MOVE R32 R30
  CALL R31 1 1
  MOVE R30 R31
  GETTABLEKS R31 R6 K74 ["connect"]
  GETGLOBAL R32 K70 ["mapStateToProps"]
  CALL R31 1 1
  MOVE R32 R30
  CALL R31 1 -1
  RETURN R31 -1
