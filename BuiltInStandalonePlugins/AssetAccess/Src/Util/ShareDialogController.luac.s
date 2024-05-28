PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["table"] [+19]
  GETIMPORT R1 K4 [table.isfrozen]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIF R1 [+4]
  GETIMPORT R1 K6 [table.freeze]
  MOVE R2 R0
  CALL R1 1 0
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R6 0
  MOVE R7 R5
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"state"}]
  LOADK R3 K2 ["Inactive"]
  SETTABLEKS R3 R2 K0 ["state"]
  NAMECALL R0 R0 K3 ["SetModel"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R7 K1 [{"state"}]
  LOADK R8 K2 ["Loading"]
  SETTABLEKS R8 R7 K0 ["state"]
  SETTABLE R7 R1 R6
  FORGLOOP R2 2 [-6]
  GETUPVAL R2 0
  DUPTABLE R4 K4 [{"assetModels", "state"}]
  SETTABLEKS R1 R4 K3 ["assetModels"]
  LOADK R5 K5 ["Prompt"]
  SETTABLEKS R5 R4 K0 ["state"]
  NAMECALL R2 R2 K6 ["SetModel"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetModel"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["state"]
  JUMPIFEQKS R2 K2 ["Prompt"] [+2]
  RETURN R0 0
  GETTABLEKS R4 R1 K1 ["state"]
  JUMPIFEQKS R4 K2 ["Prompt"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Luau"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETIMPORT R2 K8 [table.clone]
  GETTABLEKS R3 R1 K9 ["assetModels"]
  CALL R2 1 1
  DUPTABLE R3 K10 [{"state"}]
  LOADK R4 K11 ["Loading"]
  SETTABLEKS R4 R3 K1 ["state"]
  SETTABLE R3 R2 R0
  GETUPVAL R3 0
  DUPTABLE R5 K12 [{"assetModels", "state"}]
  SETTABLEKS R2 R5 K9 ["assetModels"]
  LOADK R6 K2 ["Prompt"]
  SETTABLEKS R6 R5 K1 ["state"]
  NAMECALL R3 R3 K13 ["SetModel"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  LOADK R3 K0 ["AssetAccessController"]
  NAMECALL R1 R0 K1 ["GetPluginComponent"]
  CALL R1 2 1
  NEWTABLE R2 8 0
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K3 [setmetatable]
  CALL R3 2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["_alive"]
  GETIMPORT R3 K7 [table.freeze]
  DUPTABLE R4 K9 [{"state"}]
  LOADK R5 K10 ["Inactive"]
  SETTABLEKS R5 R4 K8 ["state"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K11 ["_model"]
  SETTABLEKS R0 R2 K12 ["_plugin"]
  LOADK R5 K13 ["ShareDialogDismissed"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  NAMECALL R3 R0 K14 ["OnInvoke"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K15 ["_shareDialogDismissedConnection"]
  GETTABLEKS R3 R1 K16 ["ShowShareDialog"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R2
  NAMECALL R3 R3 K17 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K18 ["_showShareDialogConnection"]
  GETTABLEKS R3 R1 K19 ["NewInaccessibleAsset"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R2
  NAMECALL R3 R3 K17 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K20 ["_newInaccessibleAssetConnection"]
  GETTABLEKS R3 R2 K12 ["_plugin"]
  LOADK R5 K21 ["ShareDialogModel"]
  GETTABLEKS R6 R2 K11 ["_model"]
  NAMECALL R3 R3 K22 ["SetItem"]
  CALL R3 3 0
  RETURN R2 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_alive"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["ShareDialogController already destroyed"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["_shareDialogDismissedConnection"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K6 ["_showShareDialogConnection"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K7 ["_newInaccessibleAssetConnection"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K8 ["_plugin"]
  LOADK R3 K9 ["ShareDialogModel"]
  LOADNIL R4
  NAMECALL R1 R1 K10 ["SetItem"]
  CALL R1 3 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_alive"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_alive"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["ShareDialogController has been destroyed"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["_model"]
  RETURN R1 1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["_alive"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["ShareDialogController has been destroyed"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R2 0
  GETIMPORT R3 K6 [table.clone]
  MOVE R4 R1
  CALL R3 1 -1
  CALL R2 -1 1
  SETTABLEKS R2 R0 K7 ["_model"]
  GETTABLEKS R2 R0 K8 ["_plugin"]
  LOADK R4 K9 ["ShareDialogModel"]
  GETTABLEKS R5 R0 K7 ["_model"]
  NAMECALL R2 R2 K10 ["SetItem"]
  CALL R2 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetAccess"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 8 0
  SETTABLEKS R2 R2 K8 ["__index"]
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R3
  DUPCLOSURE R4 K10 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R4 R2 K11 ["new"]
  DUPCLOSURE R4 K12 [PROTO_5]
  SETTABLEKS R4 R2 K13 ["Destroy"]
  DUPCLOSURE R4 K14 [PROTO_6]
  SETTABLEKS R4 R2 K15 ["GetModel"]
  DUPCLOSURE R4 K16 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R4 R2 K17 ["SetModel"]
  GETIMPORT R4 K20 [table.freeze]
  MOVE R5 R2
  CALL R4 1 -1
  RETURN R4 -1
