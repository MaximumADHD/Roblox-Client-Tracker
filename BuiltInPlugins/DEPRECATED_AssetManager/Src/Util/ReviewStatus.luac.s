MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Pending", "Finished", "DoesNotRequire"}]
  LOADK R1 K0 ["Pending"]
  SETTABLEKS R1 R0 K0 ["Pending"]
  LOADK R1 K1 ["Finished"]
  SETTABLEKS R1 R0 K1 ["Finished"]
  LOADK R1 K2 ["DoesNotRequire"]
  SETTABLEKS R1 R0 K2 ["DoesNotRequire"]
  RETURN R0 1
