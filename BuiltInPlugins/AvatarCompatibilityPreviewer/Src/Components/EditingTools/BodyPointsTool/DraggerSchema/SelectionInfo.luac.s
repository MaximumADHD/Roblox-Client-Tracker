PROTO_0:
  DUPTABLE R2 K1 [{"_draggerContext"}]
  SETTABLEKS R0 R2 K0 ["_draggerContext"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  LOADB R1 0
  RETURN R1 1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["_draggerContext"]
  GETTABLEKS R2 R3 K1 ["selectedPoints"]
  LENGTH R1 R2
  JUMPIFNOTEQKN R1 K2 [0] [+23]
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  GETTABLEKS R1 R2 K3 ["worldModel"]
  NAMECALL R1 R1 K4 ["GetPivot"]
  CALL R1 1 1
  MOVE R2 R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["fromObjects"]
  NEWTABLE R4 0 1
  GETTABLEKS R6 R0 K0 ["_draggerContext"]
  GETTABLEKS R5 R6 K3 ["worldModel"]
  SETLIST R4 R5 1 [1]
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R2 -1
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["getLocalBoundingBox is not supported"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R3 K2 [table.find]
  GETTABLEKS R4 R0 K3 ["_selection"]
  MOVE R5 R1
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_5:
  LOADB R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["DraggerFramework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Utility"]
  GETTABLEKS R2 R3 K9 ["BoundingBox"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["EditingTools"]
  GETTABLEKS R5 R6 K13 ["BodyPointsTool"]
  GETTABLEKS R4 R5 K14 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Components"]
  GETTABLEKS R7 R8 K12 ["EditingTools"]
  GETTABLEKS R6 R7 K13 ["BodyPointsTool"]
  GETTABLEKS R5 R6 K15 ["getBoundingBox"]
  CALL R4 1 1
  NEWTABLE R5 8 0
  SETTABLEKS R5 R5 K16 ["__index"]
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K18 ["new"]
  DUPCLOSURE R6 K19 [PROTO_1]
  SETTABLEKS R6 R5 K20 ["isEmpty"]
  DUPCLOSURE R6 K21 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K15 ["getBoundingBox"]
  DUPCLOSURE R6 K22 [PROTO_3]
  SETTABLEKS R6 R5 K23 ["getLocalBoundingBox"]
  DUPCLOSURE R6 K24 [PROTO_4]
  SETTABLEKS R6 R5 K25 ["doesContainItem"]
  DUPCLOSURE R6 K26 [PROTO_5]
  SETTABLEKS R6 R5 K27 ["isDynamic"]
  RETURN R5 1
