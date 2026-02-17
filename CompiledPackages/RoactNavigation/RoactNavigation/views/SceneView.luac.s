PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["screenProps"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["component"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["navigation"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Provider"]
  DUPTABLE R6 K6 [{"navigation"}]
  SETTABLEKS R3 R6 K3 ["navigation"]
  DUPTABLE R7 K8 [{"Scene"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  MOVE R9 R2
  DUPTABLE R10 K9 [{"screenProps", "navigation"}]
  SETTABLEKS R1 R10 K1 ["screenProps"]
  SETTABLEKS R3 R10 K3 ["navigation"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Scene"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Roact"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["AppNavigationContext"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K7 ["PureComponent"]
  LOADK R4 K8 ["SceneView"]
  NAMECALL R2 R2 K9 ["extend"]
  CALL R2 2 1
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K11 ["render"]
  RETURN R2 1
