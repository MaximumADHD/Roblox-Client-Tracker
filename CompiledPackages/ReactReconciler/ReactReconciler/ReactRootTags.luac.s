MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"LegacyRoot", "BlockingRoot", "ConcurrentRoot"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["LegacyRoot"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["BlockingRoot"]
  LOADN R1 2
  SETTABLEKS R1 R0 K2 ["ConcurrentRoot"]
  RETURN R0 1
