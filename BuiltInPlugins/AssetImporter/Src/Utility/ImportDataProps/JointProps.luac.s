MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 1
  DUPTABLE R1 K2 [{"Section", "Properties"}]
  LOADK R2 K3 ["ObjectGeneral"]
  SETTABLEKS R2 R1 K0 ["Section"]
  NEWTABLE R2 0 1
  DUPTABLE R3 K6 [{"Name", "Editable"}]
  LOADK R4 K7 ["ImportName"]
  SETTABLEKS R4 R3 K4 ["Name"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["Editable"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K1 ["Properties"]
  SETLIST R0 R1 1 [1]
  RETURN R0 1
