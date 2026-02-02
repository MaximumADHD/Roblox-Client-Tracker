MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Otter"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["useAnimatedBinding"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K7 ["useMotor"]
  CALL R2 1 1
  DUPTABLE R3 K11 [{"useAnimatedBinding", "useMotor", "ease", "spring", "instant"}]
  SETTABLEKS R1 R3 K6 ["useAnimatedBinding"]
  SETTABLEKS R2 R3 K7 ["useMotor"]
  GETTABLEKS R4 R0 K8 ["ease"]
  SETTABLEKS R4 R3 K8 ["ease"]
  GETTABLEKS R4 R0 K9 ["spring"]
  SETTABLEKS R4 R3 K9 ["spring"]
  GETTABLEKS R4 R0 K10 ["instant"]
  SETTABLEKS R4 R3 K10 ["instant"]
  RETURN R3 1
