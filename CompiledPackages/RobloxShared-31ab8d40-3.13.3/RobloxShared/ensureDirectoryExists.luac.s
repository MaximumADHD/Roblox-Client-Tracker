PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+11]
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["Exists"]
  CALL R0 2 1
  JUMPIF R0 [+5]
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K1 ["CreateDirectories"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  LOADN R3 1
  CALL R1 2 1
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIF R2 [+13]
  LOADK R6 K2 ["Error%(13%): Access Denied%. Path is outside of sandbox%."]
  NAMECALL R4 R3 K3 ["find"]
  CALL R4 2 1
  JUMPIFNOT R4 [+8]
  GETIMPORT R4 K5 [error]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["new"]
  LOADK R6 K7 ["Provided path is invalid: you likely need to provide a different argument to --fs.readwrite.
You may need to pass in `--fs.readwrite=$PWD`"]
  CALL R5 1 -1
  CALL R4 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Error"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K7 ["getParent"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K8 ["getDataModelService"]
  CALL R4 1 1
  MOVE R5 R4
  LOADK R6 K9 ["FileSystemService"]
  CALL R5 1 1
  DUPCLOSURE R6 K10 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R6 1
