MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["HttpVariantClientTransport"]
  CALL R0 1 1
  DUPTABLE R1 K5 [{"HttpVariantClientTransport"}]
  SETTABLEKS R0 R1 K4 ["HttpVariantClientTransport"]
  RETURN R1 1
