PROTO_0:
  GETTABLEN R2 R1 1
  JUMPIFNOT R2 [+17]
  LOADK R5 K0 ["PVInstance"]
  NAMECALL R3 R2 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+12]
  DUPTABLE R3 K5 [{"_primaryObject", "_isEmpty", "_basisCFrame"}]
  SETTABLEKS R2 R3 K2 ["_primaryObject"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["_isEmpty"]
  NAMECALL R4 R2 K6 ["GetPivot"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["_basisCFrame"]
  RETURN R3 1
  DUPTABLE R3 K5 [{"_primaryObject", "_isEmpty", "_basisCFrame"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["_primaryObject"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["_isEmpty"]
  GETIMPORT R4 K9 [CFrame.new]
  CALL R4 0 1
  SETTABLEKS R4 R3 K4 ["_basisCFrame"]
  RETURN R3 1

PROTO_1:
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K1 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_isEmpty"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_basisCFrame"]
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K3 [Vector3.new]
  CALL R2 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K3 [Vector3.new]
  CALL R3 0 1
  RETURN R1 3

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_primaryObject"]
  GETTABLEKS R4 R0 K1 ["_isEmpty"]
  NOT R3 R4
  JUMPIFNOT R3 [+8]
  LOADB R3 1
  JUMPIFEQ R1 R2 [+6]
  GETTABLEKS R5 R0 K0 ["_primaryObject"]
  NAMECALL R3 R1 K2 ["IsDescendantOf"]
  CALL R3 2 1
  RETURN R3 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_primaryObject"]
  RETURN R1 1

PROTO_6:
  LOADB R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  DUPCLOSURE R1 K3 [PROTO_0]
  NEWTABLE R2 8 0
  SETTABLEKS R2 R2 K4 ["__index"]
  DUPCLOSURE R3 K5 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K6 ["new"]
  DUPCLOSURE R3 K7 [PROTO_2]
  SETTABLEKS R3 R2 K8 ["isEmpty"]
  DUPCLOSURE R3 K9 [PROTO_3]
  SETTABLEKS R3 R2 K10 ["getBoundingBox"]
  DUPCLOSURE R3 K11 [PROTO_4]
  SETTABLEKS R3 R2 K12 ["doesContainItem"]
  DUPCLOSURE R3 K13 [PROTO_5]
  SETTABLEKS R3 R2 K14 ["getPrimaryObject"]
  DUPCLOSURE R3 K15 [PROTO_6]
  SETTABLEKS R3 R2 K16 ["isDynamic"]
  RETURN R2 1
