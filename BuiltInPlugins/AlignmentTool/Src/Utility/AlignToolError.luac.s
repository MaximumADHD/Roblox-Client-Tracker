PROTO_0:
  LOADK R5 K0 ["ErrorMessages"]
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R0 K1 ["getText"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"InvalidActiveObject"}]
  LOADK R1 K0 ["InvalidActiveObject"]
  SETTABLEKS R1 R0 K0 ["InvalidActiveObject"]
  DUPCLOSURE R1 K2 [PROTO_0]
  SETTABLEKS R1 R0 K3 ["getErrorText"]
  RETURN R0 1
