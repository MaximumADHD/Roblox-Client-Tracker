PROTO_0:
  DUPTABLE R3 K3 [{"configs", "globalConfig", "version"}]
  SETTABLEKS R1 R3 K0 ["configs"]
  SETTABLEKS R0 R3 K1 ["globalConfig"]
  LOADK R4 K4 ["27.4.7"]
  SETTABLEKS R4 R3 K2 ["version"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["stringify"]
  MOVE R10 R3
  LOADNIL R11
  LOADK R12 K6 ["  "]
  CALL R9 3 1
  MOVE R7 R9
  LOADK R8 K7 ["
"]
  CONCAT R6 R7 R8
  NAMECALL R4 R2 K8 ["write"]
  CALL R4 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  NEWTABLE R1 1 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K7 ["jest-types"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K8 ["jest-roblox-shared"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETTABLEKS R4 R3 K9 ["nodeUtils"]
  GETTABLEKS R5 R4 K10 ["JSON"]
  DUPCLOSURE R6 K11 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R6 R1 K12 ["default"]
  RETURN R1 1
