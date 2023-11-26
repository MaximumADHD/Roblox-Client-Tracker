PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PlacesService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["StartPlaySolo"]
  CALL R0 1 0
  RETURN R0 0
  GETIMPORT R0 K2 [error]
  LOADK R1 K3 ["Calling startPlaySolo on unmocked PlacesService"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["StopPlaySolo"]
  CALL R0 1 0
  RETURN R0 0
  GETIMPORT R0 K2 [error]
  LOADK R1 K3 ["Calling stopPlaySolo on unmocked PlacesService"]
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
  GETIMPORT R2 K9 [pcall]
  DUPCLOSURE R3 K10 [PROTO_0]
  CALL R2 1 2
  DUPTABLE R4 K13 [{"startPlaySolo", "stopPlaySolo"}]
  DUPCLOSURE R5 K14 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K11 ["startPlaySolo"]
  DUPCLOSURE R5 K15 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K12 ["stopPlaySolo"]
  GETTABLEKS R5 R1 K16 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  RETURN R5 1
