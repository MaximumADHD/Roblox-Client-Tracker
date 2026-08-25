PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioControlsEmulatorRemoveAutoOpenBehavior"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioDeviceSimulatorAndroidTV"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableMicroGamepadKeycodes"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioControlsEmulatorRemoveAutoOpenBehavior"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["StudioDeviceSimulatorAndroidTV"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 DUPTABLE                         R0 K8 [{"getFFlagRemoveAutoOpenBehavior", "getFFlagStudioDeviceSimulatorAndroidTV", "getEngineFeatureEnableMicroGamepadKeycodes"}]
       16 DUPCLOSURE                       R1 K9 [PROTO_0]
       17 SETTABLEKS                       R1 R0 K5 ["getFFlagRemoveAutoOpenBehavior"]
       19 DUPCLOSURE                       R1 K10 [PROTO_1]
       20 SETTABLEKS                       R1 R0 K6 ["getFFlagStudioDeviceSimulatorAndroidTV"]
       22 DUPCLOSURE                       R1 K11 [PROTO_2]
       23 SETTABLEKS                       R1 R0 K7 ["getEngineFeatureEnableMicroGamepadKeycodes"]
       25 RETURN                           R0 1
