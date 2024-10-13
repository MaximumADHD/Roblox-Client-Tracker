MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"Unsaved", "Pending", "Saving", "SaveFailed", "Saved"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["Unsaved"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["Pending"]
  LOADN R1 2
  SETTABLEKS R1 R0 K2 ["Saving"]
  LOADN R1 3
  SETTABLEKS R1 R0 K3 ["SaveFailed"]
  LOADN R1 4
  SETTABLEKS R1 R0 K4 ["Saved"]
  RETURN R0 1
