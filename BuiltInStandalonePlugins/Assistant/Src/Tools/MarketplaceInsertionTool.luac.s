PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["toString"]
  GETTABLEKS R4 R0 K1 ["result"]
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["addText"]
  CALL R1 -1 1
  NAMECALL R1 R1 K3 ["build"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["generateToolId"]
  CALL R2 0 1
  DUPTABLE R3 K5 [{"type", "id", "name", "input"}]
  LOADK R4 K6 ["tool_use"]
  SETTABLEKS R4 R3 K1 ["type"]
  SETTABLEKS R2 R3 K2 ["id"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["InsertFromMarketplace"]
  SETTABLEKS R4 R3 K3 ["name"]
  DUPTABLE R4 K9 [{"query"}]
  GETTABLEKS R5 R0 K3 ["name"]
  SETTABLEKS R5 R4 K8 ["query"]
  SETTABLEKS R4 R3 K4 ["input"]
  DUPTABLE R4 K13 [{"type", "id", "name", "content", "startTime", "startTimeAfterConfirmation"}]
  LOADK R5 K14 ["tool_result"]
  SETTABLEKS R5 R4 K1 ["type"]
  SETTABLEKS R2 R4 K2 ["id"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["InsertFromMarketplace"]
  SETTABLEKS R5 R4 K3 ["name"]
  GETUPVAL R6 2
  CALL R6 0 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K15 ["toString"]
  GETTABLEKS R9 R1 K16 ["result"]
  CALL R8 1 -1
  NAMECALL R6 R6 K17 ["addText"]
  CALL R6 -1 1
  NAMECALL R6 R6 K18 ["build"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K10 ["content"]
  SETTABLEKS R5 R4 K10 ["content"]
  LOADN R5 0
  SETTABLEKS R5 R4 K11 ["startTime"]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["startTimeAfterConfirmation"]
  RETURN R3 2

PROTO_2:
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

PROTO_3:
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["name"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K1 ["className"]
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K2 ["shouldShowChip"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R1 K0 ["messageId"]
  GETTABLEKS R3 R1 K1 ["contentId"]
  GETTABLEKS R4 R1 K2 ["newName"]
  GETTABLEKS R5 R1 K3 ["newClassName"]
  GETTABLEKS R6 R1 K4 ["showChip"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["editContent"]
  DUPTABLE R8 K7 [{"messageId", "contentId", "transformFn"}]
  SETTABLEKS R2 R8 K0 ["messageId"]
  SETTABLEKS R3 R8 K1 ["contentId"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K6 ["transformFn"]
  CALL R7 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R1 K0 ["tag"]
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K1 ["GetTagged"]
  CALL R3 2 1
  GETUPVAL R4 1
  MOVE R6 R3
  NAMECALL R4 R4 K2 ["Set"]
  CALL R4 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["GetTagged"]
  CALL R0 2 1
  LENGTH R1 R0
  GETUPVAL R2 2
  LOADN R3 1
  JUMPIFNOTLT R3 R1 [+15]
  GETUPVAL R3 3
  LOADK R5 K1 ["InstanceChip"]
  LOADK R6 K2 ["Multiple"]
  DUPTABLE R7 K5 [{"name", "count"}]
  GETUPVAL R8 2
  SETTABLEKS R8 R7 K3 ["name"]
  SETTABLEKS R1 R7 K4 ["count"]
  NAMECALL R3 R3 K6 ["getText"]
  CALL R3 4 1
  MOVE R2 R3
  JUMP [+13]
  JUMPIFNOTEQKN R1 K7 [0] [+12]
  GETUPVAL R3 3
  LOADK R5 K1 ["InstanceChip"]
  LOADK R6 K8 ["Deleted"]
  DUPTABLE R7 K9 [{"name"}]
  GETUPVAL R8 2
  SETTABLEKS R8 R7 K3 ["name"]
  NAMECALL R3 R3 K6 ["getText"]
  CALL R3 4 1
  MOVE R2 R3
  LOADNIL R3
  LOADN R4 0
  JUMPIFNOTLT R4 R1 [+4]
  GETTABLEN R4 R0 1
  GETTABLEKS R3 R4 K10 ["ClassName"]
  GETUPVAL R4 4
  GETUPVAL R5 5
  DUPTABLE R6 K16 [{"messageId", "contentId", "newName", "newClassName", "showChip"}]
  GETUPVAL R7 6
  SETTABLEKS R7 R6 K11 ["messageId"]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K12 ["contentId"]
  SETTABLEKS R2 R6 K13 ["newName"]
  SETTABLEKS R3 R6 K14 ["newClassName"]
  LOADN R8 0
  JUMPIFLT R8 R1 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K15 ["showChip"]
  CALL R4 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R1 K0 ["messageId"]
  GETTABLEKS R3 R1 K1 ["contentId"]
  GETTABLEKS R4 R1 K2 ["name"]
  GETTABLEKS R5 R1 K3 ["tag"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["observeLinkChanges"]
  GETUPVAL R7 1
  MOVE R8 R5
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CALL R6 3 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R1 K0 ["assetId"]
  GETTABLEKS R3 R1 K1 ["insertGuid"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["loadCachedAssetAsync"]
  MOVE R5 R2
  CALL R4 1 1
  JUMPIF R4 [+2]
  LOADK R5 K3 ["load_failure"]
  RETURN R5 1
  LOADK R6 K4 ["Assistant:"]
  MOVE R7 R3
  CONCAT R5 R6 R7
  GETUPVAL R6 1
  MOVE R8 R5
  NAMECALL R6 R6 K5 ["GetTagged"]
  CALL R6 2 1
  LENGTH R7 R6
  JUMPIFNOTEQKN R7 K6 [0] [+3]
  LOADK R7 K7 ["tag_not_found"]
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
  LOADK R7 K20 ["success"]
  RETURN R7 1

PROTO_9:
  GETUPVAL R0 0
  LOADNIL R1
  DUPTABLE R2 K2 [{"assetId", "insertGuid"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K0 ["assetId"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["insertGuid"]
  SETTABLEKS R3 R2 K1 ["insertGuid"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K2 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADNIL R1
  DUPTABLE R2 K1 [{"tag"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K0 ["tag"]
  CALL R0 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["query"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["tag"]
  DUPTABLE R3 K10 [{"type", "name", "tag", "className", "assetIds", "expanded", "onSelectionChange", "shouldShowChip", "onChipClicked"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["Type"]
  SETTABLEKS R4 R3 K2 ["type"]
  SETTABLEKS R1 R3 K3 ["name"]
  SETTABLEKS R2 R3 K1 ["tag"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["className"]
  SETTABLEKS R4 R3 K4 ["className"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["assets"]
  SETTABLEKS R4 R3 K5 ["assetIds"]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["expanded"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K7 ["onSelectionChange"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["shouldShowChip"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K9 ["onChipClicked"]
  GETUPVAL R4 4
  MOVE R5 R3
  GETUPVAL R6 5
  CALL R4 2 2
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K13 ["addToolContent"]
  MOVE R7 R0
  DUPTABLE R8 K17 [{"toolUse", "toolResult", "content"}]
  SETTABLEKS R4 R8 K14 ["toolUse"]
  SETTABLEKS R5 R8 K15 ["toolResult"]
  SETTABLEKS R3 R8 K16 ["content"]
  CALL R6 2 1
  GETUPVAL R7 7
  LOADNIL R8
  DUPTABLE R9 K20 [{"messageId", "contentId", "name", "tag"}]
  SETTABLEKS R0 R9 K18 ["messageId"]
  SETTABLEKS R6 R9 K19 ["contentId"]
  SETTABLEKS R1 R9 K3 ["name"]
  SETTABLEKS R2 R9 K1 ["tag"]
  CALL R7 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["responseInfo"]
  FASTCALL2K ASSERT R1 K1 [+5]
  MOVE R3 R1
  LOADK R4 K1 ["Missing response info"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["getOrAddMessage"]
  LOADK R3 K5 ["assistant"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CALL R2 2 0
  RETURN R0 0

PROTO_14:
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

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["loadCachedAssetAsync"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
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
  NEWCLOSURE R19 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R17
  CALL R18 1 0
  FORGLOOP R13 2 [-7]
  DUPTABLE R13 K29 [{"result", "responseInfo"}]
  DUPTABLE R14 K32 [{"primaryResult", "secondaryResults"}]
  DUPTABLE R15 K35 [{"assetId", "insertGuid"}]
  SETTABLEKS R8 R15 K33 ["assetId"]
  SETTABLEKS R11 R15 K34 ["insertGuid"]
  SETTABLEKS R15 R14 K30 ["primaryResult"]
  SETTABLEKS R7 R14 K31 ["secondaryResults"]
  SETTABLEKS R14 R13 K16 ["result"]
  DUPTABLE R14 K39 [{"assets", "tag", "query", "insertGuid", "className"}]
  SETTABLEKS R6 R14 K36 ["assets"]
  SETTABLEKS R10 R14 K37 ["tag"]
  SETTABLEKS R2 R14 K0 ["query"]
  SETTABLEKS R11 R14 K34 ["insertGuid"]
  SETTABLEKS R12 R14 K38 ["className"]
  SETTABLEKS R14 R13 K28 ["responseInfo"]
  RETURN R13 1

PROTO_17:
  GETUPVAL R1 0
  LOADNIL R2
  DUPTABLE R3 K2 [{"query", "oldTag"}]
  GETTABLEKS R4 R0 K0 ["query"]
  SETTABLEKS R4 R3 K0 ["query"]
  GETTABLEKS R4 R0 K3 ["tag"]
  SETTABLEKS R4 R3 K1 ["oldTag"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K4 ["responseInfo"]
  JUMPIFNOT R2 [+23]
  GETTABLEKS R2 R1 K4 ["responseInfo"]
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["Missing response info"]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["getOrAddMessage"]
  LOADK R4 K9 ["assistant"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  CALL R3 2 0
  GETUPVAL R2 7
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_18:
  GETUPVAL R1 0
  CALL R1 0 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["FFlagMCPAssistantSlashCommandMenu must be enabled"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K3 ["SlashCommandDescriptions"]
  LOADK R3 K4 ["MarketplaceInsertion"]
  NAMECALL R0 R0 K5 ["getText"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_19:
  DUPTABLE R1 K2 [{"name", "arguments"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["InsertFromMarketplace"]
  SETTABLEKS R2 R1 K0 ["name"]
  DUPTABLE R2 K5 [{"query"}]
  SETTABLEKS R0 R2 K4 ["query"]
  SETTABLEKS R2 R1 K1 ["arguments"]
  RETURN R1 1

PROTO_20:
  GETTABLEKS R1 R0 K0 ["networking"]
  GETTABLEKS R2 R0 K1 ["dataModel"]
  LOADK R5 K2 ["InsertService"]
  NAMECALL R3 R2 K3 ["GetService"]
  CALL R3 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  LOADK R7 K4 ["MarketplaceInsertionTool_updateContentHeader"]
  DUPCLOSURE R8 K5 [PROTO_4]
  CAPTURE UPVAL U0
  NAMECALL R5 R1 K6 ["OnGuestEvent"]
  CALL R5 3 1
  LOADK R8 K7 ["MarketplaceInsertionTool_selectInsertedAssets"]
  DUPCLOSURE R9 K8 [PROTO_5]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R6 R1 K9 ["OnHostEvent"]
  CALL R6 3 1
  LOADK R9 K10 ["MarketplaceInsertionTool_listenToLinkChanges"]
  NEWCLOSURE R10 P3
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CAPTURE VAL R5
  NAMECALL R7 R1 K9 ["OnHostEvent"]
  CALL R7 3 1
  LOADK R10 K11 ["MarketplaceInsertionTool_swapAsset"]
  DUPCLOSURE R11 K12 [PROTO_8]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  NAMECALL R8 R1 K13 ["OnHostInvokeAsync"]
  CALL R8 3 1
  NEWCLOSURE R9 P5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE UPVAL U6
  CAPTURE VAL R7
  LOADK R12 K14 ["MarketplaceInsertionTool_insertFromMarketplace"]
  NEWCLOSURE R13 P6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  NAMECALL R10 R1 K13 ["OnHostInvokeAsync"]
  CALL R10 3 1
  NEWCLOSURE R11 P7
  CAPTURE VAL R10
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE UPVAL U6
  CAPTURE VAL R7
  CAPTURE UPVAL U9
  GETUPVAL R13 10
  GETTABLEKS R12 R13 K15 ["define"]
  CALL R12 0 1
  GETUPVAL R15 11
  GETTABLEKS R14 R15 K16 ["InsertFromMarketplace"]
  NAMECALL R12 R12 K17 ["setName"]
  CALL R12 2 1
  LOADK R14 K18 ["Inserts a model from the Roblox marketplace into the game. 
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
  NAMECALL R12 R12 K19 ["setDescription"]
  CALL R12 2 1
  LOADK R14 K20 ["query"]
  DUPTABLE R15 K23 [{"type", "description"}]
  LOADK R16 K24 ["string"]
  SETTABLEKS R16 R15 K21 ["type"]
  LOADK R16 K25 ["The name of the asset to insert."]
  SETTABLEKS R16 R15 K22 ["description"]
  NAMECALL R12 R12 K26 ["addArgument"]
  CALL R12 3 1
  LOADK R14 K27 ["tag"]
  DUPTABLE R15 K23 [{"type", "description"}]
  LOADK R16 K24 ["string"]
  SETTABLEKS R16 R15 K21 ["type"]
  LOADK R16 K28 ["Tag of a reference asset to clone, rather than downloading from the marketplace. Tag was likely generated in a previous marketplace insertion request."]
  SETTABLEKS R16 R15 K22 ["description"]
  NAMECALL R12 R12 K29 ["addOptionalArgument"]
  CALL R12 3 1
  MOVE R14 R11
  NAMECALL R12 R12 K30 ["setHandler"]
  CALL R12 2 1
  NAMECALL R12 R12 K31 ["build"]
  CALL R12 1 1
  DUPTABLE R13 K35 [{"command", "getDescription", "mapToToolCall"}]
  LOADK R14 K36 ["insert"]
  SETTABLEKS R14 R13 K32 ["command"]
  DUPCLOSURE R14 K37 [PROTO_18]
  CAPTURE UPVAL U12
  CAPTURE UPVAL U4
  SETTABLEKS R14 R13 K33 ["getDescription"]
  DUPCLOSURE R14 K38 [PROTO_19]
  CAPTURE UPVAL U11
  SETTABLEKS R14 R13 K34 ["mapToToolCall"]
  DUPTABLE R14 K42 [{"definition", "slashCommands", "streamTransform"}]
  SETTABLEKS R12 R14 K39 ["definition"]
  NEWTABLE R15 0 1
  MOVE R16 R13
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K40 ["slashCommands"]
  GETUPVAL R16 13
  GETTABLEKS R15 R16 K43 ["None"]
  SETTABLEKS R15 R14 K41 ["streamTransform"]
  RETURN R14 1

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
  LOADK R5 K9 ["Selection"]
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
  GETTABLEKS R8 R9 K16 ["Tools"]
  GETTABLEKS R7 R8 K17 ["ToolTypes"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R9 R0 K15 ["Src"]
  GETTABLEKS R8 R9 K18 ["Types"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K19 ["Flags"]
  GETTABLEKS R9 R10 K20 ["FFlagMCPAssistantSlashCommandMenu"]
  CALL R8 1 1
  GETTABLEKS R11 R4 K21 ["Components"]
  GETTABLEKS R10 R11 K22 ["BuiltinContentWidgets"]
  GETTABLEKS R9 R10 K23 ["AssetVariationContentWidget"]
  GETTABLEKS R11 R4 K24 ["Guest"]
  GETTABLEKS R10 R11 K25 ["Environment"]
  GETTABLEKS R12 R4 K21 ["Components"]
  GETTABLEKS R11 R12 K26 ["ExternalHooks"]
  GETTABLEKS R13 R4 K27 ["Utils"]
  GETTABLEKS R12 R13 K16 ["Tools"]
  GETTABLEKS R15 R4 K28 ["Resources"]
  GETTABLEKS R14 R15 K29 ["Localization"]
  GETTABLEKS R13 R14 K30 ["Translator"]
  GETTABLEKS R14 R4 K31 ["UIToolRegistry"]
  GETTABLEKS R16 R5 K32 ["Util"]
  GETTABLEKS R15 R16 K33 ["ToolBuilder"]
  GETTABLEKS R17 R5 K32 ["Util"]
  GETTABLEKS R16 R17 K34 ["ToolResult"]
  GETTABLEKS R17 R6 K35 ["ToolNames"]
  DUPCLOSURE R18 K36 [PROTO_0]
  CAPTURE VAL R16
  CAPTURE VAL R12
  DUPCLOSURE R19 K37 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R16
  DUPCLOSURE R20 K38 [PROTO_20]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R14
  RETURN R20 1
