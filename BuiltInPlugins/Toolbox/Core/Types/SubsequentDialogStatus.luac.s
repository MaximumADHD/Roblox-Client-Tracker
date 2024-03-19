MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Models"]
  GETTABLEKS R2 R3 K8 ["AssetInfo"]
  CALL R1 1 1
  DUPTABLE R2 K12 [{"PurchaseFailed", "PurchaseSuccess", "ExcessiveTransactions"}]
  LOADK R3 K9 ["PurchaseFailed"]
  SETTABLEKS R3 R2 K9 ["PurchaseFailed"]
  LOADK R3 K10 ["PurchaseSuccess"]
  SETTABLEKS R3 R2 K10 ["PurchaseSuccess"]
  LOADK R3 K11 ["ExcessiveTransactions"]
  SETTABLEKS R3 R2 K11 ["ExcessiveTransactions"]
  RETURN R2 1
