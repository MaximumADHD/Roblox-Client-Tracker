PROTO_0:
  DUPTABLE R0 K6 [{"avatarType", "bodySettings", "movementSettings", "animationSettings", "accessoriesSettings", "clothingSettings"}]
  GETIMPORT R1 K10 [Enum.GameAvatarType.R15]
  SETTABLEKS R1 R0 K0 ["avatarType"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["primaryPreset"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["bodySettings"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K11 ["primaryPreset"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["movementSettings"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K11 ["primaryPreset"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["animationSettings"]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K11 ["primaryPreset"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["accessoriesSettings"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K11 ["primaryPreset"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["clothingSettings"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["Contexts"]
  GETTABLEKS R3 R4 K9 ["PublishProvider"]
  GETTABLEKS R2 R3 K10 ["PublishedSettingsTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Components"]
  GETTABLEKS R6 R7 K8 ["Contexts"]
  GETTABLEKS R5 R6 K9 ["PublishProvider"]
  GETTABLEKS R4 R5 K11 ["createPublishedSettings"]
  GETTABLEKS R3 R4 K12 ["createPublishedAccessoriesSettings"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K7 ["Components"]
  GETTABLEKS R7 R8 K8 ["Contexts"]
  GETTABLEKS R6 R7 K9 ["PublishProvider"]
  GETTABLEKS R5 R6 K11 ["createPublishedSettings"]
  GETTABLEKS R4 R5 K13 ["createPublishedAnimationSettings"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K7 ["Components"]
  GETTABLEKS R8 R9 K8 ["Contexts"]
  GETTABLEKS R7 R8 K9 ["PublishProvider"]
  GETTABLEKS R6 R7 K11 ["createPublishedSettings"]
  GETTABLEKS R5 R6 K14 ["createPublishedBodySettings"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Components"]
  GETTABLEKS R9 R10 K8 ["Contexts"]
  GETTABLEKS R8 R9 K9 ["PublishProvider"]
  GETTABLEKS R7 R8 K11 ["createPublishedSettings"]
  GETTABLEKS R6 R7 K15 ["createPublishedClothingSettings"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K7 ["Components"]
  GETTABLEKS R10 R11 K8 ["Contexts"]
  GETTABLEKS R9 R10 K9 ["PublishProvider"]
  GETTABLEKS R8 R9 K11 ["createPublishedSettings"]
  GETTABLEKS R7 R8 K16 ["createPublishedMovementSettings"]
  CALL R6 1 1
  NEWTABLE R7 1 0
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K18 ["primaryPreset"]
  RETURN R7 1
