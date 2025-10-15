MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  DUPTABLE R1 K5 [{"expect", "RobloxInstance", "dedent"}]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R0 K2 ["expect"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["expect"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R0 K3 ["RobloxInstance"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["RobloxInstance"]
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R0 K4 ["dedent"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K4 ["dedent"]
  SETTABLEKS R2 R1 K4 ["dedent"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R0 K8 ["Writeable"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["Writeable"]
  SETTABLEKS R3 R1 K8 ["Writeable"]
  RETURN R1 1
