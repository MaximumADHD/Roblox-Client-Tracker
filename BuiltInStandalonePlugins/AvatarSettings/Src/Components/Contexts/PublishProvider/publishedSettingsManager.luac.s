PROTO_0:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["primaryPreset"]
  CALL R0 0 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isInitialized"]
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADB R1 1
  RETURN R1 1
  GETTABLEKS R3 R0 K1 ["settings"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["Settings must not be nil in AvatarSettingsContext"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["settings"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["avatarType"]
  GETTABLEKS R6 R1 K6 ["navigationBarSettings"]
  GETTABLEKS R5 R6 K5 ["avatarType"]
  GETTABLEKS R4 R5 K7 ["value"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isInitialized"]
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADB R1 1
  RETURN R1 1
  GETTABLEKS R3 R0 K1 ["settings"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["Settings must not be nil in AvatarSettingsContext"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["settings"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["isAvatarTypeEqual"]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["isEqual"]
  GETTABLEKS R3 R1 K7 ["bodySettings"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["bodySettings"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K6 ["isEqual"]
  GETTABLEKS R3 R1 K8 ["movementSettings"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["movementSettings"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K6 ["isEqual"]
  GETTABLEKS R3 R1 K9 ["animationSettings"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["animationSettings"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K6 ["isEqual"]
  GETTABLEKS R3 R1 K10 ["accessoriesSettings"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K10 ["accessoriesSettings"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K6 ["isEqual"]
  GETTABLEKS R3 R1 K11 ["clothingSettings"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["clothingSettings"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isInitialized"]
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K1 ["settings"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["Settings must not be nil in AvatarSettingsContext"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["settings"]
  GETUPVAL R2 1
  GETTABLEKS R5 R1 K5 ["navigationBarSettings"]
  GETTABLEKS R4 R5 K6 ["avatarType"]
  GETTABLEKS R3 R4 K7 ["value"]
  SETTABLEKS R3 R2 K6 ["avatarType"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K8 ["setPublishedBodySetting"]
  GETTABLEKS R3 R1 K9 ["bodySettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["bodySettings"]
  CALL R2 2 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["setPublishedMovementSetting"]
  GETTABLEKS R3 R1 K11 ["movementSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["movementSettings"]
  CALL R2 2 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K12 ["setPublishedAnimationSetting"]
  GETTABLEKS R3 R1 K13 ["animationSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K13 ["animationSettings"]
  CALL R2 2 0
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K14 ["setPublishedAccessoriesSetting"]
  GETTABLEKS R3 R1 K15 ["accessoriesSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["accessoriesSettings"]
  CALL R2 2 0
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K16 ["setPublishedClothingSetting"]
  GETTABLEKS R3 R1 K17 ["clothingSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K17 ["clothingSettings"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isInitialized"]
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K1 ["settings"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["Settings must not be nil in AvatarSettingsContext"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["settings"]
  GETTABLEKS R4 R1 K5 ["navigationBarSettings"]
  GETTABLEKS R3 R4 K6 ["avatarType"]
  GETTABLEKS R2 R3 K7 ["set"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["avatarType"]
  CALL R2 1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K8 ["setUnpublishedBodySetting"]
  GETTABLEKS R3 R1 K9 ["bodySettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["bodySettings"]
  CALL R2 2 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["setUnpublishedMovementSetting"]
  GETTABLEKS R3 R1 K11 ["movementSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["movementSettings"]
  CALL R2 2 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K12 ["setUnpublishedAnimationSetting"]
  GETTABLEKS R3 R1 K13 ["animationSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K13 ["animationSettings"]
  CALL R2 2 0
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K14 ["setUnpublishedAccessoriesSetting"]
  GETTABLEKS R3 R1 K15 ["accessoriesSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["accessoriesSettings"]
  CALL R2 2 0
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K16 ["setUnpublishedClothingSetting"]
  GETTABLEKS R3 R1 K17 ["clothingSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K17 ["clothingSettings"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["Contexts"]
  GETTABLEKS R2 R3 K9 ["AvatarSettingsContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Components"]
  GETTABLEKS R5 R6 K8 ["Contexts"]
  GETTABLEKS R4 R5 K10 ["PublishProvider"]
  GETTABLEKS R3 R4 K11 ["PublishedSettingsTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Components"]
  GETTABLEKS R6 R7 K8 ["Contexts"]
  GETTABLEKS R5 R6 K10 ["PublishProvider"]
  GETTABLEKS R4 R5 K12 ["createPublishedSettings"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K7 ["Components"]
  GETTABLEKS R8 R9 K8 ["Contexts"]
  GETTABLEKS R7 R8 K10 ["PublishProvider"]
  GETTABLEKS R6 R7 K13 ["ConversionFunctions"]
  GETTABLEKS R5 R6 K14 ["publishedAccessoriesSettingUtil"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Components"]
  GETTABLEKS R9 R10 K8 ["Contexts"]
  GETTABLEKS R8 R9 K10 ["PublishProvider"]
  GETTABLEKS R7 R8 K13 ["ConversionFunctions"]
  GETTABLEKS R6 R7 K15 ["publishedAnimationSettingUtil"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K7 ["Components"]
  GETTABLEKS R10 R11 K8 ["Contexts"]
  GETTABLEKS R9 R10 K10 ["PublishProvider"]
  GETTABLEKS R8 R9 K13 ["ConversionFunctions"]
  GETTABLEKS R7 R8 K16 ["publishedBodySettingUtil"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K7 ["Components"]
  GETTABLEKS R11 R12 K8 ["Contexts"]
  GETTABLEKS R10 R11 K10 ["PublishProvider"]
  GETTABLEKS R9 R10 K13 ["ConversionFunctions"]
  GETTABLEKS R8 R9 K17 ["publishedClothingSettingUtil"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K7 ["Components"]
  GETTABLEKS R12 R13 K8 ["Contexts"]
  GETTABLEKS R11 R12 K10 ["PublishProvider"]
  GETTABLEKS R10 R11 K13 ["ConversionFunctions"]
  GETTABLEKS R9 R10 K18 ["publishedMovementSettingUtil"]
  CALL R8 1 1
  LOADNIL R9
  NEWTABLE R10 8 0
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K19 ["initialize"]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  SETTABLEKS R11 R10 K20 ["isInitialized"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R10
  CAPTURE REF R9
  SETTABLEKS R11 R10 K21 ["isAvatarTypeEqual"]
  NEWCLOSURE R11 P3
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE REF R9
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K22 ["isEqualToCurrentSettings"]
  NEWCLOSURE R11 P4
  CAPTURE VAL R10
  CAPTURE REF R9
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K23 ["saveUnpublishedSettings"]
  NEWCLOSURE R11 P5
  CAPTURE VAL R10
  CAPTURE REF R9
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K24 ["discardUnpublishedSettings"]
  CLOSEUPVALS R9
  RETURN R10 1
