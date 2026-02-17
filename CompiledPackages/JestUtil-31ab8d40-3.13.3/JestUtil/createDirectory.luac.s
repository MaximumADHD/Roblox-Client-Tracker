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
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R1 K5 ["LuauPolyfill"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K6 ["Error"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R0 K7 ["getFileSystemService"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R1 K8 ["JestTypes"]
  CALL R6 1 1
  DUPCLOSURE R7 K9 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R7 R2 K10 ["default"]
  RETURN R2 1
