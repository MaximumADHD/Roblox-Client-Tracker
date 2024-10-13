MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"GameName", "GameCreated", "LastUpdated", "Asc", "Desc"}]
  LOADK R1 K0 ["GameName"]
  SETTABLEKS R1 R0 K0 ["GameName"]
  LOADK R1 K1 ["GameCreated"]
  SETTABLEKS R1 R0 K1 ["GameCreated"]
  LOADK R1 K2 ["LastUpdated"]
  SETTABLEKS R1 R0 K2 ["LastUpdated"]
  LOADK R1 K3 ["Asc"]
  SETTABLEKS R1 R0 K3 ["Asc"]
  LOADK R1 K4 ["Desc"]
  SETTABLEKS R1 R0 K4 ["Desc"]
  RETURN R0 1
