PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PlayerSettingPresetValues"]
  NEWTABLE R2 4 0
  GETUPVAL R3 1
  GETTABLEKS R4 R1 K1 ["collisionSetting"]
  GETUPVAL R5 2
  MOVE R6 R0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K1 ["collisionSetting"]
  CALL R5 2 -1
  CALL R3 -1 1
  SETTABLEKS R3 R2 K1 ["collisionSetting"]
  GETUPVAL R3 1
  GETIMPORT R4 K5 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
  GETUPVAL R5 2
  MOVE R6 R0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["collisionHitAndTouchDetectionSetting"]
  CALL R5 2 -1
  CALL R3 -1 1
  SETTABLEKS R3 R2 K6 ["collisionHitAndTouchDetectionSetting"]
  GETUPVAL R3 1
  GETIMPORT R4 K9 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
  GETUPVAL R5 2
  MOVE R6 R0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["collisionMethodSetting"]
  CALL R5 2 -1
  CALL R3 -1 1
  SETTABLEKS R3 R2 K10 ["collisionMethodSetting"]
  GETUPVAL R3 1
  LOADK R4 K11 [{2, 4, 1}]
  GETUPVAL R5 2
  MOVE R6 R0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K12 ["collisionSizeSetting"]
  CALL R5 2 -1
  CALL R3 -1 1
  SETTABLEKS R3 R2 K12 ["collisionSizeSetting"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["AvatarPresetValues"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["AvatarSettingsProviderTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K10 ["InvokeKeys"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K11 ["settingUtil"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K12 ["useSetting"]
  GETTABLEKS R6 R4 K13 ["createInvokeArgs"]
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  RETURN R7 1
