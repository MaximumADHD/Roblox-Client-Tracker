MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"canDragInsertAsset"}]
  GETIMPORT R1 K3 [require]
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K0 ["canDragInsertAsset"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["canDragInsertAsset"]
  RETURN R0 1
