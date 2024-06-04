MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"ScriptLinkCell", "StatusCell", "DropdownCell"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["ScriptLinkCell"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["ScriptLinkCell"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["StatusCell"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["StatusCell"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["DropdownCell"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["DropdownCell"]
  RETURN R0 1
