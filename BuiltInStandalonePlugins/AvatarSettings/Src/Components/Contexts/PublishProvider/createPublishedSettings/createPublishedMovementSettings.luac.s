PROTO_0:
  DUPTABLE R0 K4 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting"}]
  GETIMPORT R1 K8 [Enum.AvatarSettingsCollisionMode.Default]
  SETTABLEKS R1 R0 K0 ["collisionSetting"]
  GETIMPORT R1 K11 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
  SETTABLEKS R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
  GETIMPORT R1 K14 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
  SETTABLEKS R1 R0 K2 ["collisionMethodSetting"]
  LOADK R1 K15 [{0, 0, 0}]
  SETTABLEKS R1 R0 K3 ["collisionSizeSetting"]
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
  NEWTABLE R2 1 0
  DUPCLOSURE R3 K11 [PROTO_0]
  SETTABLEKS R3 R2 K12 ["primaryPreset"]
  RETURN R2 1
