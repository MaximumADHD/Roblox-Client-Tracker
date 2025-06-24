PROTO_0:
  LOADNIL R0
  RETURN R0 1

PROTO_1:
  DUPTABLE R1 K2 [{"default", "getUnsavedChangesDialog"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["default"]
  DUPCLOSURE R2 K3 [PROTO_0]
  SETTABLEKS R2 R1 K1 ["getUnsavedChangesDialog"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Provider"]
  DUPTABLE R4 K6 [{"value"}]
  SETTABLEKS R1 R4 K5 ["value"]
  GETTABLEKS R5 R0 K7 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["Contexts"]
  GETTABLEKS R3 R4 K11 ["UnsavedChangesDialogContext"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K12 ["createElement"]
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
