PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R3 R1 K0 ["Size"]
  GETTABLEKS R2 R3 K1 ["Size_3000"]
  JUMPIFNOTLE R0 R2 [+8]
  GETUPVAL R2 1
  LOADK R5 K2 ["useScaledValue should be used for values larger than Size tokens. "]
  LOADK R6 K3 ["For smaller values, please align to a Size or derivative token."]
  CONCAT R4 R5 R6
  NAMECALL R2 R2 K4 ["warning"]
  CALL R2 2 0
  GETTABLEKS R5 R1 K5 ["Config"]
  GETTABLEKS R4 R5 K6 ["UI"]
  GETTABLEKS R3 R4 K7 ["Scale"]
  MUL R2 R0 R3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["Logger"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Providers"]
  GETTABLEKS R4 R5 K9 ["Style"]
  GETTABLEKS R3 R4 K10 ["useTokens"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
