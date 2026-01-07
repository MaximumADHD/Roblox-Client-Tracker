PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["FoundationFixUseScaledValueWarning"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R5 R1 K1 ["Config"]
  GETTABLEKS R4 R5 K2 ["UI"]
  GETTABLEKS R3 R4 K3 ["Scale"]
  MUL R2 R0 R3
  JUMP [+1]
  MOVE R2 R0
  GETTABLEKS R4 R1 K4 ["Size"]
  GETTABLEKS R3 R4 K5 ["Size_3000"]
  JUMPIFNOTLE R2 R3 [+8]
  GETUPVAL R3 2
  LOADK R6 K6 ["useScaledValue should be used for values larger than Size tokens. "]
  LOADK R7 K7 ["For smaller values, please align to a Size or derivative token."]
  CONCAT R5 R6 R7
  NAMECALL R3 R3 K8 ["warning"]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["FoundationFixUseScaledValueWarning"]
  JUMPIFNOT R3 [+1]
  RETURN R2 1
  GETTABLEKS R6 R1 K1 ["Config"]
  GETTABLEKS R5 R6 K2 ["UI"]
  GETTABLEKS R4 R5 K3 ["Scale"]
  MUL R3 R0 R4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["Flags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Utility"]
  GETTABLEKS R3 R4 K8 ["Logger"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Providers"]
  GETTABLEKS R5 R6 K10 ["Style"]
  GETTABLEKS R4 R5 K11 ["useTokens"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R4 1
