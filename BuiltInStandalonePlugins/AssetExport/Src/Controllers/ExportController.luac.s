PROTO_0:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["setOnlySelection"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K1 ["setExportEnabled"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["_plugin"]
  LOADK R2 K3 ["OnShouldStartPermissions"]
  LOADB R3 1
  NAMECALL R0 R0 K4 ["Invoke"]
  CALL R0 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R2 0
  NAMECALL R0 R0 K0 ["setOnlySelection"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K1 ["setExportEnabled"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["_plugin"]
  LOADK R2 K3 ["OnShouldStartPermissions"]
  LOADB R3 0
  NAMECALL R0 R0 K4 ["Invoke"]
  CALL R0 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["_settings"]
  NAMECALL R0 R0 K1 ["formatSettings"]
  CALL R0 2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["_plugin"]
  LOADK R3 K3 ["OnShouldStartExport"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K4 ["getOnlySelection"]
  CALL R4 1 1
  MOVE R5 R0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["_fileName"]
  NAMECALL R1 R1 K6 ["Invoke"]
  CALL R1 5 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["export"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_canceled"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["endExport"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["showFinishedPage"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_exportSuccess"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["_settings"]
  GETTABLEKS R0 R1 K1 ["cages"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["_plugin"]
  LOADK R2 K4 ["OnDestroyCageParts"]
  GETUPVAL R3 0
  NAMECALL R3 R3 K5 ["getOnlySelection"]
  CALL R3 1 -1
  NAMECALL R0 R0 K6 ["Invoke"]
  CALL R0 -1 0
  RETURN R0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K7 ["showFinishedPage"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_exportSuccess"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["_settings"]
  GETTABLEKS R0 R1 K1 ["cages"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["_plugin"]
  LOADK R2 K4 ["OnDestroyCageParts"]
  GETUPVAL R3 0
  NAMECALL R3 R3 K5 ["getOnlySelection"]
  CALL R3 1 -1
  NAMECALL R0 R0 K6 ["Invoke"]
  CALL R0 -1 0
  RETURN R0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K7 ["showFinishedPage"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_canceled"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["_settings"]
  GETTABLEKS R0 R1 K1 ["cages"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["_plugin"]
  LOADK R2 K4 ["OnDestroyCageParts"]
  GETUPVAL R3 0
  NAMECALL R3 R3 K5 ["getOnlySelection"]
  CALL R3 1 -1
  NAMECALL R0 R0 K6 ["Invoke"]
  CALL R0 -1 0
  RETURN R0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K7 ["endExport"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["setPermissionFailures"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onPermissionFailuresChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["_permissionFailures"]
  NAMECALL R1 R1 K3 ["Fire"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADB R3 1
  NAMECALL R1 R1 K4 ["setPermissionsReady"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["endExport"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R2 K19 [{"_viewState", "_exportEnabled", "_exportProcessing", "_settings", "_settingEvents", "_onlySelection", "_plugin", "_permissionFailures", "_fileName", "_connections", "_permissionsReady", "_canceled", "_exportSuccess", "onViewStateChanged", "onPermissionLoadingChanged", "onPermissionFailuresChanged", "onExportEnabledChanged", "onExportProcessingChanged", "onPermissionsReadyChanged"}]
  LOADK R3 K20 ["Main"]
  SETTABLEKS R3 R2 K0 ["_viewState"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["_exportEnabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["_exportProcessing"]
  DUPTABLE R3 K24 [{"skinning", "textures", "cages"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K21 ["skinning"]
  LOADB R4 1
  SETTABLEKS R4 R3 K22 ["textures"]
  LOADB R4 0
  SETTABLEKS R4 R3 K23 ["cages"]
  SETTABLEKS R3 R2 K3 ["_settings"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K4 ["_settingEvents"]
  LOADB R3 0
  SETTABLEKS R3 R2 K5 ["_onlySelection"]
  SETTABLEKS R0 R2 K6 ["_plugin"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K7 ["_permissionFailures"]
  LOADNIL R3
  SETTABLEKS R3 R2 K8 ["_fileName"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K9 ["_connections"]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["_permissionsReady"]
  LOADB R3 0
  SETTABLEKS R3 R2 K11 ["_canceled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K12 ["_exportSuccess"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K25 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K13 ["onViewStateChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K25 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K14 ["onPermissionLoadingChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K25 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K15 ["onPermissionFailuresChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K25 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K16 ["onExportEnabledChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K25 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K17 ["onExportProcessingChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K25 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K18 ["onPermissionsReadyChanged"]
  GETTABLEKS R3 R2 K3 ["_settings"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R2 K4 ["_settingEvents"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K25 ["new"]
  CALL R9 0 1
  SETTABLE R9 R8 R6
  FORGLOOP R3 2 [-8]
  GETUPVAL R5 1
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K27 [setmetatable]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K28 ["OnExportSelectionActionActivated"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K33 ["OnExportPlaceActionActivated"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K34 ["OnCreateCagesSucceeded"]
  NEWCLOSURE R8 P2
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K35 ["OnExportFileNameInputted"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K36 ["OnDestroyCagesSucceeded"]
  NEWCLOSURE R8 P4
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K37 ["OnExportCompleteSuccess"]
  NEWCLOSURE R8 P5
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K38 ["OnExportErrored"]
  NEWCLOSURE R8 P6
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K39 ["OnFileSelectCanceled"]
  NEWCLOSURE R8 P7
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K40 ["OnPermissionCheckComplete"]
  NEWCLOSURE R8 P8
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R2 K9 ["_connections"]
  GETTABLEKS R5 R2 K6 ["_plugin"]
  LOADK R7 K41 ["OnPermissionCheckFailed"]
  NEWCLOSURE R8 P9
  CAPTURE VAL R2
  NAMECALL R5 R5 K29 ["OnInvoke"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 -1 0
  RETURN R2 1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  LOADNIL R3
  LOADB R4 1
  CALL R1 3 -1
  RETURN R1 -1

PROTO_12:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  JUMPIFNOTEQKS R6 K2 ["skinning"] [+6]
  SETTABLEKS R7 R2 K3 ["ExportSkinning"]
  SETTABLEKS R7 R2 K4 ["ExportFACS"]
  JUMP [+6]
  JUMPIFNOTEQKS R6 K5 ["textures"] [+5]
  SETTABLEKS R7 R2 K6 ["ExportTextures"]
  SETTABLEKS R7 R2 K7 ["ExportPBRs"]
  FORGLOOP R3 2 [-14]
  RETURN R2 1

PROTO_13:
  GETTABLEKS R3 R0 K0 ["_settings"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_14:
  GETTABLEKS R3 R0 K0 ["_settingEvents"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_15:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_canceled"]
  GETTABLEKS R1 R0 K1 ["_plugin"]
  LOADK R3 K2 ["OnShouldCancelExport"]
  NAMECALL R1 R1 K3 ["Invoke"]
  CALL R1 2 0
  GETTABLEKS R2 R0 K5 ["_settings"]
  GETTABLEKS R1 R2 K4 ["cages"]
  JUMPIFNOT R1 [+10]
  GETTABLEKS R1 R0 K1 ["_plugin"]
  LOADK R3 K6 ["OnDestroyCageParts"]
  NAMECALL R4 R0 K7 ["getOnlySelection"]
  CALL R4 1 -1
  NAMECALL R1 R1 K3 ["Invoke"]
  CALL R1 -1 0
  RETURN R0 0
  NAMECALL R1 R0 K8 ["endExport"]
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R3 R0 K0 ["_settings"]
  GETTABLE R2 R3 R1
  JUMPIFEQKNIL R2 [+12]
  GETTABLEKS R3 R0 K0 ["_settings"]
  NOT R4 R2
  SETTABLE R4 R3 R1
  GETTABLEKS R4 R0 K1 ["_settingEvents"]
  GETTABLE R3 R4 R1
  NOT R5 R2
  NAMECALL R3 R3 K2 ["Fire"]
  CALL R3 2 0
  RETURN R0 0

PROTO_17:
  SETTABLEKS R1 R0 K0 ["_onlySelection"]
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["_onlySelection"]
  RETURN R1 1

PROTO_19:
  GETTABLEKS R2 R0 K0 ["_permissionsReady"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_permissionsReady"]
  GETTABLEKS R2 R0 K1 ["onPermissionsReadyChanged"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["_permissionsReady"]
  RETURN R1 1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["_viewState"]
  RETURN R1 1

PROTO_22:
  GETTABLEKS R1 R0 K0 ["_exportEnabled"]
  RETURN R1 1

PROTO_23:
  GETTABLEKS R2 R0 K0 ["_exportEnabled"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_exportEnabled"]
  GETTABLEKS R2 R0 K1 ["onExportEnabledChanged"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_24:
  GETTABLEKS R1 R0 K0 ["_exportProcessing"]
  RETURN R1 1

PROTO_25:
  GETTABLEKS R2 R0 K0 ["_exportProcessing"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_exportProcessing"]
  GETTABLEKS R2 R0 K1 ["onExportProcessingChanged"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_26:
  GETTABLEKS R2 R0 K0 ["_viewState"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_viewState"]
  GETTABLEKS R2 R0 K1 ["onViewStateChanged"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_27:
  LOADK R3 K0 ["Main"]
  NAMECALL R1 R0 K1 ["_changeViewState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_28:
  LOADK R3 K0 ["Permissions"]
  NAMECALL R1 R0 K1 ["_changeViewState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_29:
  GETTABLEKS R1 R0 K0 ["_permissionFailures"]
  RETURN R1 1

PROTO_30:
  SETTABLEKS R1 R0 K0 ["_permissionFailures"]
  RETURN R0 0

PROTO_31:
  GETTABLEKS R2 R0 K0 ["_plugin"]
  LOADK R4 K1 ["OnViewInExplorer"]
  MOVE R5 R1
  NAMECALL R2 R2 K2 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R2 0
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["OpenBrowserWindow"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_33:
  GETUPVAL R1 0
  GETUPVAL R3 1
  CALL R3 0 -1
  NAMECALL R1 R1 K0 ["OpenBrowserWindow"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_34:
  GETTABLEKS R1 R0 K0 ["_permissionFailures"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R5 K1 ["assetType"]
  JUMPIFEQKS R6 K2 ["Mesh"] [+7]
  GETTABLEKS R7 R0 K3 ["_settings"]
  GETTABLEKS R6 R7 K4 ["textures"]
  JUMPIFNOTEQKB R6 TRUE [+3]
  LOADB R6 1
  RETURN R6 1
  FORGLOOP R1 2 [-13]
  LOADB R1 0
  RETURN R1 1

PROTO_35:
  NAMECALL R1 R0 K0 ["_containsReleventPermissionFailure"]
  CALL R1 1 1
  JUMPIF R1 [+4]
  NAMECALL R1 R0 K1 ["triggerFilePathSelection"]
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K2 ["openPermissions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_36:
  LOADK R3 K0 ["SelectFilename"]
  NAMECALL R1 R0 K1 ["_changeViewState"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K2 ["_plugin"]
  LOADK R3 K3 ["OnShouldSelectFilename"]
  NAMECALL R1 R1 K4 ["Invoke"]
  CALL R1 2 0
  RETURN R0 0

PROTO_37:
  GETTABLEKS R4 R0 K0 ["_settings"]
  NAMECALL R2 R0 K1 ["formatSettings"]
  CALL R2 2 1
  LOADB R5 1
  NAMECALL R3 R0 K2 ["setExportProcessing"]
  CALL R3 2 0
  LOADK R5 K3 ["Export"]
  NAMECALL R3 R0 K4 ["_changeViewState"]
  CALL R3 2 0
  SETTABLEKS R1 R0 K5 ["_fileName"]
  GETTABLEKS R4 R0 K0 ["_settings"]
  GETTABLEKS R3 R4 K6 ["cages"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R3 R0 K7 ["_plugin"]
  LOADK R5 K8 ["OnCreateCageParts"]
  NAMECALL R6 R0 K9 ["getOnlySelection"]
  CALL R6 1 -1
  NAMECALL R3 R3 K10 ["Invoke"]
  CALL R3 -1 0
  RETURN R0 0
  GETTABLEKS R3 R0 K7 ["_plugin"]
  LOADK R5 K11 ["OnShouldStartExport"]
  NAMECALL R6 R0 K9 ["getOnlySelection"]
  CALL R6 1 1
  MOVE R7 R2
  GETTABLEKS R8 R0 K5 ["_fileName"]
  NAMECALL R3 R3 K10 ["Invoke"]
  CALL R3 5 0
  RETURN R0 0

PROTO_38:
  GETTABLEKS R1 R0 K0 ["_exportSuccess"]
  JUMPIFNOT R1 [+5]
  LOADK R3 K1 ["Success"]
  NAMECALL R1 R0 K2 ["_changeViewState"]
  CALL R1 2 0
  RETURN R0 0
  LOADK R3 K3 ["Failure"]
  NAMECALL R1 R0 K2 ["_changeViewState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_39:
  NAMECALL R1 R0 K0 ["endExport"]
  CALL R1 1 0
  RETURN R0 0

PROTO_40:
  LOADK R3 K0 ["Main"]
  NAMECALL R1 R0 K1 ["_changeViewState"]
  CALL R1 2 0
  LOADB R3 0
  NAMECALL R1 R0 K2 ["setExportEnabled"]
  CALL R1 2 0
  LOADB R3 0
  NAMECALL R1 R0 K3 ["setExportProcessing"]
  CALL R1 2 0
  LOADB R3 0
  NAMECALL R1 R0 K4 ["setPermissionsReady"]
  CALL R1 2 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["_permissionFailures"]
  LOADB R1 0
  SETTABLEKS R1 R0 K6 ["_canceled"]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["_exportSuccess"]
  RETURN R0 0

PROTO_41:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["_settingEvents"]
  GETTABLEKS R1 R0 K1 ["_connections"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R5 K2 ["Disconnect"]
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K2 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-7]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_connections"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetExport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["ContextItem"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFStringPermissionsPage"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["createAssetUrl"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K13 ["Util"]
  GETTABLEKS R7 R6 K15 ["Signal"]
  GETIMPORT R8 K17 [game]
  LOADK R10 K18 ["BrowserService"]
  NAMECALL R8 R8 K19 ["GetService"]
  CALL R8 2 1
  LOADK R11 K20 ["ExportController"]
  NAMECALL R9 R3 K21 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K22 [PROTO_10]
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K23 ["new"]
  DUPCLOSURE R10 K24 [PROTO_11]
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K25 ["mock"]
  DUPCLOSURE R10 K26 [PROTO_12]
  SETTABLEKS R10 R9 K27 ["formatSettings"]
  DUPCLOSURE R10 K28 [PROTO_13]
  SETTABLEKS R10 R9 K29 ["getSettingValue"]
  DUPCLOSURE R10 K30 [PROTO_14]
  SETTABLEKS R10 R9 K31 ["getSettingEvent"]
  DUPCLOSURE R10 K32 [PROTO_15]
  SETTABLEKS R10 R9 K33 ["cancelExport"]
  DUPCLOSURE R10 K34 [PROTO_16]
  SETTABLEKS R10 R9 K35 ["toggleSetting"]
  DUPCLOSURE R10 K36 [PROTO_17]
  SETTABLEKS R10 R9 K37 ["setOnlySelection"]
  DUPCLOSURE R10 K38 [PROTO_18]
  SETTABLEKS R10 R9 K39 ["getOnlySelection"]
  DUPCLOSURE R10 K40 [PROTO_19]
  SETTABLEKS R10 R9 K41 ["setPermissionsReady"]
  DUPCLOSURE R10 K42 [PROTO_20]
  SETTABLEKS R10 R9 K43 ["getPermissionsReady"]
  DUPCLOSURE R10 K44 [PROTO_21]
  SETTABLEKS R10 R9 K45 ["getViewState"]
  DUPCLOSURE R10 K46 [PROTO_22]
  SETTABLEKS R10 R9 K47 ["getExportEnabled"]
  DUPCLOSURE R10 K48 [PROTO_23]
  SETTABLEKS R10 R9 K49 ["setExportEnabled"]
  DUPCLOSURE R10 K50 [PROTO_24]
  SETTABLEKS R10 R9 K51 ["getExportProcessing"]
  DUPCLOSURE R10 K52 [PROTO_25]
  SETTABLEKS R10 R9 K53 ["setExportProcessing"]
  DUPCLOSURE R10 K54 [PROTO_26]
  SETTABLEKS R10 R9 K55 ["_changeViewState"]
  DUPCLOSURE R10 K56 [PROTO_27]
  SETTABLEKS R10 R9 K57 ["openMain"]
  DUPCLOSURE R10 K58 [PROTO_28]
  SETTABLEKS R10 R9 K59 ["openPermissions"]
  DUPCLOSURE R10 K60 [PROTO_29]
  SETTABLEKS R10 R9 K61 ["getPermissionFailures"]
  DUPCLOSURE R10 K62 [PROTO_30]
  SETTABLEKS R10 R9 K63 ["setPermissionFailures"]
  DUPCLOSURE R10 K64 [PROTO_31]
  SETTABLEKS R10 R9 K65 ["viewInExplorer"]
  DUPCLOSURE R10 K66 [PROTO_32]
  CAPTURE VAL R8
  CAPTURE VAL R5
  SETTABLEKS R10 R9 K67 ["openInBrowser"]
  DUPCLOSURE R10 K68 [PROTO_33]
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K69 ["openLearnPage"]
  DUPCLOSURE R10 K70 [PROTO_34]
  SETTABLEKS R10 R9 K71 ["_containsReleventPermissionFailure"]
  DUPCLOSURE R10 K72 [PROTO_35]
  SETTABLEKS R10 R9 K73 ["exportRequested"]
  DUPCLOSURE R10 K74 [PROTO_36]
  SETTABLEKS R10 R9 K75 ["triggerFilePathSelection"]
  DUPCLOSURE R10 K76 [PROTO_37]
  SETTABLEKS R10 R9 K77 ["export"]
  DUPCLOSURE R10 K78 [PROTO_38]
  SETTABLEKS R10 R9 K79 ["showFinishedPage"]
  DUPCLOSURE R10 K80 [PROTO_39]
  SETTABLEKS R10 R9 K81 ["closeExport"]
  DUPCLOSURE R10 K82 [PROTO_40]
  SETTABLEKS R10 R9 K83 ["endExport"]
  DUPCLOSURE R10 K84 [PROTO_41]
  SETTABLEKS R10 R9 K85 ["destroy"]
  RETURN R9 1
