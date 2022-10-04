game:DefineFastInt("StudioAudioDiscoveryMaxAssetIdsPerRequest", 30)
game:DefineFastFlag("AudioDiscoveryMigrateToRoact17", false)
game:DefineFastInt("StudioAudioDiscoveryPerRequestCooldown", 60)
game:DefineFastInt("StudioAudioDiscoveryCooldownAfterHttp429", 120)
game:DefineFastInt("StudioAudioDiscoveryMaxRecentRequests", 20)
game:DefineFastInt("SoundEffectMaxDuration", 6)

game:DefineFastInt("StudioAudioDiscoveryOpenAnalyticThrottle", 10000) --> 100% of opens
game:DefineFastInt("StudioAudioDiscoverySelectAnalyticsThrottle", 10000) --> 100% of row selects
game:DefineFastInt("StudioAudioDiscoveryBreakdownAnalyticsThrottle", 10000) --> 100% processing complete results
game:DefineFastInt("StudioAudioDiscoveryPermissionCheckAnalyticsThrottle", 1000) --> 10% http request results

game:DefineFastFlag("DEBUG_StudioAudioDiscoveryPermissionCheckErrors", false)
game:DefineFastFlag("AddNonPermCase", false)


return nil
