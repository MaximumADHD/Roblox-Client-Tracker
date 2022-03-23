game:DefineFastFlag("EnableAudioDiscoveryPlugin", false)
game:DefineFastFlag("StudioAudioDiscoveryPluginV2", false)
game:DefineFastFlag("StudioAudioDiscoveryPluginV3", false)
game:DefineFastInt("StudioAudioDiscoveryMaxAssetIdsPerRequest", 30)
game:DefineFastInt("StudioAudioDiscoveryPerRequestCooldown", 60)
game:DefineFastInt("StudioAudioDiscoveryCooldownAfterHttp429", 120)
game:DefineFastInt("StudioAudioDiscoveryMaxRecentRequests", 20)
game:DefineFastInt("SoundEffectMaxDuration", 6)

game:DefineFastInt("StudioAudioDiscoveryOpenAnalyticThrottle", 10000) --> 100% of opens
game:DefineFastInt("StudioAudioDiscoverySelectAnalyticsThrottle", 10000) --> 100% of row selects
game:DefineFastInt("StudioAudioDiscoveryBreakdownAnalyticsThrottle", 10000) --> 100% processing complete results

return nil
