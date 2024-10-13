MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  LOADK R1 K0 [","]
  SETTABLEKS R1 R0 K1 ["de_DE"]
  LOADK R1 K2 ["."]
  SETTABLEKS R1 R0 K3 ["en_US"]
  NEWTABLE R1 2 0
  LOADK R2 K2 ["."]
  SETTABLEKS R2 R1 K1 ["de_DE"]
  LOADK R2 K0 [","]
  SETTABLEKS R2 R1 K3 ["en_US"]
  DUPTABLE R2 K6 [{"decimalDelimiterByLocale", "groupDelimiterByLocale"}]
  SETTABLEKS R0 R2 K4 ["decimalDelimiterByLocale"]
  SETTABLEKS R1 R2 K5 ["groupDelimiterByLocale"]
  RETURN R2 1
