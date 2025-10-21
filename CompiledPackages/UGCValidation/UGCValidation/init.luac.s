PROTO_0:
  GETTABLEKS R3 R0 K0 ["instances"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["instances required in validationContext for validateWithContext"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R3 R0 K4 ["assetTypeEnum"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K5 [+4]
  LOADK R3 K5 ["assetTypeEnum required in validationContext for validateWithContext"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["instances"]
  GETTABLEKS R2 R0 K6 ["isServer"]
  GETTABLEKS R3 R0 K4 ["assetTypeEnum"]
  GETTABLEKS R4 R0 K7 ["allowEditableInstances"]
  GETIMPORT R5 K9 [tick]
  CALL R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["setMetadata"]
  DUPTABLE R7 K13 [{"entrypoint", "assetType", "isServer"}]
  LOADK R8 K14 ["validate"]
  SETTABLEKS R8 R7 K11 ["entrypoint"]
  GETTABLEKS R8 R3 K15 ["Name"]
  SETTABLEKS R8 R7 K12 ["assetType"]
  SETTABLEKS R2 R7 K6 ["isServer"]
  CALL R6 1 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["processAll"]
  MOVE R7 R1
  MOVE R8 R4
  CALL R6 2 2
  JUMPIF R6 [+7]
  JUMPIFNOT R2 [+5]
  GETIMPORT R8 K18 [error]
  GETTABLEN R9 R7 1
  CALL R8 1 0
  JUMP [+1]
  RETURN R6 2
  GETTABLEKS R8 R7 K19 ["editableMeshes"]
  SETTABLEKS R8 R0 K19 ["editableMeshes"]
  GETTABLEKS R8 R7 K20 ["editableImages"]
  SETTABLEKS R8 R0 K20 ["editableImages"]
  GETIMPORT R8 K9 [tick]
  CALL R8 0 1
  SETTABLEKS R8 R0 K21 ["lastTickSeconds"]
  GETTABLEKS R8 R0 K22 ["requireAllFolders"]
  JUMPIFNOTEQKNIL R8 [+4]
  LOADB R8 1
  SETTABLEKS R8 R0 K22 ["requireAllFolders"]
  GETUPVAL R8 2
  MOVE R9 R0
  CALL R8 1 2
  GETUPVAL R10 3
  GETTABLEKS R11 R0 K19 ["editableMeshes"]
  GETTABLEKS R12 R0 K20 ["editableImages"]
  CALL R10 2 0
  JUMPIFNOT R8 [+15]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K23 ["recordScriptTime"]
  GETIMPORT R12 K25 [script]
  GETTABLEKS R11 R12 K15 ["Name"]
  MOVE R12 R5
  MOVE R13 R0
  CALL R10 3 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K26 ["reportScriptTimes"]
  MOVE R11 R0
  CALL R10 1 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K27 ["reportCounter"]
  MOVE R11 R8
  GETIMPORT R13 K31 [Enum.AssetType.DynamicHead]
  JUMPIFNOTEQ R3 R13 [+3]
  LOADK R12 K32 ["Head"]
  JUMP [+1]
  LOADK R12 K33 ["BodyPart"]
  MOVE R13 R0
  CALL R10 3 0
  RETURN R8 2

PROTO_1:
  GETIMPORT R12 K1 [tick]
  CALL R12 0 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K2 ["setMetadata"]
  DUPTABLE R14 K6 [{"entrypoint", "assetType", "isServer"}]
  LOADK R15 K7 ["validate"]
  SETTABLEKS R15 R14 K3 ["entrypoint"]
  GETTABLEKS R15 R1 K8 ["Name"]
  SETTABLEKS R15 R14 K4 ["assetType"]
  SETTABLEKS R2 R14 K5 ["isServer"]
  CALL R13 1 0
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["processAll"]
  MOVE R14 R0
  MOVE R15 R7
  CALL R13 2 2
  JUMPIF R13 [+7]
  JUMPIFNOT R2 [+5]
  GETIMPORT R15 K11 [error]
  GETTABLEN R16 R14 1
  CALL R15 1 0
  JUMP [+1]
  RETURN R13 2
  DUPTABLE R15 K27 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "restrictedUserIds", "isServer", "token", "universeId", "isAsync", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "lastTickSeconds", "shouldYield", "editableMeshes", "editableImages", "requireAllFolders"}]
  SETTABLEKS R0 R15 K12 ["instances"]
  SETTABLEKS R1 R15 K13 ["assetTypeEnum"]
  SETTABLEKS R3 R15 K14 ["allowUnreviewedAssets"]
  SETTABLEKS R4 R15 K15 ["restrictedUserIds"]
  SETTABLEKS R2 R15 K5 ["isServer"]
  SETTABLEKS R5 R15 K16 ["token"]
  SETTABLEKS R6 R15 K17 ["universeId"]
  LOADB R16 0
  SETTABLEKS R16 R15 K18 ["isAsync"]
  SETTABLEKS R7 R15 K19 ["allowEditableInstances"]
  SETTABLEKS R8 R15 K20 ["bypassFlags"]
  JUMPIFEQKNIL R10 [+3]
  MOVE R16 R10
  JUMP [+1]
  LOADB R16 1
  SETTABLEKS R16 R15 K21 ["validateMeshPartAccessories"]
  GETIMPORT R16 K1 [tick]
  CALL R16 0 1
  SETTABLEKS R16 R15 K22 ["lastTickSeconds"]
  SETTABLEKS R9 R15 K23 ["shouldYield"]
  GETTABLEKS R16 R14 K24 ["editableMeshes"]
  SETTABLEKS R16 R15 K24 ["editableMeshes"]
  GETTABLEKS R16 R14 K25 ["editableImages"]
  SETTABLEKS R16 R15 K25 ["editableImages"]
  JUMPIFEQKNIL R11 [+3]
  MOVE R16 R11
  JUMP [+1]
  LOADB R16 1
  SETTABLEKS R16 R15 K26 ["requireAllFolders"]
  GETUPVAL R16 2
  MOVE R17 R15
  CALL R16 1 2
  GETUPVAL R18 3
  GETTABLEKS R19 R15 K24 ["editableMeshes"]
  GETTABLEKS R20 R15 K25 ["editableImages"]
  CALL R18 2 0
  JUMPIFNOT R16 [+15]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K28 ["recordScriptTime"]
  GETIMPORT R20 K30 [script]
  GETTABLEKS R19 R20 K8 ["Name"]
  MOVE R20 R12
  MOVE R21 R15
  CALL R18 3 0
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K31 ["reportScriptTimes"]
  MOVE R19 R15
  CALL R18 1 0
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K32 ["reportCounter"]
  MOVE R19 R16
  GETIMPORT R21 K36 [Enum.AssetType.DynamicHead]
  JUMPIFNOTEQ R1 R21 [+3]
  LOADK R20 K37 ["Head"]
  JUMP [+1]
  LOADK R20 K38 ["BodyPart"]
  MOVE R21 R15
  CALL R18 3 0
  RETURN R16 2

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R1 1 -1
  CALL R0 -1 0
  GETUPVAL R0 3
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["editableMeshes"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["editableImages"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["setMetadata"]
  DUPTABLE R7 K4 [{"entrypoint", "assetType", "isServer"}]
  LOADK R8 K5 ["validateAsync"]
  SETTABLEKS R8 R7 K1 ["entrypoint"]
  GETTABLEKS R8 R1 K6 ["Name"]
  SETTABLEKS R8 R7 K2 ["assetType"]
  SETTABLEKS R3 R7 K3 ["isServer"]
  CALL R6 1 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["processAll"]
  MOVE R7 R0
  CALL R6 1 2
  JUMPIF R6 [+10]
  JUMPIFNOT R3 [+5]
  GETIMPORT R8 K9 [error]
  GETTABLEN R9 R7 1
  CALL R8 1 0
  JUMP [+4]
  MOVE R8 R2
  MOVE R9 R6
  MOVE R10 R7
  CALL R8 2 0
  DUPTABLE R8 K19 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "restrictedUserIds", "isServer", "token", "isAsync", "validateMeshPartAccessories", "editableMeshes", "editableImages"}]
  SETTABLEKS R0 R8 K10 ["instances"]
  SETTABLEKS R1 R8 K11 ["assetTypeEnum"]
  SETTABLEKS R4 R8 K12 ["allowUnreviewedAssets"]
  SETTABLEKS R5 R8 K13 ["restrictedUserIds"]
  SETTABLEKS R3 R8 K3 ["isServer"]
  LOADK R9 K20 [""]
  SETTABLEKS R9 R8 K14 ["token"]
  LOADB R9 1
  SETTABLEKS R9 R8 K15 ["isAsync"]
  LOADB R9 0
  SETTABLEKS R9 R8 K16 ["validateMeshPartAccessories"]
  GETTABLEKS R9 R7 K17 ["editableMeshes"]
  SETTABLEKS R9 R8 K17 ["editableMeshes"]
  GETTABLEKS R9 R7 K18 ["editableImages"]
  SETTABLEKS R9 R8 K18 ["editableImages"]
  GETIMPORT R9 K23 [coroutine.wrap]
  NEWCLOSURE R10 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R8
  CAPTURE UPVAL U3
  CALL R9 1 1
  CALL R9 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["setMetadata"]
  DUPTABLE R6 K4 [{"entrypoint", "assetType", "isServer"}]
  LOADK R7 K5 ["validateMeshPartFormat"]
  SETTABLEKS R7 R6 K1 ["entrypoint"]
  GETTABLEKS R7 R1 K6 ["Name"]
  SETTABLEKS R7 R6 K2 ["assetType"]
  SETTABLEKS R2 R6 K3 ["isServer"]
  CALL R5 1 0
  GETIMPORT R7 K10 [Enum.AssetType.DynamicHead]
  JUMPIFEQ R7 R1 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL1 ASSERT R6 [+2]
  GETIMPORT R5 K12 [assert]
  CALL R5 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["processAll"]
  MOVE R6 R0
  CALL R5 1 2
  JUMPIF R5 [+7]
  JUMPIFNOT R2 [+5]
  GETIMPORT R7 K15 [error]
  GETTABLEN R8 R6 1
  CALL R7 1 0
  JUMP [+1]
  RETURN R5 2
  DUPTABLE R7 K23 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "restrictedUserIds", "isServer", "validateMeshPartAccessories", "editableMeshes", "editableImages"}]
  SETTABLEKS R0 R7 K16 ["instances"]
  SETTABLEKS R1 R7 K17 ["assetTypeEnum"]
  SETTABLEKS R3 R7 K18 ["allowUnreviewedAssets"]
  SETTABLEKS R4 R7 K19 ["restrictedUserIds"]
  SETTABLEKS R2 R7 K3 ["isServer"]
  LOADB R8 0
  SETTABLEKS R8 R7 K20 ["validateMeshPartAccessories"]
  GETTABLEKS R8 R6 K21 ["editableMeshes"]
  SETTABLEKS R8 R7 K21 ["editableMeshes"]
  GETTABLEKS R8 R6 K22 ["editableImages"]
  SETTABLEKS R8 R7 K22 ["editableImages"]
  GETUPVAL R8 2
  MOVE R9 R7
  CALL R8 1 2
  GETUPVAL R10 3
  GETTABLEKS R11 R7 K21 ["editableMeshes"]
  GETTABLEKS R12 R7 K22 ["editableImages"]
  CALL R10 2 0
  RETURN R8 2

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R1 1 -1
  CALL R0 -1 0
  GETUPVAL R0 3
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["editableMeshes"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["editableImages"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["setMetadata"]
  DUPTABLE R7 K4 [{"entrypoint", "assetType", "isServer"}]
  LOADK R8 K5 ["validateAsyncMeshPartFormat"]
  SETTABLEKS R8 R7 K1 ["entrypoint"]
  GETTABLEKS R8 R1 K6 ["Name"]
  SETTABLEKS R8 R7 K2 ["assetType"]
  SETTABLEKS R3 R7 K3 ["isServer"]
  CALL R6 1 0
  GETIMPORT R8 K10 [Enum.AssetType.DynamicHead]
  JUMPIFEQ R8 R1 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL1 ASSERT R7 [+2]
  GETIMPORT R6 K12 [assert]
  CALL R6 1 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["processAll"]
  MOVE R7 R0
  CALL R6 1 2
  JUMPIF R6 [+10]
  JUMPIFNOT R3 [+5]
  GETIMPORT R8 K15 [error]
  GETTABLEN R9 R7 1
  CALL R8 1 0
  JUMP [+4]
  MOVE R8 R2
  MOVE R9 R6
  MOVE R10 R7
  CALL R8 2 0
  DUPTABLE R8 K23 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "restrictedUserIds", "isServer", "validateMeshPartAccessories", "editableMeshes", "editableImages"}]
  SETTABLEKS R0 R8 K16 ["instances"]
  SETTABLEKS R1 R8 K17 ["assetTypeEnum"]
  SETTABLEKS R4 R8 K18 ["allowUnreviewedAssets"]
  SETTABLEKS R5 R8 K19 ["restrictedUserIds"]
  SETTABLEKS R3 R8 K3 ["isServer"]
  LOADB R9 0
  SETTABLEKS R9 R8 K20 ["validateMeshPartAccessories"]
  GETTABLEKS R9 R7 K21 ["editableMeshes"]
  SETTABLEKS R9 R8 K21 ["editableMeshes"]
  GETTABLEKS R9 R7 K22 ["editableImages"]
  SETTABLEKS R9 R8 K22 ["editableImages"]
  GETIMPORT R9 K26 [coroutine.wrap]
  NEWCLOSURE R10 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R8
  CAPTURE UPVAL U3
  CALL R9 1 1
  CALL R9 0 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["assetTypeEnum"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["assetTypeEnum required in validationContext for validateMeshPartAssetFormatWithContext"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R3 R0 K4 ["instances"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K5 [+4]
  LOADK R3 K5 ["instances required in validationContext for validateMeshPartAssetFormatWithContext"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["instances"]
  GETTABLEKS R2 R0 K0 ["assetTypeEnum"]
  GETTABLEKS R3 R0 K6 ["isServer"]
  GETTABLEKS R4 R0 K7 ["specialMeshAccessory"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["setMetadata"]
  DUPTABLE R6 K11 [{"entrypoint", "assetType", "isServer"}]
  LOADK R7 K12 ["validateMeshPartAssetFormat2"]
  SETTABLEKS R7 R6 K9 ["entrypoint"]
  GETTABLEKS R7 R2 K13 ["Name"]
  SETTABLEKS R7 R6 K10 ["assetType"]
  SETTABLEKS R3 R6 K6 ["isServer"]
  CALL R5 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K14 ["processAll"]
  MOVE R6 R1
  CALL R5 1 2
  JUMPIF R5 [+7]
  JUMPIFNOT R3 [+5]
  GETIMPORT R7 K16 [error]
  GETTABLEN R8 R6 1
  CALL R7 1 0
  JUMP [+1]
  RETURN R5 2
  GETTABLEKS R7 R6 K17 ["editableMeshes"]
  SETTABLEKS R7 R0 K17 ["editableMeshes"]
  GETTABLEKS R7 R6 K18 ["editableImages"]
  SETTABLEKS R7 R0 K18 ["editableImages"]
  LOADB R7 0
  SETTABLEKS R7 R0 K19 ["validateMeshPartAccessories"]
  LOADNIL R7
  LOADNIL R8
  GETUPVAL R9 2
  GETTABLEN R10 R1 1
  CALL R9 1 1
  JUMPIFNOT R9 [+7]
  GETUPVAL R9 3
  MOVE R10 R4
  MOVE R11 R0
  CALL R9 2 2
  MOVE R7 R9
  MOVE R8 R10
  JUMP [+6]
  GETUPVAL R9 4
  MOVE R10 R4
  MOVE R11 R0
  CALL R9 2 2
  MOVE R7 R9
  MOVE R8 R10
  GETUPVAL R9 5
  GETTABLEKS R10 R0 K17 ["editableMeshes"]
  GETTABLEKS R11 R0 K18 ["editableImages"]
  CALL R9 2 0
  RETURN R7 2

PROTO_8:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["setMetadata"]
  DUPTABLE R7 K4 [{"entrypoint", "assetType", "isServer"}]
  LOADK R8 K5 ["validateMeshPartAssetFormat2"]
  SETTABLEKS R8 R7 K1 ["entrypoint"]
  GETTABLEKS R8 R2 K6 ["Name"]
  SETTABLEKS R8 R7 K2 ["assetType"]
  SETTABLEKS R3 R7 K3 ["isServer"]
  CALL R6 1 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["processAll"]
  MOVE R7 R0
  CALL R6 1 2
  JUMPIF R6 [+7]
  JUMPIFNOT R3 [+5]
  GETIMPORT R8 K9 [error]
  GETTABLEN R9 R7 1
  CALL R8 1 0
  JUMP [+1]
  RETURN R6 2
  DUPTABLE R8 K16 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "isServer", "validateMeshPartAccessories", "editableMeshes", "editableImages"}]
  SETTABLEKS R0 R8 K10 ["instances"]
  SETTABLEKS R2 R8 K11 ["assetTypeEnum"]
  SETTABLEKS R4 R8 K12 ["allowUnreviewedAssets"]
  SETTABLEKS R3 R8 K3 ["isServer"]
  LOADB R9 0
  SETTABLEKS R9 R8 K13 ["validateMeshPartAccessories"]
  GETTABLEKS R9 R7 K14 ["editableMeshes"]
  SETTABLEKS R9 R8 K14 ["editableMeshes"]
  GETTABLEKS R9 R7 K15 ["editableImages"]
  SETTABLEKS R9 R8 K15 ["editableImages"]
  LOADNIL R9
  LOADNIL R10
  GETUPVAL R11 2
  GETTABLEN R12 R0 1
  CALL R11 1 1
  JUMPIFNOT R11 [+7]
  GETUPVAL R11 3
  MOVE R12 R1
  MOVE R13 R8
  CALL R11 2 2
  MOVE R9 R11
  MOVE R10 R12
  JUMP [+6]
  GETUPVAL R11 4
  MOVE R12 R1
  MOVE R13 R8
  CALL R11 2 2
  MOVE R9 R11
  MOVE R10 R12
  GETUPVAL R11 5
  GETTABLEKS R12 R8 K14 ["editableMeshes"]
  GETTABLEKS R13 R8 K15 ["editableImages"]
  CALL R11 2 0
  RETURN R9 2

PROTO_9:
  GETTABLEKS R3 R0 K0 ["fullBodyData"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["fullBodyData required in validationContext for validateFullBodyWithContext"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["isServer"]
  GETTABLEKS R2 R0 K0 ["fullBodyData"]
  GETTABLEKS R3 R0 K5 ["allowEditableInstances"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["setMetadata"]
  DUPTABLE R5 K9 [{"entrypoint", "assetType", "isServer"}]
  LOADK R6 K10 ["validateFullBody"]
  SETTABLEKS R6 R5 K7 ["entrypoint"]
  LOADK R6 K11 [""]
  SETTABLEKS R6 R5 K8 ["assetType"]
  SETTABLEKS R1 R5 K4 ["isServer"]
  CALL R4 1 0
  GETIMPORT R4 K13 [tick]
  CALL R4 0 1
  NEWTABLE R5 0 0
  MOVE R6 R2
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R10 K14 ["allSelectedInstances"]
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  FASTCALL2 TABLE_INSERT R5 R15 [+5]
  MOVE R17 R5
  MOVE R18 R15
  GETIMPORT R16 K17 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 2 [-8]
  FORGLOOP R6 2 [-15]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K18 ["processAll"]
  MOVE R7 R5
  MOVE R8 R3
  CALL R6 2 2
  JUMPIF R6 [+7]
  JUMPIFNOT R1 [+5]
  GETIMPORT R8 K20 [error]
  GETTABLEN R9 R7 1
  CALL R8 1 0
  JUMP [+1]
  RETURN R6 2
  GETTABLEKS R8 R7 K21 ["editableMeshes"]
  SETTABLEKS R8 R0 K21 ["editableMeshes"]
  GETTABLEKS R8 R7 K22 ["editableImages"]
  SETTABLEKS R8 R0 K22 ["editableImages"]
  GETIMPORT R8 K13 [tick]
  CALL R8 0 1
  SETTABLEKS R8 R0 K23 ["lastTickSeconds"]
  GETTABLEKS R8 R0 K24 ["requireAllFolders"]
  JUMPIFNOTEQKNIL R8 [+4]
  LOADB R8 1
  SETTABLEKS R8 R0 K24 ["requireAllFolders"]
  GETUPVAL R8 2
  MOVE R9 R0
  CALL R8 1 2
  GETUPVAL R10 3
  GETTABLEKS R11 R0 K21 ["editableMeshes"]
  GETTABLEKS R12 R0 K22 ["editableImages"]
  CALL R10 2 0
  JUMPIFNOT R8 [+15]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K25 ["recordScriptTime"]
  GETIMPORT R12 K27 [script]
  GETTABLEKS R11 R12 K28 ["Name"]
  MOVE R12 R4
  MOVE R13 R0
  CALL R10 3 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K29 ["reportScriptTimes"]
  MOVE R11 R0
  CALL R10 1 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K30 ["reportCounter"]
  MOVE R11 R8
  LOADK R12 K31 ["FullBody"]
  MOVE R13 R0
  CALL R10 3 0
  RETURN R8 2

PROTO_10:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["setMetadata"]
  DUPTABLE R7 K4 [{"entrypoint", "assetType", "isServer"}]
  LOADK R8 K5 ["validateFullBody"]
  SETTABLEKS R8 R7 K1 ["entrypoint"]
  LOADK R8 K6 [""]
  SETTABLEKS R8 R7 K2 ["assetType"]
  SETTABLEKS R1 R7 K3 ["isServer"]
  CALL R6 1 0
  GETIMPORT R6 K8 [tick]
  CALL R6 0 1
  NEWTABLE R7 0 0
  MOVE R8 R0
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R12 K9 ["allSelectedInstances"]
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  FASTCALL2 TABLE_INSERT R7 R17 [+5]
  MOVE R19 R7
  MOVE R20 R17
  GETIMPORT R18 K12 [table.insert]
  CALL R18 2 0
  FORGLOOP R13 2 [-8]
  FORGLOOP R8 2 [-15]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K13 ["processAll"]
  MOVE R9 R7
  MOVE R10 R2
  CALL R8 2 2
  JUMPIF R8 [+7]
  JUMPIFNOT R1 [+5]
  GETIMPORT R10 K15 [error]
  GETTABLEN R11 R9 1
  CALL R10 1 0
  JUMP [+1]
  RETURN R8 2
  DUPTABLE R10 K25 [{"fullBodyData", "isServer", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "lastTickSeconds", "shouldYield", "editableMeshes", "editableImages", "requireAllFolders"}]
  SETTABLEKS R0 R10 K16 ["fullBodyData"]
  SETTABLEKS R1 R10 K3 ["isServer"]
  SETTABLEKS R2 R10 K17 ["allowEditableInstances"]
  SETTABLEKS R3 R10 K18 ["bypassFlags"]
  LOADB R11 0
  SETTABLEKS R11 R10 K19 ["validateMeshPartAccessories"]
  GETIMPORT R11 K8 [tick]
  CALL R11 0 1
  SETTABLEKS R11 R10 K20 ["lastTickSeconds"]
  SETTABLEKS R4 R10 K21 ["shouldYield"]
  GETTABLEKS R11 R9 K22 ["editableMeshes"]
  SETTABLEKS R11 R10 K22 ["editableMeshes"]
  GETTABLEKS R11 R9 K23 ["editableImages"]
  SETTABLEKS R11 R10 K23 ["editableImages"]
  JUMPIFEQKNIL R5 [+3]
  MOVE R11 R5
  JUMP [+1]
  LOADB R11 1
  SETTABLEKS R11 R10 K24 ["requireAllFolders"]
  GETUPVAL R11 2
  MOVE R12 R10
  CALL R11 1 2
  GETUPVAL R13 3
  GETTABLEKS R14 R10 K22 ["editableMeshes"]
  GETTABLEKS R15 R10 K23 ["editableImages"]
  CALL R13 2 0
  JUMPIFNOT R11 [+15]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K26 ["recordScriptTime"]
  GETIMPORT R15 K28 [script]
  GETTABLEKS R14 R15 K29 ["Name"]
  MOVE R15 R6
  MOVE R16 R10
  CALL R13 3 0
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K30 ["reportScriptTimes"]
  MOVE R14 R10
  CALL R13 1 0
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K31 ["reportCounter"]
  MOVE R14 R11
  LOADK R15 K32 ["FullBody"]
  MOVE R16 R10
  CALL R13 3 0
  RETURN R11 2

PROTO_11:
  GETTABLEKS R3 R0 K0 ["fullBodyData"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["fullBodyData required in validationContext for validateShoes"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["isServer"]
  GETTABLEKS R2 R0 K0 ["fullBodyData"]
  GETTABLEKS R3 R0 K5 ["allowEditableInstances"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["setMetadata"]
  DUPTABLE R5 K9 [{"entrypoint", "assetType", "isServer"}]
  LOADK R6 K10 ["validateShoes"]
  SETTABLEKS R6 R5 K7 ["entrypoint"]
  LOADK R6 K11 [""]
  SETTABLEKS R6 R5 K8 ["assetType"]
  SETTABLEKS R1 R5 K4 ["isServer"]
  CALL R4 1 0
  GETIMPORT R4 K13 [tick]
  CALL R4 0 1
  NEWTABLE R5 0 0
  MOVE R6 R2
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R10 K14 ["allSelectedInstances"]
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  FASTCALL2 TABLE_INSERT R5 R15 [+5]
  MOVE R17 R5
  MOVE R18 R15
  GETIMPORT R16 K17 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 2 [-8]
  FORGLOOP R6 2 [-15]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K18 ["processAll"]
  MOVE R7 R5
  MOVE R8 R3
  CALL R6 2 2
  JUMPIF R6 [+7]
  JUMPIFNOT R1 [+5]
  GETIMPORT R8 K20 [error]
  GETTABLEN R9 R7 1
  CALL R8 1 0
  JUMP [+1]
  RETURN R6 2
  GETTABLEKS R8 R7 K21 ["editableMeshes"]
  SETTABLEKS R8 R0 K21 ["editableMeshes"]
  GETTABLEKS R8 R7 K22 ["editableImages"]
  SETTABLEKS R8 R0 K22 ["editableImages"]
  GETIMPORT R8 K13 [tick]
  CALL R8 0 1
  SETTABLEKS R8 R0 K23 ["lastTickSeconds"]
  GETUPVAL R8 2
  MOVE R9 R0
  CALL R8 1 2
  GETUPVAL R10 3
  GETTABLEKS R11 R0 K21 ["editableMeshes"]
  GETTABLEKS R12 R0 K22 ["editableImages"]
  CALL R10 2 0
  JUMPIFNOT R8 [+15]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K24 ["recordScriptTime"]
  GETIMPORT R12 K26 [script]
  GETTABLEKS R11 R12 K27 ["Name"]
  MOVE R12 R4
  MOVE R13 R0
  CALL R10 3 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K28 ["reportScriptTimes"]
  MOVE R11 R0
  CALL R10 1 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K29 ["reportCounter"]
  MOVE R11 R8
  LOADK R12 K30 ["Shoes"]
  MOVE R13 R0
  CALL R10 3 0
  RETURN R8 2

PROTO_12:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["setMetadata"]
  DUPTABLE R6 K4 [{"entrypoint", "assetType", "isServer"}]
  LOADK R7 K5 ["preprocessDataAsync"]
  SETTABLEKS R7 R6 K1 ["entrypoint"]
  LOADK R7 K6 [""]
  SETTABLEKS R7 R6 K2 ["assetType"]
  SETTABLEKS R1 R6 K3 ["isServer"]
  CALL R5 1 0
  GETIMPORT R5 K8 [tick]
  CALL R5 0 1
  NEWTABLE R6 0 0
  MOVE R7 R0
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R11 [+5]
  MOVE R13 R6
  MOVE R14 R11
  GETIMPORT R12 K11 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-8]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K12 ["processAll"]
  MOVE R8 R6
  MOVE R9 R2
  CALL R7 2 2
  JUMPIF R7 [+13]
  JUMPIFNOT R1 [+5]
  GETIMPORT R9 K14 [error]
  GETTABLEN R10 R8 1
  CALL R9 1 0
  JUMP [+7]
  DUPTABLE R9 K17 [{"ok", "errors"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K15 ["ok"]
  SETTABLEKS R8 R9 K16 ["errors"]
  RETURN R9 1
  DUPTABLE R9 K25 [{"isServer", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "lastTickSeconds", "shouldYield", "editableMeshes", "editableImages"}]
  SETTABLEKS R1 R9 K3 ["isServer"]
  SETTABLEKS R2 R9 K18 ["allowEditableInstances"]
  SETTABLEKS R3 R9 K19 ["bypassFlags"]
  LOADB R10 0
  SETTABLEKS R10 R9 K20 ["validateMeshPartAccessories"]
  GETIMPORT R10 K8 [tick]
  CALL R10 0 1
  SETTABLEKS R10 R9 K21 ["lastTickSeconds"]
  SETTABLEKS R4 R9 K22 ["shouldYield"]
  GETTABLEKS R10 R8 K23 ["editableMeshes"]
  SETTABLEKS R10 R9 K23 ["editableMeshes"]
  GETTABLEKS R10 R8 K24 ["editableImages"]
  SETTABLEKS R10 R9 K24 ["editableImages"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["preprocessDataAsync"]
  MOVE R11 R0
  MOVE R12 R9
  CALL R10 2 1
  GETUPVAL R11 3
  GETTABLEKS R12 R9 K23 ["editableMeshes"]
  GETTABLEKS R13 R9 K24 ["editableImages"]
  CALL R11 2 0
  GETTABLEKS R11 R10 K15 ["ok"]
  JUMPIFNOT R11 [+12]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K26 ["recordScriptTime"]
  LOADK R12 K5 ["preprocessDataAsync"]
  MOVE R13 R5
  MOVE R14 R9
  CALL R11 3 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K27 ["reportScriptTimes"]
  MOVE R12 R9
  CALL R11 1 0
  RETURN R10 1

PROTO_13:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["setMetadata"]
  DUPTABLE R4 K4 [{"entrypoint", "assetType", "isServer"}]
  LOADK R5 K5 ["isPreprocessDataCached"]
  SETTABLEKS R5 R4 K1 ["entrypoint"]
  LOADK R5 K6 [""]
  SETTABLEKS R5 R4 K2 ["assetType"]
  SETTABLEKS R2 R4 K3 ["isServer"]
  CALL R3 1 0
  GETIMPORT R3 K8 [tick]
  CALL R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["isPreprocessDataCached"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 1
  DUPTABLE R5 K9 [{"isServer"}]
  SETTABLEKS R2 R5 K3 ["isServer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["recordScriptTime"]
  LOADK R7 K5 ["isPreprocessDataCached"]
  MOVE R8 R3
  MOVE R9 R5
  CALL R6 3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["reportScriptTimes"]
  MOVE R7 R5
  CALL R6 1 0
  RETURN R4 1

PROTO_14:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["setMetadata"]
  DUPTABLE R7 K4 [{"entrypoint", "assetType", "isServer"}]
  LOADK R8 K5 ["calculateScaleToValidateBoundsAsync"]
  SETTABLEKS R8 R7 K1 ["entrypoint"]
  LOADK R8 K6 [""]
  SETTABLEKS R8 R7 K2 ["assetType"]
  SETTABLEKS R1 R7 K3 ["isServer"]
  CALL R6 1 0
  GETIMPORT R6 K8 [tick]
  CALL R6 0 1
  LOADNIL R7
  JUMPIF R5 [+38]
  NEWTABLE R8 0 0
  MOVE R9 R0
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  FASTCALL2 TABLE_INSERT R8 R13 [+5]
  MOVE R15 R8
  MOVE R16 R13
  GETIMPORT R14 K11 [table.insert]
  CALL R14 2 0
  FORGLOOP R9 2 [-8]
  LOADNIL R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["processAll"]
  MOVE R11 R8
  MOVE R12 R2
  CALL R10 2 2
  MOVE R9 R10
  MOVE R7 R11
  JUMPIF R9 [+13]
  JUMPIFNOT R1 [+5]
  GETIMPORT R10 K14 [error]
  GETTABLEN R11 R7 1
  CALL R10 1 0
  JUMP [+7]
  DUPTABLE R10 K17 [{"ok", "errors"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K15 ["ok"]
  SETTABLEKS R7 R10 K16 ["errors"]
  RETURN R10 1
  DUPTABLE R8 K23 [{"isServer", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "lastTickSeconds", "shouldYield"}]
  SETTABLEKS R1 R8 K3 ["isServer"]
  SETTABLEKS R2 R8 K18 ["allowEditableInstances"]
  SETTABLEKS R3 R8 K19 ["bypassFlags"]
  LOADB R9 0
  SETTABLEKS R9 R8 K20 ["validateMeshPartAccessories"]
  GETIMPORT R9 K8 [tick]
  CALL R9 0 1
  SETTABLEKS R9 R8 K21 ["lastTickSeconds"]
  SETTABLEKS R4 R8 K22 ["shouldYield"]
  JUMPIF R5 [+8]
  GETTABLEKS R9 R7 K24 ["editableMeshes"]
  SETTABLEKS R9 R8 K24 ["editableMeshes"]
  GETTABLEKS R9 R7 K25 ["editableImages"]
  SETTABLEKS R9 R8 K25 ["editableImages"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["calculateScaleToValidateBoundsAsync"]
  MOVE R10 R0
  MOVE R11 R8
  MOVE R12 R5
  CALL R9 3 1
  JUMPIF R5 [+6]
  GETUPVAL R10 3
  GETTABLEKS R11 R8 K24 ["editableMeshes"]
  GETTABLEKS R12 R8 K25 ["editableImages"]
  CALL R10 2 0
  GETTABLEKS R10 R9 K15 ["ok"]
  JUMPIFNOT R10 [+12]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K26 ["recordScriptTime"]
  LOADK R11 K5 ["calculateScaleToValidateBoundsAsync"]
  MOVE R12 R6
  MOVE R13 R8
  CALL R10 3 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K27 ["reportScriptTimes"]
  MOVE R11 R8
  CALL R10 1 0
  RETURN R9 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  GETIMPORT R1 K3 [require]
  GETTABLEKS R3 R0 K4 ["flags"]
  GETTABLEKS R2 R3 K5 ["getEngineFeatureUGCValidationWithContextEntrypoint"]
  CALL R1 1 1
  GETIMPORT R2 K3 [require]
  GETTABLEKS R3 R0 K6 ["Analytics"]
  CALL R2 1 1
  GETIMPORT R3 K3 [require]
  GETTABLEKS R4 R0 K7 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K3 [require]
  GETTABLEKS R6 R0 K8 ["util"]
  GETTABLEKS R5 R6 K9 ["BundlesMetadata"]
  CALL R4 1 1
  GETIMPORT R5 K3 [require]
  GETTABLEKS R7 R0 K8 ["util"]
  GETTABLEKS R6 R7 K10 ["canUploadBundlesAsync"]
  CALL R5 1 1
  GETIMPORT R6 K3 [require]
  GETTABLEKS R8 R0 K8 ["util"]
  GETTABLEKS R7 R8 K11 ["createUGCBodyPartFolders"]
  CALL R6 1 1
  GETIMPORT R7 K3 [require]
  GETTABLEKS R9 R0 K8 ["util"]
  GETTABLEKS R8 R9 K12 ["isLayeredClothing"]
  CALL R7 1 1
  GETIMPORT R8 K3 [require]
  GETTABLEKS R10 R0 K8 ["util"]
  GETTABLEKS R9 R10 K13 ["RigidOrLayeredAllowed"]
  CALL R8 1 1
  GETIMPORT R9 K3 [require]
  GETTABLEKS R11 R0 K8 ["util"]
  GETTABLEKS R10 R11 K14 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K3 [require]
  GETTABLEKS R12 R0 K8 ["util"]
  GETTABLEKS R11 R12 K15 ["createEditableInstancesForContext"]
  CALL R10 1 1
  GETIMPORT R11 K3 [require]
  GETTABLEKS R13 R0 K8 ["util"]
  GETTABLEKS R12 R13 K16 ["destroyEditableInstances"]
  CALL R11 1 1
  GETIMPORT R12 K3 [require]
  GETTABLEKS R14 R0 K8 ["util"]
  GETTABLEKS R13 R14 K17 ["ValidationHints"]
  CALL R12 1 1
  GETIMPORT R13 K3 [require]
  GETTABLEKS R15 R0 K18 ["validation"]
  GETTABLEKS R14 R15 K19 ["validateInternal"]
  CALL R13 1 1
  GETIMPORT R14 K3 [require]
  GETTABLEKS R16 R0 K18 ["validation"]
  GETTABLEKS R15 R16 K20 ["validateLayeredClothingAccessoryMeshPartAssetFormat"]
  CALL R14 1 1
  GETIMPORT R15 K3 [require]
  GETTABLEKS R17 R0 K18 ["validation"]
  GETTABLEKS R16 R17 K21 ["validateLegacyAccessoryMeshPartAssetFormat"]
  CALL R15 1 1
  GETIMPORT R16 K3 [require]
  GETTABLEKS R18 R0 K18 ["validation"]
  GETTABLEKS R17 R18 K22 ["validateFullBody"]
  CALL R16 1 1
  GETIMPORT R17 K3 [require]
  GETTABLEKS R19 R0 K18 ["validation"]
  GETTABLEKS R18 R19 K23 ["validateShoes"]
  CALL R17 1 1
  GETIMPORT R18 K3 [require]
  GETTABLEKS R20 R0 K18 ["validation"]
  GETTABLEKS R19 R20 K24 ["validateBundleReadyForUpload"]
  CALL R18 1 1
  GETIMPORT R19 K3 [require]
  GETTABLEKS R21 R0 K18 ["validation"]
  GETTABLEKS R20 R21 K25 ["validateShoesBundleReadyForUpload"]
  CALL R19 1 1
  GETIMPORT R20 K3 [require]
  GETTABLEKS R22 R0 K18 ["validation"]
  GETTABLEKS R21 R22 K26 ["validateDynamicHeadMeshPartFormat"]
  CALL R20 1 1
  GETIMPORT R21 K3 [require]
  GETTABLEKS R23 R0 K27 ["validationSystem"]
  GETTABLEKS R22 R23 K28 ["ValidationManager"]
  CALL R21 1 1
  GETIMPORT R22 K3 [require]
  GETTABLEKS R24 R0 K4 ["flags"]
  GETTABLEKS R23 R24 K29 ["getFFlagUGCValidationEnableFolderStructure"]
  CALL R22 1 1
  GETIMPORT R23 K3 [require]
  GETTABLEKS R25 R0 K4 ["flags"]
  GETTABLEKS R24 R25 K30 ["getFFlagUGCValidationCombineEntrypointResults"]
  CALL R23 1 1
  GETIMPORT R24 K3 [require]
  GETTABLEKS R26 R0 K8 ["util"]
  GETTABLEKS R25 R26 K31 ["LegacyValidationAdapter"]
  CALL R24 1 1
  NEWTABLE R25 32 0
  GETTABLEKS R26 R21 K32 ["ValidateAsset"]
  SETTABLEKS R26 R25 K32 ["ValidateAsset"]
  GETTABLEKS R26 R21 K33 ["ValidateFinalizedBundle"]
  SETTABLEKS R26 R25 K33 ["ValidateFinalizedBundle"]
  GETTABLEKS R26 R24 K34 ["combineResultsIntoLegacy"]
  SETTABLEKS R26 R25 K34 ["combineResultsIntoLegacy"]
  SETTABLEKS R22 R25 K35 ["isFolderStructureEnabled"]
  SETTABLEKS R23 R25 K36 ["isEntrypointMergingEnabled"]
  MOVE R26 R1
  CALL R26 0 1
  JUMPIFNOT R26 [+7]
  DUPCLOSURE R26 K37 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K38 ["validateWithContext"]
  DUPCLOSURE R26 K39 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K40 ["validate"]
  DUPCLOSURE R26 K41 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K42 ["validateAsync"]
  DUPCLOSURE R26 K43 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R20
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K44 ["validateMeshPartFormat"]
  DUPCLOSURE R26 K45 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R20
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K46 ["validateAsyncMeshPartFormat"]
  MOVE R26 R1
  CALL R26 0 1
  JUMPIFNOT R26 [+9]
  DUPCLOSURE R26 K47 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K48 ["validateMeshPartAssetFormatWithContext"]
  DUPCLOSURE R26 K49 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K50 ["validateMeshPartAssetFormat2"]
  SETTABLEKS R18 R25 K24 ["validateBundleReadyForUpload"]
  SETTABLEKS R19 R25 K25 ["validateShoesBundleReadyForUpload"]
  DUPTABLE R26 K51 [{"BundlesMetadata", "createUGCBodyPartFolders", "canUploadBundlesAsync"}]
  SETTABLEKS R4 R26 K9 ["BundlesMetadata"]
  SETTABLEKS R6 R26 K11 ["createUGCBodyPartFolders"]
  SETTABLEKS R5 R26 K10 ["canUploadBundlesAsync"]
  SETTABLEKS R26 R25 K8 ["util"]
  GETTABLEKS R26 R25 K8 ["util"]
  GETTABLEKS R27 R8 K52 ["isLayeredClothingAllowed"]
  SETTABLEKS R27 R26 K52 ["isLayeredClothingAllowed"]
  GETTABLEKS R26 R25 K8 ["util"]
  GETTABLEKS R27 R8 K53 ["isRigidAccessoryAllowed"]
  SETTABLEKS R27 R26 K53 ["isRigidAccessoryAllowed"]
  MOVE R26 R1
  CALL R26 0 1
  JUMPIFNOT R26 [+7]
  DUPCLOSURE R26 K54 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K55 ["validateFullBodyWithContext"]
  DUPCLOSURE R26 K56 [PROTO_10]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K22 ["validateFullBody"]
  DUPCLOSURE R26 K57 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R17
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K58 ["validateShoesWithContext"]
  DUPCLOSURE R26 K59 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K60 ["preprocessDataAsync"]
  DUPCLOSURE R26 K61 [PROTO_13]
  CAPTURE VAL R2
  CAPTURE VAL R12
  SETTABLEKS R26 R25 K62 ["isPreprocessDataCached"]
  DUPCLOSURE R26 K63 [PROTO_14]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K64 ["calculateScaleToValidateBoundsAsync"]
  GETTABLEKS R26 R3 K65 ["GUIDAttributeName"]
  SETTABLEKS R26 R25 K65 ["GUIDAttributeName"]
  RETURN R25 1
