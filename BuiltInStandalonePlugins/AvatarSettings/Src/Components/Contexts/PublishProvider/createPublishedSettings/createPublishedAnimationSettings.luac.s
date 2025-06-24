PROTO_0:
  DUPTABLE R0 K12 [{"animationPacksSetting", "animationClipsSetting", "animationClipsRunSetting", "animationClipsWalkSetting", "animationClipsFallSetting", "animationClipsJumpSetting", "animationClipsIdleSetting", "animationClipsIdleAlt1Setting", "animationClipsIdleAlt2Setting", "animationClipsSwimSetting", "animationClipsSwimIdleSetting", "animationClipsClimbSetting"}]
  GETIMPORT R1 K16 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
  SETTABLEKS R1 R0 K0 ["animationPacksSetting"]
  GETIMPORT R1 K18 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
  SETTABLEKS R1 R0 K1 ["animationClipsSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["animationClipsRunSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["animationClipsWalkSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["animationClipsFallSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["animationClipsJumpSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["animationClipsIdleSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["animationClipsIdleAlt1Setting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K8 ["animationClipsIdleAlt2Setting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K9 ["animationClipsSwimSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K10 ["animationClipsSwimIdleSetting"]
  GETUPVAL R1 0
  LOADB R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K11 ["animationClipsClimbSetting"]
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
  GETTABLEKS R3 R4 K12 ["createAssetIdPublishedSetting"]
  CALL R2 1 1
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K13 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K14 ["primaryPreset"]
  RETURN R3 1
