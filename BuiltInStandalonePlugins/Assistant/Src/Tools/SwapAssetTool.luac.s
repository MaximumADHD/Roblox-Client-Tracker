PROTO_0:
  GETTABLEKS R2 R1 K0 ["assetId"]
  GETTABLEKS R3 R1 K1 ["insertGuid"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["loadCachedAssetAsync"]
  MOVE R5 R2
  CALL R4 1 1
  JUMPIF R4 [+2]
  LOADK R5 K3 ["Failed to load asset"]
  RETURN R5 1
  LOADK R6 K4 ["Assistant:"]
  MOVE R7 R3
  CONCAT R5 R6 R7
  GETUPVAL R6 1
  MOVE R8 R5
  NAMECALL R6 R6 K5 ["GetTagged"]
  CALL R6 2 1
  LENGTH R7 R6
  JUMPIFNOTEQKN R7 K6 [0] [+5]
  LOADK R8 K7 ["Failed to find asset with GUID: "]
  MOVE R9 R3
  CONCAT R7 R8 R9
  RETURN R7 1
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  NAMECALL R12 R4 K8 ["Clone"]
  CALL R12 1 1
  GETTABLEKS R13 R11 K9 ["Name"]
  SETTABLEKS R13 R12 K9 ["Name"]
  LOADK R15 K10 ["PVInstance"]
  NAMECALL R13 R11 K11 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+18]
  LOADK R15 K10 ["PVInstance"]
  NAMECALL R13 R4 K11 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+13]
  NAMECALL R13 R11 K12 ["GetPivot"]
  CALL R13 1 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K13 ["setPositionOnGround"]
  MOVE R15 R12
  LOADB R16 0
  GETTABLEKS R17 R13 K14 ["Position"]
  GETTABLEKS R18 R13 K15 ["LookVector"]
  CALL R14 4 0
  MOVE R15 R5
  NAMECALL R13 R12 K16 ["AddTag"]
  CALL R13 2 0
  GETIMPORT R13 K18 [workspace]
  SETTABLEKS R13 R12 K19 ["Parent"]
  LOADNIL R13
  SETTABLEKS R13 R11 K19 ["Parent"]
  FORGLOOP R7 2 [-42]
  LOADK R7 K20 ["Asset swapped successfully"]
  RETURN R7 1

PROTO_1:
  GETUPVAL R1 0
  LOADNIL R2
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["addText"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["build"]
  CALL R2 1 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CollectionService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["AssistantUI"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["ModelContextProtocol"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Util"]
  GETTABLEKS R5 R6 K15 ["StudioNetworking"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K16 ["Tools"]
  GETTABLEKS R6 R7 K17 ["ToolTypes"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K18 ["Utils"]
  GETTABLEKS R6 R7 K16 ["Tools"]
  GETTABLEKS R8 R3 K14 ["Util"]
  GETTABLEKS R7 R8 K19 ["ToolBuilder"]
  GETTABLEKS R9 R3 K14 ["Util"]
  GETTABLEKS R8 R9 K20 ["ToolResult"]
  GETTABLEKS R9 R5 K21 ["ToolNames"]
  GETTABLEKS R10 R4 K22 ["get"]
  CALL R10 0 1
  LOADK R13 K23 ["SwapAssetTool_swapAsset"]
  DUPCLOSURE R14 K24 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R1
  NAMECALL R11 R10 K25 ["OnHostInvokeAsync"]
  CALL R11 3 1
  DUPCLOSURE R12 K26 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R8
  GETTABLEKS R13 R7 K27 ["define"]
  CALL R13 0 1
  GETTABLEKS R15 R9 K28 ["SwapAsset"]
  NAMECALL R13 R13 K29 ["setName"]
  CALL R13 2 1
  LOADK R15 K30 ["Swaps a priorly inserted asset with a new one. 
MUST be used in conjunction with the insert_from_marketplace tool. 

Intended use: 
1. First call insert_from_marketplace.
2. Read primaryResult's insertGuid.
3. Then call swap_asset with any new assetId.
"]
  NAMECALL R13 R13 K31 ["setDescription"]
  CALL R13 2 1
  LOADK R15 K32 ["assetId"]
  DUPTABLE R16 K35 [{"type", "description"}]
  LOADK R17 K36 ["string"]
  SETTABLEKS R17 R16 K33 ["type"]
  LOADK R17 K37 ["The asset ID of the new asset to load."]
  SETTABLEKS R17 R16 K34 ["description"]
  NAMECALL R13 R13 K38 ["addArgument"]
  CALL R13 3 1
  LOADK R15 K39 ["insertGuid"]
  DUPTABLE R16 K35 [{"type", "description"}]
  LOADK R17 K36 ["string"]
  SETTABLEKS R17 R16 K33 ["type"]
  LOADK R17 K40 ["The unique GUID of the asset to swap. The GUID MUST be the same as the one returned from insert_from_marketplace tool, otherwise the command WILL NOT work."]
  SETTABLEKS R17 R16 K34 ["description"]
  NAMECALL R13 R13 K38 ["addArgument"]
  CALL R13 3 1
  MOVE R15 R12
  NAMECALL R13 R13 K41 ["setHandler"]
  CALL R13 2 1
  NAMECALL R13 R13 K42 ["build"]
  CALL R13 1 1
  DUPTABLE R14 K44 [{"definition"}]
  SETTABLEKS R13 R14 K43 ["definition"]
  RETURN R14 1
