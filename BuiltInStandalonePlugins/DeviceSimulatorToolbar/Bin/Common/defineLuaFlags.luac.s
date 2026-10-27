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

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DeviceSimulatorStopWorkOnClose"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DeviceSimulatorRetryBridgeSignalSetup"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DeviceSimulatorDeviceManagerFormAlignment"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DeviceSimulatorAddDevicesRequireChange"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioDeviceSimulatorDynamicControlPresentation"]
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
       78 GETIMPORT                        R0 K1 [game]
       80 LOADK                            R2 K14 ["DeviceSimulatorStopWorkOnClose"]
       81 LOADB                            R3 0
       82 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K15 ["DeviceSimulatorDeviceManagerFormAlignment"]
       88 LOADB                            R3 0
       89 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       91 CALL                             R0 3 0
       92 GETIMPORT                        R0 K1 [game]
       94 LOADK                            R2 K16 ["DeviceSimulatorAddDevicesRequireChange"]
       95 LOADB                            R3 0
       96 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       98 CALL                             R0 3 0
       99 GETIMPORT                        R0 K1 [game]
      101 LOADK                            R2 K17 ["DeviceSimulatorRetryBridgeSignalSetup"]
      102 LOADB                            R3 0
      103 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      105 CALL                             R0 3 0
      106 GETIMPORT                        R0 K1 [game]
      108 LOADK                            R2 K18 ["StudioDeviceSimulatorDynamicControlPresentation"]
      109 LOADB                            R3 0
      110 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
      112 CALL                             R0 3 0
      113 DUPTABLE                         R0 K36 [{"getFFlagEnableDeviceSimulatorToolbar", "getFFlagEnableDeviceSimulatorRegistry", "getFFlagEnableDeviceSimulatorDeviceVisibility", "getFFlagEnableDeviceSimulatorClientViewportOnly", "getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem", "getFFlagDontReloadDeviceOnBridgeChanged", "getFFlagDeviceSimulatorBoundDropdownLabels", "getFFlagDeviceSimulatorNetworkSettingsLocalization", "getFFlagStudioDeviceSimulatorRequireExplicitControlIds", "getFFlagDeviceSimulatorToolbarWaitForDataModel", "getFFlagDeviceSimulatorWheelCycleDevice", "getFFlagDeviceSimulatorDropdownResolutionHint", "getFFlagDeviceSimulatorStopWorkOnClose", "getFFlagDeviceSimulatorRetryBridgeSignalSetup", "getFFlagDeviceSimulatorDeviceManagerFormAlignment", "getFFlagDeviceSimulatorAddDevicesRequireChange", "getFFlagStudioDeviceSimulatorDynamicControlPresentation"}]
      114 DUPCLOSURE                       R1 K37 [PROTO_0]
      115 SETTABLEKS                       R1 R0 K19 ["getFFlagEnableDeviceSimulatorToolbar"]
      117 DUPCLOSURE                       R1 K38 [PROTO_1]
      118 SETTABLEKS                       R1 R0 K20 ["getFFlagEnableDeviceSimulatorRegistry"]
      120 DUPCLOSURE                       R1 K39 [PROTO_2]
      121 SETTABLEKS                       R1 R0 K21 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
      123 DUPCLOSURE                       R1 K40 [PROTO_3]
      124 SETTABLEKS                       R1 R0 K22 ["getFFlagEnableDeviceSimulatorClientViewportOnly"]
      126 DUPCLOSURE                       R1 K41 [PROTO_4]
      127 SETTABLEKS                       R1 R0 K23 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
      129 DUPCLOSURE                       R1 K42 [PROTO_5]
      130 SETTABLEKS                       R1 R0 K24 ["getFFlagDontReloadDeviceOnBridgeChanged"]
      132 DUPCLOSURE                       R1 K43 [PROTO_6]
      133 SETTABLEKS                       R1 R0 K25 ["getFFlagDeviceSimulatorBoundDropdownLabels"]
      135 DUPCLOSURE                       R1 K44 [PROTO_7]
      136 SETTABLEKS                       R1 R0 K26 ["getFFlagDeviceSimulatorNetworkSettingsLocalization"]
      138 DUPCLOSURE                       R1 K45 [PROTO_8]
      139 SETTABLEKS                       R1 R0 K27 ["getFFlagStudioDeviceSimulatorRequireExplicitControlIds"]
      141 DUPCLOSURE                       R1 K46 [PROTO_9]
      142 SETTABLEKS                       R1 R0 K28 ["getFFlagDeviceSimulatorToolbarWaitForDataModel"]
      144 DUPCLOSURE                       R1 K47 [PROTO_10]
      145 SETTABLEKS                       R1 R0 K29 ["getFFlagDeviceSimulatorWheelCycleDevice"]
      147 DUPCLOSURE                       R1 K48 [PROTO_11]
      148 SETTABLEKS                       R1 R0 K30 ["getFFlagDeviceSimulatorDropdownResolutionHint"]
      150 DUPCLOSURE                       R1 K49 [PROTO_12]
      151 SETTABLEKS                       R1 R0 K31 ["getFFlagDeviceSimulatorStopWorkOnClose"]
      153 DUPCLOSURE                       R1 K50 [PROTO_13]
      154 SETTABLEKS                       R1 R0 K32 ["getFFlagDeviceSimulatorRetryBridgeSignalSetup"]
      156 DUPCLOSURE                       R1 K51 [PROTO_14]
      157 SETTABLEKS                       R1 R0 K33 ["getFFlagDeviceSimulatorDeviceManagerFormAlignment"]
      159 DUPCLOSURE                       R1 K52 [PROTO_15]
      160 SETTABLEKS                       R1 R0 K34 ["getFFlagDeviceSimulatorAddDevicesRequireChange"]
      162 DUPCLOSURE                       R1 K53 [PROTO_16]
      163 SETTABLEKS                       R1 R0 K35 ["getFFlagStudioDeviceSimulatorDynamicControlPresentation"]
      165 RETURN                           R0 1
