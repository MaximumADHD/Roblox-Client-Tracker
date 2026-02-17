PROTO_0:
  GETTABLEKS R2 R0 K0 ["HorizontalItems"]
  JUMPIFNOTEQKNIL R2 [+3]
  LOADK R1 K1 ["Vertical"]
  RETURN R1 1
  LOADK R1 K2 ["Horizontal"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ViewportToolingFramework"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  RETURN R2 1
