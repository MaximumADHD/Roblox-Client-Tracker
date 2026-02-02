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
  JUMPIF R2 [+17]
  LOADK R7 K2 ["Error%(13%): Access Denied%. Path is outside of sandbox%."]
  NAMECALL R5 R3 K3 ["find"]
  CALL R5 2 1
  JUMPIFNOT R5 [+4]
  GETIMPORT R5 K5 [error]
  LOADK R6 K6 ["Provided path is invalid: you likely need to provide a different argument to --fs.readwrite.
You may need to pass in `--fs.readwrite=$PWD`"]
  CALL R5 1 0
  GETTABLEKS R5 R3 K7 ["code"]
  JUMPIFEQKS R5 K8 ["EEXIST"] [+5]
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
  GETTABLEKS R4 R0 K5 ["getFileSystemService"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R1 K6 ["JestTypes"]
  CALL R4 1 1
  DUPCLOSURE R5 K7 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R5 R2 K8 ["default"]
  RETURN R2 1
