PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarPreviewerContextualAccessoryDropdowns"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+9]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["UGCValidationLayeredAndRigidLists"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarPreviewerContextualAccessoryDropdowns"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["UGCValidationLayeredAndRigidLists"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K9 ["Parent"]
  GETTABLEKS R1 R2 K10 ["getFFlagAvatarPreviewerLayeredOrRigidClothingSubtitle"]
  CALL R0 1 1
  DUPCLOSURE R1 K11 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
