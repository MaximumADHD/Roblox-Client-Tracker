PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+17]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["new"]
        7 DUPTABLE                         R1 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        8 GETUPVAL                         R2 2
        9 SETTABLEKS                       R2 R1 K2 ["stringResourceTable"]
       11 GETUPVAL                         R2 3
       12 SETTABLEKS                       R2 R1 K3 ["translationResourceTable"]
       14 LOADK                            R2 K6 ["ControlsEmulator"]
       15 SETTABLEKS                       R2 R1 K4 ["pluginName"]
       17 CALL                             R0 1 1
       18 SETUPVAL                         R0 0
       19 GETUPVAL                         R0 0
       20 RETURN                           R0 1

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
        9 DUPTABLE                         R2 K2 [{"enabled"}]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K1 ["enabled"]
       13 NAMECALL                         R0 R0 K3 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

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
       12 GETTABLEKS                       R3 R1 K6 ["platform"]
       14 GETTABLEKS                       R4 R1 K7 ["deviceId"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K8 ["getFFlagRemoveAutoOpenBehavior"]
       20 CALL                             R3 0 1
       21 JUMPIF                           R3 ; [+9]
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETUPVAL                         R3 3
       24 DUPTABLE                         R5 K10 [{"enabled"}]
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K9 ["enabled"]
       28 NAMECALL                         R3 R3 K11 ["setState"]
       30 CALL                             R3 2 0
       31 GETUPVAL                         R3 3
       32 DUPTABLE                         R5 K13 [{"uiDmLoaded"}]
       33 LOADB                            R6 1
       34 SETTABLEKS                       R6 R5 K12 ["uiDmLoaded"]
       36 NAMECALL                         R3 R3 K11 ["setState"]
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"uiDmLoaded"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["uiDmLoaded"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_18:
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
       26 DUPTABLE                         R5 K18 [{"enabled", "inPlayClient", "uiDmLoaded", "tooltipCount", "shouldShowTooltip", "wrapperRef", "activeInputs", "isVRConnected", "activeVRUserCFrames", "translationSensitivity"}]
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K8 ["enabled"]
       30 LOADB                            R6 0
       31 SETTABLEKS                       R6 R5 K9 ["inPlayClient"]
       33 LOADB                            R6 0
       34 SETTABLEKS                       R6 R5 K10 ["uiDmLoaded"]
       36 SETTABLEKS                       R3 R5 K11 ["tooltipCount"]
       38 SETTABLEKS                       R4 R5 K12 ["shouldShowTooltip"]
       40 LOADNIL                          R6
       41 SETTABLEKS                       R6 R5 K13 ["wrapperRef"]
       43 NEWTABLE                         R6 0 0
       45 SETTABLEKS                       R6 R5 K14 ["activeInputs"]
       47 LOADB                            R6 0
       48 SETTABLEKS                       R6 R5 K15 ["isVRConnected"]
       50 NEWTABLE                         R6 4 0
       52 GETIMPORT                        R7 K22 [Enum.UserCFrame.Head]
       54 LOADB                            R8 1
       55 SETTABLE                         R8 R6 R7
       56 GETIMPORT                        R7 K24 [Enum.UserCFrame.LeftHand]
       58 LOADB                            R8 1
       59 SETTABLE                         R8 R6 R7
       60 GETIMPORT                        R7 K26 [Enum.UserCFrame.RightHand]
       62 LOADB                            R8 1
       63 SETTABLE                         R8 R6 R7
       64 SETTABLEKS                       R6 R5 K16 ["activeVRUserCFrames"]
       66 LOADN                            R6 5
       67 SETTABLEKS                       R6 R5 K17 ["translationSensitivity"]
       69 SETTABLEKS                       R5 R0 K27 ["state"]
       71 NEWCLOSURE                       R5 P0
       72 CAPTURE                          VAL R0
       73 NEWCLOSURE                       R6 P1
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R6 R0 K28 ["toggleEnabled"]
       77 NEWCLOSURE                       R6 P2
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R6 R0 K29 ["onClose"]
       81 NEWCLOSURE                       R6 P3
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R6 R0 K30 ["onRestore"]
       85 NEWCLOSURE                       R6 P4
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R6 R0 K31 ["onWidgetEnabledChanged"]
       89 NEWCLOSURE                       R6 P5
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          UPVAL U3
       93 SETTABLEKS                       R6 R0 K32 ["onDockWidgetCreated"]
       95 NEWCLOSURE                       R6 P6
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          UPVAL U5
       99 CAPTURE                          VAL R0
      100 SETTABLEKS                       R6 R0 K33 ["placeOpened"]
      102 NEWCLOSURE                       R6 P7
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R6 R0 K34 ["placeClosed"]
      106 NEWCLOSURE                       R6 P8
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U0
      110 SETTABLEKS                       R6 R0 K35 ["connectGamepad"]
      112 NEWCLOSURE                       R6 P9
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R6 R0 K36 ["disconnectGamepad"]
      117 GETGLOBAL                        R6 K37 ["getLocalization"]
      119 CALL                             R6 0 1
      120 SETTABLEKS                       R6 R0 K38 ["localization"]
      122 GETUPVAL                         R6 6
      123 GETTABLEKS                       R6 R6 K39 ["Analytics"]
      125 GETTABLEKS                       R6 R6 K40 ["new"]
      127 DUPCLOSURE                       R7 K41 [PROTO_17]
      128 NEWTABLE                         R8 0 0
      130 CALL                             R6 2 1
      131 SETTABLEKS                       R6 R0 K42 ["analytics"]
      133 GETUPVAL                         R6 7
      134 GETTABLEKS                       R6 R6 K40 ["new"]
      136 CALL                             R6 0 1
      137 SETTABLEKS                       R6 R0 K43 ["DEPRECATED_stylizer"]
      139 GETUPVAL                         R6 8
      140 GETTABLEKS                       R7 R1 K0 ["Plugin"]
      142 CALL                             R6 1 1
      143 SETTABLEKS                       R6 R0 K44 ["design"]
      145 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["isVRConnected"]
        2 JUMPIFNOT                        R1 ; [+25]
        3 GETTABLEKS                       R1 R0 K1 ["shouldShowTooltip"]
        5 JUMPIFNOT                        R1 ; [+22]
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
       23 DUPTABLE                         R2 K9 [{"shouldShowTooltip"}]
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K1 ["shouldShowTooltip"]
       27 RETURN                           R2 1
       28 DUPTABLE                         R1 K9 [{"shouldShowTooltip"}]
       29 GETTABLEKS                       R2 R0 K1 ["shouldShowTooltip"]
       31 SETTABLEKS                       R2 R1 K1 ["shouldShowTooltip"]
       33 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R3 R3 K2 ["mainButton"]
        6 GETTABLEKS                       R5 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R5 K4 ["enabled"]
       10 NAMECALL                         R3 R3 K5 ["SetActive"]
       12 CALL                             R3 2 0
       13 GETTABLEKS                       R3 R0 K3 ["state"]
       15 GETTABLEKS                       R3 R3 K6 ["inPlayClient"]
       17 JUMPIFNOT                        R3 ; [+23]
       18 GETTABLEKS                       R3 R2 K4 ["enabled"]
       20 JUMPIF                           R3 ; [+9]
       21 GETTABLEKS                       R3 R0 K3 ["state"]
       23 GETTABLEKS                       R3 R3 K4 ["enabled"]
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEKS                       R3 R0 K7 ["connectGamepad"]
       28 CALL                             R3 0 0
       29 JUMP                             ; [+11]
       30 GETTABLEKS                       R3 R2 K4 ["enabled"]
       32 JUMPIFNOT                        R3 ; [+8]
       33 GETTABLEKS                       R3 R0 K3 ["state"]
       35 GETTABLEKS                       R3 R3 K4 ["enabled"]
       37 JUMPIF                           R3 ; [+3]
       38 GETTABLEKS                       R3 R0 K8 ["disconnectGamepad"]
       40 CALL                             R3 0 0
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U0
       44 NAMECALL                         R3 R0 K9 ["setState"]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_22:
        0 DUPTABLE                         R0 K1 [{"inPlayClient"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["inPlayClient"]
        4 RETURN                           R0 1

PROTO_23:
        0 LOADB                            R1 0
        1 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.PlayClient]
        3 JUMPIFNOTEQ                      R0 R2 ; [+13]
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["state"]
        9 GETTABLEKS                       R2 R2 K5 ["enabled"]
       11 JUMPIFNOT                        R2 ; [+10]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["connectGamepad"]
       15 CALL                             R2 0 0
       16 JUMP                             ; [+5]
       17 GETIMPORT                        R2 K8 [Enum.StudioDataModelType.Edit]
       19 JUMPIFNOTEQ                      R0 R2 ; [+2]
       21 LOADB                            R1 0
       22 GETUPVAL                         R2 0
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          REF R1
       25 NAMECALL                         R2 R2 K9 ["setState"]
       27 CALL                             R2 2 0
       28 CLOSEUPVALS                      R1
       29 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.PlayClient]
        2 JUMPIFNOTEQ                      R0 R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K4 ["disconnectGamepad"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["platform"]
        3 GETTABLEKS                       R3 R0 K1 ["deviceId"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["callbacksRef"]
        9 JUMPIFNOT                        R2 ; [+23]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["callbacksRef"]
       13 GETTABLEKS                       R2 R2 K3 ["current"]
       15 JUMPIFNOT                        R2 ; [+17]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K2 ["callbacksRef"]
       19 GETTABLEKS                       R2 R2 K3 ["current"]
       21 GETTABLEKS                       R2 R2 K4 ["changeEmulatedDevice"]
       23 JUMPIFNOT                        R2 ; [+9]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K2 ["callbacksRef"]
       27 GETTABLEKS                       R2 R2 K3 ["current"]
       29 GETTABLEKS                       R2 R2 K4 ["changeEmulatedDevice"]
       31 MOVE                             R3 R0
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K5 ["getFFlagRemoveAutoOpenBehavior"]
       36 CALL                             R2 0 1
       37 JUMPIF                           R2 ; [+11]
       38 GETUPVAL                         R2 1
       39 DUPTABLE                         R4 K7 [{"enabled"}]
       40 JUMPIFNOTEQKNIL                  R1 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 SETTABLEKS                       R5 R4 K6 ["enabled"]
       46 NAMECALL                         R2 R2 K8 ["setState"]
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["state"]
        4 GETTABLEKS                       R2 R2 K1 ["enabled"]
        6 NAMECALL                         R0 R0 K2 ["SetGamepadEmulationEnabledAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_29:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_32:
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
       54 GETTABLEKS                       R6 R0 K11 ["connections"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K16 ["EmulatedDeviceChanged"]
       59 NEWCLOSURE                       R9 P3
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U3
       63 NAMECALL                         R7 R7 K6 ["Connect"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K17 ["EmulatedDeviceChangeConnection"]
       68 GETTABLEKS                       R6 R0 K11 ["connections"]
       70 GETUPVAL                         R7 1
       71 GETTABLEKS                       R7 R7 K18 ["VRUserCFrameChanged"]
       73 NEWCLOSURE                       R9 P4
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U4
       76 NAMECALL                         R7 R7 K6 ["Connect"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K19 ["VRActiveUserCFrameChangedConnection"]
       81 GETTABLEKS                       R6 R0 K11 ["connections"]
       83 GETUPVAL                         R7 1
       84 GETTABLEKS                       R7 R7 K20 ["GamepadEmulatorStartUp"]
       86 NEWCLOSURE                       R9 P5
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          VAL R0
       89 NAMECALL                         R7 R7 K6 ["Connect"]
       91 CALL                             R7 2 1
       92 SETTABLEKS                       R7 R6 K20 ["GamepadEmulatorStartUp"]
       94 GETTABLEKS                       R6 R0 K11 ["connections"]
       96 GETUPVAL                         R7 1
       97 GETTABLEKS                       R7 R7 K21 ["VREmulatorStartUp"]
       99 NEWCLOSURE                       R9 P6
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U1
      102 NAMECALL                         R7 R7 K6 ["Connect"]
      104 CALL                             R7 2 1
      105 SETTABLEKS                       R7 R6 K21 ["VREmulatorStartUp"]
      107 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["connections"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 NAMECALL                         R6 R5 K1 ["Disconnect"]
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["callbacksRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETTABLEKS                       R0 R0 K2 ["setIsMappingsDialogOpen"]
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_35:
        0 GETIMPORT                        R0 K2 [task.delay]
        2 LOADN                            R1 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setIsMappingsDialogOpen"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["isMappingsDialogOpen"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_37:
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
       96 LOADN                            R9 128
       97 LOADN                            R10 224
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
      127 DUPTABLE                         R8 K46 [{"LayoutContainer", "StyleLink"}]
      128 GETUPVAL                         R10 9
      129 JUMPIFNOT                        R10 ; [+255]
      130 GETUPVAL                         R9 7
      131 GETTABLEKS                       R9 R9 K16 ["createElement"]
      133 LOADK                            R10 K47 ["Frame"]
      134 NEWTABLE                         R11 1 0
      136 GETUPVAL                         R12 7
      137 GETTABLEKS                       R12 R12 K48 ["Tag"]
      139 LOADK                            R13 K49 ["X-Fill X-Column X-Center"]
      140 SETTABLE                         R13 R11 R12
      141 DUPTABLE                         R12 K53 [{"WidgetHeader", "Divider", "ScrollableBlueprintContainer"}]
      142 GETUPVAL                         R13 7
      143 GETTABLEKS                       R13 R13 K16 ["createElement"]
      145 GETUPVAL                         R14 12
      146 NEWTABLE                         R15 4 0
      148 GETUPVAL                         R16 7
      149 GETTABLEKS                       R16 R16 K48 ["Tag"]
      151 LOADK                            R17 K54 ["Component-WidgetHeader"]
      152 SETTABLE                         R17 R15 R16
      153 GETUPVAL                         R16 13
      154 NAMECALL                         R16 R16 K55 ["getNextOrder"]
      156 CALL                             R16 1 1
      157 SETTABLEKS                       R16 R15 K56 ["LayoutOrder"]
      159 GETUPVAL                         R16 7
      160 GETTABLEKS                       R16 R16 K16 ["createElement"]
      162 GETUPVAL                         R17 14
      163 NEWTABLE                         R18 8 0
      165 GETUPVAL                         R19 7
      166 GETTABLEKS                       R19 R19 K48 ["Tag"]
      168 LOADK                            R20 K57 ["DeviceSelectorDropdown"]
      169 SETTABLE                         R20 R18 R19
      170 GETUPVAL                         R19 13
      171 NAMECALL                         R19 R19 K55 ["getNextOrder"]
      173 CALL                             R19 1 1
      174 SETTABLEKS                       R19 R18 K56 ["LayoutOrder"]
      176 GETIMPORT                        R19 K59 [UDim2.new]
      178 LOADN                            R20 0
      179 LOADN                            R21 250
      180 LOADN                            R22 0
      181 LOADN                            R23 40
      182 CALL                             R19 4 1
      183 SETTABLEKS                       R19 R18 K34 ["Size"]
      185 GETUPVAL                         R19 1
      186 GETTABLEKS                       R19 R19 K60 ["connectGamepadId"]
      188 SETTABLEKS                       R19 R18 K61 ["onChanged"]
      190 GETTABLEKS                       R19 R0 K62 ["availableDeviceIds"]
      192 SETTABLEKS                       R19 R18 K63 ["deviceIds"]
      194 GETTABLEKS                       R19 R0 K2 ["gamepadId"]
      196 SETTABLEKS                       R19 R18 K64 ["selectedGamepadId"]
      198 CALL                             R16 2 1
      199 SETTABLEKS                       R16 R15 K65 ["leftContents"]
      201 GETUPVAL                         R16 7
      202 GETTABLEKS                       R16 R16 K16 ["createElement"]
      204 LOADK                            R17 K66 ["TextButton"]
      205 NEWTABLE                         R18 4 0
      207 GETUPVAL                         R19 7
      208 GETTABLEKS                       R19 R19 K48 ["Tag"]
      210 LOADK                            R20 K67 ["EditMappingsButton HeaderButton Secondary"]
      211 SETTABLE                         R20 R18 R19
      212 GETUPVAL                         R19 13
      213 NAMECALL                         R19 R19 K55 ["getNextOrder"]
      215 CALL                             R19 1 1
      216 SETTABLEKS                       R19 R18 K56 ["LayoutOrder"]
      218 GETUPVAL                         R19 10
      219 LOADK                            R21 K13 ["MainWidget"]
      220 LOADK                            R22 K68 ["EditMappingsButtonLabel"]
      221 NAMECALL                         R19 R19 K21 ["getText"]
      223 CALL                             R19 3 1
      224 SETTABLEKS                       R19 R18 K69 ["Text"]
      226 GETUPVAL                         R19 7
      227 GETTABLEKS                       R19 R19 K70 ["Event"]
      229 GETTABLEKS                       R19 R19 K71 ["Activated"]
      231 NEWCLOSURE                       R20 P1
      232 CAPTURE                          UPVAL U1
      233 CAPTURE                          VAL R0
      234 SETTABLE                         R20 R18 R19
      235 CALL                             R16 2 1
      236 SETTABLEKS                       R16 R15 K72 ["rightContents"]
      238 CALL                             R13 2 1
      239 SETTABLEKS                       R13 R12 K50 ["WidgetHeader"]
      241 GETUPVAL                         R13 7
      242 GETTABLEKS                       R13 R13 K16 ["createElement"]
      244 LOADK                            R14 K47 ["Frame"]
      245 NEWTABLE                         R15 2 0
      247 GETUPVAL                         R16 7
      248 GETTABLEKS                       R16 R16 K48 ["Tag"]
      250 LOADK                            R17 K73 ["CX-Divider"]
      251 SETTABLE                         R17 R15 R16
      252 GETUPVAL                         R16 13
      253 NAMECALL                         R16 R16 K55 ["getNextOrder"]
      255 CALL                             R16 1 1
      256 SETTABLEKS                       R16 R15 K56 ["LayoutOrder"]
      258 CALL                             R13 2 1
      259 SETTABLEKS                       R13 R12 K51 ["Divider"]
      261 GETUPVAL                         R13 7
      262 GETTABLEKS                       R13 R13 K16 ["createElement"]
      264 LOADK                            R14 K74 ["ScrollingFrame"]
      265 NEWTABLE                         R15 2 0
      267 GETUPVAL                         R16 7
      268 GETTABLEKS                       R16 R16 K48 ["Tag"]
      270 GETTABLEKS                       R18 R0 K3 ["isVRConnected"]
      272 JUMPIFNOT                        R18 ; [+2]
      273 LOADK                            R17 K75 ["Includes-VR-Footer"]
      274 JUMP                             ; [+1]
      275 LOADNIL                          R17
      276 SETTABLE                         R17 R15 R16
      277 GETUPVAL                         R16 13
      278 NAMECALL                         R16 R16 K55 ["getNextOrder"]
      280 CALL                             R16 1 1
      281 SETTABLEKS                       R16 R15 K56 ["LayoutOrder"]
      283 DUPTABLE                         R16 K77 [{"InputTrackingWrapper"}]
      284 GETUPVAL                         R17 7
      285 GETTABLEKS                       R17 R17 K16 ["createElement"]
      287 GETUPVAL                         R18 15
      288 NEWTABLE                         R19 0 0
      290 DUPTABLE                         R20 K80 [{"KeyboardInputsForwarder", "GamepadAndVRLayoutContainer"}]
      291 GETUPVAL                         R21 7
      292 GETTABLEKS                       R21 R21 K16 ["createElement"]
      294 GETUPVAL                         R22 16
      295 CALL                             R21 1 1
      296 SETTABLEKS                       R21 R20 K78 ["KeyboardInputsForwarder"]
      298 GETUPVAL                         R21 7
      299 GETTABLEKS                       R21 R21 K16 ["createElement"]
      301 LOADK                            R22 K47 ["Frame"]
      302 NEWTABLE                         R23 1 0
      304 GETUPVAL                         R24 7
      305 GETTABLEKS                       R24 R24 K48 ["Tag"]
      307 LOADK                            R25 K81 ["CX-Invisible X-Fill"]
      308 SETTABLE                         R25 R23 R24
      309 DUPTABLE                         R24 K84 [{"DeviceBlueprint", "VRControls"}]
      310 GETTABLEKS                       R26 R0 K2 ["gamepadId"]
      312 GETUPVAL                         R27 17
      313 GETTABLEKS                       R27 R27 K85 ["NO_CONNECTED_GAMEPAD_ID"]
      315 JUMPIFEQ                         R26 R27 ; [+26]
      317 GETUPVAL                         R25 7
      318 GETTABLEKS                       R25 R25 K16 ["createElement"]
      320 GETUPVAL                         R26 18
      321 DUPTABLE                         R27 K88 [{"LayoutOrder", "selectedGamepadId", "activeInputs", "displayMappings"}]
      322 GETUPVAL                         R28 13
      323 NAMECALL                         R28 R28 K55 ["getNextOrder"]
      325 CALL                             R28 1 1
      326 SETTABLEKS                       R28 R27 K56 ["LayoutOrder"]
      328 GETTABLEKS                       R28 R0 K2 ["gamepadId"]
      330 SETTABLEKS                       R28 R27 K64 ["selectedGamepadId"]
      332 GETUPVAL                         R28 19
      333 GETTABLEKS                       R28 R28 K86 ["activeInputs"]
      335 SETTABLEKS                       R28 R27 K86 ["activeInputs"]
      337 LOADB                            R28 1
      338 SETTABLEKS                       R28 R27 K87 ["displayMappings"]
      340 CALL                             R25 2 1
      341 JUMP                             ; [+1]
      342 LOADNIL                          R25
      343 SETTABLEKS                       R25 R24 K82 ["DeviceBlueprint"]
      345 GETTABLEKS                       R26 R0 K3 ["isVRConnected"]
      347 JUMPIFNOT                        R26 ; [+23]
      348 GETUPVAL                         R25 7
      349 GETTABLEKS                       R25 R25 K16 ["createElement"]
      351 GETUPVAL                         R26 20
      352 DUPTABLE                         R27 K91 [{"LayoutOrder", "shouldShowTooltip", "inPlayClient"}]
      353 GETUPVAL                         R28 13
      354 NAMECALL                         R28 R28 K55 ["getNextOrder"]
      356 CALL                             R28 1 1
      357 SETTABLEKS                       R28 R27 K56 ["LayoutOrder"]
      359 GETUPVAL                         R28 19
      360 GETTABLEKS                       R28 R28 K89 ["shouldShowTooltip"]
      362 SETTABLEKS                       R28 R27 K89 ["shouldShowTooltip"]
      364 GETUPVAL                         R28 19
      365 GETTABLEKS                       R28 R28 K90 ["inPlayClient"]
      367 SETTABLEKS                       R28 R27 K90 ["inPlayClient"]
      369 CALL                             R25 2 1
      370 JUMP                             ; [+1]
      371 LOADNIL                          R25
      372 SETTABLEKS                       R25 R24 K83 ["VRControls"]
      374 CALL                             R21 3 1
      375 SETTABLEKS                       R21 R20 K79 ["GamepadAndVRLayoutContainer"]
      377 CALL                             R17 3 1
      378 SETTABLEKS                       R17 R16 K76 ["InputTrackingWrapper"]
      380 CALL                             R13 3 1
      381 SETTABLEKS                       R13 R12 K52 ["ScrollableBlueprintContainer"]
      383 CALL                             R9 3 1
      384 JUMP                             ; [+1]
      385 LOADNIL                          R9
      386 SETTABLEKS                       R9 R8 K44 ["LayoutContainer"]
      388 GETUPVAL                         R9 7
      389 GETTABLEKS                       R9 R9 K16 ["createElement"]
      391 LOADK                            R10 K45 ["StyleLink"]
      392 DUPTABLE                         R11 K93 [{"StyleSheet"}]
      393 GETUPVAL                         R12 0
      394 GETTABLEKS                       R12 R12 K94 ["design"]
      396 SETTABLEKS                       R12 R11 K92 ["StyleSheet"]
      398 CALL                             R9 2 1
      399 SETTABLEKS                       R9 R8 K45 ["StyleLink"]
      401 CALL                             R5 3 1
      402 SETTABLEKS                       R5 R4 K13 ["MainWidget"]
      404 GETTABLEKS                       R6 R0 K95 ["isMappingsDialogOpen"]
      406 JUMPIFNOT                        R6 ; [+83]
      407 GETUPVAL                         R5 7
      408 GETTABLEKS                       R5 R5 K16 ["createElement"]
      410 GETUPVAL                         R6 21
      411 DUPTABLE                         R7 K100 [{"Id", "Enabled", "Title", "ZIndexBehavior", "Resizable", "ZIndex", "Modal", "Size", "MinSize", "OnClose"}]
      412 LOADK                            R8 K101 ["ControlsEmulatorMappings"]
      413 SETTABLEKS                       R8 R7 K18 ["Id"]
      415 LOADB                            R8 1
      416 SETTABLEKS                       R8 R7 K19 ["Enabled"]
      418 LOADK                            R8 K102 ["Edit Mappings"]
      419 SETTABLEKS                       R8 R7 K22 ["Title"]
      421 GETIMPORT                        R8 K28 [Enum.ZIndexBehavior.Sibling]
      423 SETTABLEKS                       R8 R7 K26 ["ZIndexBehavior"]
      425 LOADB                            R8 1
      426 SETTABLEKS                       R8 R7 K96 ["Resizable"]
      428 LOADN                            R8 10
      429 SETTABLEKS                       R8 R7 K97 ["ZIndex"]
      431 LOADB                            R8 1
      432 SETTABLEKS                       R8 R7 K98 ["Modal"]
      434 GETIMPORT                        R8 K33 [Vector2.new]
      436 LOADN                            R9 88
      437 LOADN                            R10 108
      438 CALL                             R8 2 1
      439 SETTABLEKS                       R8 R7 K34 ["Size"]
      441 GETIMPORT                        R8 K33 [Vector2.new]
      443 LOADN                            R9 144
      444 LOADN                            R10 144
      445 CALL                             R8 2 1
      446 SETTABLEKS                       R8 R7 K99 ["MinSize"]
      448 SETTABLEKS                       R1 R7 K36 ["OnClose"]
      450 DUPTABLE                         R8 K103 [{"InputTrackingWrapper", "StyleLink"}]
      451 GETUPVAL                         R9 7
      452 GETTABLEKS                       R9 R9 K16 ["createElement"]
      454 GETUPVAL                         R10 15
      455 NEWTABLE                         R11 0 0
      457 DUPTABLE                         R12 K104 [{"KeyboardInputsForwarder", "MappingsDialog"}]
      458 GETUPVAL                         R13 7
      459 GETTABLEKS                       R13 R13 K16 ["createElement"]
      461 GETUPVAL                         R14 16
      462 CALL                             R13 1 1
      463 SETTABLEKS                       R13 R12 K78 ["KeyboardInputsForwarder"]
      465 GETUPVAL                         R13 7
      466 GETTABLEKS                       R13 R13 K16 ["createElement"]
      468 GETUPVAL                         R14 22
      469 CALL                             R13 1 1
      470 SETTABLEKS                       R13 R12 K14 ["MappingsDialog"]
      472 CALL                             R9 3 1
      473 SETTABLEKS                       R9 R8 K76 ["InputTrackingWrapper"]
      475 GETUPVAL                         R9 7
      476 GETTABLEKS                       R9 R9 K16 ["createElement"]
      478 LOADK                            R10 K45 ["StyleLink"]
      479 DUPTABLE                         R11 K93 [{"StyleSheet"}]
      480 GETUPVAL                         R12 0
      481 GETTABLEKS                       R12 R12 K94 ["design"]
      483 SETTABLEKS                       R12 R11 K92 ["StyleSheet"]
      485 CALL                             R9 2 1
      486 SETTABLEKS                       R9 R8 K45 ["StyleLink"]
      488 CALL                             R5 3 1
      489 JUMP                             ; [+1]
      490 LOADNIL                          R5
      491 SETTABLEKS                       R5 R4 K14 ["MappingsDialog"]
      493 CALL                             R2 2 -1
      494 RETURN                           R2 -1

PROTO_38:
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
       31 CALL                             R1 3 -1
       32 RETURN                           R1 -1

PROTO_39:
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
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U15
       42 CAPTURE                          UPVAL U16
       43 CAPTURE                          UPVAL U17
       44 CALL                             R6 3 -1
       45 RETURN                           R6 -1

PROTO_40:
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Bin"]
       32 GETTABLEKS                       R5 R5 K11 ["Common"]
       34 GETTABLEKS                       R5 R5 K12 ["defineLuaFlags"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["UI"]
       39 GETTABLEKS                       R5 R5 K14 ["DockWidget"]
       41 GETTABLEKS                       R6 R2 K13 ["UI"]
       43 GETTABLEKS                       R6 R6 K15 ["Dialog"]
       45 GETTABLEKS                       R7 R2 K16 ["Util"]
       47 GETTABLEKS                       R7 R7 K17 ["LayoutOrderIterator"]
       49 GETTABLEKS                       R8 R7 K18 ["new"]
       51 CALL                             R8 0 1
       52 GETTABLEKS                       R9 R2 K19 ["ContextServices"]
       54 GETTABLEKS                       R10 R9 K20 ["Plugin"]
       56 GETTABLEKS                       R11 R9 K21 ["Mouse"]
       58 GETIMPORT                        R12 K5 [require]
       60 GETTABLEKS                       R13 R0 K22 ["Src"]
       62 GETTABLEKS                       R13 R13 K23 ["Resources"]
       64 GETTABLEKS                       R13 R13 K24 ["MakeTheme"]
       66 CALL                             R12 1 1
       67 GETTABLEKS                       R13 R2 K25 ["Style"]
       69 GETTABLEKS                       R13 R13 K26 ["Themes"]
       71 GETTABLEKS                       R13 R13 K27 ["StudioTheme"]
       73 GETTABLEKS                       R14 R2 K28 ["Styling"]
       75 GETTABLEKS                       R14 R14 K29 ["registerPluginStyles"]
       77 GETTABLEKS                       R15 R0 K22 ["Src"]
       79 GETTABLEKS                       R15 R15 K23 ["Resources"]
       81 GETTABLEKS                       R16 R15 K30 ["Localization"]
       83 GETTABLEKS                       R16 R16 K31 ["SourceStrings"]
       85 GETTABLEKS                       R17 R15 K30 ["Localization"]
       87 GETTABLEKS                       R17 R17 K32 ["LocalizedStrings"]
       89 GETTABLEKS                       R18 R0 K22 ["Src"]
       91 GETTABLEKS                       R18 R18 K33 ["Components"]
       93 GETIMPORT                        R19 K5 [require]
       95 GETTABLEKS                       R20 R18 K34 ["DeviceBlueprint"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K5 [require]
      100 GETTABLEKS                       R21 R18 K35 ["DeviceDropdown"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K5 [require]
      105 GETTABLEKS                       R22 R18 K36 ["WidgetHeader"]
      107 CALL                             R21 1 1
      108 GETIMPORT                        R22 K5 [require]
      110 GETTABLEKS                       R23 R0 K22 ["Src"]
      112 GETTABLEKS                       R23 R23 K16 ["Util"]
      114 GETTABLEKS                       R23 R23 K37 ["Constants"]
      116 CALL                             R22 1 1
      117 GETIMPORT                        R23 K5 [require]
      119 GETTABLEKS                       R24 R0 K22 ["Src"]
      121 GETTABLEKS                       R24 R24 K33 ["Components"]
      123 GETTABLEKS                       R24 R24 K38 ["RootContainerInputContextProvider"]
      125 CALL                             R23 1 1
      126 GETIMPORT                        R24 K5 [require]
      128 GETTABLEKS                       R25 R0 K22 ["Src"]
      130 GETTABLEKS                       R25 R25 K33 ["Components"]
      132 GETTABLEKS                       R25 R25 K39 ["MappingsContextProvider"]
      134 CALL                             R24 1 1
      135 GETIMPORT                        R25 K5 [require]
      137 GETTABLEKS                       R26 R0 K22 ["Src"]
      139 GETTABLEKS                       R26 R26 K16 ["Util"]
      141 GETTABLEKS                       R26 R26 K40 ["MappingsContext"]
      143 CALL                             R25 1 1
      144 GETIMPORT                        R26 K5 [require]
      146 GETTABLEKS                       R27 R0 K22 ["Src"]
      148 GETTABLEKS                       R27 R27 K16 ["Util"]
      150 GETTABLEKS                       R27 R27 K41 ["MappingsActionsContext"]
      152 CALL                             R26 1 1
      153 GETIMPORT                        R27 K5 [require]
      155 GETTABLEKS                       R28 R0 K22 ["Src"]
      157 GETTABLEKS                       R28 R28 K16 ["Util"]
      159 GETTABLEKS                       R28 R28 K42 ["MockableProxyPluginComponents"]
      161 CALL                             R27 1 1
      162 GETTABLEKS                       R27 R27 K43 ["StudioDeviceEmulator"]
      164 GETIMPORT                        R28 K5 [require]
      166 GETTABLEKS                       R29 R0 K22 ["Src"]
      168 GETTABLEKS                       R29 R29 K33 ["Components"]
      170 GETTABLEKS                       R29 R29 K44 ["MappingsDialog"]
      172 CALL                             R28 1 1
      173 GETIMPORT                        R29 K5 [require]
      175 GETTABLEKS                       R30 R0 K22 ["Src"]
      177 GETTABLEKS                       R30 R30 K33 ["Components"]
      179 GETTABLEKS                       R30 R30 K45 ["KeyboardInputsForwarder"]
      181 CALL                             R29 1 1
      182 GETIMPORT                        R30 K5 [require]
      184 GETTABLEKS                       R31 R0 K22 ["Src"]
      186 GETTABLEKS                       R31 R31 K16 ["Util"]
      188 GETTABLEKS                       R31 R31 K46 ["activeInputsReducer"]
      190 CALL                             R30 1 1
      191 GETIMPORT                        R31 K5 [require]
      193 GETTABLEKS                       R32 R0 K22 ["Src"]
      195 GETTABLEKS                       R32 R32 K33 ["Components"]
      197 GETTABLEKS                       R32 R32 K47 ["VRControls"]
      199 CALL                             R31 1 1
      200 GETIMPORT                        R32 K5 [require]
      202 GETTABLEKS                       R33 R0 K22 ["Src"]
      204 GETTABLEKS                       R33 R33 K16 ["Util"]
      206 GETTABLEKS                       R33 R33 K48 ["devicePlatformEnumToControllerType"]
      208 CALL                             R32 1 1
      209 GETTABLEKS                       R33 R1 K49 ["PureComponent"]
      211 LOADK                            R35 K50 ["MainPlugin"]
      212 NAMECALL                         R33 R33 K51 ["extend"]
      214 CALL                             R33 2 1
      215 GETIMPORT                        R34 K5 [require]
      217 GETTABLEKS                       R35 R0 K22 ["Src"]
      219 GETTABLEKS                       R35 R35 K16 ["Util"]
      221 GETTABLEKS                       R35 R35 K52 ["DmBridge"]
      223 CALL                             R34 1 1
      224 LOADNIL                          R35
      225 NEWCLOSURE                       R36 P0
      226 CAPTURE                          REF R35
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R16
      229 CAPTURE                          VAL R17
      230 SETGLOBAL                        R36 K53 ["getLocalization"]
      232 DUPCLOSURE                       R36 K54 [PROTO_18]
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R27
      236 CAPTURE                          VAL R30
      237 CAPTURE                          VAL R32
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R13
      241 CAPTURE                          VAL R14
      242 SETTABLEKS                       R36 R33 K55 ["init"]
      244 DUPCLOSURE                       R36 K56 [PROTO_20]
      245 CAPTURE                          VAL R22
      246 SETTABLEKS                       R36 R33 K57 ["didUpdate"]
      248 DUPCLOSURE                       R36 K58 [PROTO_32]
      249 CAPTURE                          VAL R34
      250 CAPTURE                          VAL R27
      251 CAPTURE                          VAL R32
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R3
      254 SETTABLEKS                       R36 R33 K59 ["didMount"]
      256 DUPCLOSURE                       R36 K60 [PROTO_33]
      257 SETTABLEKS                       R36 R33 K61 ["willUnmount"]
      259 DUPCLOSURE                       R36 K62 [PROTO_39]
      260 CAPTURE                          VAL R1
      261 CAPTURE                          VAL R26
      262 CAPTURE                          VAL R25
      263 CAPTURE                          VAL R9
      264 CAPTURE                          VAL R10
      265 CAPTURE                          VAL R11
      266 CAPTURE                          VAL R12
      267 CAPTURE                          VAL R5
      268 CAPTURE                          VAL R21
      269 CAPTURE                          VAL R8
      270 CAPTURE                          VAL R20
      271 CAPTURE                          VAL R23
      272 CAPTURE                          VAL R29
      273 CAPTURE                          VAL R22
      274 CAPTURE                          VAL R19
      275 CAPTURE                          VAL R31
      276 CAPTURE                          VAL R6
      277 CAPTURE                          VAL R28
      278 SETTABLEKS                       R36 R33 K63 ["render"]
      280 DUPCLOSURE                       R36 K64 [PROTO_40]
      281 CAPTURE                          VAL R1
      282 CAPTURE                          VAL R24
      283 CAPTURE                          VAL R33
      284 CLOSEUPVALS                      R35
      285 RETURN                           R36 1
