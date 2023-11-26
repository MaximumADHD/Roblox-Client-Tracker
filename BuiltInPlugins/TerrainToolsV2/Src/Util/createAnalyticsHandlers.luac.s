PROTO_0:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  DUPTABLE R3 K6 [{"studioSid", "clientId", "placeId", "userId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K7 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K8 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["clientId"]
  GETIMPORT R5 K10 [game]
  GETTABLEKS R4 R5 K11 ["PlaceId"]
  SETTABLEKS R4 R3 K4 ["placeId"]
  GETUPVAL R4 2
  NAMECALL R4 R4 K12 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["userId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K13 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+17]
  GETIMPORT R3 K15 [print]
  LOADK R4 K16 ["Terrain SendEvent eventName=%s args=%s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K18 [tostring]
  CALL R6 1 1
  GETUPVAL R7 4
  MOVE R9 R2
  NAMECALL R7 R7 K19 ["JSONEncode"]
  CALL R7 2 -1
  NAMECALL R4 R4 K20 ["format"]
  CALL R4 -1 -1
  CALL R3 -1 0
  GETUPVAL R3 1
  LOADK R5 K21 ["studio"]
  LOADK R6 K22 ["Terrain"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K23 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  ORK R1 R1 K0 [1]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["LogAnalytics"]
  CALL R2 0 1
  JUMPIFNOT R2 [+17]
  GETIMPORT R2 K3 [print]
  LOADK R3 K4 ["Terrain ReportCounter counterName=%s count=%s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K6 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K6 [tostring]
  CALL R6 1 1
  NAMECALL R3 R3 K7 ["format"]
  CALL R3 3 -1
  CALL R2 -1 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K8 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  LOADK R3 K0 ["ToolSelected"]
  DUPTABLE R4 K2 [{"name"}]
  SETTABLEKS R1 R4 K1 ["name"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  LOADK R3 K0 ["TabSelected"]
  DUPTABLE R4 K2 [{"name"}]
  SETTABLEKS R1 R4 K1 ["name"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+17]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["Terrain ReportCounter counterName=%s count=%s"]
  LOADK R5 K5 ["TerrainToolsToggleButton"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K7 [tostring]
  CALL R4 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  NAMECALL R2 R2 K8 ["format"]
  CALL R2 3 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K5 ["TerrainToolsToggleButton"]
  MOVE R4 R0
  NAMECALL R1 R1 K9 ["ReportCounter"]
  CALL R1 3 0
  GETUPVAL R0 2
  LOADK R1 K10 ["ToggleWidget"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+17]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["Terrain ReportCounter counterName=%s count=%s"]
  LOADK R5 K5 ["TerrainToolsOpenWidget"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K7 [tostring]
  CALL R4 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  NAMECALL R2 R2 K8 ["format"]
  CALL R2 3 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K5 ["TerrainToolsOpenWidget"]
  MOVE R4 R0
  NAMECALL R1 R1 K9 ["ReportCounter"]
  CALL R1 3 0
  GETUPVAL R0 2
  LOADK R1 K10 ["OpenWidget"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  LOADNIL R0
  ORK R0 R0 K0 [1]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["LogAnalytics"]
  CALL R1 0 1
  JUMPIFNOT R1 [+17]
  GETIMPORT R1 K3 [print]
  LOADK R2 K4 ["Terrain ReportCounter counterName=%s count=%s"]
  LOADK R5 K5 ["TerrainToolsCloseWidget"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K7 [tostring]
  CALL R4 1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  NAMECALL R2 R2 K8 ["format"]
  CALL R2 3 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADK R3 K5 ["TerrainToolsCloseWidget"]
  MOVE R4 R0
  NAMECALL R1 R1 K9 ["ReportCounter"]
  CALL R1 3 0
  GETUPVAL R0 2
  LOADK R1 K10 ["CloseWidget"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R4 0
  LOADK R5 K0 ["GenerateTerrain"]
  DUPTABLE R6 K4 [{"numVoxels", "biomesize", "seed"}]
  SETTABLEKS R1 R6 K1 ["numVoxels"]
  SETTABLEKS R2 R6 K2 ["biomesize"]
  SETTABLEKS R3 R6 K3 ["seed"]
  CALL R4 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  LOADK R3 K0 ["UseTerrainTool"]
  DUPTABLE R4 K2 [{"toolName"}]
  SETTABLEKS R1 R4 K1 ["toolName"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  LOADK R3 K0 ["UseTerrainTool"]
  DUPTABLE R4 K18 [{"toolName", "brushShape", "cursorSize", "cursorHeight", "strength", "material", "autoMaterial", "flattenMode", "pivot", "ignoreWater", "ignoreParts", "planeLock", "fixedPlane", "snapToVoxel", "planePositionY", "source", "target"}]
  GETTABLEKS R5 R1 K19 ["currentTool"]
  SETTABLEKS R5 R4 K1 ["toolName"]
  GETTABLEKS R5 R1 K2 ["brushShape"]
  SETTABLEKS R5 R4 K2 ["brushShape"]
  GETTABLEKS R5 R1 K3 ["cursorSize"]
  SETTABLEKS R5 R4 K3 ["cursorSize"]
  GETTABLEKS R5 R1 K4 ["cursorHeight"]
  SETTABLEKS R5 R4 K4 ["cursorHeight"]
  GETTABLEKS R5 R1 K5 ["strength"]
  SETTABLEKS R5 R4 K5 ["strength"]
  GETTABLEKS R5 R1 K6 ["material"]
  SETTABLEKS R5 R4 K6 ["material"]
  GETTABLEKS R5 R1 K7 ["autoMaterial"]
  SETTABLEKS R5 R4 K7 ["autoMaterial"]
  GETTABLEKS R5 R1 K8 ["flattenMode"]
  SETTABLEKS R5 R4 K8 ["flattenMode"]
  GETTABLEKS R5 R1 K9 ["pivot"]
  SETTABLEKS R5 R4 K9 ["pivot"]
  GETTABLEKS R5 R1 K10 ["ignoreWater"]
  SETTABLEKS R5 R4 K10 ["ignoreWater"]
  GETTABLEKS R5 R1 K11 ["ignoreParts"]
  SETTABLEKS R5 R4 K11 ["ignoreParts"]
  GETTABLEKS R5 R1 K12 ["planeLock"]
  SETTABLEKS R5 R4 K12 ["planeLock"]
  GETTABLEKS R5 R1 K13 ["fixedPlane"]
  SETTABLEKS R5 R4 K13 ["fixedPlane"]
  GETTABLEKS R5 R1 K14 ["snapToVoxel"]
  SETTABLEKS R5 R4 K14 ["snapToVoxel"]
  GETTABLEKS R5 R1 K15 ["planePositionY"]
  SETTABLEKS R5 R4 K15 ["planePositionY"]
  GETTABLEKS R5 R1 K16 ["source"]
  SETTABLEKS R5 R4 K16 ["source"]
  GETTABLEKS R5 R1 K17 ["target"]
  SETTABLEKS R5 R4 K17 ["target"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R4 0
  LOADK R5 K0 ["ImportTerrain"]
  DUPTABLE R6 K4 [{"regionDims", "heightMapUrl", "colorMapUrl"}]
  LOADK R7 K5 ["%d,%d,%d)"]
  GETTABLEKS R10 R1 K6 ["Size"]
  GETTABLEKS R9 R10 K7 ["x"]
  GETTABLEKS R11 R1 K6 ["Size"]
  GETTABLEKS R10 R11 K8 ["y"]
  GETTABLEKS R12 R1 K6 ["Size"]
  GETTABLEKS R11 R12 K9 ["z"]
  NAMECALL R7 R7 K10 ["format"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K1 ["regionDims"]
  SETTABLEKS R2 R6 K2 ["heightMapUrl"]
  SETTABLEKS R3 R6 K3 ["colorMapUrl"]
  CALL R4 2 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R6 K5 [{"regionDims", "heightMapImgDims", "heightMapChannels", "material", "guid"}]
  LOADK R7 K6 ["%d,%d,%d)"]
  GETTABLEKS R10 R1 K7 ["Size"]
  GETTABLEKS R9 R10 K8 ["x"]
  GETTABLEKS R11 R1 K7 ["Size"]
  GETTABLEKS R10 R11 K9 ["y"]
  GETTABLEKS R12 R1 K7 ["Size"]
  GETTABLEKS R11 R12 K10 ["z"]
  NAMECALL R7 R7 K11 ["format"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K0 ["regionDims"]
  LOADK R7 K12 ["%d, %d"]
  GETTABLEKS R9 R3 K13 ["width"]
  GETTABLEKS R10 R3 K14 ["height"]
  NAMECALL R7 R7 K11 ["format"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K1 ["heightMapImgDims"]
  GETTABLEKS R7 R3 K15 ["channels"]
  SETTABLEKS R7 R6 K2 ["heightMapChannels"]
  SETTABLEKS R2 R6 K3 ["material"]
  SETTABLEKS R5 R6 K4 ["guid"]
  GETIMPORT R7 K17 [next]
  MOVE R8 R4
  CALL R7 1 1
  JUMPIFNOT R7 [+14]
  LOADK R7 K12 ["%d, %d"]
  GETTABLEKS R9 R4 K13 ["width"]
  GETTABLEKS R10 R4 K14 ["height"]
  NAMECALL R7 R7 K11 ["format"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["colorMapImgDims"]
  GETTABLEKS R7 R4 K15 ["channels"]
  SETTABLEKS R7 R6 K19 ["colorMapChannels"]
  GETUPVAL R7 0
  LOADK R8 K20 ["ImportTerrainLocal"]
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  LOADK R4 K0 ["ImportTerrainHeightmapMapping"]
  DUPTABLE R5 K3 [{"assetId", "guid"}]
  SETTABLEKS R1 R5 K1 ["assetId"]
  SETTABLEKS R2 R5 K2 ["guid"]
  CALL R3 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  LOADK R4 K0 ["ImportTerrainColormapMapping"]
  DUPTABLE R5 K3 [{"assetId", "guid"}]
  SETTABLEKS R1 R5 K1 ["assetId"]
  SETTABLEKS R2 R5 K2 ["guid"]
  CALL R3 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  LOADK R3 K0 ["UpgradeShorelinesAction"]
  DUPTABLE R4 K2 [{"source"}]
  SETTABLEKS R1 R4 K1 ["source"]
  CALL R2 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  LOADK R2 K0 ["UpgradeShorelinesCancel"]
  NEWTABLE R3 0 0
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  LOADK R3 K0 ["UpgradeShorelinesDismiss"]
  DUPTABLE R4 K2 [{"dontAsk"}]
  SETTABLEKS R1 R4 K1 ["dontAsk"]
  CALL R2 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  LOADK R3 K0 ["UpgradeSmoothVoxelsAction"]
  DUPTABLE R4 K2 [{"source"}]
  SETTABLEKS R1 R4 K1 ["source"]
  CALL R2 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  LOADK R2 K0 ["UpgradeSmoothVoxelsCancel"]
  NEWTABLE R3 0 0
  CALL R1 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  LOADK R3 K0 ["UpgradeSmoothVoxelsDismiss"]
  DUPTABLE R4 K2 [{"dontAsk"}]
  SETTABLEKS R1 R4 K1 ["dontAsk"]
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  LOADK R3 K0 ["TerrainToolsRegion"]
  MOVE R4 R1
  CONCAT R2 R3 R4
  LOADNIL R3
  ORK R3 R3 K1 [1]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["LogAnalytics"]
  CALL R4 0 1
  JUMPIFNOT R4 [+17]
  GETIMPORT R4 K4 [print]
  LOADK R5 K5 ["Terrain ReportCounter counterName=%s count=%s"]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K7 [tostring]
  CALL R7 1 1
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R9 R3
  GETIMPORT R8 K7 [tostring]
  CALL R8 1 1
  NAMECALL R5 R5 K8 ["format"]
  CALL R5 3 -1
  CALL R4 -1 0
  GETUPVAL R4 1
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R4 K9 ["ReportCounter"]
  CALL R4 3 0
  RETURN R0 0

PROTO_21:
  LOADK R3 K0 ["TerrainToolsRegionMode"]
  MOVE R4 R1
  CONCAT R2 R3 R4
  LOADNIL R3
  ORK R3 R3 K1 [1]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["LogAnalytics"]
  CALL R4 0 1
  JUMPIFNOT R4 [+17]
  GETIMPORT R4 K4 [print]
  LOADK R5 K5 ["Terrain ReportCounter counterName=%s count=%s"]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K7 [tostring]
  CALL R7 1 1
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R9 R3
  GETIMPORT R8 K7 [tostring]
  CALL R8 1 1
  NAMECALL R5 R5 K8 ["format"]
  CALL R5 3 -1
  CALL R4 -1 0
  GETUPVAL R4 1
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R4 K9 ["ReportCounter"]
  CALL R4 3 0
  RETURN R0 0

PROTO_22:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  DUPTABLE R3 K20 [{"changeTool", "changeTab", "toggleWidget", "openWidget", "closeWidget", "generateTerrain", "useBrushTool", "useBrushToolExtended", "importTerrain", "importTerrainLocal", "importTerrainLocalHeightMap", "importTerrainLocalColorMap", "upgradeShorelinesAction", "upgradeShorelinesCancel", "upgradeShorelinesDismiss", "upgradeSmoothVoxelsAction", "upgradeSmoothVoxelsCancel", "upgradeSmoothVoxelsDismiss", "regionAction", "regionMode"}]
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K0 ["changeTool"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K1 ["changeTab"]
  NEWCLOSURE R4 P4
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K2 ["toggleWidget"]
  NEWCLOSURE R4 P5
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K3 ["openWidget"]
  NEWCLOSURE R4 P6
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K4 ["closeWidget"]
  NEWCLOSURE R4 P7
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K5 ["generateTerrain"]
  NEWCLOSURE R4 P8
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K6 ["useBrushTool"]
  NEWCLOSURE R4 P9
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K7 ["useBrushToolExtended"]
  NEWCLOSURE R4 P10
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K8 ["importTerrain"]
  NEWCLOSURE R4 P11
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K9 ["importTerrainLocal"]
  NEWCLOSURE R4 P12
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K10 ["importTerrainLocalHeightMap"]
  NEWCLOSURE R4 P13
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K11 ["importTerrainLocalColorMap"]
  NEWCLOSURE R4 P14
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K12 ["upgradeShorelinesAction"]
  NEWCLOSURE R4 P15
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K13 ["upgradeShorelinesCancel"]
  NEWCLOSURE R4 P16
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K14 ["upgradeShorelinesDismiss"]
  NEWCLOSURE R4 P17
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K15 ["upgradeSmoothVoxelsAction"]
  NEWCLOSURE R4 P18
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K16 ["upgradeSmoothVoxelsCancel"]
  NEWCLOSURE R4 P19
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K17 ["upgradeSmoothVoxelsDismiss"]
  NEWCLOSURE R4 P20
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K18 ["regionAction"]
  NEWCLOSURE R4 P21
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K19 ["regionMode"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["HttpService"]
  NAMECALL R3 R3 K13 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K11 [game]
  LOADK R6 K14 ["StudioService"]
  NAMECALL R4 R4 K13 ["GetService"]
  CALL R4 2 1
  DUPCLOSURE R5 K15 [PROTO_22]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R5 1
