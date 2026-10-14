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

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DeviceSimulatorWheelCycleDevice"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DeviceSimulatorDropdownResolutionHint"]
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
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K12 ["DeviceSimulatorWheelCycleDevice"]
       67 LOADB                            R3 0
       68 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       70 CALL                             R0 3 0
       71 GETIMPORT                        R0 K1 [game]
       73 LOADK                            R2 K13 ["DeviceSimulatorDropdownResolutionHint"]
       74 LOADB                            R3 0
       75 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       77 CALL                             R0 3 0
       78 DUPTABLE                         R0 K26 [{"getFFlagEnableDeviceSimulatorToolbar", "getFFlagEnableDeviceSimulatorRegistry", "getFFlagEnableDeviceSimulatorDeviceVisibility", "getFFlagEnableDeviceSimulatorClientViewportOnly", "getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem", "getFFlagDontReloadDeviceOnBridgeChanged", "getFFlagDeviceSimulatorBoundDropdownLabels", "getFFlagDeviceSimulatorNetworkSettingsLocalization", "getFFlagStudioDeviceSimulatorRequireExplicitControlIds", "getFFlagDeviceSimulatorToolbarWaitForDataModel", "getFFlagDeviceSimulatorWheelCycleDevice", "getFFlagDeviceSimulatorDropdownResolutionHint"}]
       79 DUPCLOSURE                       R1 K27 [PROTO_0]
       80 SETTABLEKS                       R1 R0 K14 ["getFFlagEnableDeviceSimulatorToolbar"]
       82 DUPCLOSURE                       R1 K28 [PROTO_1]
       83 SETTABLEKS                       R1 R0 K15 ["getFFlagEnableDeviceSimulatorRegistry"]
       85 DUPCLOSURE                       R1 K29 [PROTO_2]
       86 SETTABLEKS                       R1 R0 K16 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       88 DUPCLOSURE                       R1 K30 [PROTO_3]
       89 SETTABLEKS                       R1 R0 K17 ["getFFlagEnableDeviceSimulatorClientViewportOnly"]
       91 DUPCLOSURE                       R1 K31 [PROTO_4]
       92 SETTABLEKS                       R1 R0 K18 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
       94 DUPCLOSURE                       R1 K32 [PROTO_5]
       95 SETTABLEKS                       R1 R0 K19 ["getFFlagDontReloadDeviceOnBridgeChanged"]
       97 DUPCLOSURE                       R1 K33 [PROTO_6]
       98 SETTABLEKS                       R1 R0 K20 ["getFFlagDeviceSimulatorBoundDropdownLabels"]
      100 DUPCLOSURE                       R1 K34 [PROTO_7]
      101 SETTABLEKS                       R1 R0 K21 ["getFFlagDeviceSimulatorNetworkSettingsLocalization"]
      103 DUPCLOSURE                       R1 K35 [PROTO_8]
      104 SETTABLEKS                       R1 R0 K22 ["getFFlagStudioDeviceSimulatorRequireExplicitControlIds"]
      106 DUPCLOSURE                       R1 K36 [PROTO_9]
      107 SETTABLEKS                       R1 R0 K23 ["getFFlagDeviceSimulatorToolbarWaitForDataModel"]
      109 DUPCLOSURE                       R1 K37 [PROTO_10]
      110 SETTABLEKS                       R1 R0 K24 ["getFFlagDeviceSimulatorWheelCycleDevice"]
      112 DUPCLOSURE                       R1 K38 [PROTO_11]
      113 SETTABLEKS                       R1 R0 K25 ["getFFlagDeviceSimulatorDropdownResolutionHint"]
      115 RETURN                           R0 1
