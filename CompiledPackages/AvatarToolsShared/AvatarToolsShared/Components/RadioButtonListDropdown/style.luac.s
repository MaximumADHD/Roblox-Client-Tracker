MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"DropdownHeight", "DropdownWidth", "Spacing"}]
  LOADN R1 24
  SETTABLEKS R1 R0 K0 ["DropdownHeight"]
  LOADN R1 120
  SETTABLEKS R1 R0 K1 ["DropdownWidth"]
  LOADN R1 10
  SETTABLEKS R1 R0 K2 ["Spacing"]
  RETURN R0 1
