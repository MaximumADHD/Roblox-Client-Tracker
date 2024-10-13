PROTO_0:
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  SETUPVAL R1 0
  DUPTABLE R2 K1 [{"Disconnect"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K0 ["Disconnect"]
  RETURN R2 1

PROTO_2:
  PREPVARARGS 0
  GETUPVAL R0 0
  JUMPIFNOT R0 [+3]
  GETUPVAL R0 0
  GETVARARGS R1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  LOADNIL R0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["fn"]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["fn"]
  NEWCLOSURE R3 P1
  CAPTURE REF R0
  CAPTURE VAL R1
  CALL R2 1 1
  DUPTABLE R3 K4 [{"Connect", "MockDisconnect", "MockFire"}]
  SETTABLEKS R2 R3 K1 ["Connect"]
  SETTABLEKS R1 R3 K2 ["MockDisconnect"]
  NEWCLOSURE R4 P2
  CAPTURE REF R0
  SETTABLEKS R4 R3 K3 ["MockFire"]
  CLOSEUPVALS R0
  RETURN R3 1

PROTO_4:
  NEWTABLE R0 4 0
  GETUPVAL R1 0
  CALL R1 0 1
  SETTABLEKS R1 R0 K0 ["ShowShareDialog"]
  GETUPVAL R1 0
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["NewInaccessibleAsset"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["fn"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["GetAssetMetadataAsync"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["fn"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["ShareAccessToInaccessibleAssetsAsync"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetAccess"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dev"]
  GETTABLEKS R2 R3 K8 ["JestGlobals"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K11 ["jest"]
  DUPCLOSURE R4 K12 [PROTO_3]
  CAPTURE VAL R3
  DUPCLOSURE R5 K13 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
