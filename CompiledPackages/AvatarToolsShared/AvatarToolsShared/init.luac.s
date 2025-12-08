MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"Components", "Contexts", "Flags", "Resources", "Util", "StyleRoot"}]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K0 ["Components"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["Components"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K1 ["Contexts"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Contexts"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K2 ["Flags"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["Flags"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K3 ["Resources"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Resources"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K4 ["Util"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["Util"]
  GETIMPORT R2 K10 [script]
  GETTABLEKS R1 R2 K0 ["Components"]
  SETTABLEKS R1 R0 K5 ["StyleRoot"]
  RETURN R0 1
