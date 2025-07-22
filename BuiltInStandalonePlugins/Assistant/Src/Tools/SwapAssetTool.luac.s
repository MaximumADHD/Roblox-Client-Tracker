PROTO_0:
  GETTABLEKS R2 R1 K0 ["assetId"]
  GETTABLEKS R3 R1 K1 ["insertGuid"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["loadAssetAsync"]
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
  GETTABLEKS R6 R2 K16 ["Utils"]
  GETTABLEKS R5 R6 K17 ["Tools"]
  GETTABLEKS R7 R3 K14 ["Util"]
  GETTABLEKS R6 R7 K18 ["ToolBuilder"]
  GETTABLEKS R8 R3 K14 ["Util"]
  GETTABLEKS R7 R8 K19 ["ToolResult"]
  GETTABLEKS R8 R4 K20 ["get"]
  CALL R8 0 1
  LOADK R11 K21 ["SwapAssetTool_swapAsset"]
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R1
  NAMECALL R9 R8 K23 ["OnHostInvokeAsync"]
  CALL R9 3 1
  DUPCLOSURE R10 K24 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R7
  GETTABLEKS R11 R6 K25 ["define"]
  CALL R11 0 1
  LOADK R13 K26 ["swap_asset"]
  NAMECALL R11 R11 K27 ["setName"]
  CALL R11 2 1
  LOADK R13 K28 ["Swaps a priorly inserted asset with a new one. 
MUST be used in conjunction with the insert_from_marketplace tool. 

Intended use: 
1. First call insert_from_marketplace.
2. Read primaryResult's insertGuid.
3. Then call swap_asset with any new assetId.
"]
  NAMECALL R11 R11 K29 ["setDescription"]
  CALL R11 2 1
  LOADK R13 K30 ["assetId"]
  DUPTABLE R14 K33 [{"type", "description"}]
  LOADK R15 K34 ["string"]
  SETTABLEKS R15 R14 K31 ["type"]
  LOADK R15 K35 ["The asset ID of the new asset to load."]
  SETTABLEKS R15 R14 K32 ["description"]
  NAMECALL R11 R11 K36 ["addArgument"]
  CALL R11 3 1
  LOADK R13 K37 ["insertGuid"]
  DUPTABLE R14 K33 [{"type", "description"}]
  LOADK R15 K34 ["string"]
  SETTABLEKS R15 R14 K31 ["type"]
  LOADK R15 K38 ["The unique GUID of the asset to swap. The GUID MUST be the same as the one returned from insert_from_marketplace tool, otherwise the command WILL NOT work."]
  SETTABLEKS R15 R14 K32 ["description"]
  NAMECALL R11 R11 K36 ["addArgument"]
  CALL R11 3 1
  MOVE R13 R10
  NAMECALL R11 R11 K39 ["setHandler"]
  CALL R11 2 1
  NAMECALL R11 R11 K40 ["build"]
  CALL R11 1 -1
  RETURN R11 -1
