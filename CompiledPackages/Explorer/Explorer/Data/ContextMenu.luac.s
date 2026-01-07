MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["coreItems"]
  GETTABLEKS R1 R0 K0 ["coreItems"]
  LOADK R2 K1 ["collapseAll"]
  SETTABLEKS R2 R1 K1 ["collapseAll"]
  GETTABLEKS R1 R0 K0 ["coreItems"]
  LOADK R2 K2 ["expandAll"]
  SETTABLEKS R2 R1 K2 ["expandAll"]
  GETTABLEKS R1 R0 K0 ["coreItems"]
  LOADK R2 K3 ["rename"]
  SETTABLEKS R2 R1 K3 ["rename"]
  RETURN R0 1
