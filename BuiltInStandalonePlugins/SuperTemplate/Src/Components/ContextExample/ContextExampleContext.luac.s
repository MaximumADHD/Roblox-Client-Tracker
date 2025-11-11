PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Provider"]
  DUPTABLE R3 K3 [{"value"}]
  LOADK R4 K4 ["woof I'm a dog"]
  SETTABLEKS R4 R3 K2 ["value"]
  GETTABLEKS R4 R0 K5 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Provider"]
  DUPTABLE R3 K3 [{"value"}]
  LOADK R4 K4 ["meow meow I'm a cat"]
  SETTABLEKS R4 R3 K2 ["value"]
  GETTABLEKS R4 R0 K5 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SuperTemplate"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createContext"]
  LOADNIL R3
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R4 K10 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPTABLE R5 K14 [{"Context", "Provider", "MockProvider"}]
  SETTABLEKS R2 R5 K11 ["Context"]
  SETTABLEKS R3 R5 K12 ["Provider"]
  SETTABLEKS R4 R5 K13 ["MockProvider"]
  RETURN R5 1
