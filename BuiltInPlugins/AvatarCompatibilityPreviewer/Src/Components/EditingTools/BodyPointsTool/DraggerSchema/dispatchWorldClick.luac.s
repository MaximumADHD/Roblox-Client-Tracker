PROTO_0:
  GETTABLEKS R4 R0 K0 ["hoveredPointNames"]
  LENGTH R3 R4
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+6]
  GETTABLEKS R3 R0 K1 ["showAttachmentSelectionDropdown"]
  CALL R3 0 0
  LOADK R3 K2 ["Ready"]
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["dispatchWorldClick"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["DraggerSchemaTemplate"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["DraggerSchema"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["EditingTools"]
  GETTABLEKS R5 R6 K12 ["BodyPointsTool"]
  GETTABLEKS R4 R5 K13 ["Types"]
  CALL R3 1 1
  DUPCLOSURE R4 K14 [PROTO_0]
  CAPTURE VAL R2
  RETURN R4 1
