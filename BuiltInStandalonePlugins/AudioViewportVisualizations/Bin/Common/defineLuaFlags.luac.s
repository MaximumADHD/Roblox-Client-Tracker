PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableAudioViewportVisualizations"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RenderGroundRings"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableAudioViewportVisualizationsTelemetry"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AudioViewportVisualizationsUsageThrottleHundredthsPercent"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableAudioViewportVisualizations"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["RenderGroundRings"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["EnableAudioViewportVisualizationsTelemetry"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["AudioViewportVisualizationsUsageThrottleHundredthsPercent"]
       25 LOADN                            R3 10000
       26 NAMECALL                         R0 R0 K7 ["DefineFastInt"]
       28 CALL                             R0 3 0
       29 DUPTABLE                         R0 K12 [{"getFFlagEnableAudioViewportVisualizations", "getFFlagRenderGroundRings", "getFFlagEnableAudioViewportVisualizationsTelemetry", "getFIntAudioViewportVisualizationsUsageThrottleHundredthsPercent"}]
       30 DUPCLOSURE                       R1 K13 [PROTO_0]
       31 SETTABLEKS                       R1 R0 K8 ["getFFlagEnableAudioViewportVisualizations"]
       33 DUPCLOSURE                       R1 K14 [PROTO_1]
       34 SETTABLEKS                       R1 R0 K9 ["getFFlagRenderGroundRings"]
       36 DUPCLOSURE                       R1 K15 [PROTO_2]
       37 SETTABLEKS                       R1 R0 K10 ["getFFlagEnableAudioViewportVisualizationsTelemetry"]
       39 DUPCLOSURE                       R1 K16 [PROTO_3]
       40 SETTABLEKS                       R1 R0 K11 ["getFIntAudioViewportVisualizationsUsageThrottleHundredthsPercent"]
       42 RETURN                           R0 1
