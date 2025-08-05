PROTO_0:
  LOADK R3 K0 ["RBX_AutoSetupped"]
  NAMECALL R1 R0 K1 ["GetAttribute"]
  CALL R1 2 1
  JUMPIFNOTEQKB R1 TRUE [+6]
  LOADK R3 K2 ["RBX_ImportMethod"]
  LOADN R4 2
  NAMECALL R1 R0 K3 ["SetAttribute"]
  CALL R1 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  DUPCLOSURE R1 K3 [PROTO_0]
  SETGLOBAL R1 K4 ["parseAutoSetupAttributes"]
  GETGLOBAL R1 K4 ["parseAutoSetupAttributes"]
  RETURN R1 1
