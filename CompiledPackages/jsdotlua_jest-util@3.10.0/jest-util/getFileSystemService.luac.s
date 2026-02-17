PROTO_0:
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__MOCK_FILE_SYSTEM__"]
  JUMPIF R0 [+3]
  GETUPVAL R0 0
  LOADK R1 K3 ["FileSystemService"]
  CALL R0 1 1
  RETURN R0 1

PROTO_1:
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_0]
  CAPTURE UPVAL U0
  CALL R0 1 2
  JUMPIF R0 [+8]
  GETIMPORT R2 K4 [error]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["new"]
  LOADK R4 K6 ["Attempting to save snapshots in an environment where FileSystemService is inaccessible."]
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R1 1

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
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K8 ["jest-roblox-shared"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R3 R2 K9 ["getDataModelService"]
  DUPCLOSURE R4 K10 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
