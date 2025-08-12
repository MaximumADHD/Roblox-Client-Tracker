PROTO_0:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["RewardedVideoAdsUniverseIdAllowlist"]
  NAMECALL R1 R1 K3 ["GetFastString"]
  CALL R1 2 1
  LOADK R4 K4 [","]
  NAMECALL R2 R1 K5 ["split"]
  CALL R2 2 1
  GETIMPORT R3 K7 [ipairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_INEXT R3
  JUMPIFNOTEQ R7 R0 [+3]
  LOADB R8 1
  RETURN R8 1
  FORGLOOP R3 2 [inext] [-5]
  LOADB R3 0
  RETURN R3 1

PROTO_1:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["ADS6764EnableRewardedVideoAdsStudioSettings2"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+28]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K5 [tostring]
  CALL R3 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K6 ["RewardedVideoAdsUniverseIdAllowlist"]
  NAMECALL R4 R4 K7 ["GetFastString"]
  CALL R4 2 1
  LOADK R7 K8 [","]
  NAMECALL R5 R4 K9 ["split"]
  CALL R5 2 1
  GETIMPORT R6 K11 [ipairs]
  MOVE R7 R5
  CALL R6 1 3
  FORGPREP_INEXT R6
  JUMPIFNOTEQ R10 R3 [+3]
  LOADB R2 1
  RETURN R2 1
  FORGLOOP R6 2 [inext] [-5]
  LOADB R2 0
  RETURN R2 1
  RETURN R1 1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ADS7991EnableShowRewardedAdsToggleBackendFlag"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ADS7991EnableShowRewardedAdsToggleBackendFlag"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["ADS6764EnableRewardedVideoAdsStudioSettings2"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["RewardedVideoAdsUniverseIdAllowlist"]
  LOADK R3 K6 [""]
  NAMECALL R0 R0 K7 ["DefineFastString"]
  CALL R0 3 0
  DUPCLOSURE R0 K8 [PROTO_0]
  DUPTABLE R1 K11 [{"GetFFlagEnableRewardedVideoAdsStudioSettings", "GetFFlagEnableShowRewardedAdsToggleBackendFlag"}]
  DUPCLOSURE R2 K12 [PROTO_1]
  SETTABLEKS R2 R1 K9 ["GetFFlagEnableRewardedVideoAdsStudioSettings"]
  DUPCLOSURE R2 K13 [PROTO_2]
  SETTABLEKS R2 R1 K10 ["GetFFlagEnableShowRewardedAdsToggleBackendFlag"]
  RETURN R1 1
