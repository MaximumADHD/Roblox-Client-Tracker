PROTO_0:
  DUPTABLE R2 K8 [{"idToAssetMap", "idsToRender", "isLoading", "currentCursor", "totalAssets", "assetsReceived", "hasReachedBottom", "manageableAssets"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["idToAssetMap"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["idsToRender"]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["isLoading"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createDefaultCursor"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K3 ["currentCursor"]
  LOADN R3 0
  SETTABLEKS R3 R2 K4 ["totalAssets"]
  LOADN R3 0
  SETTABLEKS R3 R2 K5 ["assetsReceived"]
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["hasReachedBottom"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K7 ["manageableAssets"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["PagedRequestCursor"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
