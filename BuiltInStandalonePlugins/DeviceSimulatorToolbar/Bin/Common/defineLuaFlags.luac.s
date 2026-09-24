PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableDeviceSimulatorToolbar"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableDeviceSimulatorRegistry"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableDeviceSimulatorDeviceVisibility"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableDeviceSimulatorClientViewportOnly"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioDeviceEmulatorDefaultScreenDpiFromSystem"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DontReloadDeviceOnBridgeChanged"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DeviceSimulatorBoundDropdownLabels"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DeviceSimulatorNetworkSettingsLocalization"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioDeviceSimulatorRequireExplicitControlIds"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DeviceSimulatorToolbarWaitForDataModel"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableDeviceSimulatorToolbar"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["EnableDeviceSimulatorRegistry"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["EnableDeviceSimulatorDeviceVisibility"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["EnableDeviceSimulatorClientViewportOnly"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K7 ["DontReloadDeviceOnBridgeChanged"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K8 ["DeviceSimulatorBoundDropdownLabels"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K9 ["DeviceSimulatorNetworkSettingsLocalization"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K10 ["StudioDeviceSimulatorRequireExplicitControlIds"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K11 ["DeviceSimulatorToolbarWaitForDataModel"]
       60 LOADB                            R3 0
       61 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       63 CALL                             R0 3 0
       64 DUPTABLE                         R0 K22 [{"getFFlagEnableDeviceSimulatorToolbar", "getFFlagEnableDeviceSimulatorRegistry", "getFFlagEnableDeviceSimulatorDeviceVisibility", "getFFlagEnableDeviceSimulatorClientViewportOnly", "getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem", "getFFlagDontReloadDeviceOnBridgeChanged", "getFFlagDeviceSimulatorBoundDropdownLabels", "getFFlagDeviceSimulatorNetworkSettingsLocalization", "getFFlagStudioDeviceSimulatorRequireExplicitControlIds", "getFFlagDeviceSimulatorToolbarWaitForDataModel"}]
       65 DUPCLOSURE                       R1 K23 [PROTO_0]
       66 SETTABLEKS                       R1 R0 K12 ["getFFlagEnableDeviceSimulatorToolbar"]
       68 DUPCLOSURE                       R1 K24 [PROTO_1]
       69 SETTABLEKS                       R1 R0 K13 ["getFFlagEnableDeviceSimulatorRegistry"]
       71 DUPCLOSURE                       R1 K25 [PROTO_2]
       72 SETTABLEKS                       R1 R0 K14 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       74 DUPCLOSURE                       R1 K26 [PROTO_3]
       75 SETTABLEKS                       R1 R0 K15 ["getFFlagEnableDeviceSimulatorClientViewportOnly"]
       77 DUPCLOSURE                       R1 K27 [PROTO_4]
       78 SETTABLEKS                       R1 R0 K16 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
       80 DUPCLOSURE                       R1 K28 [PROTO_5]
       81 SETTABLEKS                       R1 R0 K17 ["getFFlagDontReloadDeviceOnBridgeChanged"]
       83 DUPCLOSURE                       R1 K29 [PROTO_6]
       84 SETTABLEKS                       R1 R0 K18 ["getFFlagDeviceSimulatorBoundDropdownLabels"]
       86 DUPCLOSURE                       R1 K30 [PROTO_7]
       87 SETTABLEKS                       R1 R0 K19 ["getFFlagDeviceSimulatorNetworkSettingsLocalization"]
       89 DUPCLOSURE                       R1 K31 [PROTO_8]
       90 SETTABLEKS                       R1 R0 K20 ["getFFlagStudioDeviceSimulatorRequireExplicitControlIds"]
       92 DUPCLOSURE                       R1 K32 [PROTO_9]
       93 SETTABLEKS                       R1 R0 K21 ["getFFlagDeviceSimulatorToolbarWaitForDataModel"]
       95 RETURN                           R0 1
