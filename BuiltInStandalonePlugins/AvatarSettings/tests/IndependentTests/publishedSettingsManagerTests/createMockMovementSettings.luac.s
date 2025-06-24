PROTO_0:
  DUPTABLE R0 K4 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["mockUseSetting"]
  GETIMPORT R2 K9 [Enum.AvatarSettingsCollisionMode.Default]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["collisionSetting"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["mockUseSetting"]
  GETIMPORT R2 K12 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["mockUseSetting"]
  GETIMPORT R2 K15 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["collisionMethodSetting"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["mockUseSetting"]
  LOADK R2 K16 [{0, 0, 0}]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["collisionSizeSetting"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R0 K4 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["mockUseSetting"]
  GETIMPORT R2 K9 [Enum.AvatarSettingsCollisionMode.SingleCollider]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["collisionSetting"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["mockUseSetting"]
  GETIMPORT R2 K12 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["mockUseSetting"]
  GETIMPORT R2 K15 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["collisionMethodSetting"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["mockUseSetting"]
  LOADK R2 K16 [{2, 2, 2}]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["collisionSizeSetting"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["AvatarSettingsProviderTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["tests"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K10 ["mockUseSetting"]
  CALL R2 1 1
  NEWTABLE R3 2 0
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K12 ["primaryPreset"]
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K14 ["secondaryPreset"]
  RETURN R3 1
