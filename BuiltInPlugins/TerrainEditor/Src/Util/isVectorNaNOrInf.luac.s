PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["Vector3"] [+48]
  GETTABLEKS R1 R0 K3 ["X"]
  GETTABLEKS R2 R0 K3 ["X"]
  JUMPIFNOTEQ R1 R2 [+13]
  GETTABLEKS R1 R0 K4 ["Y"]
  GETTABLEKS R2 R0 K4 ["Y"]
  JUMPIFNOTEQ R1 R2 [+7]
  GETTABLEKS R1 R0 K5 ["Z"]
  GETTABLEKS R2 R0 K5 ["Z"]
  JUMPIFEQ R1 R2 [+3]
  LOADB R1 1
  RETURN R1 1
  GETTABLEKS R1 R0 K3 ["X"]
  JUMPIFEQKN R1 K6 [∞] [+21]
  GETTABLEKS R1 R0 K3 ["X"]
  JUMPIFEQKN R1 K7 [-∞] [+17]
  GETTABLEKS R1 R0 K4 ["Y"]
  JUMPIFEQKN R1 K6 [∞] [+13]
  GETTABLEKS R1 R0 K4 ["Y"]
  JUMPIFEQKN R1 K7 [-∞] [+9]
  GETTABLEKS R1 R0 K5 ["Z"]
  JUMPIFEQKN R1 K6 [∞] [+5]
  GETTABLEKS R1 R0 K5 ["Z"]
  JUMPIFNOTEQKN R1 K7 [-∞] [+43]
  LOADB R1 1
  RETURN R1 1
  JUMP [+39]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K8 ["Vector2"] [+33]
  GETTABLEKS R1 R0 K3 ["X"]
  GETTABLEKS R2 R0 K3 ["X"]
  JUMPIFNOTEQ R1 R2 [+7]
  GETTABLEKS R1 R0 K4 ["Y"]
  GETTABLEKS R2 R0 K4 ["Y"]
  JUMPIFEQ R1 R2 [+3]
  LOADB R1 1
  RETURN R1 1
  GETTABLEKS R1 R0 K3 ["X"]
  JUMPIFEQKN R1 K6 [∞] [+13]
  GETTABLEKS R1 R0 K3 ["X"]
  JUMPIFEQKN R1 K7 [-∞] [+9]
  GETTABLEKS R1 R0 K4 ["Y"]
  JUMPIFEQKN R1 K6 [∞] [+5]
  GETTABLEKS R1 R0 K4 ["Y"]
  JUMPIFNOTEQKN R1 K7 [-∞] [+3]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  RETURN R1 1
