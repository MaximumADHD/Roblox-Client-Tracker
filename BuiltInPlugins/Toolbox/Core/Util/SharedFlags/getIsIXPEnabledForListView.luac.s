PROTO_0:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["ToolboxListViewEnabledForAll"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 0
  CALL R1 0 -1
  RETURN R1 -1
  MOVE R1 R0
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 1
  MOVE R2 R0
  LOADK R3 K4 ["MarketplaceModelsListView"]
  LOADK R4 K5 ["MarketplaceModelsListViewEnabled"]
  CALL R1 3 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Core"]
  GETTABLEKS R1 R2 K5 ["Util"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["getIsIXPVariableEnabled"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K9 ["SharedFlags"]
  GETTABLEKS R4 R5 K10 ["getFFlagToolboxEnableAssetRows"]
  CALL R3 1 1
  GETIMPORT R4 K12 [game]
  LOADK R6 K13 ["ToolboxListViewEnabledForAll"]
  LOADB R7 0
  NAMECALL R4 R4 K14 ["DefineFastFlag"]
  CALL R4 3 0
  DUPCLOSURE R4 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
