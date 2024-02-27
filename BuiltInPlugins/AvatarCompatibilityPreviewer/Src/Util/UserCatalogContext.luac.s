PROTO_0:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["Calling default addNewItem"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Calling default removeItem"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  DUPTABLE R3 K13 [{"equippableItems", "addNewItem", "removeItem"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K10 ["equippableItems"]
  DUPCLOSURE R4 K14 [PROTO_0]
  SETTABLEKS R4 R3 K11 ["addNewItem"]
  DUPCLOSURE R4 K15 [PROTO_1]
  SETTABLEKS R4 R3 K12 ["removeItem"]
  GETTABLEKS R4 R1 K16 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  RETURN R4 1
