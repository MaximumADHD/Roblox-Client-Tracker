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
       43 DUPTABLE                         R0 K16 [{"getFFlagEnableDeviceSimulatorToolbar", "getFFlagEnableDeviceSimulatorRegistry", "getFFlagEnableDeviceSimulatorDeviceVisibility", "getFFlagEnableDeviceSimulatorClientViewportOnly", "getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem", "getFFlagDontReloadDeviceOnBridgeChanged", "getFFlagDeviceSimulatorBoundDropdownLabels"}]
       44 DUPCLOSURE                       R1 K17 [PROTO_0]
       45 SETTABLEKS                       R1 R0 K9 ["getFFlagEnableDeviceSimulatorToolbar"]
       47 DUPCLOSURE                       R1 K18 [PROTO_1]
       48 SETTABLEKS                       R1 R0 K10 ["getFFlagEnableDeviceSimulatorRegistry"]
       50 DUPCLOSURE                       R1 K19 [PROTO_2]
       51 SETTABLEKS                       R1 R0 K11 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       53 DUPCLOSURE                       R1 K20 [PROTO_3]
       54 SETTABLEKS                       R1 R0 K12 ["getFFlagEnableDeviceSimulatorClientViewportOnly"]
       56 DUPCLOSURE                       R1 K21 [PROTO_4]
       57 SETTABLEKS                       R1 R0 K13 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
       59 DUPCLOSURE                       R1 K22 [PROTO_5]
       60 SETTABLEKS                       R1 R0 K14 ["getFFlagDontReloadDeviceOnBridgeChanged"]
       62 DUPCLOSURE                       R1 K23 [PROTO_6]
       63 SETTABLEKS                       R1 R0 K15 ["getFFlagDeviceSimulatorBoundDropdownLabels"]
       65 RETURN                           R0 1
