PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarEditorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["GetBatchItemDetailsAsync"]
  CALL R2 3 -1
  RETURN R2 -1
  GETIMPORT R2 K2 [error]
  LOADK R3 K3 ["Calling GetBatchItemDetailsAsync on unmocked AvatarEditorService"]
  CALL R2 1 0
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
  GETIMPORT R3 K11 [pcall]
  DUPCLOSURE R4 K12 [PROTO_0]
  CALL R3 1 2
  DUPTABLE R5 K14 [{"getBatchItemDetailsAsync"}]
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K13 ["getBatchItemDetailsAsync"]
  GETTABLEKS R6 R1 K16 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  RETURN R6 1
