PROTO_0:
  JUMPIFNOTEQKS R0 K0 ["CreatorContextAsset"] [+8]
  LOADK R4 K1 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
  MOVE R6 R1
  NAMECALL R4 R4 K2 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  RETURN R3 1
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Foundation"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Utility"]
  GETTABLEKS R3 R4 K9 ["getRbxThumb"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R3
  RETURN R4 1
