MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Invalid", "Success", "AlreadyOwned"}]
  LOADK R1 K0 ["Invalid"]
  SETTABLEKS R1 R0 K0 ["Invalid"]
  LOADK R1 K1 ["Success"]
  SETTABLEKS R1 R0 K1 ["Success"]
  LOADK R1 K2 ["AlreadyOwned"]
  SETTABLEKS R1 R0 K2 ["AlreadyOwned"]
  RETURN R0 1
