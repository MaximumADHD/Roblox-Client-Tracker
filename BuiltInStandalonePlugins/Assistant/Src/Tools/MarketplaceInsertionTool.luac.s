PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  LOADN R4 0
  NAMECALL R1 R1 K0 ["GetFreeModels"]
  CALL R1 3 1
  NEWTABLE R2 0 0
  GETTABLEN R6 R1 1
  GETTABLEKS R3 R6 K1 ["Results"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADN R8 6
  JUMPIFLT R8 R6 [+15]
  GETTABLEKS R11 R7 K2 ["AssetId"]
  FASTCALL1 TOSTRING R11 [+2]
  GETIMPORT R10 K4 [tostring]
  CALL R10 1 1
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K7 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-16]
  LENGTH R5 R2
  LOADN R6 0
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  LOADK R6 K8 ["Failed to find \"%*\" in the marketplace!"]
  MOVE R8 R0
  NAMECALL R6 R6 K9 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K11 [assert]
  CALL R3 2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["name"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R1 K0 ["messageId"]
  GETTABLEKS R3 R1 K1 ["contentId"]
  GETTABLEKS R4 R1 K2 ["newName"]
  GETUPVAL R5 0
  DUPTABLE R6 K4 [{"messageId", "contentId", "transformFn"}]
  SETTABLEKS R2 R6 K0 ["messageId"]
  SETTABLEKS R3 R6 K1 ["contentId"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K3 ["transformFn"]
  CALL R5 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetTagged"]
  CALL R1 2 1
  LENGTH R0 R1
  GETUPVAL R1 2
  LOADN R2 1
  JUMPIFNOTLT R2 R0 [+15]
  GETUPVAL R2 3
  LOADK R4 K1 ["AssetVariation"]
  LOADK R5 K2 ["MultipleCopies"]
  DUPTABLE R6 K5 [{"assetName", "count"}]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K3 ["assetName"]
  SETTABLEKS R0 R6 K4 ["count"]
  NAMECALL R2 R2 K6 ["getText"]
  CALL R2 4 1
  MOVE R1 R2
  JUMP [+13]
  JUMPIFNOTEQKN R0 K7 [0] [+12]
  GETUPVAL R2 3
  LOADK R4 K1 ["AssetVariation"]
  LOADK R5 K8 ["Deleted"]
  DUPTABLE R6 K9 [{"assetName"}]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K3 ["assetName"]
  NAMECALL R2 R2 K6 ["getText"]
  CALL R2 4 1
  MOVE R1 R2
  GETUPVAL R2 4
  GETUPVAL R3 5
  DUPTABLE R4 K13 [{"messageId", "contentId", "newName"}]
  GETUPVAL R5 6
  SETTABLEKS R5 R4 K10 ["messageId"]
  GETUPVAL R5 7
  SETTABLEKS R5 R4 K11 ["contentId"]
  SETTABLEKS R1 R4 K12 ["newName"]
  CALL R2 2 0
  LOADNIL R2
  SETUPVAL R2 8
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETIMPORT R0 K2 [coroutine.status]
  GETUPVAL R1 0
  CALL R0 1 1
  JUMPIFEQKS R0 K3 ["dead"] [+2]
  RETURN R0 0
  GETIMPORT R0 K6 [task.defer]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U0
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R1 K0 ["messageId"]
  GETTABLEKS R3 R1 K1 ["contentId"]
  GETTABLEKS R4 R1 K2 ["name"]
  GETTABLEKS R5 R1 K3 ["tag"]
  LOADNIL R6
  NEWCLOSURE R7 P0
  CAPTURE REF R6
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  GETUPVAL R9 3
  GETUPVAL R10 0
  MOVE R12 R5
  NAMECALL R10 R10 K4 ["GetInstanceAddedSignal"]
  CALL R10 2 1
  MOVE R12 R7
  NAMECALL R10 R10 K5 ["Connect"]
  CALL R10 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K8 [table.insert]
  CALL R8 -1 0
  GETUPVAL R9 3
  GETUPVAL R10 0
  MOVE R12 R5
  NAMECALL R10 R10 K9 ["GetInstanceRemovedSignal"]
  CALL R10 2 1
  MOVE R12 R7
  NAMECALL R10 R10 K5 ["Connect"]
  CALL R10 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K8 [table.insert]
  CALL R8 -1 0
  JUMPIFNOT R6 [+7]
  GETIMPORT R8 K12 [coroutine.status]
  MOVE R9 R6
  CALL R8 1 1
  JUMPIFEQKS R8 K13 ["dead"] [+2]
  JUMP [+14]
  GETIMPORT R8 K16 [task.defer]
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE REF R6
  CALL R8 1 1
  MOVE R6 R8
  CLOSEUPVALS R6
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["handler"]
  DUPTABLE R2 K3 [{"assetId", "insertGuid"}]
  SETTABLEKS R0 R2 K1 ["assetId"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["insertGuid"]
  SETTABLEKS R3 R2 K2 ["insertGuid"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["query"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["tag"]
  DUPTABLE R3 K8 [{"type", "name", "tag", "className", "assetIds", "expanded", "onSelectionChange"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["Type"]
  SETTABLEKS R4 R3 K2 ["type"]
  SETTABLEKS R1 R3 K3 ["name"]
  SETTABLEKS R2 R3 K1 ["tag"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["className"]
  SETTABLEKS R4 R3 K4 ["className"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["assets"]
  SETTABLEKS R4 R3 K5 ["assetIds"]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["expanded"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K7 ["onSelectionChange"]
  GETUPVAL R4 3
  DUPTABLE R5 K13 [{"messageId", "content"}]
  SETTABLEKS R0 R5 K11 ["messageId"]
  SETTABLEKS R3 R5 K12 ["content"]
  CALL R4 1 1
  GETUPVAL R5 4
  LOADNIL R6
  DUPTABLE R7 K15 [{"messageId", "contentId", "name", "tag"}]
  SETTABLEKS R0 R7 K11 ["messageId"]
  SETTABLEKS R4 R7 K14 ["contentId"]
  SETTABLEKS R1 R7 K3 ["name"]
  SETTABLEKS R2 R7 K1 ["tag"]
  CALL R5 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  LOADK R2 K0 ["assistant"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["loadAssetAsync"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIF R1 [+4]
  GETIMPORT R2 K2 [error]
  LOADK R3 K3 ["Failed to load asset"]
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["startRecording"]
  GETUPVAL R3 1
  CALL R2 1 0
  GETUPVAL R2 2
  LOADB R4 0
  NAMECALL R2 R2 K5 ["GenerateGUID"]
  CALL R2 2 1
  GETUPVAL R3 3
  SETTABLEKS R3 R1 K6 ["Name"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["setPositionOnGround"]
  MOVE R4 R1
  LOADB R5 1
  CALL R3 2 0
  LOADK R4 K8 ["Assistant:"]
  MOVE R5 R2
  CONCAT R3 R4 R5
  MOVE R6 R3
  NAMECALL R4 R1 K9 ["AddTag"]
  CALL R4 2 0
  GETIMPORT R4 K11 [workspace]
  SETTABLEKS R4 R1 K12 ["Parent"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["endRecording"]
  GETUPVAL R5 1
  CALL R4 1 0
  MOVE R4 R3
  MOVE R5 R2
  GETTABLEKS R6 R1 K14 ["ClassName"]
  RETURN R4 3

PROTO_10:
  GETTABLEKS R2 R1 K0 ["query"]
  GETTABLEKS R3 R1 K1 ["oldTag"]
  GETUPVAL R4 0
  LOADB R6 0
  NAMECALL R4 R4 K2 ["GenerateGUID"]
  CALL R4 2 1
  JUMPIFNOT R3 [+43]
  GETUPVAL R5 1
  MOVE R7 R3
  NAMECALL R5 R5 K3 ["GetTagged"]
  CALL R5 2 1
  LENGTH R6 R5
  JUMPIFNOTEQKN R6 K4 [0] [+7]
  GETIMPORT R6 K6 [error]
  LOADK R8 K7 ["Failed to find asset with GUID: "]
  MOVE R9 R3
  CONCAT R7 R8 R9
  CALL R6 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["startRecording"]
  MOVE R7 R4
  CALL R6 1 0
  GETTABLEN R6 R5 1
  NAMECALL R6 R6 K9 ["Clone"]
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["setPositionOnGround"]
  MOVE R8 R6
  LOADB R9 1
  CALL R7 2 0
  GETIMPORT R7 K12 [workspace]
  SETTABLEKS R7 R6 K13 ["Parent"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["endRecording"]
  MOVE R8 R4
  CALL R7 1 0
  DUPTABLE R7 K16 [{"result"}]
  LOADK R8 K17 ["Success!"]
  SETTABLEKS R8 R7 K15 ["result"]
  RETURN R7 1
  GETUPVAL R5 3
  MOVE R6 R2
  CALL R5 1 1
  GETIMPORT R6 K20 [table.clone]
  MOVE R7 R5
  CALL R6 1 1
  GETIMPORT R7 K22 [table.remove]
  MOVE R8 R6
  LOADN R9 1
  CALL R7 2 1
  JUMPIF R7 [+4]
  GETIMPORT R8 K6 [error]
  LOADK R9 K23 ["Failed to find asset"]
  CALL R8 1 0
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  MOVE R9 R8
  MOVE R10 R7
  CALL R9 1 3
  MOVE R12 R6
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  GETIMPORT R17 K26 [task.spawn]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K27 ["loadAssetAsync"]
  MOVE R19 R16
  CALL R17 2 0
  FORGLOOP R12 2 [-8]
  DUPTABLE R12 K29 [{"result", "responseInfo"}]
  DUPTABLE R13 K32 [{"primaryResult", "secondaryResults"}]
  DUPTABLE R14 K35 [{"assetId", "insertGuid"}]
  SETTABLEKS R7 R14 K33 ["assetId"]
  SETTABLEKS R10 R14 K34 ["insertGuid"]
  SETTABLEKS R14 R13 K30 ["primaryResult"]
  SETTABLEKS R6 R13 K31 ["secondaryResults"]
  SETTABLEKS R13 R12 K15 ["result"]
  DUPTABLE R13 K39 [{"assets", "tag", "query", "insertGuid", "className"}]
  SETTABLEKS R5 R13 K36 ["assets"]
  SETTABLEKS R9 R13 K37 ["tag"]
  SETTABLEKS R2 R13 K0 ["query"]
  SETTABLEKS R10 R13 K34 ["insertGuid"]
  SETTABLEKS R11 R13 K38 ["className"]
  SETTABLEKS R13 R12 K28 ["responseInfo"]
  RETURN R12 1

PROTO_11:
  GETUPVAL R1 0
  LOADNIL R2
  DUPTABLE R3 K2 [{"query", "oldTag"}]
  GETTABLEKS R4 R0 K0 ["query"]
  SETTABLEKS R4 R3 K0 ["query"]
  GETTABLEKS R4 R0 K3 ["tag"]
  SETTABLEKS R4 R3 K1 ["oldTag"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K4 ["responseInfo"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R1 K4 ["responseInfo"]
  GETUPVAL R3 1
  LOADK R4 K5 ["assistant"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R3 2 0
  GETUPVAL R2 6
  GETTABLEKS R4 R1 K6 ["result"]
  NAMECALL R2 R2 K7 ["JSONEncode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  NAMECALL R5 R4 K0 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [-4]
  GETIMPORT R0 K3 [table.clear]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

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
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["HttpService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K5 [game]
  LOADK R5 K9 ["InsertService"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["AssistantUI"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R0 K12 ["Packages"]
  GETTABLEKS R6 R7 K14 ["ModelContextProtocol"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R9 R0 K15 ["Src"]
  GETTABLEKS R8 R9 K16 ["Util"]
  GETTABLEKS R7 R8 K17 ["StudioNetworking"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K18 ["Tools"]
  GETTABLEKS R8 R9 K19 ["SwapAssetTool"]
  CALL R7 1 1
  GETTABLEKS R9 R4 K20 ["Components"]
  GETTABLEKS R8 R9 K21 ["ExternalHooks"]
  GETTABLEKS R9 R8 K22 ["addContent"]
  GETTABLEKS R10 R8 K23 ["editContent"]
  GETTABLEKS R11 R8 K24 ["getOrAddMessage"]
  GETTABLEKS R14 R4 K20 ["Components"]
  GETTABLEKS R13 R14 K25 ["BuiltinContentWidgets"]
  GETTABLEKS R12 R13 K26 ["AssetVariationContentWidget"]
  GETTABLEKS R14 R4 K27 ["Utils"]
  GETTABLEKS R13 R14 K18 ["Tools"]
  GETTABLEKS R16 R4 K28 ["Resources"]
  GETTABLEKS R15 R16 K29 ["Localization"]
  GETTABLEKS R14 R15 K30 ["Translator"]
  GETTABLEKS R16 R5 K16 ["Util"]
  GETTABLEKS R15 R16 K31 ["ToolBuilder"]
  GETTABLEKS R16 R6 K32 ["get"]
  CALL R16 0 1
  NEWTABLE R17 0 0
  DUPCLOSURE R18 K33 [PROTO_0]
  CAPTURE VAL R3
  LOADK R21 K34 ["MarketplaceInsertionTool_updateContentName"]
  DUPCLOSURE R22 K35 [PROTO_2]
  CAPTURE VAL R10
  NAMECALL R19 R16 K36 ["OnGuestEvent"]
  CALL R19 3 1
  LOADK R22 K37 ["MarketplaceInsertionTool_listenToTagChanges"]
  DUPCLOSURE R23 K38 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R17
  NAMECALL R20 R16 K39 ["OnHostEvent"]
  CALL R20 3 1
  DUPCLOSURE R21 K40 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R20
  LOADK R24 K41 ["MarketplaceInsertionTool_insertFromMarketplace"]
  DUPCLOSURE R25 K42 [PROTO_10]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R18
  NAMECALL R22 R16 K43 ["OnHostInvokeAsync"]
  CALL R22 3 1
  DUPCLOSURE R23 K44 [PROTO_11]
  CAPTURE VAL R22
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R20
  CAPTURE VAL R2
  GETTABLEKS R24 R16 K45 ["Destroying"]
  DUPCLOSURE R26 K46 [PROTO_12]
  CAPTURE VAL R17
  NAMECALL R24 R24 K47 ["Connect"]
  CALL R24 2 0
  GETTABLEKS R24 R15 K48 ["define"]
  CALL R24 0 1
  LOADK R26 K49 ["insert_from_marketplace"]
  NAMECALL R24 R24 K50 ["setName"]
  CALL R24 2 1
  LOADK R26 K51 ["Inserts a model from the Roblox marketplace into the game. 
Returns the inserted asset ID, a unique GUID to use for the asset in subsequent commands, and a list of other asset IDs that were found in the search. 

The inserted model will be tagged with the GUID, prefixed with 'Assistant:'. 
To reference the model in subsequent commands, CollectionService:GetTagged(\"Assistant:<GUID>\") can be used. You are guaranteed to get only one model back, as the GUID is unique.
Don't tell the user about the GUID or the alternative asset IDs, these are for your own use only.
If you are asked to add more of a previously-inserted model, you should use the tag input property instead by searching for the generated tag in your conversation history.

For example: 
	local instances = CollectionService:GetTagged(\"Assistant:1234-5678-9101\") 
	instances[1].Pivot = CFrame.new(0, 0, 0)
will move the model to the origin.
"]
  NAMECALL R24 R24 K52 ["setDescription"]
  CALL R24 2 1
  LOADK R26 K53 ["query"]
  DUPTABLE R27 K56 [{"type", "description"}]
  LOADK R28 K57 ["string"]
  SETTABLEKS R28 R27 K54 ["type"]
  LOADK R28 K58 ["The name of the asset to insert."]
  SETTABLEKS R28 R27 K55 ["description"]
  NAMECALL R24 R24 K59 ["addArgument"]
  CALL R24 3 1
  LOADK R26 K60 ["tag"]
  DUPTABLE R27 K56 [{"type", "description"}]
  LOADK R28 K57 ["string"]
  SETTABLEKS R28 R27 K54 ["type"]
  LOADK R28 K61 ["Tag of a reference asset to clone, rather than downloading from the marketplace. Tag was likely generated in a previous marketplace insertion request."]
  SETTABLEKS R28 R27 K55 ["description"]
  NAMECALL R24 R24 K62 ["addOptionalArgument"]
  CALL R24 3 1
  MOVE R26 R23
  NAMECALL R24 R24 K63 ["setHandler"]
  CALL R24 2 1
  NAMECALL R24 R24 K64 ["build"]
  CALL R24 1 -1
  RETURN R24 -1
