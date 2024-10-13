PROTO_0:
  GETTABLEKS R2 R0 K0 ["item"]
  GETTABLEKS R1 R2 K1 ["source"]
  JUMPIFNOTEQKS R1 K2 ["builtin"] [+15]
  GETTABLEKS R2 R0 K3 ["palette"]
  GETTABLEKS R1 R2 K4 ["GetBuiltinItemData"]
  GETTABLEKS R3 R0 K0 ["item"]
  GETTABLEKS R2 R3 K5 ["builtinItem"]
  CALL R1 1 1
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K6 ["accessoryType"]
  RETURN R2 1
  GETTABLEKS R3 R0 K0 ["item"]
  GETTABLEKS R2 R3 K7 ["instance"]
  LOADK R4 K8 ["WrapLayer"]
  LOADB R5 1
  NAMECALL R2 R2 K9 ["FindFirstChildWhichIsA"]
  CALL R2 3 1
  JUMPIFNOTEQKNIL R2 [+3]
  LOADK R1 K10 ["rigid"]
  RETURN R1 1
  LOADK R1 K11 ["layered"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  RETURN R2 1
