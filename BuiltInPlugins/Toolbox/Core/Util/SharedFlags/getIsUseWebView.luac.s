PROTO_0:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["ToolboxEnableWebView"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  MOVE R2 R0
  LOADK R3 K4 ["StoreWebViews"]
  LOADK R4 K5 ["StoreWebViewsEnabled"]
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
  GETIMPORT R3 K10 [game]
  LOADK R5 K11 ["ToolboxEnableWebView"]
  LOADB R6 0
  NAMECALL R3 R3 K12 ["DefineFastFlag"]
  CALL R3 3 0
  DUPCLOSURE R3 K13 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
