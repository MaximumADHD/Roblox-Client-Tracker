PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioDiscoveryMigrateToActions"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+13]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["EnableRibbonPluginFeature"]
  NAMECALL R0 R0 K5 ["GetEngineFeature"]
  CALL R0 2 1
  JUMPIFNOT R0 [+6]
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["RegisterActionsPluginLoader"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RetireAudioDiscoveryPlugin"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["StudioAudioDiscoveryMaxAssetIdsPerRequest"]
  LOADN R3 30
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["AudioDiscoveryMigrateToRoact17"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["StudioAudioDiscoveryPerRequestCooldown"]
  LOADN R3 60
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["StudioAudioDiscoveryCooldownAfterHttp429"]
  LOADN R3 120
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["StudioAudioDiscoveryMaxRecentRequests"]
  LOADN R3 20
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["SoundEffectMaxDuration"]
  LOADN R3 6
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K11 ["StudioAudioDiscoveryOpenAnalyticThrottle"]
  LOADN R3 16
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K12 ["StudioAudioDiscoverySelectAnalyticsThrottle"]
  LOADN R3 16
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K13 ["StudioAudioDiscoveryBreakdownAnalyticsThrottle"]
  LOADN R3 16
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K14 ["StudioAudioDiscoveryPermissionCheckAnalyticsThrottle"]
  LOADN R3 232
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K15 ["DEBUG_StudioAudioDiscoveryPermissionCheckErrors"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K16 ["AudioDiscoveryMigrateToActions"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K18 [{"shouldMigrateToActions"}]
  DUPCLOSURE R1 K19 [PROTO_0]
  SETTABLEKS R1 R0 K17 ["shouldMigrateToActions"]
  RETURN R0 1
