PROTO_0:
  DUPTABLE R1 K3 [{"children", "parent", "datum"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["empty"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K0 ["children"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["parent"]
  SETTABLEKS R0 R1 K2 ["datum"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["ExplorerNodeChildrenMutable"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K8 ["RpcTypes"]
  CALL R2 1 1
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K9 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K10 ["createFromDatum"]
  RETURN R3 1
