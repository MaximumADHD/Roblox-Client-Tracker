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
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["editContent"]
  DUPTABLE R6 K5 [{"messageId", "contentId", "transformFn"}]
  SETTABLEKS R2 R6 K0 ["messageId"]
  SETTABLEKS R3 R6 K1 ["contentId"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K4 ["transformFn"]
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
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["definition"]
  GETTABLEKS R1 R2 K1 ["handler"]
  DUPTABLE R2 K4 [{"assetId", "insertGuid"}]
  SETTABLEKS R0 R2 K2 ["assetId"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["insertGuid"]
  SETTABLEKS R3 R2 K3 ["insertGuid"]
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
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K11 ["addContent"]
  DUPTABLE R5 K14 [{"messageId", "content"}]
  SETTABLEKS R0 R5 K12 ["messageId"]
  SETTABLEKS R3 R5 K13 ["content"]
  CALL R4 1 1
  GETUPVAL R5 4
  LOADNIL R6
  DUPTABLE R7 K16 [{"messageId", "contentId", "name", "tag"}]
  SETTABLEKS R0 R7 K12 ["messageId"]
  SETTABLEKS R4 R7 K15 ["contentId"]
  SETTABLEKS R1 R7 K3 ["name"]
  SETTABLEKS R2 R7 K1 ["tag"]
  CALL R5 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getOrAddMessage"]
  LOADK R2 K1 ["assistant"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["loadCachedAssetAsync"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIF R1 [+4]
  GETIMPORT R2 K2 [error]
  LOADK R3 K3 ["Failed to load asset"]
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["startRecording"]
  GETUPVAL R3 2
  CALL R2 1 0
  GETUPVAL R2 3
  LOADB R4 0
  NAMECALL R2 R2 K5 ["GenerateGUID"]
  CALL R2 2 1
  GETUPVAL R3 4
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
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K13 ["endRecording"]
  GETUPVAL R5 2
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
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["get"]
  CALL R5 0 1
  JUMPIFNOT R3 [+41]
  GETUPVAL R6 2
  MOVE R8 R3
  NAMECALL R6 R6 K4 ["GetTagged"]
  CALL R6 2 1
  LENGTH R7 R6
  JUMPIFNOTEQKN R7 K5 [0] [+7]
  GETIMPORT R7 K7 [error]
  LOADK R9 K8 ["Failed to find asset with GUID: "]
  MOVE R10 R3
  CONCAT R8 R9 R10
  CALL R7 1 0
  GETTABLEKS R7 R5 K9 ["startRecording"]
  MOVE R8 R4
  CALL R7 1 0
  GETTABLEN R7 R6 1
  NAMECALL R7 R7 K10 ["Clone"]
  CALL R7 1 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K11 ["setPositionOnGround"]
  MOVE R9 R7
  LOADB R10 1
  CALL R8 2 0
  GETIMPORT R8 K13 [workspace]
  SETTABLEKS R8 R7 K14 ["Parent"]
  GETTABLEKS R8 R5 K15 ["endRecording"]
  MOVE R9 R4
  CALL R8 1 0
  DUPTABLE R8 K17 [{"result"}]
  LOADK R9 K18 ["Success!"]
  SETTABLEKS R9 R8 K16 ["result"]
  RETURN R8 1
  GETUPVAL R6 4
  MOVE R7 R2
  CALL R6 1 1
  GETIMPORT R7 K21 [table.clone]
  MOVE R8 R6
  CALL R7 1 1
  GETIMPORT R8 K23 [table.remove]
  MOVE R9 R7
  LOADN R10 1
  CALL R8 2 1
  JUMPIF R8 [+4]
  GETIMPORT R9 K7 [error]
  LOADK R10 K24 ["Failed to find asset"]
  CALL R9 1 0
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  MOVE R10 R9
  MOVE R11 R8
  CALL R10 1 3
  MOVE R13 R7
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  GETIMPORT R18 K27 [task.spawn]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K28 ["loadCachedAssetAsync"]
  MOVE R20 R17
  CALL R18 2 0
  FORGLOOP R13 2 [-8]
  DUPTABLE R13 K30 [{"result", "responseInfo"}]
  DUPTABLE R14 K33 [{"primaryResult", "secondaryResults"}]
  DUPTABLE R15 K36 [{"assetId", "insertGuid"}]
  SETTABLEKS R8 R15 K34 ["assetId"]
  SETTABLEKS R11 R15 K35 ["insertGuid"]
  SETTABLEKS R15 R14 K31 ["primaryResult"]
  SETTABLEKS R7 R14 K32 ["secondaryResults"]
  SETTABLEKS R14 R13 K16 ["result"]
  DUPTABLE R14 K40 [{"assets", "tag", "query", "insertGuid", "className"}]
  SETTABLEKS R6 R14 K37 ["assets"]
  SETTABLEKS R10 R14 K38 ["tag"]
  SETTABLEKS R2 R14 K0 ["query"]
  SETTABLEKS R11 R14 K35 ["insertGuid"]
  SETTABLEKS R12 R14 K39 ["className"]
  SETTABLEKS R14 R13 K29 ["responseInfo"]
  RETURN R13 1

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
  JUMPIFNOT R2 [+13]
  GETTABLEKS R2 R1 K4 ["responseInfo"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["getOrAddMessage"]
  LOADK R4 K6 ["assistant"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CALL R3 2 0
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K7 ["toString"]
  GETTABLEKS R3 R1 K8 ["result"]
  CALL R2 1 1
  GETUPVAL R3 6
  CALL R3 0 1
  MOVE R5 R2
  NAMECALL R3 R3 K9 ["addText"]
  CALL R3 2 1
  NAMECALL R3 R3 K10 ["build"]
  CALL R3 1 -1
  RETURN R3 -1

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

PROTO_13:
  DUPTABLE R1 K2 [{"name", "arguments"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["InsertFromMarketplace"]
  SETTABLEKS R2 R1 K0 ["name"]
  DUPTABLE R2 K5 [{"query"}]
  SETTABLEKS R0 R2 K4 ["query"]
  SETTABLEKS R2 R1 K1 ["arguments"]
  RETURN R1 1

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
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K18 ["Tools"]
  GETTABLEKS R9 R10 K20 ["ToolTypes"]
  CALL R8 1 1
  GETTABLEKS R11 R4 K21 ["Components"]
  GETTABLEKS R10 R11 K22 ["BuiltinContentWidgets"]
  GETTABLEKS R9 R10 K23 ["AssetVariationContentWidget"]
  GETTABLEKS R11 R4 K24 ["Guest"]
  GETTABLEKS R10 R11 K25 ["Environment"]
  GETTABLEKS R12 R4 K21 ["Components"]
  GETTABLEKS R11 R12 K26 ["ExternalHooks"]
  GETTABLEKS R13 R4 K27 ["Utils"]
  GETTABLEKS R12 R13 K18 ["Tools"]
  GETTABLEKS R15 R4 K28 ["Resources"]
  GETTABLEKS R14 R15 K29 ["Localization"]
  GETTABLEKS R13 R14 K30 ["Translator"]
  GETTABLEKS R14 R4 K31 ["UIToolRegistry"]
  GETTABLEKS R16 R5 K16 ["Util"]
  GETTABLEKS R15 R16 K32 ["ToolBuilder"]
  GETTABLEKS R17 R5 K16 ["Util"]
  GETTABLEKS R16 R17 K33 ["ToolResult"]
  GETTABLEKS R17 R8 K34 ["ToolNames"]
  GETTABLEKS R18 R6 K35 ["get"]
  CALL R18 0 1
  NEWTABLE R19 0 0
  DUPCLOSURE R20 K36 [PROTO_0]
  CAPTURE VAL R3
  LOADK R23 K37 ["MarketplaceInsertionTool_updateContentName"]
  DUPCLOSURE R24 K38 [PROTO_2]
  CAPTURE VAL R11
  NAMECALL R21 R18 K39 ["OnGuestEvent"]
  CALL R21 3 1
  LOADK R24 K40 ["MarketplaceInsertionTool_listenToTagChanges"]
  DUPCLOSURE R25 K41 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R19
  NAMECALL R22 R18 K42 ["OnHostEvent"]
  CALL R22 3 1
  DUPCLOSURE R23 K43 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R22
  LOADK R26 K44 ["MarketplaceInsertionTool_insertFromMarketplace"]
  DUPCLOSURE R27 K45 [PROTO_10]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R20
  NAMECALL R24 R18 K46 ["OnHostInvokeAsync"]
  CALL R24 3 1
  DUPCLOSURE R25 K47 [PROTO_11]
  CAPTURE VAL R24
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R22
  CAPTURE VAL R12
  CAPTURE VAL R16
  GETTABLEKS R26 R18 K48 ["Destroying"]
  DUPCLOSURE R28 K49 [PROTO_12]
  CAPTURE VAL R19
  NAMECALL R26 R26 K50 ["Connect"]
  CALL R26 2 0
  GETTABLEKS R26 R15 K51 ["define"]
  CALL R26 0 1
  GETTABLEKS R28 R17 K52 ["InsertFromMarketplace"]
  NAMECALL R26 R26 K53 ["setName"]
  CALL R26 2 1
  LOADK R28 K54 ["Inserts a model from the Roblox marketplace into the game. 
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
  NAMECALL R26 R26 K55 ["setDescription"]
  CALL R26 2 1
  LOADK R28 K56 ["query"]
  DUPTABLE R29 K59 [{"type", "description"}]
  LOADK R30 K60 ["string"]
  SETTABLEKS R30 R29 K57 ["type"]
  LOADK R30 K61 ["The name of the asset to insert."]
  SETTABLEKS R30 R29 K58 ["description"]
  NAMECALL R26 R26 K62 ["addArgument"]
  CALL R26 3 1
  LOADK R28 K63 ["tag"]
  DUPTABLE R29 K59 [{"type", "description"}]
  LOADK R30 K60 ["string"]
  SETTABLEKS R30 R29 K57 ["type"]
  LOADK R30 K64 ["Tag of a reference asset to clone, rather than downloading from the marketplace. Tag was likely generated in a previous marketplace insertion request."]
  SETTABLEKS R30 R29 K58 ["description"]
  NAMECALL R26 R26 K65 ["addOptionalArgument"]
  CALL R26 3 1
  MOVE R28 R25
  NAMECALL R26 R26 K66 ["setHandler"]
  CALL R26 2 1
  NAMECALL R26 R26 K67 ["build"]
  CALL R26 1 1
  DUPTABLE R27 K70 [{"command", "mapToToolCall"}]
  LOADK R28 K71 ["insert"]
  SETTABLEKS R28 R27 K68 ["command"]
  DUPCLOSURE R28 K72 [PROTO_13]
  CAPTURE VAL R17
  SETTABLEKS R28 R27 K69 ["mapToToolCall"]
  DUPTABLE R28 K76 [{"definition", "slashCommand", "streamTransform"}]
  SETTABLEKS R26 R28 K73 ["definition"]
  SETTABLEKS R27 R28 K74 ["slashCommand"]
  GETTABLEKS R29 R14 K77 ["None"]
  SETTABLEKS R29 R28 K75 ["streamTransform"]
  RETURN R28 1
