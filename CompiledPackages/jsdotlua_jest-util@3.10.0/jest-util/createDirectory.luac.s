PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["CreateDirectories"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 3
  JUMPIF R2 [+21]
  LOADK R7 K2 ["Error%(13%): Access Denied%. Path is outside of sandbox%."]
  NAMECALL R5 R3 K3 ["find"]
  CALL R5 2 1
  JUMPIFNOT R5 [+8]
  GETIMPORT R5 K5 [error]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["new"]
  LOADK R7 K7 ["Provided path is invalid: you likely need to provide a different argument to --fs.readwrite.
You may need to pass in `--fs.readwrite=$PWD`"]
  CALL R6 1 -1
  CALL R5 -1 0
  GETTABLEKS R5 R3 K8 ["code"]
  JUMPIFEQKS R5 K9 ["EEXIST"] [+5]
  GETIMPORT R5 K5 [error]
  MOVE R6 R3
  CALL R5 1 0
  JUMPIFNOT R4 [+1]
  RETURN R3 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["luau-polyfill"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R2 R1 K7 ["Error"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K8 ["getFileSystemService"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K9 ["jest-types"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  DUPCLOSURE R5 K10 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R5 R0 K11 ["default"]
  RETURN R0 1
