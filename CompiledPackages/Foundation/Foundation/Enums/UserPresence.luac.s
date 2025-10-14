MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"None", "Active", "Away", "InExperience"}]
  LOADK R1 K0 ["None"]
  SETTABLEKS R1 R0 K0 ["None"]
  LOADK R1 K1 ["Active"]
  SETTABLEKS R1 R0 K1 ["Active"]
  LOADK R1 K2 ["Away"]
  SETTABLEKS R1 R0 K2 ["Away"]
  LOADK R1 K3 ["InExperience"]
  SETTABLEKS R1 R0 K3 ["InExperience"]
  RETURN R0 1
