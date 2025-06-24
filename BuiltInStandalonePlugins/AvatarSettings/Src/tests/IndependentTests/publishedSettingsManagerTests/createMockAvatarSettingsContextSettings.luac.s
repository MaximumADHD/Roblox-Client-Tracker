PROTO_0:
  PREPVARARGS 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R0 K1 [{"settings"}]
  DUPTABLE R1 K12 [{"workspaceGravity", "navigationBarSettings", "categoryListExpanded", "currentSettingsPage", "setCurrentSettingsPage", "bodySettings", "movementSettings", "animationSettings", "accessoriesSettings", "clothingSettings"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["mockUseSetting"]
  LOADN R3 1
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["workspaceGravity"]
  DUPTABLE R2 K18 [{"avatarType", "setAvatarPreset", "previewToggled", "setPreviewToggled"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["mockUseSetting"]
  GETIMPORT R4 K22 [Enum.GameAvatarType.R15]
  CALL R3 1 1
  SETTABLEKS R3 R2 K14 ["avatarType"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K15 ["setAvatarPreset"]
  LOADB R3 0
  SETTABLEKS R3 R2 K16 ["previewToggled"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K17 ["setPreviewToggled"]
  SETTABLEKS R2 R1 K3 ["navigationBarSettings"]
  DUPTABLE R2 K27 [{"enabled", "enable", "disable", "toggle"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K23 ["enabled"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K24 ["enable"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K25 ["disable"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K26 ["toggle"]
  SETTABLEKS R2 R1 K4 ["categoryListExpanded"]
  LOADK R2 K28 ["General"]
  SETTABLEKS R2 R1 K5 ["currentSettingsPage"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K6 ["setCurrentSettingsPage"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K29 ["primaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K7 ["bodySettings"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K29 ["primaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K8 ["movementSettings"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K29 ["primaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K9 ["animationSettings"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K29 ["primaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K10 ["accessoriesSettings"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K29 ["primaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K11 ["clothingSettings"]
  SETTABLEKS R1 R0 K0 ["settings"]
  RETURN R0 1

PROTO_2:
  DUPTABLE R0 K1 [{"settings"}]
  DUPTABLE R1 K12 [{"workspaceGravity", "navigationBarSettings", "categoryListExpanded", "currentSettingsPage", "setCurrentSettingsPage", "bodySettings", "movementSettings", "animationSettings", "accessoriesSettings", "clothingSettings"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["mockUseSetting"]
  LOADN R3 2
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["workspaceGravity"]
  DUPTABLE R2 K18 [{"avatarType", "setAvatarPreset", "previewToggled", "setPreviewToggled"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["mockUseSetting"]
  GETIMPORT R4 K22 [Enum.GameAvatarType.R6]
  CALL R3 1 1
  SETTABLEKS R3 R2 K14 ["avatarType"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K15 ["setAvatarPreset"]
  LOADB R3 1
  SETTABLEKS R3 R2 K16 ["previewToggled"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K17 ["setPreviewToggled"]
  SETTABLEKS R2 R1 K3 ["navigationBarSettings"]
  DUPTABLE R2 K27 [{"enabled", "enable", "disable", "toggle"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K23 ["enabled"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K24 ["enable"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K25 ["disable"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K26 ["toggle"]
  SETTABLEKS R2 R1 K4 ["categoryListExpanded"]
  LOADK R2 K28 ["Body"]
  SETTABLEKS R2 R1 K5 ["currentSettingsPage"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K6 ["setCurrentSettingsPage"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K29 ["secondaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K7 ["bodySettings"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K29 ["secondaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K8 ["movementSettings"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K29 ["secondaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K9 ["animationSettings"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K29 ["secondaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K10 ["accessoriesSettings"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K29 ["secondaryPreset"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K11 ["clothingSettings"]
  SETTABLEKS R1 R0 K0 ["settings"]
  RETURN R0 1

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
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["AvatarSettingsProviderTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K13 ["createMockAccessoriesSettings"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K14 ["createMockAnimationSettings"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K15 ["createMockBodySettings"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K12 ["Parent"]
  GETTABLEKS R7 R8 K16 ["createMockClothingSettings"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K12 ["Parent"]
  GETTABLEKS R8 R9 K17 ["createMockMovementSettings"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K18 ["tests"]
  GETTABLEKS R10 R11 K10 ["Util"]
  GETTABLEKS R9 R10 K19 ["mockUseSetting"]
  CALL R8 1 1
  NEWTABLE R9 2 0
  DUPCLOSURE R10 K20 [PROTO_0]
  DUPCLOSURE R11 K21 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R11 R9 K22 ["primaryPreset"]
  DUPCLOSURE R11 K23 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R11 R9 K24 ["secondaryPreset"]
  RETURN R9 1
