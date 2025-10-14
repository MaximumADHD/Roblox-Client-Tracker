MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Plugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestorWhichIsA"]
  CALL R0 2 1
  DUPTABLE R1 K6 [{"context", "plugin_name"}]
  JUMPIFNOT R0 [+2]
  LOADK R2 K7 ["plugin"]
  JUMP [+1]
  LOADK R2 K8 ["unknown"]
  SETTABLEKS R2 R1 K4 ["context"]
  JUMPIFNOT R0 [+3]
  GETTABLEKS R2 R0 K9 ["Name"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K5 ["plugin_name"]
  RETURN R1 1
