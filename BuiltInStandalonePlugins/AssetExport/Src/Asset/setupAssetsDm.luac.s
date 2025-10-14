PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["OnExportSelectionActionActivated"]
  NAMECALL R1 R1 K1 ["Invoke"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["OnExportPlaceActionActivated"]
  NAMECALL R1 R1 K1 ["Invoke"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  LOADK R3 K0 ["OnExportFileNameInputted"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["OnExportCompleteSuccess"]
  NAMECALL R0 R0 K1 ["Invoke"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADK R2 K0 ["OnExportErrored"]
  NAMECALL R0 R0 K1 ["Invoke"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADK R2 K0 ["OnFileSelectCanceled"]
  NAMECALL R0 R0 K1 ["Invoke"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["OnPermissionCheckComplete"]
  GETUPVAL R3 0
  LOADK R5 K1 ["AssetExportController"]
  NAMECALL R3 R3 K2 ["GetPluginComponent"]
  CALL R3 2 1
  NAMECALL R3 R3 K3 ["GetPermissionFailuresAsync"]
  CALL R3 1 -1
  NAMECALL R0 R0 K4 ["Invoke"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R2 K0 ["OnPermissionCheckFailed"]
  NAMECALL R0 R0 K1 ["Invoke"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  LOADK R3 K0 ["AssetExportController"]
  NAMECALL R1 R1 K1 ["GetPluginComponent"]
  CALL R1 2 1
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["StartPermissionCheckAsync"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  LOADK R5 K0 ["AssetExportController"]
  NAMECALL R3 R3 K1 ["GetPluginComponent"]
  CALL R3 2 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K2 ["StartExportAsync"]
  CALL R3 4 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADK R2 K0 ["AssetExportController"]
  NAMECALL R0 R0 K1 ["GetPluginComponent"]
  CALL R0 2 1
  NAMECALL R0 R0 K2 ["SelectExportFileNameAsync"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADK R2 K0 ["AssetExportController"]
  NAMECALL R0 R0 K1 ["GetPluginComponent"]
  CALL R0 2 1
  NAMECALL R0 R0 K2 ["CancelExportInstigatedAsync"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R1 K1 [pcall]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  LOADK R4 K2 ["OnCreateCagesSucceeded"]
  NAMECALL R2 R2 K3 ["Invoke"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K5 [warn]
  LOADK R3 K6 ["Failed to create cages"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R1 K1 [pcall]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 1
  LOADK R4 K2 ["OnDestroyCagesSucceeded"]
  NAMECALL R2 R2 K3 ["Invoke"]
  CALL R2 2 0
  RETURN R0 0

PROTO_15:
  LOADK R3 K0 ["Actions"]
  NAMECALL R1 R0 K1 ["GetPluginComponent"]
  CALL R1 2 1
  NEWTABLE R2 0 0
  MOVE R4 R2
  GETUPVAL R7 0
  NAMECALL R5 R1 K2 ["BindToActivatedAsync"]
  CALL R5 2 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  GETUPVAL R7 1
  NAMECALL R5 R1 K2 ["BindToActivatedAsync"]
  CALL R5 2 1
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R8 K7 ["AssetExportController"]
  NAMECALL R6 R0 K1 ["GetPluginComponent"]
  CALL R6 2 1
  GETTABLEKS R5 R6 K8 ["OnExportFileNameInputted"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R8 K7 ["AssetExportController"]
  NAMECALL R6 R0 K1 ["GetPluginComponent"]
  CALL R6 2 1
  GETTABLEKS R5 R6 K9 ["OnExportCompleteSuccess"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R0
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R8 K7 ["AssetExportController"]
  NAMECALL R6 R0 K1 ["GetPluginComponent"]
  CALL R6 2 1
  GETTABLEKS R5 R6 K10 ["OnExportErrored"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R0
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R8 K7 ["AssetExportController"]
  NAMECALL R6 R0 K1 ["GetPluginComponent"]
  CALL R6 2 1
  GETTABLEKS R5 R6 K11 ["OnFileSelectCanceled"]
  NEWCLOSURE R7 P5
  CAPTURE VAL R0
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R8 K7 ["AssetExportController"]
  NAMECALL R6 R0 K1 ["GetPluginComponent"]
  CALL R6 2 1
  GETTABLEKS R5 R6 K12 ["OnPermissionCheckComplete"]
  NEWCLOSURE R7 P6
  CAPTURE VAL R0
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R8 K7 ["AssetExportController"]
  NAMECALL R6 R0 K1 ["GetPluginComponent"]
  CALL R6 2 1
  GETTABLEKS R5 R6 K13 ["OnPermissionCheckFailed"]
  NEWCLOSURE R7 P7
  CAPTURE VAL R0
  NAMECALL R5 R5 K3 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R7 K14 ["OnShouldStartPermissions"]
  NEWCLOSURE R8 P8
  CAPTURE VAL R0
  NAMECALL R5 R0 K15 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R7 K16 ["OnShouldStartExport"]
  NEWCLOSURE R8 P9
  CAPTURE VAL R0
  NAMECALL R5 R0 K15 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R7 K17 ["OnShouldSelectFilename"]
  NEWCLOSURE R8 P10
  CAPTURE VAL R0
  NAMECALL R5 R0 K15 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R7 K18 ["OnShouldCancelExport"]
  NEWCLOSURE R8 P11
  CAPTURE VAL R0
  NAMECALL R5 R0 K15 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R7 K19 ["OnViewInExplorer"]
  DUPCLOSURE R8 K20 [PROTO_12]
  CAPTURE UPVAL U2
  NAMECALL R5 R0 K15 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+24]
  MOVE R4 R2
  LOADK R7 K21 ["OnCreateCageParts"]
  NEWCLOSURE R8 P13
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  NAMECALL R5 R0 K15 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  MOVE R4 R2
  LOADK R7 K22 ["OnDestroyCageParts"]
  NEWCLOSURE R8 P14
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  NAMECALL R5 R0 K15 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetExport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["selectAssetsWithId"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["createCages"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K10 ["destroyCages"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagCreateCagesOnAssetDm"]
  CALL R4 1 1
  DUPTABLE R5 K18 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R6 K19 ["Standalone"]
  SETTABLEKS R6 R5 K13 ["DataModel"]
  LOADK R6 K20 ["Unknown"]
  SETTABLEKS R6 R5 K14 ["PluginType"]
  LOADK R6 K21 ["Export"]
  SETTABLEKS R6 R5 K15 ["PluginId"]
  LOADK R6 K22 ["Actions"]
  SETTABLEKS R6 R5 K16 ["Category"]
  LOADK R6 K23 ["ExportAsGltf"]
  SETTABLEKS R6 R5 K17 ["ItemId"]
  DUPTABLE R6 K18 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R7 K19 ["Standalone"]
  SETTABLEKS R7 R6 K13 ["DataModel"]
  LOADK R7 K20 ["Unknown"]
  SETTABLEKS R7 R6 K14 ["PluginType"]
  LOADK R7 K21 ["Export"]
  SETTABLEKS R7 R6 K15 ["PluginId"]
  LOADK R7 K22 ["Actions"]
  SETTABLEKS R7 R6 K16 ["Category"]
  LOADK R7 K24 ["ExportPlaceAsGltf"]
  SETTABLEKS R7 R6 K17 ["ItemId"]
  DUPCLOSURE R7 K25 [PROTO_15]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R7 1
