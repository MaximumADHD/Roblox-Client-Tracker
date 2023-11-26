PROTO_0:
  GETTABLEKS R2 R1 K0 ["selectionTransform"]
  GETTABLEKS R3 R1 K1 ["selectionSize"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K6 [{"SelectionTransform", "SelectionSize"}]
  SETTABLEKS R2 R6 K4 ["SelectionTransform"]
  SETTABLEKS R3 R6 K5 ["SelectionSize"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["tabName"]
  GETTABLEKS R4 R0 K1 ["lastToolPerTab"]
  GETTABLE R3 R4 R2
  JUMPIF R3 [+3]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["None"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K7 [{"currentTab", "currentTool"}]
  SETTABLEKS R2 R6 K5 ["currentTab"]
  SETTABLEKS R3 R6 K6 ["currentTool"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["currentTool"]
  GETTABLEKS R3 R0 K0 ["currentTool"]
  JUMPIFNOTEQ R2 R3 [+4]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["None"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Dictionary"]
  GETTABLEKS R3 R4 K3 ["join"]
  GETTABLEKS R4 R0 K4 ["lastToolPerTab"]
  NEWTABLE R5 1 0
  GETTABLEKS R6 R0 K5 ["currentTab"]
  SETTABLE R2 R5 R6
  CALL R3 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K7 [{"currentTool", "lastToolPerTab", "TransformMode"}]
  SETTABLEKS R2 R6 K0 ["currentTool"]
  SETTABLEKS R3 R6 K4 ["lastToolPerTab"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["Move"]
  SETTABLEKS R7 R6 K6 ["TransformMode"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["shorelinesUpgradePercent"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"ShorelinesUpgradePercent"}]
  SETTABLEKS R2 R5 K3 ["ShorelinesUpgradePercent"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_4:
  GETTABLEKS R2 R1 K0 ["shorelinesUpgradePossible"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"ShorelinesUpgradePossible"}]
  SETTABLEKS R2 R5 K3 ["ShorelinesUpgradePossible"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["shorelinesUpgradeSuggestion"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"ShorelinesUpgradeSuggestion"}]
  SETTABLEKS R2 R5 K3 ["ShorelinesUpgradeSuggestion"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_6:
  GETTABLEKS R2 R1 K0 ["smoothVoxelsUpgradePercent"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"SmoothVoxelsUpgradePercent"}]
  SETTABLEKS R2 R5 K3 ["SmoothVoxelsUpgradePercent"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_7:
  GETTABLEKS R2 R1 K0 ["smoothVoxelsUpgradePossible"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"SmoothVoxelsUpgradePossible"}]
  SETTABLEKS R2 R5 K3 ["SmoothVoxelsUpgradePossible"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_8:
  GETTABLEKS R2 R1 K0 ["smoothVoxelsUpgradeSuggestion"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"SmoothVoxelsUpgradeSuggestion"}]
  SETTABLEKS R2 R5 K3 ["SmoothVoxelsUpgradeSuggestion"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_9:
  GETTABLEKS R2 R1 K0 ["snapToVoxels"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"SnapToVoxels"}]
  SETTABLEKS R2 R5 K3 ["SnapToVoxels"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_10:
  GETTABLEKS R2 R1 K0 ["TerrainRegion"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"TerrainRegion"}]
  SETTABLEKS R2 R5 K0 ["TerrainRegion"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_11:
  GETTABLEKS R2 R1 K0 ["TerrainRegionCopyBuffer"]
  GETTABLEKS R3 R1 K1 ["TerrainRegionCopyTransform"]
  GETTABLEKS R4 R1 K2 ["TerrainRegionCopySize"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["Dictionary"]
  GETTABLEKS R5 R6 K4 ["join"]
  MOVE R6 R0
  DUPTABLE R7 K5 [{"TerrainRegionCopyBuffer", "TerrainRegionCopyTransform", "TerrainRegionCopySize"}]
  SETTABLEKS R2 R7 K0 ["TerrainRegionCopyBuffer"]
  SETTABLEKS R3 R7 K1 ["TerrainRegionCopyTransform"]
  SETTABLEKS R4 R7 K2 ["TerrainRegionCopySize"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_12:
  GETTABLEKS R2 R1 K0 ["TransformMode"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"TransformMode", "currentTool"}]
  SETTABLEKS R2 R5 K0 ["TransformMode"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Transform"]
  SETTABLEKS R6 R5 K3 ["currentTool"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["TerrainEnums"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["TabId"]
  GETTABLEKS R5 R3 K12 ["ToolId"]
  GETTABLEKS R6 R3 K13 ["TransformMode"]
  GETTABLEKS R7 R1 K14 ["createReducer"]
  DUPTABLE R8 K27 [{"currentTab", "currentTool", "SelectionTransform", "SelectionSize", "ShorelinesUpgradePercent", "ShorelinesUpgradePossible", "ShorelinesUpgradeSuggestion", "SmoothVoxelsUpgradePercent", "SmoothVoxelsUpgradePossible", "SmoothVoxelsUpgradeSuggestion", "SnapToVoxels", "TransformMode", "lastToolPerTab"}]
  GETTABLEKS R9 R4 K28 ["Create"]
  SETTABLEKS R9 R8 K15 ["currentTab"]
  GETTABLEKS R9 R5 K29 ["None"]
  SETTABLEKS R9 R8 K16 ["currentTool"]
  GETIMPORT R9 K32 [CFrame.new]
  CALL R9 0 1
  SETTABLEKS R9 R8 K17 ["SelectionTransform"]
  LOADN R10 64
  LOADN R11 32
  LOADN R12 64
  FASTCALL VECTOR [+2]
  GETIMPORT R9 K34 [Vector3.new]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["SelectionSize"]
  LOADN R9 255
  SETTABLEKS R9 R8 K19 ["ShorelinesUpgradePercent"]
  LOADB R9 0
  SETTABLEKS R9 R8 K20 ["ShorelinesUpgradePossible"]
  LOADB R9 0
  SETTABLEKS R9 R8 K21 ["ShorelinesUpgradeSuggestion"]
  LOADN R9 255
  SETTABLEKS R9 R8 K22 ["SmoothVoxelsUpgradePercent"]
  LOADB R9 0
  SETTABLEKS R9 R8 K23 ["SmoothVoxelsUpgradePossible"]
  LOADB R9 0
  SETTABLEKS R9 R8 K24 ["SmoothVoxelsUpgradeSuggestion"]
  LOADB R9 1
  SETTABLEKS R9 R8 K25 ["SnapToVoxels"]
  GETTABLEKS R9 R6 K35 ["Move"]
  SETTABLEKS R9 R8 K13 ["TransformMode"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K26 ["lastToolPerTab"]
  DUPTABLE R9 K49 [{"ChangeSelection", "ChangeTab", "ChangeTool", "SetShorelinesUpgradePercent", "SetShorelinesUpgradePossible", "SetShorelinesUpgradeSuggestion", "SetSmoothVoxelsUpgradePercent", "SetSmoothVoxelsUpgradePossible", "SetSmoothVoxelsUpgradeSuggestion", "SetSnapToVoxels", "SetTerrainRegion", "SetTerrainRegionCopyBuffer", "SetTransformMode"}]
  DUPCLOSURE R10 K50 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K36 ["ChangeSelection"]
  DUPCLOSURE R10 K51 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K37 ["ChangeTab"]
  DUPCLOSURE R10 K52 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K38 ["ChangeTool"]
  DUPCLOSURE R10 K53 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K39 ["SetShorelinesUpgradePercent"]
  DUPCLOSURE R10 K54 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K40 ["SetShorelinesUpgradePossible"]
  DUPCLOSURE R10 K55 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K41 ["SetShorelinesUpgradeSuggestion"]
  DUPCLOSURE R10 K56 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K42 ["SetSmoothVoxelsUpgradePercent"]
  DUPCLOSURE R10 K57 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K43 ["SetSmoothVoxelsUpgradePossible"]
  DUPCLOSURE R10 K58 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K44 ["SetSmoothVoxelsUpgradeSuggestion"]
  DUPCLOSURE R10 K59 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K45 ["SetSnapToVoxels"]
  DUPCLOSURE R10 K60 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K46 ["SetTerrainRegion"]
  DUPCLOSURE R10 K61 [PROTO_11]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K47 ["SetTerrainRegionCopyBuffer"]
  DUPCLOSURE R10 K62 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R10 R9 K48 ["SetTransformMode"]
  CALL R7 2 1
  RETURN R7 1
