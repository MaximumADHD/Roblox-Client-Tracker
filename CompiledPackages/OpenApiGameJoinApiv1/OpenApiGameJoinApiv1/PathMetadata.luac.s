MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K2 [table.freeze]
  DUPTABLE R1 K5 [{"host", "pathPrefix"}]
  LOADK R2 K6 ["gamejoin"]
  SETTABLEKS R2 R1 K3 ["host"]
  LOADK R2 K7 [""]
  SETTABLEKS R2 R1 K4 ["pathPrefix"]
  CALL R0 1 -1
  RETURN R0 -1
