MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"isReactComponent", "trackMemberAccess", "getFileInfo", "getUsageGraph"}]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K0 ["isReactComponent"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["isReactComponent"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K1 ["trackMemberAccess"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["trackMemberAccess"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K2 ["getFileInfo"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["getFileInfo"]
  GETIMPORT R2 K6 [require]
  GETIMPORT R4 K8 [script]
  GETTABLEKS R3 R4 K9 ["UsageGraph"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["getUsageGraph"]
  SETTABLEKS R1 R0 K3 ["getUsageGraph"]
  RETURN R0 1
