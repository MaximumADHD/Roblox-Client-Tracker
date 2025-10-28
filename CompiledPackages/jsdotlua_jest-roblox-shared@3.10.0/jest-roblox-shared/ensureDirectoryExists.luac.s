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
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K7 ["Error"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K8 ["getParent"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K9 ["getDataModelService"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  MOVE R4 R3
  LOADK R5 K10 ["FileSystemService"]
  CALL R4 1 1
  DUPCLOSURE R5 K11 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R5 1
