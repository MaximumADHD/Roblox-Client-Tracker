PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["new"]
        7 DUPTABLE                         R1 K6 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "ControlsEmulator"}]
        8 GETUPVAL                         R2 2
        9 SETTABLEKS                       R2 R1 K2 ["stringResourceTable"]
       11 GETUPVAL                         R2 3
       12 SETTABLEKS                       R2 R1 K3 ["translationResourceTable"]
       14 CALL                             R0 1 1
       15 SETUPVAL                         R0 0
       16 GETUPVAL                         R0 0
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K2 [{"enabled"}]
       10 SETTABLEKS                       R0 R3 K1 ["enabled"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["state"]
        9 GETTABLEKS                       R1 R1 K1 ["enabled"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 DUPTABLE                         R3 K2 [{"enabled"}]
       16 SETTABLEKS                       R0 R3 K1 ["enabled"]
       18 NAMECALL                         R1 R1 K3 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 0
        9 DUPTABLE                         R2 K3 [{["enabled"] = False}]
       10 NAMECALL                         R0 R0 K4 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K2 [{"enabled"}]
       10 SETTABLEKS                       R0 R3 K1 ["enabled"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["enabled"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 DUPTABLE                         R4 K3 [{"enabled"}]
       12 SETTABLEKS                       R1 R4 K2 ["enabled"]
       14 NAMECALL                         R2 R2 K4 ["setState"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"activeInputs"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["activeInputs"]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 GETUPVAL                         R6 3
        7 CALL                             R2 4 1
        8 SETTABLEKS                       R2 R1 K0 ["activeInputs"]
       10 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 NEWCLOSURE                       R6 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 NAMECALL                         R4 R4 K0 ["setState"]
        8 CALL                             R4 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EmulatedGamepadEvent"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["props"]
       16 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       18 GETTABLEKS                       R0 R0 K5 ["mainButton"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K6 ["state"]
       23 GETTABLEKS                       R2 R2 K7 ["enabled"]
       25 NAMECALL                         R0 R0 K8 ["SetActive"]
       27 CALL                             R0 2 0
       28 GETIMPORT                        R0 K10 [pcall]
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U2
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentlyEmulatedDeviceAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_10]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+5]
        6 GETIMPORT                        R2 K4 [warn]
        8 LOADK                            R3 K5 ["ControllersEmulator: Failed to get currently emulated device: "]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioDeviceSimulatorAndroidTV"]
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+9]
       16 GETTABLEKS                       R3 R1 K7 ["deviceId"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K8 ["ANDROID_TV_1080_EMULATED_DEVICE_ID"]
       21 JUMPIFEQ                         R3 R4 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 JUMPIFNOT                        R0 ; [+36]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K9 ["getFFlagReconnectDeviceSignalOnReopen"]
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+31]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K10 ["reconnectEmulatedDeviceChanged"]
       34 CALL                             R3 0 0
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K11 ["callbacksRef"]
       38 JUMPIFNOT                        R3 ; [+23]
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R3 R3 K11 ["callbacksRef"]
       42 GETTABLEKS                       R3 R3 K12 ["current"]
       44 JUMPIFNOT                        R3 ; [+17]
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K11 ["callbacksRef"]
       48 GETTABLEKS                       R3 R3 K12 ["current"]
       50 GETTABLEKS                       R3 R3 K13 ["changeEmulatedDevice"]
       52 JUMPIFNOT                        R3 ; [+9]
       53 GETUPVAL                         R3 3
       54 GETTABLEKS                       R3 R3 K11 ["callbacksRef"]
       56 GETTABLEKS                       R3 R3 K12 ["current"]
       58 GETTABLEKS                       R3 R3 K13 ["changeEmulatedDevice"]
       60 MOVE                             R4 R1
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 3
       63 DUPTABLE                         R5 K17 [{["uiDmLoaded"] = True, ["isTVMode"]}]
       64 SETTABLEKS                       R2 R5 K16 ["isTVMode"]
       66 NAMECALL                         R3 R3 K18 ["setState"]
       68 CALL                             R3 2 0
       69 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callbacksRef"]
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["callbacksRef"]
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 JUMPIFNOT                        R1 ; [+17]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["callbacksRef"]
       13 GETTABLEKS                       R1 R1 K1 ["current"]
       15 GETTABLEKS                       R1 R1 K2 ["changeEmulatedDevice"]
       17 JUMPIFNOT                        R1 ; [+9]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["callbacksRef"]
       21 GETTABLEKS                       R1 R1 K1 ["current"]
       23 GETTABLEKS                       R1 R1 K2 ["changeEmulatedDevice"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K3 ["getFFlagStudioDeviceSimulatorAndroidTV"]
       30 CALL                             R1 0 1
       31 JUMPIFNOT                        R1 ; [+9]
       32 GETTABLEKS                       R2 R0 K4 ["deviceId"]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K5 ["ANDROID_TV_1080_EMULATED_DEVICE_ID"]
       37 JUMPIFEQ                         R2 R3 ; [+2]
       39 LOADB                            R1 0 +1
       40 LOADB                            R1 1
       41 GETUPVAL                         R2 0
       42 DUPTABLE                         R4 K7 [{"isTVMode"}]
       43 SETTABLEKS                       R1 R4 K6 ["isTVMode"]
       45 NAMECALL                         R2 R2 K8 ["setState"]
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["connections"]
        3 GETTABLEKS                       R0 R1 K0 ["EmulatedDeviceChangeConnection"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["connections"]
        9 GETTABLEKS                       R0 R1 K0 ["EmulatedDeviceChangeConnection"]
       11 NAMECALL                         R0 R0 K2 ["Disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K1 ["connections"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["EmulatedDeviceChanged"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K4 ["onEmulatedDeviceChanged"]
       23 NAMECALL                         R1 R1 K5 ["Connect"]
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K0 ["EmulatedDeviceChangeConnection"]
       28 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["state"]
        4 GETTABLEKS                       R2 R2 K1 ["gamepadId"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K2 ["GAMEPAD_ID_TO_ENUM"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K0 ["state"]
       12 GETTABLEKS                       R5 R5 K1 ["gamepadId"]
       14 GETTABLE                         R3 R4 R5
       15 NAMECALL                         R0 R0 K3 ["ConnectGamepadAsync"]
       17 CALL                             R0 3 0
       18 GETUPVAL                         R0 0
       19 LOADB                            R2 1
       20 NAMECALL                         R0 R0 K4 ["SetGamepadEmulationEnabledAsync"]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R0 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K0 ["state"]
       27 GETTABLEKS                       R2 R2 K1 ["gamepadId"]
       29 NAMECALL                         R0 R0 K5 ["SetActiveGamepadAsync"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["state"]
        4 GETTABLEKS                       R2 R2 K1 ["gamepadId"]
        6 NAMECALL                         R0 R0 K2 ["DisconnectGamepadAsync"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 LOADB                            R2 0
       11 NAMECALL                         R0 R0 K3 ["SetGamepadEmulationEnabledAsync"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_20:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K2 ["TOOLTIP_SHOWN_COUNT_SETTING"]
        5 NAMECALL                         R4 R2 K3 ["GetSetting"]
        7 CALL                             R4 2 1
        8 ORK                              R3 R4 K1 [0]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["MAX_NUM_TOOLTIP_SHOWN"]
       12 JUMPIFLT                         R3 R5 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K5 ["createRef"]
       19 CALL                             R5 0 1
       20 SETTABLEKS                       R5 R0 K6 ["callbacksRef"]
       22 NEWTABLE                         R5 0 0
       24 SETTABLEKS                       R5 R0 K7 ["connections"]
       26 DUPTABLE                         R5 K22 [{["enabled"] = False, ["inPlayClient"] = False, ["uiDmLoaded"] = False, ["tooltipCount"], ["shouldShowTooltip"], ["wrapperRef"] = , ["activeInputs"], ["isVRConnected"] = False, ["activeVRUserCFrames"], ["translationSensitivity"] = 5, ["isTVMode"] = False}]
       27 SETTABLEKS                       R3 R5 K12 ["tooltipCount"]
       29 SETTABLEKS                       R4 R5 K13 ["shouldShowTooltip"]
       31 NEWTABLE                         R6 0 0
       33 SETTABLEKS                       R6 R5 K16 ["activeInputs"]
       35 NEWTABLE                         R6 4 0
       37 GETIMPORT                        R7 K26 [Enum.UserCFrame.Head]
       39 LOADB                            R8 1
       40 SETTABLE                         R8 R6 R7
       41 GETIMPORT                        R7 K28 [Enum.UserCFrame.LeftHand]
       43 LOADB                            R8 1
       44 SETTABLE                         R8 R6 R7
       45 GETIMPORT                        R7 K30 [Enum.UserCFrame.RightHand]
       47 LOADB                            R8 1
       48 SETTABLE                         R8 R6 R7
       49 SETTABLEKS                       R6 R5 K18 ["activeVRUserCFrames"]
       51 SETTABLEKS                       R5 R0 K31 ["state"]
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          VAL R0
       55 NEWCLOSURE                       R6 P1
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R6 R0 K32 ["toggleEnabled"]
       59 NEWCLOSURE                       R6 P2
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R6 R0 K33 ["onClose"]
       63 NEWCLOSURE                       R6 P3
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R6 R0 K34 ["onRestore"]
       67 NEWCLOSURE                       R6 P4
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R6 R0 K35 ["onWidgetEnabledChanged"]
       71 NEWCLOSURE                       R6 P5
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U3
       75 SETTABLEKS                       R6 R0 K36 ["onDockWidgetCreated"]
       77 NEWCLOSURE                       R6 P6
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R6 R0 K37 ["placeOpened"]
       84 NEWCLOSURE                       R6 P7
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R6 R0 K38 ["placeClosed"]
       88 NEWCLOSURE                       R6 P8
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          UPVAL U0
       92 SETTABLEKS                       R6 R0 K39 ["onEmulatedDeviceChanged"]
       94 NEWCLOSURE                       R6 P9
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U2
       97 SETTABLEKS                       R6 R0 K40 ["reconnectEmulatedDeviceChanged"]
       99 NEWCLOSURE                       R6 P10
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U0
      103 SETTABLEKS                       R6 R0 K41 ["connectGamepad"]
      105 NEWCLOSURE                       R6 P11
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R6 R0 K42 ["disconnectGamepad"]
      110 GETGLOBAL                        R6 K43 ["getLocalization"]
      112 CALL                             R6 0 1
      113 SETTABLEKS                       R6 R0 K44 ["localization"]
      115 GETUPVAL                         R6 5
      116 GETTABLEKS                       R6 R6 K45 ["Analytics"]
      118 GETTABLEKS                       R6 R6 K46 ["new"]
      120 DUPCLOSURE                       R7 K47 [PROTO_19]
      121 NEWTABLE                         R8 0 0
      123 CALL                             R6 2 1
      124 SETTABLEKS                       R6 R0 K48 ["analytics"]
      126 GETUPVAL                         R6 6
      127 GETTABLEKS                       R6 R6 K46 ["new"]
      129 CALL                             R6 0 1
      130 SETTABLEKS                       R6 R0 K49 ["DEPRECATED_stylizer"]
      132 GETUPVAL                         R6 7
      133 GETTABLEKS                       R7 R1 K0 ["Plugin"]
      135 CALL                             R6 1 1
      136 SETTABLEKS                       R6 R0 K50 ["design"]
      138 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["isVRConnected"]
        2 JUMPIFNOT                        R1 ; [+22]
        3 GETTABLEKS                       R1 R0 K1 ["shouldShowTooltip"]
        5 JUMPIFNOT                        R1 ; [+19]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["props"]
        9 GETTABLEKS                       R1 R1 K3 ["Plugin"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["TOOLTIP_SHOWN_COUNT_SETTING"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K6 ["state"]
       17 GETTABLEKS                       R6 R6 K7 ["tooltipCount"]
       19 ADDK                             R5 R6 K5 [1]
       20 NAMECALL                         R2 R1 K8 ["SetSetting"]
       22 CALL                             R2 3 0
       23 DUPTABLE                         R2 K10 [{["shouldShowTooltip"] = False}]
       24 RETURN                           R2 1
       25 DUPTABLE                         R1 K11 [{"shouldShowTooltip"}]
       26 GETTABLEKS                       R2 R0 K1 ["shouldShowTooltip"]
       28 SETTABLEKS                       R2 R1 K1 ["shouldShowTooltip"]
       30 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R3 R3 K2 ["mainButton"]
        6 GETTABLEKS                       R5 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R5 K4 ["enabled"]
       10 NAMECALL                         R3 R3 K5 ["SetActive"]
       12 CALL                             R3 2 0
       13 GETTABLEKS                       R3 R0 K3 ["state"]
       15 GETTABLEKS                       R3 R3 K6 ["inPlayClient"]
       17 JUMPIFNOT                        R3 ; [+28]
       18 GETTABLEKS                       R3 R2 K4 ["enabled"]
       20 JUMPIF                           R3 ; [+9]
       21 GETTABLEKS                       R3 R0 K3 ["state"]
       23 GETTABLEKS                       R3 R3 K4 ["enabled"]
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEKS                       R3 R0 K7 ["connectGamepad"]
       28 CALL                             R3 0 0
       29 JUMP                             ; [+16]
       30 GETTABLEKS                       R3 R2 K4 ["enabled"]
       32 JUMPIFNOT                        R3 ; [+13]
       33 GETTABLEKS                       R3 R0 K3 ["state"]
       35 GETTABLEKS                       R3 R3 K4 ["enabled"]
       37 JUMPIF                           R3 ; [+8]
       38 GETTABLEKS                       R3 R0 K3 ["state"]
       40 GETTABLEKS                       R3 R3 K8 ["isTVMode"]
       42 JUMPIF                           R3 ; [+3]
       43 GETTABLEKS                       R3 R0 K9 ["disconnectGamepad"]
       45 CALL                             R3 0 0
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U0
       49 NAMECALL                         R3 R0 K10 ["setState"]
       51 CALL                             R3 2 0
       52 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_24:
        0 DUPTABLE                         R0 K1 [{"inPlayClient"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["inPlayClient"]
        4 RETURN                           R0 1

PROTO_25:
        0 LOADB                            R1 0
        1 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.PlayClient]
        3 JUMPIFNOTEQ                      R0 R2 ; [+19]
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["state"]
        9 GETTABLEKS                       R2 R2 K5 ["enabled"]
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["state"]
       15 GETTABLEKS                       R2 R2 K6 ["isTVMode"]
       17 JUMPIFNOT                        R2 ; [+10]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K7 ["connectGamepad"]
       21 CALL                             R2 0 0
       22 JUMP                             ; [+5]
       23 GETIMPORT                        R2 K9 [Enum.StudioDataModelType.Edit]
       25 JUMPIFNOTEQ                      R0 R2 ; [+2]
       27 LOADB                            R1 0
       28 GETUPVAL                         R2 0
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          REF R1
       31 NAMECALL                         R2 R2 K10 ["setState"]
       33 CALL                             R2 2 0
       34 CLOSEUPVALS                      R1
       35 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.PlayClient]
        2 JUMPIFNOTEQ                      R0 R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K4 ["disconnectGamepad"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R1 K1 [{"activeVRUserCFrames"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
        4 GETTABLEKS                       R2 R2 K3 ["join"]
        6 GETTABLEKS                       R3 R0 K0 ["activeVRUserCFrames"]
        8 NEWTABLE                         R4 1 0
       10 GETUPVAL                         R5 1
       11 GETUPVAL                         R6 2
       12 SETTABLE                         R6 R4 R5
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K0 ["activeVRUserCFrames"]
       16 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 NAMECALL                         R2 R2 K0 ["setState"]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["callbacksRef"]
       11 JUMPIFNOT                        R2 ; [+25]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["callbacksRef"]
       15 GETTABLEKS                       R2 R2 K2 ["current"]
       17 JUMPIFNOT                        R2 ; [+19]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["callbacksRef"]
       21 GETTABLEKS                       R2 R2 K2 ["current"]
       23 GETTABLEKS                       R2 R2 K3 ["setVRUserCFrameActive"]
       25 JUMPIFNOT                        R2 ; [+11]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K1 ["callbacksRef"]
       29 GETTABLEKS                       R2 R2 K2 ["current"]
       31 GETTABLEKS                       R2 R2 K3 ["setVRUserCFrameActive"]
       33 MOVE                             R3 R0
       34 MOVE                             R4 R1
       35 LOADB                            R5 1
       36 CALL                             R2 3 0
       37 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isTVMode"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["state"]
        9 GETTABLEKS                       R4 R4 K2 ["enabled"]
       11 OR                               R3 R4 R0
       12 NAMECALL                         R1 R1 K3 ["SetGamepadEmulationEnabledAsync"]
       14 CALL                             R1 2 0
       15 JUMPIFNOT                        R0 ; [+19]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K5 ["GAMEPAD_TYPE_TO_ID"]
       19 GETTABLEKS                       R1 R2 K4 ["TVRemote"]
       21 GETUPVAL                         R2 1
       22 MOVE                             R4 R1
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K6 ["GAMEPAD_ID_TO_ENUM"]
       26 GETTABLE                         R5 R6 R1
       27 NAMECALL                         R2 R2 K7 ["ConnectGamepadAsync"]
       29 CALL                             R2 3 0
       30 GETUPVAL                         R2 1
       31 MOVE                             R4 R1
       32 NAMECALL                         R2 R2 K8 ["SetActiveGamepadAsync"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_30:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["state"]
        5 GETTABLEKS                       R1 R1 K3 ["activeVRUserCFrames"]
        7 CALL                             R0 1 3
        8 FORGPREP_NEXT                    R0
        9 GETUPVAL                         R5 1
       10 MOVE                             R7 R3
       11 MOVE                             R8 R4
       12 NAMECALL                         R5 R5 K4 ["SetVRUserCFrameActiveAsync"]
       14 CALL                             R5 3 0
       15 FORGLOOP                         R0 2 ; [-7]
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["state"]
       21 GETTABLEKS                       R2 R2 K5 ["translationSensitivity"]
       23 NAMECALL                         R0 R0 K6 ["SetCFrameTranslationSensitivityAsync"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 LOADK                            R5 K2 ["PlaceManager"]
        5 NAMECALL                         R3 R2 K3 ["GetPluginComponent"]
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R4 R3 K4 ["PlaceDocPanelShown"]
       10 GETTABLEKS                       R6 R0 K5 ["placeOpened"]
       12 NAMECALL                         R4 R4 K6 ["Connect"]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R3 K7 ["PlaceDocPanelClosed"]
       17 GETTABLEKS                       R6 R0 K8 ["placeClosed"]
       19 NAMECALL                         R4 R4 K6 ["Connect"]
       21 CALL                             R4 2 0
       22 GETIMPORT                        R4 K10 [pcall]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R3
       26 CALL                             R4 1 2
       27 JUMPIFNOT                        R4 ; [+4]
       28 JUMPIFNOT                        R5 ; [+3]
       29 GETTABLEKS                       R6 R0 K5 ["placeOpened"]
       31 CALL                             R6 0 0
       32 GETTABLEKS                       R6 R0 K11 ["connections"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K12 ["connectOnDmChange"]
       37 MOVE                             R8 R2
       38 NEWCLOSURE                       R9 P1
       39 CAPTURE                          VAL R0
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K13 ["CurrentDataModelTypeChangedConnection"]
       43 GETTABLEKS                       R6 R0 K11 ["connections"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K14 ["connectOnDmAboutToChange"]
       48 MOVE                             R8 R2
       49 NEWCLOSURE                       R9 P2
       50 CAPTURE                          VAL R0
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R6 K15 ["CurrentDataModelTypeAboutToChangeConnection"]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K16 ["getFFlagReconnectDeviceSignalOnReopen"]
       57 CALL                             R6 0 1
       58 JUMPIF                           R6 ; [+12]
       59 GETTABLEKS                       R6 R0 K11 ["connections"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K17 ["EmulatedDeviceChanged"]
       64 GETTABLEKS                       R9 R0 K18 ["onEmulatedDeviceChanged"]
       66 NAMECALL                         R7 R7 K6 ["Connect"]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K19 ["EmulatedDeviceChangeConnection"]
       71 GETTABLEKS                       R6 R0 K11 ["connections"]
       73 GETUPVAL                         R7 2
       74 GETTABLEKS                       R7 R7 K20 ["VRUserCFrameChanged"]
       76 NEWCLOSURE                       R9 P3
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U3
       79 NAMECALL                         R7 R7 K6 ["Connect"]
       81 CALL                             R7 2 1
       82 SETTABLEKS                       R7 R6 K21 ["VRActiveUserCFrameChangedConnection"]
       84 GETTABLEKS                       R6 R0 K11 ["connections"]
       86 GETUPVAL                         R7 2
       87 GETTABLEKS                       R7 R7 K22 ["GamepadEmulatorStartUp"]
       89 NEWCLOSURE                       R9 P4
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          UPVAL U4
       93 NAMECALL                         R7 R7 K6 ["Connect"]
       95 CALL                             R7 2 1
       96 SETTABLEKS                       R7 R6 K22 ["GamepadEmulatorStartUp"]
       98 GETTABLEKS                       R6 R0 K11 ["connections"]
      100 GETUPVAL                         R7 2
      101 GETTABLEKS                       R7 R7 K23 ["VREmulatorStartUp"]
      103 NEWCLOSURE                       R9 P5
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U2
      106 NAMECALL                         R7 R7 K6 ["Connect"]
      108 CALL                             R7 2 1
      109 SETTABLEKS                       R7 R6 K23 ["VREmulatorStartUp"]
      111 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["connections"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 NAMECALL                         R6 R5 K1 ["Disconnect"]
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["callbacksRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETTABLEKS                       R0 R0 K2 ["setIsMappingsDialogOpen"]
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R0 K2 [task.delay]
        2 LOADN                            R1 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setIsMappingsDialogOpen"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["isMappingsDialogOpen"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callbacksRef"]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K1 ["current"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 GETUPVAL                         R2 0
        9 DUPTABLE                         R4 K6 [{"gamepadId", "isVRConnected", "activeVRUserCFrames", "translationSensitivity"}]
       10 GETTABLEKS                       R5 R0 K2 ["gamepadId"]
       12 SETTABLEKS                       R5 R4 K2 ["gamepadId"]
       14 GETTABLEKS                       R5 R0 K3 ["isVRConnected"]
       16 SETTABLEKS                       R5 R4 K3 ["isVRConnected"]
       18 GETTABLEKS                       R5 R0 K4 ["activeVRUserCFrames"]
       20 SETTABLEKS                       R5 R4 K4 ["activeVRUserCFrames"]
       22 GETTABLEKS                       R5 R0 K5 ["translationSensitivity"]
       24 SETTABLEKS                       R5 R4 K5 ["translationSensitivity"]
       26 NAMECALL                         R2 R2 K7 ["setState"]
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K8 ["provide"]
       32 NEWTABLE                         R3 0 5
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K9 ["new"]
       37 GETUPVAL                         R5 4
       38 CALL                             R4 1 1
       39 GETUPVAL                         R5 5
       40 GETTABLEKS                       R5 R5 K9 ["new"]
       42 GETUPVAL                         R6 4
       43 NAMECALL                         R6 R6 K10 ["getMouse"]
       45 CALL                             R6 1 -1
       46 CALL                             R5 -1 1
       47 GETUPVAL                         R6 6
       48 CALL                             R6 0 1
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K11 ["localization"]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K12 ["analytics"]
       55 SETLIST                          R3 R4 5 [1]
       57 DUPTABLE                         R4 K15 [{"MainWidget", "MappingsDialog"}]
       58 GETUPVAL                         R5 7
       59 GETTABLEKS                       R5 R5 K16 ["createElement"]
       61 GETUPVAL                         R6 8
       62 NEWTABLE                         R7 16 0
       64 LOADK                            R8 K17 ["ControlsEmulator"]
       65 SETTABLEKS                       R8 R7 K18 ["Id"]
       67 GETUPVAL                         R8 9
       68 SETTABLEKS                       R8 R7 K19 ["Enabled"]
       70 GETUPVAL                         R8 10
       71 LOADK                            R10 K13 ["MainWidget"]
       72 LOADK                            R11 K20 ["WidgetTitle"]
       73 NAMECALL                         R8 R8 K21 ["getText"]
       75 CALL                             R8 3 1
       76 SETTABLEKS                       R8 R7 K22 ["Title"]
       78 GETUPVAL                         R8 10
       79 LOADK                            R10 K23 ["Plugin"]
       80 LOADK                            R11 K24 ["Name"]
       81 NAMECALL                         R8 R8 K21 ["getText"]
       83 CALL                             R8 3 1
       84 SETTABLEKS                       R8 R7 K24 ["Name"]
       86 GETIMPORT                        R8 K28 [Enum.ZIndexBehavior.Sibling]
       88 SETTABLEKS                       R8 R7 K26 ["ZIndexBehavior"]
       90 GETIMPORT                        R8 K31 [Enum.InitialDockState.Right]
       92 SETTABLEKS                       R8 R7 K29 ["InitialDockState"]
       94 GETIMPORT                        R8 K33 [Vector2.new]
       96 LOADN                            R9 640
       97 LOADN                            R10 480
       98 CALL                             R8 2 1
       99 SETTABLEKS                       R8 R7 K34 ["Size"]
      101 GETUPVAL                         R8 0
      102 GETTABLEKS                       R8 R8 K35 ["onClose"]
      104 SETTABLEKS                       R8 R7 K36 ["OnClose"]
      106 GETUPVAL                         R8 11
      107 GETTABLEKS                       R8 R8 K37 ["PluginLoaderContext"]
      109 GETTABLEKS                       R8 R8 K38 ["mainDockWidget"]
      111 SETTABLEKS                       R8 R7 K39 ["Widget"]
      113 GETUPVAL                         R8 0
      114 GETTABLEKS                       R8 R8 K40 ["onDockWidgetCreated"]
      116 SETTABLEKS                       R8 R7 K41 ["OnWidgetCreated"]
      118 GETUPVAL                         R8 7
      119 GETTABLEKS                       R8 R8 K42 ["Change"]
      121 GETTABLEKS                       R8 R8 K19 ["Enabled"]
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R9 R9 K43 ["onWidgetEnabledChanged"]
      126 SETTABLE                         R9 R7 R8
      127 GETUPVAL                         R9 12
      128 JUMPIFNOT                        R9 ; [+4]
      129 GETUPVAL                         R8 0
      130 GETTABLEKS                       R8 R8 K44 ["design"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R8
      134 SETTABLEKS                       R8 R7 K45 ["PluginDesign"]
      136 DUPTABLE                         R8 K48 [{"LayoutContainer", "StyleLink"}]
      137 GETUPVAL                         R10 9
      138 JUMPIFNOT                        R10 ; [+252]
      139 GETUPVAL                         R9 7
      140 GETTABLEKS                       R9 R9 K16 ["createElement"]
      142 LOADK                            R10 K49 ["Frame"]
      143 NEWTABLE                         R11 1 0
      145 GETUPVAL                         R12 7
      146 GETTABLEKS                       R12 R12 K50 ["Tag"]
      148 LOADK                            R13 K51 ["X-Fill X-Column X-Center"]
      149 SETTABLE                         R13 R11 R12
      150 DUPTABLE                         R12 K55 [{"WidgetHeader", "Divider", "ScrollableBlueprintContainer"}]
      151 GETUPVAL                         R13 7
      152 GETTABLEKS                       R13 R13 K16 ["createElement"]
      154 GETUPVAL                         R14 13
      155 NEWTABLE                         R15 4 0
      157 GETUPVAL                         R16 7
      158 GETTABLEKS                       R16 R16 K50 ["Tag"]
      160 LOADK                            R17 K56 ["Component-WidgetHeader"]
      161 SETTABLE                         R17 R15 R16
      162 GETUPVAL                         R16 14
      163 NAMECALL                         R16 R16 K57 ["getNextOrder"]
      165 CALL                             R16 1 1
      166 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      168 GETUPVAL                         R16 7
      169 GETTABLEKS                       R16 R16 K16 ["createElement"]
      171 GETUPVAL                         R17 15
      172 NEWTABLE                         R18 8 0
      174 GETUPVAL                         R19 7
      175 GETTABLEKS                       R19 R19 K50 ["Tag"]
      177 LOADK                            R20 K59 ["DeviceSelectorDropdown"]
      178 SETTABLE                         R20 R18 R19
      179 GETUPVAL                         R19 14
      180 NAMECALL                         R19 R19 K57 ["getNextOrder"]
      182 CALL                             R19 1 1
      183 SETTABLEKS                       R19 R18 K58 ["LayoutOrder"]
      185 GETIMPORT                        R19 K61 [UDim2.new]
      187 LOADN                            R20 0
      188 LOADN                            R21 250
      189 LOADN                            R22 0
      190 LOADN                            R23 40
      191 CALL                             R19 4 1
      192 SETTABLEKS                       R19 R18 K34 ["Size"]
      194 GETUPVAL                         R19 1
      195 GETTABLEKS                       R19 R19 K62 ["connectGamepadId"]
      197 SETTABLEKS                       R19 R18 K63 ["onChanged"]
      199 GETTABLEKS                       R19 R0 K64 ["availableDeviceIds"]
      201 SETTABLEKS                       R19 R18 K65 ["deviceIds"]
      203 GETTABLEKS                       R19 R0 K2 ["gamepadId"]
      205 SETTABLEKS                       R19 R18 K66 ["selectedGamepadId"]
      207 CALL                             R16 2 1
      208 SETTABLEKS                       R16 R15 K67 ["leftContents"]
      210 GETUPVAL                         R16 7
      211 GETTABLEKS                       R16 R16 K16 ["createElement"]
      213 LOADK                            R17 K68 ["TextButton"]
      214 NEWTABLE                         R18 4 0
      216 GETUPVAL                         R19 7
      217 GETTABLEKS                       R19 R19 K50 ["Tag"]
      219 LOADK                            R20 K69 ["EditMappingsButton HeaderButton Secondary"]
      220 SETTABLE                         R20 R18 R19
      221 GETUPVAL                         R19 14
      222 NAMECALL                         R19 R19 K57 ["getNextOrder"]
      224 CALL                             R19 1 1
      225 SETTABLEKS                       R19 R18 K58 ["LayoutOrder"]
      227 GETUPVAL                         R19 10
      228 LOADK                            R21 K13 ["MainWidget"]
      229 LOADK                            R22 K70 ["EditMappingsButtonLabel"]
      230 NAMECALL                         R19 R19 K21 ["getText"]
      232 CALL                             R19 3 1
      233 SETTABLEKS                       R19 R18 K71 ["Text"]
      235 GETUPVAL                         R19 7
      236 GETTABLEKS                       R19 R19 K72 ["Event"]
      238 GETTABLEKS                       R19 R19 K73 ["Activated"]
      240 NEWCLOSURE                       R20 P1
      241 CAPTURE                          UPVAL U1
      242 CAPTURE                          VAL R0
      243 SETTABLE                         R20 R18 R19
      244 CALL                             R16 2 1
      245 SETTABLEKS                       R16 R15 K74 ["rightContents"]
      247 CALL                             R13 2 1
      248 SETTABLEKS                       R13 R12 K52 ["WidgetHeader"]
      250 GETUPVAL                         R13 7
      251 GETTABLEKS                       R13 R13 K16 ["createElement"]
      253 LOADK                            R14 K49 ["Frame"]
      254 NEWTABLE                         R15 2 0
      256 GETUPVAL                         R16 7
      257 GETTABLEKS                       R16 R16 K50 ["Tag"]
      259 LOADK                            R17 K75 ["CX-Divider"]
      260 SETTABLE                         R17 R15 R16
      261 GETUPVAL                         R16 14
      262 NAMECALL                         R16 R16 K57 ["getNextOrder"]
      264 CALL                             R16 1 1
      265 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      267 CALL                             R13 2 1
      268 SETTABLEKS                       R13 R12 K53 ["Divider"]
      270 GETUPVAL                         R13 7
      271 GETTABLEKS                       R13 R13 K16 ["createElement"]
      273 LOADK                            R14 K76 ["ScrollingFrame"]
      274 NEWTABLE                         R15 2 0
      276 GETUPVAL                         R16 7
      277 GETTABLEKS                       R16 R16 K50 ["Tag"]
      279 GETTABLEKS                       R18 R0 K3 ["isVRConnected"]
      281 JUMPIFNOT                        R18 ; [+2]
      282 LOADK                            R17 K77 ["Includes-VR-Footer"]
      283 JUMP                             ; [+1]
      284 LOADNIL                          R17
      285 SETTABLE                         R17 R15 R16
      286 GETUPVAL                         R16 14
      287 NAMECALL                         R16 R16 K57 ["getNextOrder"]
      289 CALL                             R16 1 1
      290 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      292 DUPTABLE                         R16 K79 [{"InputTrackingWrapper"}]
      293 GETUPVAL                         R17 7
      294 GETTABLEKS                       R17 R17 K16 ["createElement"]
      296 GETUPVAL                         R18 16
      297 NEWTABLE                         R19 0 0
      299 DUPTABLE                         R20 K82 [{"KeyboardInputsForwarder", "GamepadAndVRLayoutContainer"}]
      300 GETUPVAL                         R21 7
      301 GETTABLEKS                       R21 R21 K16 ["createElement"]
      303 GETUPVAL                         R22 17
      304 CALL                             R21 1 1
      305 SETTABLEKS                       R21 R20 K80 ["KeyboardInputsForwarder"]
      307 GETUPVAL                         R21 7
      308 GETTABLEKS                       R21 R21 K16 ["createElement"]
      310 LOADK                            R22 K49 ["Frame"]
      311 NEWTABLE                         R23 1 0
      313 GETUPVAL                         R24 7
      314 GETTABLEKS                       R24 R24 K50 ["Tag"]
      316 LOADK                            R25 K83 ["CX-Invisible X-Fill"]
      317 SETTABLE                         R25 R23 R24
      318 DUPTABLE                         R24 K86 [{"DeviceBlueprint", "VRControls"}]
      319 GETTABLEKS                       R26 R0 K2 ["gamepadId"]
      321 GETUPVAL                         R27 18
      322 GETTABLEKS                       R27 R27 K87 ["NO_CONNECTED_GAMEPAD_ID"]
      324 JUMPIFEQ                         R26 R27 ; [+23]
      326 GETUPVAL                         R25 7
      327 GETTABLEKS                       R25 R25 K16 ["createElement"]
      329 GETUPVAL                         R26 19
      330 DUPTABLE                         R27 K91 [{["LayoutOrder"], ["selectedGamepadId"], ["activeInputs"], ["displayMappings"] = True}]
      331 GETUPVAL                         R28 14
      332 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      334 CALL                             R28 1 1
      335 SETTABLEKS                       R28 R27 K58 ["LayoutOrder"]
      337 GETTABLEKS                       R28 R0 K2 ["gamepadId"]
      339 SETTABLEKS                       R28 R27 K66 ["selectedGamepadId"]
      341 GETUPVAL                         R28 20
      342 GETTABLEKS                       R28 R28 K88 ["activeInputs"]
      344 SETTABLEKS                       R28 R27 K88 ["activeInputs"]
      346 CALL                             R25 2 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R25
      349 SETTABLEKS                       R25 R24 K84 ["DeviceBlueprint"]
      351 GETTABLEKS                       R26 R0 K3 ["isVRConnected"]
      353 JUMPIFNOT                        R26 ; [+23]
      354 GETUPVAL                         R25 7
      355 GETTABLEKS                       R25 R25 K16 ["createElement"]
      357 GETUPVAL                         R26 21
      358 DUPTABLE                         R27 K94 [{"LayoutOrder", "shouldShowTooltip", "inPlayClient"}]
      359 GETUPVAL                         R28 14
      360 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      362 CALL                             R28 1 1
      363 SETTABLEKS                       R28 R27 K58 ["LayoutOrder"]
      365 GETUPVAL                         R28 20
      366 GETTABLEKS                       R28 R28 K92 ["shouldShowTooltip"]
      368 SETTABLEKS                       R28 R27 K92 ["shouldShowTooltip"]
      370 GETUPVAL                         R28 20
      371 GETTABLEKS                       R28 R28 K93 ["inPlayClient"]
      373 SETTABLEKS                       R28 R27 K93 ["inPlayClient"]
      375 CALL                             R25 2 1
      376 JUMP                             ; [+1]
      377 LOADNIL                          R25
      378 SETTABLEKS                       R25 R24 K85 ["VRControls"]
      380 CALL                             R21 3 1
      381 SETTABLEKS                       R21 R20 K81 ["GamepadAndVRLayoutContainer"]
      383 CALL                             R17 3 1
      384 SETTABLEKS                       R17 R16 K78 ["InputTrackingWrapper"]
      386 CALL                             R13 3 1
      387 SETTABLEKS                       R13 R12 K54 ["ScrollableBlueprintContainer"]
      389 CALL                             R9 3 1
      390 JUMP                             ; [+1]
      391 LOADNIL                          R9
      392 SETTABLEKS                       R9 R8 K46 ["LayoutContainer"]
      394 GETUPVAL                         R10 12
      395 JUMPIF                           R10 ; [+12]
      396 GETUPVAL                         R9 7
      397 GETTABLEKS                       R9 R9 K16 ["createElement"]
      399 LOADK                            R10 K47 ["StyleLink"]
      400 DUPTABLE                         R11 K96 [{"StyleSheet"}]
      401 GETUPVAL                         R12 0
      402 GETTABLEKS                       R12 R12 K44 ["design"]
      404 SETTABLEKS                       R12 R11 K95 ["StyleSheet"]
      406 CALL                             R9 2 1
      407 JUMP                             ; [+1]
      408 LOADNIL                          R9
      409 SETTABLEKS                       R9 R8 K47 ["StyleLink"]
      411 CALL                             R5 3 1
      412 SETTABLEKS                       R5 R4 K13 ["MainWidget"]
      414 GETTABLEKS                       R6 R0 K97 ["isMappingsDialogOpen"]
      416 JUMPIFNOT                        R6 ; [+78]
      417 GETUPVAL                         R5 7
      418 GETTABLEKS                       R5 R5 K16 ["createElement"]
      420 GETUPVAL                         R6 22
      421 DUPTABLE                         R7 K105 [{["Id"] = "ControlsEmulatorMappings", ["Enabled"] = True, ["Title"] = "Edit Mappings", ["ZIndexBehavior"], ["Resizable"] = True, ["ZIndex"] = 10, ["Modal"] = True, ["Size"], ["MinSize"], ["OnClose"], ["PluginDesign"]}]
      422 GETIMPORT                        R8 K28 [Enum.ZIndexBehavior.Sibling]
      424 SETTABLEKS                       R8 R7 K26 ["ZIndexBehavior"]
      426 GETIMPORT                        R8 K33 [Vector2.new]
      428 LOADN                            R9 600
      429 LOADN                            R10 620
      430 CALL                             R8 2 1
      431 SETTABLEKS                       R8 R7 K34 ["Size"]
      433 GETIMPORT                        R8 K33 [Vector2.new]
      435 LOADN                            R9 400
      436 LOADN                            R10 400
      437 CALL                             R8 2 1
      438 SETTABLEKS                       R8 R7 K104 ["MinSize"]
      440 SETTABLEKS                       R1 R7 K36 ["OnClose"]
      442 GETUPVAL                         R9 12
      443 JUMPIFNOT                        R9 ; [+4]
      444 GETUPVAL                         R8 0
      445 GETTABLEKS                       R8 R8 K44 ["design"]
      447 JUMP                             ; [+1]
      448 LOADNIL                          R8
      449 SETTABLEKS                       R8 R7 K45 ["PluginDesign"]
      451 DUPTABLE                         R8 K106 [{"InputTrackingWrapper", "StyleLink"}]
      452 GETUPVAL                         R9 7
      453 GETTABLEKS                       R9 R9 K16 ["createElement"]
      455 GETUPVAL                         R10 16
      456 NEWTABLE                         R11 0 0
      458 DUPTABLE                         R12 K107 [{"KeyboardInputsForwarder", "MappingsDialog"}]
      459 GETUPVAL                         R13 7
      460 GETTABLEKS                       R13 R13 K16 ["createElement"]
      462 GETUPVAL                         R14 17
      463 CALL                             R13 1 1
      464 SETTABLEKS                       R13 R12 K80 ["KeyboardInputsForwarder"]
      466 GETUPVAL                         R13 7
      467 GETTABLEKS                       R13 R13 K16 ["createElement"]
      469 GETUPVAL                         R14 23
      470 CALL                             R13 1 1
      471 SETTABLEKS                       R13 R12 K14 ["MappingsDialog"]
      473 CALL                             R9 3 1
      474 SETTABLEKS                       R9 R8 K78 ["InputTrackingWrapper"]
      476 GETUPVAL                         R10 12
      477 JUMPIF                           R10 ; [+12]
      478 GETUPVAL                         R9 7
      479 GETTABLEKS                       R9 R9 K16 ["createElement"]
      481 LOADK                            R10 K47 ["StyleLink"]
      482 DUPTABLE                         R11 K96 [{"StyleSheet"}]
      483 GETUPVAL                         R12 0
      484 GETTABLEKS                       R12 R12 K44 ["design"]
      486 SETTABLEKS                       R12 R11 K95 ["StyleSheet"]
      488 CALL                             R9 2 1
      489 JUMP                             ; [+1]
      490 LOADNIL                          R9
      491 SETTABLEKS                       R9 R8 K47 ["StyleLink"]
      493 CALL                             R5 3 1
      494 JUMP                             ; [+1]
      495 LOADNIL                          R5
      496 SETTABLEKS                       R5 R4 K14 ["MappingsDialog"]
      498 CALL                             R2 2 -1
      499 RETURN                           R2 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 LOADNIL                          R3
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 CAPTURE                          UPVAL U16
       25 CAPTURE                          UPVAL U17
       26 CAPTURE                          UPVAL U18
       27 CAPTURE                          UPVAL U19
       28 CAPTURE                          UPVAL U20
       29 CAPTURE                          UPVAL U21
       30 CAPTURE                          UPVAL U22
       31 CAPTURE                          UPVAL U23
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R0 K3 ["localization"]
        8 GETTABLEKS                       R5 R2 K4 ["enabled"]
       10 JUMPIFNOT                        R5 ; [+2]
       11 GETTABLEKS                       R5 R2 K5 ["uiDmLoaded"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K6 ["createElement"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K7 ["Consumer"]
       19 LOADNIL                          R8
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U9
       35 CAPTURE                          UPVAL U10
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U13
       39 CAPTURE                          UPVAL U14
       40 CAPTURE                          UPVAL U15
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U16
       43 CAPTURE                          UPVAL U17
       44 CAPTURE                          UPVAL U18
       45 CALL                             R6 3 -1
       46 RETURN                           R6 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"getLocalization"}]
        5 GETGLOBAL                        R4 K1 ["getLocalization"]
        7 SETTABLEKS                       R4 R3 K1 ["getLocalization"]
        9 DUPTABLE                         R4 K4 [{"MainPlugin"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 MOVE                             R7 R0
       15 CALL                             R5 2 1
       16 SETTABLEKS                       R5 R4 K3 ["MainPlugin"]
       18 CALL                             R1 3 -1
       19 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K10 ["getFFlagDevFrameworkUsePluginDesign"]
       25 CALL                             R3 0 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Packages"]
       30 GETTABLEKS                       R5 R5 K11 ["Cryo"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Bin"]
       37 GETTABLEKS                       R6 R6 K13 ["Common"]
       39 GETTABLEKS                       R6 R6 K14 ["defineLuaFlags"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K15 ["UI"]
       44 GETTABLEKS                       R6 R6 K16 ["DockWidget"]
       46 GETTABLEKS                       R7 R2 K15 ["UI"]
       48 GETTABLEKS                       R7 R7 K17 ["Dialog"]
       50 GETTABLEKS                       R8 R2 K18 ["Util"]
       52 GETTABLEKS                       R8 R8 K19 ["LayoutOrderIterator"]
       54 GETTABLEKS                       R9 R8 K20 ["new"]
       56 CALL                             R9 0 1
       57 GETTABLEKS                       R10 R2 K21 ["ContextServices"]
       59 GETTABLEKS                       R11 R10 K22 ["Plugin"]
       61 GETTABLEKS                       R12 R10 K23 ["Mouse"]
       63 GETIMPORT                        R13 K5 [require]
       65 GETTABLEKS                       R14 R0 K24 ["Src"]
       67 GETTABLEKS                       R14 R14 K25 ["Resources"]
       69 GETTABLEKS                       R14 R14 K26 ["MakeTheme"]
       71 CALL                             R13 1 1
       72 GETTABLEKS                       R14 R2 K27 ["Style"]
       74 GETTABLEKS                       R14 R14 K28 ["Themes"]
       76 GETTABLEKS                       R14 R14 K29 ["StudioTheme"]
       78 GETTABLEKS                       R15 R2 K30 ["Styling"]
       80 GETTABLEKS                       R15 R15 K31 ["registerPluginStyles"]
       82 GETTABLEKS                       R16 R0 K24 ["Src"]
       84 GETTABLEKS                       R16 R16 K25 ["Resources"]
       86 GETTABLEKS                       R17 R16 K32 ["Localization"]
       88 GETTABLEKS                       R17 R17 K33 ["SourceStrings"]
       90 GETTABLEKS                       R18 R16 K32 ["Localization"]
       92 GETTABLEKS                       R18 R18 K34 ["LocalizedStrings"]
       94 GETTABLEKS                       R19 R0 K24 ["Src"]
       96 GETTABLEKS                       R19 R19 K35 ["Components"]
       98 GETIMPORT                        R20 K5 [require]
      100 GETTABLEKS                       R21 R19 K36 ["DeviceBlueprint"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K5 [require]
      105 GETTABLEKS                       R22 R19 K37 ["DeviceDropdown"]
      107 CALL                             R21 1 1
      108 GETIMPORT                        R22 K5 [require]
      110 GETTABLEKS                       R23 R19 K38 ["WidgetHeader"]
      112 CALL                             R22 1 1
      113 GETIMPORT                        R23 K5 [require]
      115 GETTABLEKS                       R24 R0 K24 ["Src"]
      117 GETTABLEKS                       R24 R24 K18 ["Util"]
      119 GETTABLEKS                       R24 R24 K39 ["Constants"]
      121 CALL                             R23 1 1
      122 GETIMPORT                        R24 K5 [require]
      124 GETTABLEKS                       R25 R0 K24 ["Src"]
      126 GETTABLEKS                       R25 R25 K35 ["Components"]
      128 GETTABLEKS                       R25 R25 K40 ["RootContainerInputContextProvider"]
      130 CALL                             R24 1 1
      131 GETIMPORT                        R25 K5 [require]
      133 GETTABLEKS                       R26 R0 K24 ["Src"]
      135 GETTABLEKS                       R26 R26 K35 ["Components"]
      137 GETTABLEKS                       R26 R26 K41 ["MappingsContextProvider"]
      139 CALL                             R25 1 1
      140 GETIMPORT                        R26 K5 [require]
      142 GETTABLEKS                       R27 R0 K24 ["Src"]
      144 GETTABLEKS                       R27 R27 K18 ["Util"]
      146 GETTABLEKS                       R27 R27 K42 ["MappingsContext"]
      148 CALL                             R26 1 1
      149 GETIMPORT                        R27 K5 [require]
      151 GETTABLEKS                       R28 R0 K24 ["Src"]
      153 GETTABLEKS                       R28 R28 K18 ["Util"]
      155 GETTABLEKS                       R28 R28 K43 ["MappingsActionsContext"]
      157 CALL                             R27 1 1
      158 GETIMPORT                        R28 K5 [require]
      160 GETTABLEKS                       R29 R0 K24 ["Src"]
      162 GETTABLEKS                       R29 R29 K18 ["Util"]
      164 GETTABLEKS                       R29 R29 K44 ["MockableProxyPluginComponents"]
      166 CALL                             R28 1 1
      167 GETTABLEKS                       R28 R28 K45 ["StudioDeviceEmulator"]
      169 GETIMPORT                        R29 K5 [require]
      171 GETTABLEKS                       R30 R0 K24 ["Src"]
      173 GETTABLEKS                       R30 R30 K35 ["Components"]
      175 GETTABLEKS                       R30 R30 K46 ["MappingsDialog"]
      177 CALL                             R29 1 1
      178 GETIMPORT                        R30 K5 [require]
      180 GETTABLEKS                       R31 R0 K24 ["Src"]
      182 GETTABLEKS                       R31 R31 K35 ["Components"]
      184 GETTABLEKS                       R31 R31 K47 ["KeyboardInputsForwarder"]
      186 CALL                             R30 1 1
      187 GETIMPORT                        R31 K5 [require]
      189 GETTABLEKS                       R32 R0 K24 ["Src"]
      191 GETTABLEKS                       R32 R32 K18 ["Util"]
      193 GETTABLEKS                       R32 R32 K48 ["activeInputsReducer"]
      195 CALL                             R31 1 1
      196 GETIMPORT                        R32 K5 [require]
      198 GETTABLEKS                       R33 R0 K24 ["Src"]
      200 GETTABLEKS                       R33 R33 K35 ["Components"]
      202 GETTABLEKS                       R33 R33 K49 ["VRControls"]
      204 CALL                             R32 1 1
      205 GETTABLEKS                       R33 R1 K50 ["PureComponent"]
      207 LOADK                            R35 K51 ["MainPlugin"]
      208 NAMECALL                         R33 R33 K52 ["extend"]
      210 CALL                             R33 2 1
      211 GETIMPORT                        R34 K5 [require]
      213 GETTABLEKS                       R35 R0 K24 ["Src"]
      215 GETTABLEKS                       R35 R35 K18 ["Util"]
      217 GETTABLEKS                       R35 R35 K53 ["DmBridge"]
      219 CALL                             R34 1 1
      220 LOADNIL                          R35
      221 NEWCLOSURE                       R36 P0
      222 CAPTURE                          REF R35
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R18
      226 SETGLOBAL                        R36 K54 ["getLocalization"]
      228 DUPCLOSURE                       R36 K55 [PROTO_20]
      229 CAPTURE                          VAL R23
      230 CAPTURE                          VAL R1
      231 CAPTURE                          VAL R28
      232 CAPTURE                          VAL R31
      233 CAPTURE                          VAL R5
      234 CAPTURE                          VAL R10
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R15
      237 SETTABLEKS                       R36 R33 K56 ["init"]
      239 DUPCLOSURE                       R36 K57 [PROTO_22]
      240 CAPTURE                          VAL R23
      241 SETTABLEKS                       R36 R33 K58 ["didUpdate"]
      243 DUPCLOSURE                       R36 K59 [PROTO_33]
      244 CAPTURE                          VAL R34
      245 CAPTURE                          VAL R5
      246 CAPTURE                          VAL R28
      247 CAPTURE                          VAL R4
      248 CAPTURE                          VAL R23
      249 SETTABLEKS                       R36 R33 K60 ["didMount"]
      251 DUPCLOSURE                       R36 K61 [PROTO_34]
      252 SETTABLEKS                       R36 R33 K62 ["willUnmount"]
      254 DUPCLOSURE                       R36 K63 [PROTO_40]
      255 CAPTURE                          VAL R1
      256 CAPTURE                          VAL R27
      257 CAPTURE                          VAL R26
      258 CAPTURE                          VAL R10
      259 CAPTURE                          VAL R11
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R13
      262 CAPTURE                          VAL R6
      263 CAPTURE                          VAL R3
      264 CAPTURE                          VAL R22
      265 CAPTURE                          VAL R9
      266 CAPTURE                          VAL R21
      267 CAPTURE                          VAL R24
      268 CAPTURE                          VAL R30
      269 CAPTURE                          VAL R23
      270 CAPTURE                          VAL R20
      271 CAPTURE                          VAL R32
      272 CAPTURE                          VAL R7
      273 CAPTURE                          VAL R29
      274 SETTABLEKS                       R36 R33 K64 ["render"]
      276 DUPCLOSURE                       R36 K65 [PROTO_41]
      277 CAPTURE                          VAL R1
      278 CAPTURE                          VAL R25
      279 CAPTURE                          VAL R33
      280 CLOSEUPVALS                      R35
      281 RETURN                           R36 1
