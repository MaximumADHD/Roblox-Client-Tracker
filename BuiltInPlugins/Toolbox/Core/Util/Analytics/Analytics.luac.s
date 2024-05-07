PROTO_0:
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetSessionId"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  LOADNIL R0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CALL R1 1 0
  CLOSEUPVALS R0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetClientId"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  LOADNIL R0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CALL R1 1 0
  CLOSEUPVALS R0
  RETURN R0 1

PROTO_4:
  LOADN R0 0
  RETURN R0 1

PROTO_5:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventImmediately"]
  LOADK R3 K1 ["studio"]
  LOADK R4 K2 ["toolbox"]
  LOADK R5 K3 ["termSearchedWithoutInsertion"]
  DUPTABLE R6 K10 [{"categoryName", "searchTerm", "studioSid", "clientId", "userId", "isEditMode"}]
  SETTABLEKS R0 R6 K4 ["categoryName"]
  SETTABLEKS R1 R6 K5 ["searchTerm"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K7 ["clientId"]
  GETUPVAL R7 2
  CALL R7 0 1
  SETTABLEKS R7 R6 K8 ["userId"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K9 ["isEditMode"]
  CALL R2 4 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventImmediately"]
  LOADK R4 K1 ["studio"]
  LOADK R5 K2 ["toolbox"]
  LOADK R6 K3 ["creatorSearched"]
  DUPTABLE R7 K11 [{"searchTerm", "creatorId", "studioSid", "clientId", "userId", "type", "isEditMode"}]
  SETTABLEKS R0 R7 K4 ["searchTerm"]
  SETTABLEKS R1 R7 K5 ["creatorId"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U1
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K6 ["studioSid"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U1
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["clientId"]
  GETUPVAL R8 2
  CALL R8 0 1
  SETTABLEKS R8 R7 K8 ["userId"]
  GETUPVAL R9 3
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  MOVE R8 R2
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K9 ["type"]
  GETUPVAL R8 4
  SETTABLEKS R8 R7 K10 ["isEditMode"]
  CALL R3 4 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["toolbox"]
  LOADK R4 K3 ["tryAsset"]
  DUPTABLE R5 K9 [{"assetId", "studioSid", "clientId", "userId", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K6 ["clientId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["userId"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["toolbox"]
  LOADK R4 K3 ["tryAssetFailure"]
  DUPTABLE R5 K9 [{"assetId", "studioSid", "clientId", "userId", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K6 ["clientId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["userId"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendEventImmediately"]
  LOADK R1 K1 ["studio"]
  LOADK R2 K2 ["toolbox"]
  LOADK R3 K3 ["searchOptionsOpened"]
  DUPTABLE R4 K8 [{"studioSid", "clientId", "userId", "isEditMode"}]
  LOADNIL R6
  GETIMPORT R7 K10 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE REF R6
  CAPTURE UPVAL U1
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K4 ["studioSid"]
  LOADNIL R6
  GETIMPORT R7 K10 [pcall]
  NEWCLOSURE R8 P1
  CAPTURE REF R6
  CAPTURE UPVAL U1
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K5 ["clientId"]
  GETUPVAL R5 2
  CALL R5 0 1
  SETTABLEKS R5 R4 K6 ["userId"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K7 ["isEditMode"]
  CALL R0 4 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventImmediately"]
  LOADK R3 K1 ["studio"]
  LOADK R4 K2 ["click"]
  LOADK R5 K3 ["toolboxCategorySelection"]
  DUPTABLE R6 K9 [{"oldCategory", "newCategory", "studioSid", "clientId", "isEditMode"}]
  SETTABLEKS R0 R6 K4 ["oldCategory"]
  SETTABLEKS R1 R6 K5 ["newCategory"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K7 ["clientId"]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K8 ["isEditMode"]
  CALL R2 4 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R5 K9 [{"assetId", "searchText", "assetIndex", "currentCategory", "studioSid", "clientId", "placeId", "userId", "isEditMode"}]
  SETTABLEKS R0 R5 K0 ["assetId"]
  SETTABLEKS R1 R5 K1 ["searchText"]
  SETTABLEKS R2 R5 K2 ["assetIndex"]
  SETTABLEKS R3 R5 K3 ["currentCategory"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U0
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K4 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U0
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 1
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["placeId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["userId"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  SETTABLEKS R4 R5 K12 ["layoutMode"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K13 ["sendEventImmediately"]
  LOADK R7 K14 ["studio"]
  LOADK R8 K15 ["click"]
  LOADK R9 K16 ["toolboxInsert"]
  MOVE R10 R5
  CALL R6 4 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["sendEventImmediately"]
  LOADK R5 K1 ["studio"]
  LOADK R6 K2 ["drag"]
  LOADK R7 K3 ["toolboxInsert"]
  DUPTABLE R8 K13 [{"assetId", "searchText", "assetIndex", "currentCategory", "studioSid", "clientId", "placeId", "userId", "isEditMode"}]
  SETTABLEKS R0 R8 K4 ["assetId"]
  SETTABLEKS R1 R8 K5 ["searchText"]
  SETTABLEKS R2 R8 K6 ["assetIndex"]
  SETTABLEKS R3 R8 K7 ["currentCategory"]
  LOADNIL R10
  GETIMPORT R11 K15 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K8 ["studioSid"]
  LOADNIL R10
  GETIMPORT R11 K15 [pcall]
  NEWCLOSURE R12 P1
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K9 ["clientId"]
  GETUPVAL R9 2
  CALL R9 0 1
  SETTABLEKS R9 R8 K10 ["placeId"]
  GETUPVAL R9 3
  CALL R9 0 1
  SETTABLEKS R9 R8 K11 ["userId"]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K12 ["isEditMode"]
  CALL R4 4 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventImmediately"]
  LOADK R3 K1 ["studio"]
  LOADK R4 K2 ["Marketplace"]
  LOADK R5 K3 ["DragInsertFinished"]
  DUPTABLE R6 K11 [{"assetId", "assetTypeId", "studioSid", "clientId", "placeId", "userId", "isEditMode"}]
  SETTABLEKS R0 R6 K4 ["assetId"]
  SETTABLEKS R1 R6 K5 ["assetTypeId"]
  LOADNIL R8
  GETIMPORT R9 K13 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K13 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K7 ["clientId"]
  GETUPVAL R7 2
  CALL R7 0 1
  SETTABLEKS R7 R6 K8 ["placeId"]
  GETUPVAL R7 3
  CALL R7 0 1
  SETTABLEKS R7 R6 K9 ["userId"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K10 ["isEditMode"]
  CALL R2 4 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventImmediately"]
  LOADK R4 K1 ["studio"]
  LOADK R5 K2 ["AssetConfig"]
  LOADK R6 K3 ["PackageNoteCreated"]
  DUPTABLE R7 K11 [{"assetId", "assetVersionNumber", "message", "studioSid", "clientId", "placeId", "userId"}]
  SETTABLEKS R0 R7 K4 ["assetId"]
  SETTABLEKS R1 R7 K5 ["assetVersionNumber"]
  SETTABLEKS R2 R7 K6 ["message"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U1
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["studioSid"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U1
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K8 ["clientId"]
  GETUPVAL R8 2
  CALL R8 0 1
  SETTABLEKS R8 R7 K9 ["placeId"]
  GETUPVAL R8 3
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  CALL R3 4 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventImmediately"]
  LOADK R4 K1 ["studio"]
  LOADK R5 K2 ["AssetConfig"]
  LOADK R6 K3 ["PackageNoteDiscarded"]
  DUPTABLE R7 K11 [{"assetId", "assetVersionNumber", "message", "studioSid", "clientId", "placeId", "userId"}]
  SETTABLEKS R0 R7 K4 ["assetId"]
  SETTABLEKS R1 R7 K5 ["assetVersionNumber"]
  SETTABLEKS R2 R7 K6 ["message"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U1
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["studioSid"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U1
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K8 ["clientId"]
  GETUPVAL R8 2
  CALL R8 0 1
  SETTABLEKS R8 R7 K9 ["placeId"]
  GETUPVAL R8 3
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  CALL R3 4 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["AssetConfig"]
  LOADK R4 K3 ["PackageNoteCanceled"]
  DUPTABLE R5 K9 [{"assetId", "studioSid", "clientId", "placeId", "userId"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K6 ["clientId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["placeId"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["userId"]
  CALL R1 4 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["Studio.ToolboxInsert.%s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["Studio.ToolboxCategoryInsert.%s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["StudioWorkspaceInsertCounter"]
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["Studio.Upload.%s.Success"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["Studio.Upload.%s.Failure"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["Studio.ToolboxAudio.Played"]
  CALL R0 1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["Studio.ToolboxAudio.Paused"]
  CALL R0 1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R2 0
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["sendResultToKibana"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["Studio.ToolboxAsset.Impression"]
  CALL R0 1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventDeferred"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["toolbox"]
  LOADK R4 K3 ["assetPreviewOpen"]
  DUPTABLE R5 K9 [{"assetId", "clientId", "userId", "platformId", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["userId"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["platformId"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  LOADK R3 K1 ["studio"]
  LOADK R4 K2 ["toolbox"]
  LOADK R5 K3 ["modelPreviewInteractionDuration"]
  DUPTABLE R6 K10 [{"assetId", "time", "clientId", "userId", "platformId", "isEditMode"}]
  SETTABLEKS R0 R6 K4 ["assetId"]
  SETTABLEKS R1 R6 K5 ["time"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["clientId"]
  GETUPVAL R7 2
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["userId"]
  LOADN R7 0
  SETTABLEKS R7 R6 K8 ["platformId"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K9 ["isEditMode"]
  CALL R2 4 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventDeferred"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["toolbox"]
  LOADK R4 K3 ["previewInsertion"]
  DUPTABLE R5 K9 [{"assetId", "clientId", "userId", "platformId", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["userId"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["platformId"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendEventDeferred"]
  LOADK R1 K1 ["studio"]
  LOADK R2 K2 ["toolbox"]
  LOADK R3 K3 ["MarketplaceOpen"]
  DUPTABLE R4 K7 [{"userId", "placeId", "isEditMode"}]
  GETUPVAL R5 1
  CALL R5 0 1
  SETTABLEKS R5 R4 K4 ["userId"]
  GETUPVAL R5 2
  CALL R5 0 1
  SETTABLEKS R5 R4 K5 ["placeId"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K6 ["isEditMode"]
  CALL R0 4 0
  RETURN R0 0

PROTO_31:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendEventDeferred"]
  LOADK R1 K1 ["studio"]
  LOADK R2 K2 ["toolbox"]
  LOADK R3 K3 ["MarketplaceClosed"]
  DUPTABLE R4 K7 [{"userId", "placeId", "isEditMode"}]
  GETUPVAL R5 1
  CALL R5 0 1
  SETTABLEKS R5 R4 K4 ["userId"]
  GETUPVAL R5 2
  CALL R5 0 1
  SETTABLEKS R5 R4 K5 ["placeId"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K6 ["isEditMode"]
  CALL R0 4 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendEventDeferred"]
  LOADK R1 K1 ["studio"]
  LOADK R2 K2 ["toolbox"]
  LOADK R3 K3 ["MarketplaceImpression"]
  DUPTABLE R4 K7 [{"userId", "placeId", "isEditMode"}]
  GETUPVAL R5 1
  CALL R5 0 1
  SETTABLEKS R5 R4 K4 ["userId"]
  GETUPVAL R5 2
  CALL R5 0 1
  SETTABLEKS R5 R4 K5 ["placeId"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K6 ["isEditMode"]
  CALL R0 4 0
  RETURN R0 0

PROTO_33:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendEventDeferred"]
  LOADK R1 K1 ["studio"]
  LOADK R2 K2 ["Marketplace"]
  LOADK R3 K3 ["MarketplaceHidden"]
  DUPTABLE R4 K7 [{"userId", "placeId", "isEditMode"}]
  GETUPVAL R5 1
  CALL R5 0 1
  SETTABLEKS R5 R4 K4 ["userId"]
  GETUPVAL R5 2
  CALL R5 0 1
  SETTABLEKS R5 R4 K5 ["placeId"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K6 ["isEditMode"]
  CALL R0 4 0
  RETURN R0 0

PROTO_34:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["sendEventImmediately"]
  LOADK R5 K1 ["studio"]
  LOADK R6 K2 ["Marketplace"]
  MOVE R7 R0
  DUPTABLE R8 K11 [{"assetId", "assetTypeId", "clientId", "userId", "platformId", "studioSid", "isEditMode", "currentCategory"}]
  SETTABLEKS R1 R8 K3 ["assetId"]
  SETTABLEKS R2 R8 K4 ["assetTypeId"]
  LOADNIL R10
  GETIMPORT R11 K13 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K5 ["clientId"]
  GETUPVAL R9 2
  CALL R9 0 1
  SETTABLEKS R9 R8 K6 ["userId"]
  LOADN R9 0
  SETTABLEKS R9 R8 K7 ["platformId"]
  LOADNIL R10
  GETIMPORT R11 K13 [pcall]
  NEWCLOSURE R12 P1
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K8 ["studioSid"]
  GETUPVAL R9 3
  SETTABLEKS R9 R8 K9 ["isEditMode"]
  SETTABLEKS R3 R8 K10 ["currentCategory"]
  CALL R4 4 0
  RETURN R0 0

PROTO_35:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendEventImmediately"]
  LOADK R1 K1 ["studio"]
  LOADK R2 K2 ["Marketplace"]
  LOADK R3 K3 ["OpenedFromPluginManagement"]
  DUPTABLE R4 K7 [{"studioSid", "clientId", "isEditMode"}]
  LOADNIL R6
  GETIMPORT R7 K9 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE REF R6
  CAPTURE UPVAL U1
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K4 ["studioSid"]
  LOADNIL R6
  GETIMPORT R7 K9 [pcall]
  NEWCLOSURE R8 P1
  CAPTURE REF R6
  CAPTURE UPVAL U1
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K5 ["clientId"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K6 ["isEditMode"]
  CALL R0 4 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["Marketplace"]
  LOADK R4 K3 ["OpenedExternallyByAssetType"]
  DUPTABLE R5 K8 [{"assetTypeName", "clientId", "isEditMode", "studioSid"}]
  SETTABLEKS R0 R5 K4 ["assetTypeName"]
  LOADNIL R7
  GETIMPORT R8 K10 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K6 ["isEditMode"]
  LOADNIL R7
  GETIMPORT R8 K10 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K7 ["studioSid"]
  CALL R1 4 0
  RETURN R0 0

PROTO_37:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventImmediately"]
  LOADK R3 K1 ["studio"]
  LOADK R4 K2 ["Marketplace"]
  LOADK R5 K3 ["ReportAssetClicked"]
  DUPTABLE R6 K9 [{"studioSid", "clientId", "isEditMode", "assetId", "assetTypeId"}]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K4 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K5 ["clientId"]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K6 ["isEditMode"]
  SETTABLEKS R0 R6 K7 ["assetId"]
  SETTABLEKS R1 R6 K8 ["assetTypeId"]
  CALL R2 4 0
  RETURN R0 0

PROTO_38:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["Marketplace"]
  LOADK R4 K3 ["MeshPartFiltered"]
  DUPTABLE R5 K9 [{"studioSid", "clientId", "isEditMode", "placeId", "assetId"}]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K4 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K6 ["isEditMode"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["placeId"]
  SETTABLEKS R0 R5 K8 ["assetId"]
  CALL R1 4 0
  RETURN R0 0

PROTO_39:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["Marketplace"]
  LOADK R4 K3 ["IdVerificationIconClicked"]
  DUPTABLE R5 K10 [{"assetId", "clientId", "userId", "platformId", "studioSid", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K12 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["userId"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["platformId"]
  LOADNIL R7
  GETIMPORT R8 K12 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K8 ["studioSid"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K9 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_40:
  DUPTABLE R3 K18 [{"studioSid", "clientID", "creatorIDs", "excludeGroupCreations", "groupIDs", "isEditMode", "userID", "ptid", "placeID", "searchKeyword", "isTopKeyword", "categoryName", "includeOnlyVerifiedCreators", "assetType", "searchByCreatorID", "searchID", "sort", "toolboxTab"}]
  LOADNIL R5
  GETIMPORT R6 K20 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE REF R5
  CAPTURE UPVAL U0
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  SETTABLEKS R4 R3 K0 ["studioSid"]
  LOADNIL R5
  GETIMPORT R6 K20 [pcall]
  NEWCLOSURE R7 P1
  CAPTURE REF R5
  CAPTURE UPVAL U0
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  SETTABLEKS R4 R3 K1 ["clientID"]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K2 ["creatorIDs"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["creatorIDs"]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K3 ["excludeGroupCreations"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["excludeGroupCreations"]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K4 ["groupIDs"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["groupIDs"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K5 ["isEditMode"]
  GETUPVAL R4 3
  CALL R4 0 1
  SETTABLEKS R4 R3 K6 ["userID"]
  LOADN R4 0
  SETTABLEKS R4 R3 K7 ["ptid"]
  GETUPVAL R4 4
  CALL R4 0 1
  SETTABLEKS R4 R3 K8 ["placeID"]
  SETTABLEKS R0 R3 K9 ["searchKeyword"]
  SETTABLEKS R1 R3 K10 ["isTopKeyword"]
  GETTABLEKS R4 R2 K11 ["categoryName"]
  SETTABLEKS R4 R3 K11 ["categoryName"]
  GETTABLEKS R4 R2 K12 ["includeOnlyVerifiedCreators"]
  SETTABLEKS R4 R3 K12 ["includeOnlyVerifiedCreators"]
  GETTABLEKS R4 R2 K13 ["assetType"]
  SETTABLEKS R4 R3 K13 ["assetType"]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADNIL R4
  JUMP [+2]
  GETTABLEKS R4 R2 K21 ["creatorID"]
  SETTABLEKS R4 R3 K14 ["searchByCreatorID"]
  GETTABLEKS R4 R2 K22 ["searchId"]
  SETTABLEKS R4 R3 K15 ["searchID"]
  GETTABLEKS R4 R2 K16 ["sort"]
  SETTABLEKS R4 R3 K16 ["sort"]
  GETTABLEKS R4 R2 K17 ["toolboxTab"]
  SETTABLEKS R4 R3 K17 ["toolboxTab"]
  GETTABLEKS R4 R2 K23 ["qualityFilterTags"]
  JUMPIFNOT R4 [+8]
  GETTABLEKS R4 R2 K23 ["qualityFilterTags"]
  JUMPIFEQKS R4 K24 [""] [+5]
  GETTABLEKS R4 R2 K23 ["qualityFilterTags"]
  SETTABLEKS R4 R3 K23 ["qualityFilterTags"]
  GETUPVAL R4 5
  CALL R4 0 1
  JUMPIFNOT R4 [+16]
  GETTABLEKS R4 R2 K25 ["previousSearchId"]
  SETTABLEKS R4 R3 K25 ["previousSearchId"]
  GETTABLEKS R4 R2 K26 ["querySource"]
  SETTABLEKS R4 R3 K26 ["querySource"]
  GETTABLEKS R4 R2 K27 ["originalUserQuery"]
  SETTABLEKS R4 R3 K27 ["originalUserQuery"]
  GETTABLEKS R4 R2 K28 ["originalCorrection"]
  SETTABLEKS R4 R3 K28 ["originalCorrection"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K29 ["sendEventImmediately"]
  LOADK R5 K30 ["studio"]
  LOADK R6 K31 ["Marketplace"]
  LOADK R7 K32 ["MarketplaceSearch"]
  MOVE R8 R3
  CALL R4 4 0
  RETURN R0 0

PROTO_41:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["sendEventImmediately"]
  LOADK R7 K1 ["studio"]
  LOADK R8 K2 ["Marketplace"]
  LOADK R9 K3 ["MarketplaceAutocompleteSearch"]
  DUPTABLE R10 K20 [{"studioSid", "clientID", "isEditMode", "userID", "ptid", "placeID", "searchKeyword", "autocompletePrefix", "autocompleteKeyCount", "autocompleteDeleteCount", "autocompleteShown", "assetType", "searchByCreatorID", "searchID", "sort", "toolboxTab"}]
  LOADNIL R12
  GETIMPORT R13 K22 [pcall]
  NEWCLOSURE R14 P0
  CAPTURE REF R12
  CAPTURE UPVAL U1
  CALL R13 1 0
  MOVE R11 R12
  CLOSEUPVALS R12
  SETTABLEKS R11 R10 K4 ["studioSid"]
  LOADNIL R12
  GETIMPORT R13 K22 [pcall]
  NEWCLOSURE R14 P1
  CAPTURE REF R12
  CAPTURE UPVAL U1
  CALL R13 1 0
  MOVE R11 R12
  CLOSEUPVALS R12
  SETTABLEKS R11 R10 K5 ["clientID"]
  GETUPVAL R11 2
  SETTABLEKS R11 R10 K6 ["isEditMode"]
  GETUPVAL R11 3
  CALL R11 0 1
  SETTABLEKS R11 R10 K7 ["userID"]
  LOADN R11 0
  SETTABLEKS R11 R10 K8 ["ptid"]
  GETUPVAL R11 4
  CALL R11 0 1
  SETTABLEKS R11 R10 K9 ["placeID"]
  SETTABLEKS R0 R10 K10 ["searchKeyword"]
  SETTABLEKS R1 R10 K11 ["autocompletePrefix"]
  SETTABLEKS R2 R10 K12 ["autocompleteKeyCount"]
  SETTABLEKS R3 R10 K13 ["autocompleteDeleteCount"]
  SETTABLEKS R4 R10 K14 ["autocompleteShown"]
  GETTABLEKS R11 R5 K15 ["assetType"]
  SETTABLEKS R11 R10 K15 ["assetType"]
  GETTABLEKS R11 R5 K23 ["creatorID"]
  SETTABLEKS R11 R10 K16 ["searchByCreatorID"]
  GETTABLEKS R11 R5 K24 ["searchId"]
  SETTABLEKS R11 R10 K17 ["searchID"]
  GETTABLEKS R11 R5 K18 ["sort"]
  SETTABLEKS R11 R10 K18 ["sort"]
  GETTABLEKS R11 R5 K19 ["toolboxTab"]
  SETTABLEKS R11 R10 K19 ["toolboxTab"]
  CALL R6 4 0
  RETURN R0 0

PROTO_42:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["Marketplace"]
  LOADK R4 K3 ["ToolboxWidgetInteraction"]
  DUPTABLE R5 K11 [{"clientId", "userId", "platformId", "studioSid", "isEditMode", "widgetWidth", "widgetHeight"}]
  LOADNIL R7
  GETIMPORT R8 K13 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K4 ["clientId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K5 ["userId"]
  LOADN R6 0
  SETTABLEKS R6 R5 K6 ["platformId"]
  LOADNIL R7
  GETIMPORT R8 K13 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K7 ["studioSid"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  GETTABLEKS R6 R0 K14 ["X"]
  SETTABLEKS R6 R5 K9 ["widgetWidth"]
  GETTABLEKS R6 R0 K15 ["Y"]
  SETTABLEKS R6 R5 K10 ["widgetHeight"]
  CALL R1 4 0
  RETURN R0 0

PROTO_43:
  DUPTABLE R6 K10 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R6 K0 ["announcementButtonKey"]
  SETTABLEKS R1 R6 K1 ["announcementDateKey"]
  SETTABLEKS R2 R6 K2 ["announcementDescriptionKey"]
  SETTABLEKS R3 R6 K3 ["announcementHeaderKey"]
  SETTABLEKS R4 R6 K4 ["announcementLinkKey"]
  SETTABLEKS R5 R6 K5 ["announcementLinkLocation"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U0
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["clientId"]
  LOADN R7 0
  SETTABLEKS R7 R6 K7 ["platformId"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U0
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K8 ["studioSid"]
  GETUPVAL R7 1
  CALL R7 0 1
  SETTABLEKS R7 R6 K9 ["userId"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["sendEventImmediately"]
  LOADK R8 K14 ["studio"]
  LOADK R9 K15 ["Marketplace"]
  LOADK R10 K16 ["AnnouncementViewed"]
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

PROTO_44:
  DUPTABLE R6 K10 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R6 K0 ["announcementButtonKey"]
  SETTABLEKS R1 R6 K1 ["announcementDateKey"]
  SETTABLEKS R2 R6 K2 ["announcementDescriptionKey"]
  SETTABLEKS R3 R6 K3 ["announcementHeaderKey"]
  SETTABLEKS R4 R6 K4 ["announcementLinkKey"]
  SETTABLEKS R5 R6 K5 ["announcementLinkLocation"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U0
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["clientId"]
  LOADN R7 0
  SETTABLEKS R7 R6 K7 ["platformId"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U0
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K8 ["studioSid"]
  GETUPVAL R7 1
  CALL R7 0 1
  SETTABLEKS R7 R6 K9 ["userId"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["sendEventImmediately"]
  LOADK R8 K14 ["studio"]
  LOADK R9 K15 ["Marketplace"]
  LOADK R10 K16 ["AnnouncementLinkClicked"]
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

PROTO_45:
  DUPTABLE R7 K11 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "durationBeforeClosed", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R7 K0 ["announcementButtonKey"]
  SETTABLEKS R1 R7 K1 ["announcementDateKey"]
  SETTABLEKS R2 R7 K2 ["announcementDescriptionKey"]
  SETTABLEKS R3 R7 K3 ["announcementHeaderKey"]
  SETTABLEKS R4 R7 K4 ["announcementLinkKey"]
  SETTABLEKS R5 R7 K5 ["announcementLinkLocation"]
  SETTABLEKS R6 R7 K6 ["durationBeforeClosed"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U0
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["clientId"]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["platformId"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U0
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K9 ["studioSid"]
  GETUPVAL R8 1
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["sendEventImmediately"]
  LOADK R9 K15 ["studio"]
  LOADK R10 K16 ["Marketplace"]
  LOADK R11 K17 ["AnnouncementClosed"]
  MOVE R12 R7
  CALL R8 4 0
  RETURN R0 0

PROTO_46:
  DUPTABLE R7 K11 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "durationBeforeClosed", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R7 K0 ["announcementButtonKey"]
  SETTABLEKS R1 R7 K1 ["announcementDateKey"]
  SETTABLEKS R2 R7 K2 ["announcementDescriptionKey"]
  SETTABLEKS R3 R7 K3 ["announcementHeaderKey"]
  SETTABLEKS R4 R7 K4 ["announcementLinkKey"]
  SETTABLEKS R5 R7 K5 ["announcementLinkLocation"]
  SETTABLEKS R6 R7 K6 ["durationBeforeClosed"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U0
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["clientId"]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["platformId"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U0
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K9 ["studioSid"]
  GETUPVAL R8 1
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["sendEventImmediately"]
  LOADK R9 K15 ["studio"]
  LOADK R10 K16 ["Marketplace"]
  LOADK R11 K17 ["AnnouncementAcknowledged"]
  MOVE R12 R7
  CALL R8 4 0
  RETURN R0 0

PROTO_47:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventDeferred"]
  LOADK R4 K1 ["studio"]
  LOADK R5 K2 ["Marketplace"]
  LOADK R6 K3 ["AssetMediaItemsUpdated"]
  DUPTABLE R7 K11 [{"assetId", "assetMediaIds", "assetTypeId", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R7 K4 ["assetId"]
  GETIMPORT R8 K14 [table.concat]
  MOVE R9 R2
  LOADK R10 K15 [","]
  CALL R8 2 1
  SETTABLEKS R8 R7 K5 ["assetMediaIds"]
  SETTABLEKS R1 R7 K6 ["assetTypeId"]
  LOADNIL R9
  GETIMPORT R10 K17 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U1
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["clientId"]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["platformId"]
  LOADNIL R9
  GETIMPORT R10 K17 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U1
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K9 ["studioSid"]
  GETUPVAL R8 2
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  CALL R3 4 0
  RETURN R0 0

PROTO_48:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  LOADK R3 K1 ["studio"]
  LOADK R4 K2 ["Marketplace"]
  LOADK R5 K3 ["MarketplaceListViewToggleClicked"]
  DUPTABLE R6 K9 [{"assetType", "layoutMode", "searchId", "clientId", "userId"}]
  GETTABLEKS R7 R1 K4 ["assetType"]
  SETTABLEKS R7 R6 K4 ["assetType"]
  SETTABLEKS R0 R6 K5 ["layoutMode"]
  GETTABLEKS R7 R1 K6 ["searchId"]
  SETTABLEKS R7 R6 K6 ["searchId"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K7 ["clientId"]
  GETUPVAL R7 2
  CALL R7 0 1
  SETTABLEKS R7 R6 K8 ["userId"]
  CALL R2 4 0
  RETURN R0 0

PROTO_49:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["sendEventDeferred"]
  LOADK R5 K1 ["studio"]
  LOADK R6 K2 ["Marketplace"]
  LOADK R7 K3 ["MarketplaceAssetRowExpanded"]
  DUPTABLE R8 K12 [{"assetId", "assetType", "pageNumber", "pagePosition", "searchId", "clientId", "platformId", "userId"}]
  SETTABLEKS R0 R8 K4 ["assetId"]
  GETTABLEKS R9 R3 K5 ["assetType"]
  SETTABLEKS R9 R8 K5 ["assetType"]
  SETTABLEKS R1 R8 K6 ["pageNumber"]
  SETTABLEKS R2 R8 K7 ["pagePosition"]
  GETTABLEKS R9 R3 K8 ["searchId"]
  SETTABLEKS R9 R8 K8 ["searchId"]
  LOADNIL R10
  GETIMPORT R11 K14 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K9 ["clientId"]
  LOADN R9 0
  SETTABLEKS R9 R8 K10 ["platformId"]
  GETUPVAL R9 2
  CALL R9 0 1
  SETTABLEKS R9 R8 K11 ["userId"]
  CALL R4 4 0
  RETURN R0 0

PROTO_50:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventDeferred"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["Marketplace"]
  LOADK R4 K3 ["MarketplaceRecentSearchClicked"]
  DUPTABLE R5 K7 [{"keyword", "clientId", "userId"}]
  SETTABLEKS R0 R5 K4 ["keyword"]
  LOADNIL R7
  GETIMPORT R8 K9 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U1
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["userId"]
  CALL R1 4 0
  RETURN R0 0

PROTO_51:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  LOADK R3 K1 ["studio"]
  LOADK R4 K2 ["Marketplace"]
  LOADK R5 K3 ["MarketplaceSearchFilterOpened"]
  DUPTABLE R6 K8 [{"assetTypeId", "clientId", "toolboxTab", "userId"}]
  JUMPIFNOT R0 [+3]
  GETTABLEKS R7 R0 K9 ["Value"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K4 ["assetTypeId"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K5 ["clientId"]
  SETTABLEKS R1 R6 K6 ["toolboxTab"]
  GETUPVAL R7 2
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["userId"]
  CALL R2 4 0
  RETURN R0 0

PROTO_52:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventDeferred"]
  LOADK R4 K1 ["studio"]
  LOADK R5 K2 ["UGCUploadFlow"]
  LOADK R6 K3 ["UGCBundleValidationEvent"]
  DUPTABLE R7 K8 [{"clientId", "status", "bundleType", "errors"}]
  LOADNIL R9
  GETIMPORT R10 K10 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U1
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K4 ["clientId"]
  SETTABLEKS R0 R7 K5 ["status"]
  SETTABLEKS R1 R7 K6 ["bundleType"]
  SETTABLEKS R2 R7 K7 ["errors"]
  CALL R3 4 0
  RETURN R0 0

PROTO_53:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["sendEventDeferred"]
  LOADK R5 K1 ["studio"]
  LOADK R6 K2 ["UGCUploadFlow"]
  LOADK R7 K3 ["UGCUploadRequestOperationIdEvent"]
  DUPTABLE R8 K9 [{"clientId", "status", "bundleType", "operationId", "errors"}]
  LOADNIL R10
  GETIMPORT R11 K11 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K4 ["clientId"]
  SETTABLEKS R0 R8 K5 ["status"]
  SETTABLEKS R1 R8 K6 ["bundleType"]
  SETTABLEKS R2 R8 K7 ["operationId"]
  SETTABLEKS R3 R8 K8 ["errors"]
  CALL R4 4 0
  RETURN R0 0

PROTO_54:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["sendEventDeferred"]
  LOADK R6 K1 ["studio"]
  LOADK R7 K2 ["UGCUploadFlow"]
  LOADK R8 K3 ["UGCUploadAssetsEvent"]
  DUPTABLE R9 K10 [{"clientId", "status", "bundleType", "operationId", "assetIds", "errors"}]
  LOADNIL R11
  GETIMPORT R12 K12 [pcall]
  NEWCLOSURE R13 P0
  CAPTURE REF R11
  CAPTURE UPVAL U1
  CALL R12 1 0
  MOVE R10 R11
  CLOSEUPVALS R11
  SETTABLEKS R10 R9 K4 ["clientId"]
  SETTABLEKS R0 R9 K5 ["status"]
  SETTABLEKS R1 R9 K6 ["bundleType"]
  SETTABLEKS R2 R9 K7 ["operationId"]
  SETTABLEKS R3 R9 K8 ["assetIds"]
  SETTABLEKS R4 R9 K9 ["errors"]
  CALL R5 4 0
  RETURN R0 0

PROTO_55:
  GETUPVAL R3 0
  CALL R3 0 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["not enabled yet"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["sendEventDeferred"]
  LOADK R3 K4 ["studio"]
  LOADK R4 K5 ["UGCUploadFlow"]
  LOADK R5 K6 ["UGCIndividualAssetUploadEvent"]
  DUPTABLE R6 K12 [{"placeId", "studioSid", "clientId", "assetId", "underlyingAssetIds"}]
  GETUPVAL R7 2
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["placeId"]
  LOADNIL R8
  GETIMPORT R9 K14 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U3
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K8 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K14 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U3
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K9 ["clientId"]
  SETTABLEKS R0 R6 K10 ["assetId"]
  SETTABLEKS R1 R6 K11 ["underlyingAssetIds"]
  CALL R2 4 0
  RETURN R0 0

PROTO_56:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["sendEventDeferred"]
  LOADK R7 K1 ["studio"]
  LOADK R8 K2 ["UGCUploadFlow"]
  LOADK R9 K3 ["UGCUploadRequestBundleCreationStatusEvent"]
  DUPTABLE R10 K11 [{"clientId", "status", "bundleType", "operationId", "assetIds", "creationStatusId", "errors"}]
  LOADNIL R12
  GETIMPORT R13 K13 [pcall]
  NEWCLOSURE R14 P0
  CAPTURE REF R12
  CAPTURE UPVAL U1
  CALL R13 1 0
  MOVE R11 R12
  CLOSEUPVALS R12
  SETTABLEKS R11 R10 K4 ["clientId"]
  SETTABLEKS R0 R10 K5 ["status"]
  SETTABLEKS R1 R10 K6 ["bundleType"]
  SETTABLEKS R2 R10 K7 ["operationId"]
  SETTABLEKS R3 R10 K8 ["assetIds"]
  SETTABLEKS R4 R10 K9 ["creationStatusId"]
  SETTABLEKS R5 R10 K10 ["errors"]
  CALL R6 4 0
  RETURN R0 0

PROTO_57:
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["sendEventDeferred"]
  LOADK R8 K1 ["studio"]
  LOADK R9 K2 ["UGCUploadFlow"]
  LOADK R10 K3 ["UGCUploadGetBundleCreationStatusEvent"]
  DUPTABLE R11 K12 [{"clientId", "status", "bundleType", "operationId", "assetIds", "creationStatusId", "bundleId", "errors"}]
  LOADNIL R13
  GETIMPORT R14 K14 [pcall]
  NEWCLOSURE R15 P0
  CAPTURE REF R13
  CAPTURE UPVAL U1
  CALL R14 1 0
  MOVE R12 R13
  CLOSEUPVALS R13
  SETTABLEKS R12 R11 K4 ["clientId"]
  SETTABLEKS R0 R11 K5 ["status"]
  SETTABLEKS R1 R11 K6 ["bundleType"]
  SETTABLEKS R2 R11 K7 ["operationId"]
  SETTABLEKS R3 R11 K8 ["assetIds"]
  SETTABLEKS R4 R11 K9 ["creationStatusId"]
  SETTABLEKS R5 R11 K10 ["bundleId"]
  SETTABLEKS R6 R11 K11 ["errors"]
  CALL R7 4 0
  RETURN R0 0

PROTO_58:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventDeferred"]
  LOADK R2 K1 ["studio"]
  LOADK R3 K2 ["toolboxInsert"]
  LOADK R4 K3 ["AudioGrantedToUserInventory"]
  DUPTABLE R5 K7 [{"assetId", "placeid", "sessionid"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  GETUPVAL R6 1
  CALL R6 0 1
  SETTABLEKS R6 R5 K5 ["placeid"]
  LOADNIL R7
  GETIMPORT R8 K9 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K6 ["sessionid"]
  CALL R1 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["Analytics"]
  GETTABLEKS R2 R3 K8 ["Senders"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K9 ["Types"]
  GETTABLEKS R3 R4 K10 ["AnalyticsTypes"]
  CALL R2 1 1
  GETIMPORT R3 K12 [game]
  LOADK R5 K13 ["RbxAnalyticsService"]
  NAMECALL R3 R3 K14 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K6 ["Util"]
  GETTABLEKS R5 R6 K15 ["getUserId"]
  CALL R4 1 1
  GETIMPORT R5 K12 [game]
  LOADK R7 K16 ["NewPackageAnalyticsWithRefactor2"]
  NAMECALL R5 R5 K17 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K5 ["Core"]
  GETTABLEKS R9 R10 K6 ["Util"]
  GETTABLEKS R8 R9 K18 ["SharedFlags"]
  GETTABLEKS R7 R8 K19 ["getFFlagToolboxListviewAnalytics"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K5 ["Core"]
  GETTABLEKS R10 R11 K6 ["Util"]
  GETTABLEKS R9 R10 K18 ["SharedFlags"]
  GETTABLEKS R8 R9 K20 ["getFFlagToolboxAddAutocorrect"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R12 R0 K5 ["Core"]
  GETTABLEKS R11 R12 K6 ["Util"]
  GETTABLEKS R10 R11 K18 ["SharedFlags"]
  GETTABLEKS R9 R10 K21 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R13 R0 K5 ["Core"]
  GETTABLEKS R12 R13 K6 ["Util"]
  GETTABLEKS R11 R12 K18 ["SharedFlags"]
  GETTABLEKS R10 R11 K22 ["getFFlagToolboxAddCreationsFilterToListView"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K5 ["Core"]
  GETTABLEKS R13 R14 K6 ["Util"]
  GETTABLEKS R12 R13 K18 ["SharedFlags"]
  GETTABLEKS R11 R12 K23 ["getFFlagEnableUGCUploadFlowAnalytics"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K5 ["Core"]
  GETTABLEKS R13 R14 K24 ["Flags"]
  GETTABLEKS R12 R13 K25 ["getFFlagEnableUGCIndividualAssetUploadAnalytics"]
  CALL R11 1 1
  GETIMPORT R12 K12 [game]
  LOADK R14 K26 ["ToolboxSampleProductMUS418"]
  NAMECALL R12 R12 K27 ["GetEngineFeature"]
  CALL R12 2 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K5 ["Core"]
  GETTABLEKS R15 R16 K6 ["Util"]
  GETTABLEKS R14 R15 K28 ["getPlaceId"]
  CALL R13 1 1
  DUPCLOSURE R14 K29 [PROTO_1]
  CAPTURE VAL R3
  DUPCLOSURE R15 K30 [PROTO_3]
  CAPTURE VAL R3
  DUPCLOSURE R16 K31 [PROTO_4]
  NEWTABLE R17 64 0
  GETIMPORT R18 K12 [game]
  LOADK R20 K32 ["RunService"]
  NAMECALL R18 R18 K14 ["GetService"]
  CALL R18 2 1
  NAMECALL R18 R18 K33 ["IsEdit"]
  CALL R18 1 1
  DUPCLOSURE R19 K34 [PROTO_5]
  CAPTURE VAL R18
  SETTABLEKS R19 R17 K35 ["getIsEditMode"]
  SETTABLEKS R13 R17 K28 ["getPlaceId"]
  SETTABLEKS R16 R17 K36 ["getPlatformId"]
  SETTABLEKS R15 R17 K37 ["getClientId"]
  SETTABLEKS R14 R17 K38 ["getStudioSessionId"]
  MOVE R20 R10
  CALL R20 0 1
  JUMPIFNOT R20 [+12]
  DUPTABLE R20 K42 [{"Start", "Success", "Failure"}]
  LOADK R21 K39 ["Start"]
  SETTABLEKS R21 R20 K39 ["Start"]
  LOADK R21 K40 ["Success"]
  SETTABLEKS R21 R20 K40 ["Success"]
  LOADK R21 K41 ["Failure"]
  SETTABLEKS R21 R20 K41 ["Failure"]
  SETTABLEKS R20 R17 K43 ["Status"]
  DUPCLOSURE R20 K44 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K45 ["onTermSearchedWithoutInsertion"]
  DUPCLOSURE R20 K46 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K47 ["onCreatorSearched"]
  DUPCLOSURE R20 K48 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K49 ["onTryAsset"]
  DUPCLOSURE R20 K50 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K51 ["onTryAssetFailure"]
  DUPCLOSURE R20 K52 [PROTO_10]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K53 ["onSearchOptionsOpened"]
  DUPCLOSURE R20 K54 [PROTO_11]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K55 ["onCategorySelected"]
  DUPCLOSURE R20 K56 [PROTO_12]
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K57 ["onAssetInserted"]
  DUPCLOSURE R20 K58 [PROTO_13]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K59 ["onAssetDragInserted"]
  DUPCLOSURE R20 K60 [PROTO_14]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K61 ["reportDragInsertFinished"]
  DUPCLOSURE R20 K62 [PROTO_15]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R4
  SETTABLEKS R20 R17 K63 ["onPackageNoteCreated"]
  DUPCLOSURE R20 K64 [PROTO_16]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R4
  SETTABLEKS R20 R17 K65 ["onPackageNoteDiscarded"]
  DUPCLOSURE R20 K66 [PROTO_17]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R4
  SETTABLEKS R20 R17 K67 ["onPackageNoteCanceled"]
  DUPCLOSURE R20 K68 [PROTO_18]
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K69 ["incrementToolboxInsertCounter"]
  DUPCLOSURE R20 K70 [PROTO_19]
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K71 ["incrementToolboxCategoryInsertCounter"]
  DUPCLOSURE R20 K72 [PROTO_20]
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K73 ["incrementWorkspaceInsertCounter"]
  DUPCLOSURE R20 K74 [PROTO_21]
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K75 ["incrementUploadAssetSuccess"]
  DUPCLOSURE R20 K76 [PROTO_22]
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K77 ["incrementUploadAssetFailure"]
  DUPCLOSURE R20 K78 [PROTO_23]
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K79 ["onSoundPlayedCounter"]
  DUPCLOSURE R20 K80 [PROTO_24]
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K81 ["onSoundPausedCounter"]
  DUPCLOSURE R20 K82 [PROTO_25]
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K83 ["sendResultToKibana"]
  DUPCLOSURE R20 K84 [PROTO_26]
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K85 ["incrementAssetImpressionCounter"]
  DUPCLOSURE R20 K86 [PROTO_27]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K87 ["onAssetPreviewSelected"]
  DUPCLOSURE R20 K88 [PROTO_28]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K89 ["onAssetPreviewEnded"]
  DUPCLOSURE R20 K90 [PROTO_29]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K91 ["onAssetInsertedFromAssetPreview"]
  DUPCLOSURE R20 K92 [PROTO_30]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K93 ["onPluginButtonClickOpen"]
  DUPCLOSURE R20 K94 [PROTO_31]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K95 ["onPluginButtonClickClose"]
  DUPCLOSURE R20 K96 [PROTO_32]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K97 ["onToolboxDisplayed"]
  DUPCLOSURE R20 K98 [PROTO_33]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K99 ["onToolboxHidden"]
  DUPCLOSURE R20 K100 [PROTO_34]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K101 ["onContextMenuClicked"]
  DUPCLOSURE R20 K102 [PROTO_35]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K103 ["openedFromPluginManagement"]
  DUPCLOSURE R20 K104 [PROTO_36]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K105 ["openedExternallyByAssetType"]
  DUPCLOSURE R20 K106 [PROTO_37]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K107 ["reportAssetClicked"]
  DUPCLOSURE R20 K108 [PROTO_38]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R13
  SETTABLEKS R20 R17 K109 ["reportMeshPartFiltered"]
  DUPCLOSURE R20 K110 [PROTO_39]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K111 ["onIdVerificationIconClicked"]
  DUPCLOSURE R20 K112 [PROTO_40]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K113 ["marketplaceSearch"]
  DUPCLOSURE R20 K114 [PROTO_41]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R20 R17 K115 ["marketplaceAutocompleteSearch"]
  DUPCLOSURE R20 K116 [PROTO_42]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R20 R17 K117 ["onToolboxWidgetInteraction"]
  DUPCLOSURE R20 K118 [PROTO_43]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K119 ["AnnouncementViewed"]
  DUPCLOSURE R20 K120 [PROTO_44]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K121 ["AnnouncementLinkClicked"]
  DUPCLOSURE R20 K122 [PROTO_45]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K123 ["AnnouncementClosed"]
  DUPCLOSURE R20 K124 [PROTO_46]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R20 R17 K125 ["AnnouncementAcknowledged"]
  DUPCLOSURE R20 K126 [PROTO_47]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R20 R17 K127 ["AssetMediaItemsUpdated"]
  MOVE R20 R6
  CALL R20 0 1
  JUMPIFNOT R20 [+6]
  DUPCLOSURE R20 K128 [PROTO_48]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R20 R17 K129 ["MarketplaceListViewToggleClicked"]
  MOVE R20 R6
  CALL R20 0 1
  JUMPIFNOT R20 [+6]
  DUPCLOSURE R20 K130 [PROTO_49]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R20 R17 K131 ["MarketplaceAssetRowExpanded"]
  MOVE R20 R6
  CALL R20 0 1
  JUMPIFNOT R20 [+6]
  DUPCLOSURE R20 K132 [PROTO_50]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R20 R17 K133 ["MarketplaceRecentSearchClicked"]
  MOVE R20 R6
  CALL R20 0 1
  JUMPIFNOT R20 [+6]
  DUPCLOSURE R20 K134 [PROTO_51]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R20 R17 K135 ["MarketplaceSearchFilterOpened"]
  MOVE R20 R10
  CALL R20 0 1
  JUMPIFNOT R20 [+32]
  DUPCLOSURE R20 K136 [PROTO_52]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R20 R17 K137 ["UGCBundleValidationEvent"]
  DUPCLOSURE R20 K138 [PROTO_53]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R20 R17 K139 ["UGCUploadRequestOperationIdEvent"]
  DUPCLOSURE R20 K140 [PROTO_54]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R20 R17 K141 ["UGCUploadAssetsEvent"]
  DUPCLOSURE R20 K142 [PROTO_55]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R3
  SETTABLEKS R20 R17 K143 ["UGCIndividualAssetUploadEvent"]
  DUPCLOSURE R20 K144 [PROTO_56]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R20 R17 K145 ["UGCUploadRequestBundleCreationStatusEvent"]
  DUPCLOSURE R20 K146 [PROTO_57]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R20 R17 K147 ["UGCUploadGetBundleCreationStatusEvent"]
  JUMPIFNOT R12 [+6]
  DUPCLOSURE R20 K148 [PROTO_58]
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R3
  SETTABLEKS R20 R17 K149 ["onAudioAssetGrantedToUserInventoryEvent"]
  RETURN R17 1
