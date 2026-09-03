PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["get"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 NEWTABLE                         R0 0 0
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+13]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K1 ["plugin"]
       12 JUMPIFEQKNIL                     R1 ; [+9]
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K2 ["fromPlugin"]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K1 ["plugin"]
       20 CALL                             R0 1 1
       21 RETURN                           R0 1
       22 LOADNIL                          R0
       23 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDeviceListWithMetadataAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+11]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to get device options: "]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 SETTABLEKS                       R1 R2 K7 ["current"]
       20 GETUPVAL                         R2 2
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentlyEmulatedDeviceAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+11]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to get device selection: "]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K7 ["categoryForDevice"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETUPVAL                         R2 2
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetScalingModeAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+11]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to get display scaling mode: "]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 1
       18 GETTABLE                         R2 R3 R1
       19 JUMPIF                           R2 ; [+11]
       20 GETIMPORT                        R3 K3 [warn]
       22 LOADK                            R5 K7 ["[DeviceSimulatorToolbar] Received unknown display scaling mode: "]
       23 FASTCALL1                        TOSTRING R1 ; [+3]
       24 MOVE                             R7 R1
       25 GETIMPORT                        R6 K6 [tostring]
       27 CALL                             R6 1 1
       28 CONCAT                           R4 R5 R6
       29 CALL                             R3 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 2
       32 SETTABLEKS                       R2 R3 K8 ["current"]
       34 GETUPVAL                         R3 3
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsScreenDpiAutoDetectEnabledAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+11]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to get screen dpi auto-detect state: "]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K3 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["categoryForDevice"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["getFFlagDontReloadDeviceOnBridgeChanged"]
        8 CALL                             R0 0 1
        9 JUMPIF                           R0 ; [+2]
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 4
       13 CALL                             R0 0 0
       14 GETUPVAL                         R0 5
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EmulatedDeviceChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["DeviceListChanged"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 NAMECALL                         R1 R1 K1 ["Connect"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["BridgeAvailable"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 NAMECALL                         R2 R2 K1 ["Connect"]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 4
       32 CALL                             R3 0 0
       33 GETUPVAL                         R3 7
       34 CALL                             R3 0 0
       35 GETUPVAL                         R3 8
       36 CALL                             R3 0 0
       37 GETUPVAL                         R3 9
       38 CALL                             R3 0 0
       39 NEWCLOSURE                       R3 P3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["current"]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetDeviceAndPersistAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+12]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to select device '"]
       10 GETUPVAL                         R5 1
       11 LOADK                            R6 K5 ["': "]
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R8 R1
       14 GETIMPORT                        R7 K7 [tostring]
       16 CALL                             R7 1 1
       17 CONCAT                           R3 R4 R7
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SERVER"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+8]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["toggleServerView"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K2 ["getDefaultDeviceId"]
       15 MOVE                             R2 R0
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K3 ["current"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+15]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K4 ["isServerView"]
       24 JUMPIFNOT                        R2 ; [+8]
       25 GETUPVAL                         R2 1
       26 CALL                             R2 0 0
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K5 ["leaveServerView"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 5
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_24:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["current"]
        6 SUB                              R0 R1 R2
        7 LOADK                            R1 K4 [0.3]
        8 JUMPIFNOTLT                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 DUPCLOSURE                       R1 K5 [PROTO_24]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_26:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["MANAGE_DEVICES_ID"]
        8 JUMPIFEQ                         R1 R2 ; [+5]
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 2
       15 CALL                             R2 0 0
       16 GETUPVAL                         R2 3
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 4
       20 DUPTABLE                         R3 K4 [{"input"}]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["getDeviceManagerInput"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["categoryForDevice"]
       27 GETUPVAL                         R6 3
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R6 R6 K7 ["current"]
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K8 ["deviceId"]
       35 GETUPVAL                         R9 6
       36 JUMPIFNOT                        R9 ; [+4]
       37 GETUPVAL                         R8 7
       38 GETTABLEKS                       R8 R8 K7 ["current"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 CALL                             R4 4 1
       43 SETTABLEKS                       R4 R3 K3 ["input"]
       45 CALL                             R2 1 0
       46 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["deserializeDevices"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["creates"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["deserializeDevices"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["updates"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["removals"]
       18 NAMECALL                         R0 R0 K4 ["UpdateDevicesAsync"]
       20 CALL                             R0 4 0
       21 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{[1] = }]
        2 CALL                             R1 1 0
        3 JUMPIFEQKNIL                     R0 ; [+46]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K3 ["current"]
        9 GETIMPORT                        R1 K5 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 2
       16 GETUPVAL                         R3 1
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K3 ["current"]
       20 JUMPIF                           R1 ; [+11]
       21 GETIMPORT                        R3 K7 [warn]
       23 LOADK                            R5 K8 ["[DeviceSimulatorToolbar] Failed to update devices: "]
       24 FASTCALL1                        TOSTRING R2 ; [+3]
       25 MOVE                             R7 R2
       26 GETIMPORT                        R6 K10 [tostring]
       28 CALL                             R6 1 1
       29 CONCAT                           R4 R5 R6
       30 CALL                             R3 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R3 4
       33 JUMPIFNOT                        R3 ; [+12]
       34 GETUPVAL                         R3 5
       35 JUMPIFNOT                        R3 ; [+10]
       36 GETUPVAL                         R3 5
       37 GETTABLEKS                       R5 R0 K11 ["hiddenDeviceIds"]
       39 NAMECALL                         R3 R3 K12 ["set"]
       41 CALL                             R3 2 0
       42 GETUPVAL                         R3 6
       43 GETTABLEKS                       R4 R0 K11 ["hiddenDeviceIds"]
       45 CALL                             R3 1 0
       46 GETUPVAL                         R3 7
       47 CALL                             R3 0 0
       48 GETUPVAL                         R3 8
       49 CALL                             R3 0 0
       50 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 NAMECALL                         R0 R0 K0 ["SetScalingModeAndPersistAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K2 ["current"]
       12 GETUPVAL                         R2 4
       13 GETUPVAL                         R3 2
       14 CALL                             R2 1 0
       15 JUMP                             ; [+12]
       16 GETIMPORT                        R2 K4 [warn]
       18 LOADK                            R4 K5 ["[DeviceSimulatorToolbar] Failed to set display scaling mode: "]
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R6 R1
       21 GETIMPORT                        R5 K7 [tostring]
       23 CALL                             R5 1 1
       24 CONCAT                           R3 R4 R5
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 5
       27 CALL                             R2 0 0
       28 GETUPVAL                         R2 6
       29 LOADB                            R3 0
       30 SETTABLEKS                       R3 R2 K2 ["current"]
       32 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["current"]
        9 GETIMPORT                        R1 K3 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCalibratedScreenDpiAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_33:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K3 [{"initialDpi"}]
        8 SETTABLEKS                       R1 R3 K2 ["initialDpi"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["current"]
       16 GETUPVAL                         R2 3
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K4 ["current"]
       20 GETIMPORT                        R2 K6 [warn]
       22 LOADK                            R4 K7 ["[DeviceSimulatorToolbar] Failed to read physical scaling calibration: "]
       23 FASTCALL1                        TOSTRING R1 ; [+3]
       24 MOVE                             R6 R1
       25 GETIMPORT                        R5 K9 [tostring]
       27 CALL                             R5 1 1
       28 CONCAT                           R3 R4 R5
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K0 ["current"]
       13 GETUPVAL                         R0 1
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K0 ["current"]
       17 GETIMPORT                        R0 K3 [task.spawn]
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 DUPTABLE                         R2 K2 [{"simulatorName"}]
        8 SETTABLEKS                       R0 R2 K1 ["simulatorName"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["simulatorName"]
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K3 [{["simulatorName"] = }]
       11 CALL                             R2 1 0
       12 JUMPIFEQKNIL                     R1 ; [+9]
       14 JUMPIFEQKNIL                     R0 ; [+7]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K4 ["savePreset"]
       19 MOVE                             R3 R1
       20 MOVE                             R4 R0
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetCalibratedScreenDpiAsync"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R2 K4 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
        8 NAMECALL                         R0 R0 K5 ["SetScalingModeAndPersistAsync"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_38:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+16]
        7 GETUPVAL                         R2 2
        8 LOADK                            R3 K2 ["physical"]
        9 SETTABLEKS                       R3 R2 K3 ["current"]
       11 GETUPVAL                         R2 3
       12 LOADK                            R3 K2 ["physical"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K4 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+16]
       19 GETUPVAL                         R2 5
       20 LOADB                            R3 0
       21 CALL                             R2 1 0
       22 JUMP                             ; [+12]
       23 GETIMPORT                        R2 K6 [warn]
       25 LOADK                            R4 K7 ["[DeviceSimulatorToolbar] Failed to persist physical scaling calibration: "]
       26 FASTCALL1                        TOSTRING R1 ; [+3]
       27 MOVE                             R6 R1
       28 GETIMPORT                        R5 K9 [tostring]
       30 CALL                             R5 1 1
       31 CONCAT                           R3 R4 R5
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 6
       34 CALL                             R2 0 0
       35 GETUPVAL                         R2 7
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K3 ["current"]
       39 GETUPVAL                         R2 8
       40 LOADB                            R3 0
       41 SETTABLEKS                       R3 R2 K3 ["current"]
       43 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{[1] = }]
        2 CALL                             R1 1 0
        3 JUMPIFNOTEQKNIL                  R0 ; [+10]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K3 ["current"]
        9 GETUPVAL                         R1 2
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["current"]
       13 RETURN                           R0 0
       14 FASTCALL1                        MATH_ROUND R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K6 [math.round]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K9 [task.spawn]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["AutoCalibrateScreenDpiAsync"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETIMPORT                        R2 K4 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
        9 NAMECALL                         R0 R0 K5 ["SetScalingModeAndPersistAsync"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 1
       14 NAMECALL                         R0 R0 K6 ["DisableAutoDetectScreenDpiAsync"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_41:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+13]
        7 GETUPVAL                         R2 0
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETUPVAL                         R2 2
       10 LOADK                            R3 K2 ["physical"]
       11 SETTABLEKS                       R3 R2 K3 ["current"]
       13 GETUPVAL                         R2 3
       14 LOADK                            R3 K2 ["physical"]
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 4
       17 GETUPVAL                         R3 0
       18 CALL                             R2 1 0
       19 JUMP                             ; [+14]
       20 GETIMPORT                        R2 K5 [warn]
       22 LOADK                            R4 K6 ["[DeviceSimulatorToolbar] Failed to toggle auto-detect scaling: "]
       23 FASTCALL1                        TOSTRING R1 ; [+3]
       24 MOVE                             R6 R1
       25 GETIMPORT                        R5 K8 [tostring]
       27 CALL                             R5 1 1
       28 CONCAT                           R3 R4 R5
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 5
       31 CALL                             R2 0 0
       32 GETUPVAL                         R2 6
       33 CALL                             R2 0 0
       34 GETUPVAL                         R2 7
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K3 ["current"]
       38 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["current"]
        9 JUMPIF                           R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["current"]
       13 JUMPIFNOT                        R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 3
       16 NOT                              R0 R1
       17 GETUPVAL                         R1 2
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K1 ["current"]
       21 GETIMPORT                        R1 K4 [task.spawn]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U2
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["simulatorService"]
        4 GETTABLEKS                       R3 R0 K1 ["calibrationDialogComponent"]
        6 JUMPIF                           R3 ; [+1]
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R5 R0 K3 ["hiddenDeviceStore"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K4 ["useState"]
       17 NEWTABLE                         R7 0 0
       19 CALL                             R6 1 2
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K4 ["useState"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R5
       26 CALL                             R8 1 2
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K5 ["useRef"]
       30 MOVE                             R11 R6
       31 CALL                             R10 1 1
       32 SETTABLEKS                       R6 R10 K6 ["current"]
       34 GETUPVAL                         R11 3
       35 GETTABLEKS                       R11 R11 K5 ["useRef"]
       37 MOVE                             R12 R8
       38 CALL                             R11 1 1
       39 SETTABLEKS                       R8 R11 K6 ["current"]
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R12 R12 K4 ["useState"]
       44 LOADNIL                          R13
       45 CALL                             R12 1 2
       46 GETUPVAL                         R14 3
       47 GETTABLEKS                       R14 R14 K4 ["useState"]
       49 DUPTABLE                         R15 K9 [{["input"] = }]
       50 CALL                             R14 1 2
       51 GETUPVAL                         R16 3
       52 GETTABLEKS                       R16 R16 K4 ["useState"]
       54 DUPTABLE                         R17 K11 [{["initialDpi"] = }]
       55 CALL                             R16 1 2
       56 GETUPVAL                         R18 3
       57 GETTABLEKS                       R18 R18 K4 ["useState"]
       59 DUPTABLE                         R19 K13 [{["simulatorName"] = }]
       60 CALL                             R18 1 2
       61 GETUPVAL                         R20 3
       62 GETTABLEKS                       R20 R20 K4 ["useState"]
       64 LOADK                            R21 K14 ["physical"]
       65 CALL                             R20 1 2
       66 GETUPVAL                         R22 3
       67 GETTABLEKS                       R22 R22 K5 ["useRef"]
       69 MOVE                             R23 R20
       70 CALL                             R22 1 1
       71 SETTABLEKS                       R20 R22 K6 ["current"]
       73 GETUPVAL                         R23 3
       74 GETTABLEKS                       R23 R23 K4 ["useState"]
       76 LOADB                            R24 0
       77 CALL                             R23 1 2
       78 GETUPVAL                         R25 3
       79 GETTABLEKS                       R25 R25 K4 ["useState"]
       81 LOADB                            R26 0
       82 CALL                             R25 1 2
       83 GETUPVAL                         R27 3
       84 GETTABLEKS                       R27 R27 K5 ["useRef"]
       86 LOADK                            R28 K15 [-∞]
       87 CALL                             R27 1 1
       88 GETUPVAL                         R28 3
       89 GETTABLEKS                       R28 R28 K5 ["useRef"]
       91 LOADB                            R29 0
       92 CALL                             R28 1 1
       93 GETUPVAL                         R29 3
       94 GETTABLEKS                       R29 R29 K5 ["useRef"]
       96 LOADB                            R30 0
       97 CALL                             R29 1 1
       98 GETUPVAL                         R30 3
       99 GETTABLEKS                       R30 R30 K5 ["useRef"]
      101 LOADB                            R31 0
      102 CALL                             R30 1 1
      103 GETUPVAL                         R31 4
      104 DUPTABLE                         R32 K19 [{"actions", "placeSessionBridge", "simulatorService", "currentDevice"}]
      105 GETTABLEKS                       R33 R0 K16 ["actions"]
      107 SETTABLEKS                       R33 R32 K16 ["actions"]
      109 GETTABLEKS                       R33 R0 K17 ["placeSessionBridge"]
      111 SETTABLEKS                       R33 R32 K17 ["placeSessionBridge"]
      113 SETTABLEKS                       R2 R32 K0 ["simulatorService"]
      115 SETTABLEKS                       R12 R32 K18 ["currentDevice"]
      117 CALL                             R31 1 1
      118 JUMPIFNOT                        R12 ; [+12]
      119 GETUPVAL                         R32 5
      120 GETTABLEKS                       R32 R32 K20 ["categoryForDevice"]
      122 MOVE                             R33 R12
      123 CALL                             R32 1 1
      124 JUMPIF                           R32 ; [+11]
      125 GETUPVAL                         R32 6
      126 GETTABLEKS                       R32 R32 K21 ["Category"]
      128 GETTABLEKS                       R32 R32 K22 ["DESKTOP"]
      130 JUMP                             ; [+5]
      131 GETUPVAL                         R32 6
      132 GETTABLEKS                       R32 R32 K21 ["Category"]
      134 GETTABLEKS                       R32 R32 K22 ["DESKTOP"]
      136 GETTABLEKS                       R34 R31 K23 ["isServerView"]
      138 JUMPIFNOT                        R34 ; [+4]
      139 GETUPVAL                         R33 6
      140 GETTABLEKS                       R33 R33 K24 ["SERVER"]
      142 JUMP                             ; [+1]
      143 MOVE                             R33 R32
      144 GETTABLEKS                       R35 R0 K25 ["registryEnabled"]
      146 JUMPIFEQKB                       R35 TRUE ; [+2]
      148 LOADB                            R34 0 +1
      149 LOADB                            R34 1
      150 GETUPVAL                         R35 3
      151 GETTABLEKS                       R35 R35 K26 ["useMemo"]
      153 NEWCLOSURE                       R36 P1
      154 CAPTURE                          UPVAL U2
      155 CAPTURE                          VAL R34
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U7
      158 NEWTABLE                         R37 0 2
      160 MOVE                             R38 R34
      161 GETTABLEKS                       R39 R0 K27 ["plugin"]
      163 SETLIST                          R37 R38 2 [1]
      165 CALL                             R35 2 1
      166 GETUPVAL                         R36 8
      167 JUMPIFNOT                        R34 ; [+2]
      168 MOVE                             R37 R2
      169 JUMP                             ; [+1]
      170 LOADNIL                          R37
      171 MOVE                             R38 R35
      172 CALL                             R36 2 1
      173 GETUPVAL                         R37 3
      174 GETTABLEKS                       R37 R37 K28 ["useCallback"]
      176 NEWCLOSURE                       R38 P2
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R7
      180 NEWTABLE                         R39 0 1
      182 MOVE                             R40 R2
      183 SETLIST                          R39 R40 1 [1]
      185 CALL                             R37 2 1
      186 GETUPVAL                         R38 3
      187 GETTABLEKS                       R38 R38 K28 ["useCallback"]
      189 NEWCLOSURE                       R39 P3
      190 CAPTURE                          VAL R2
      191 CAPTURE                          UPVAL U5
      192 CAPTURE                          VAL R13
      193 NEWTABLE                         R40 0 1
      195 MOVE                             R41 R2
      196 SETLIST                          R40 R41 1 [1]
      198 CALL                             R38 2 1
      199 GETUPVAL                         R39 3
      200 GETTABLEKS                       R39 R39 K28 ["useCallback"]
      202 NEWCLOSURE                       R40 P4
      203 CAPTURE                          VAL R2
      204 CAPTURE                          UPVAL U9
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R21
      207 NEWTABLE                         R41 0 1
      209 MOVE                             R42 R2
      210 SETLIST                          R41 R42 1 [1]
      212 CALL                             R39 2 1
      213 GETUPVAL                         R40 3
      214 GETTABLEKS                       R40 R40 K28 ["useCallback"]
      216 NEWCLOSURE                       R41 P5
      217 CAPTURE                          UPVAL U2
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R24
      220 NEWTABLE                         R42 0 1
      222 MOVE                             R43 R2
      223 SETLIST                          R42 R43 1 [1]
      225 CALL                             R40 2 1
      226 GETUPVAL                         R41 3
      227 GETTABLEKS                       R41 R41 K29 ["useEffect"]
      229 NEWCLOSURE                       R42 P6
      230 CAPTURE                          VAL R2
      231 CAPTURE                          UPVAL U5
      232 CAPTURE                          VAL R13
      233 CAPTURE                          VAL R28
      234 CAPTURE                          VAL R37
      235 CAPTURE                          VAL R26
      236 CAPTURE                          UPVAL U2
      237 CAPTURE                          VAL R38
      238 CAPTURE                          VAL R39
      239 CAPTURE                          VAL R40
      240 NEWTABLE                         R43 0 5
      242 MOVE                             R44 R40
      243 MOVE                             R45 R38
      244 MOVE                             R46 R37
      245 MOVE                             R47 R39
      246 MOVE                             R48 R2
      247 SETLIST                          R43 R44 5 [1]
      249 CALL                             R41 2 0
      250 GETUPVAL                         R41 3
      251 GETTABLEKS                       R41 R41 K28 ["useCallback"]
      253 NEWCLOSURE                       R42 P7
      254 CAPTURE                          VAL R27
      255 CAPTURE                          VAL R26
      256 NEWTABLE                         R43 0 0
      258 CALL                             R41 2 1
      259 GETUPVAL                         R42 3
      260 GETTABLEKS                       R42 R42 K28 ["useCallback"]
      262 NEWCLOSURE                       R43 P8
      263 CAPTURE                          VAL R41
      264 CAPTURE                          VAL R2
      265 NEWTABLE                         R44 0 2
      267 MOVE                             R45 R41
      268 MOVE                             R46 R2
      269 SETLIST                          R44 R45 2 [1]
      271 CALL                             R42 2 1
      272 GETUPVAL                         R43 3
      273 GETTABLEKS                       R43 R43 K28 ["useCallback"]
      275 NEWCLOSURE                       R44 P9
      276 CAPTURE                          UPVAL U6
      277 CAPTURE                          VAL R41
      278 CAPTURE                          VAL R31
      279 CAPTURE                          UPVAL U5
      280 CAPTURE                          VAL R10
      281 CAPTURE                          VAL R42
      282 NEWTABLE                         R45 0 3
      284 MOVE                             R46 R41
      285 MOVE                             R47 R42
      286 MOVE                             R48 R31
      287 SETLIST                          R45 R46 3 [1]
      289 CALL                             R43 2 1
      290 GETUPVAL                         R44 3
      291 GETTABLEKS                       R44 R44 K28 ["useCallback"]
      293 NEWCLOSURE                       R45 P10
      294 CAPTURE                          VAL R27
      295 CAPTURE                          VAL R26
      296 NEWTABLE                         R46 0 0
      298 CALL                             R44 2 1
      299 GETUPVAL                         R45 3
      300 GETTABLEKS                       R45 R45 K28 ["useCallback"]
      302 NEWCLOSURE                       R46 P11
      303 CAPTURE                          UPVAL U5
      304 CAPTURE                          VAL R42
      305 CAPTURE                          VAL R41
      306 CAPTURE                          VAL R12
      307 CAPTURE                          VAL R15
      308 CAPTURE                          VAL R10
      309 CAPTURE                          VAL R4
      310 CAPTURE                          VAL R11
      311 NEWTABLE                         R47 0 3
      313 MOVE                             R48 R41
      314 MOVE                             R49 R42
      315 MOVE                             R50 R12
      316 SETLIST                          R47 R48 3 [1]
      318 CALL                             R45 2 1
      319 GETUPVAL                         R46 3
      320 GETTABLEKS                       R46 R46 K28 ["useCallback"]
      322 NEWCLOSURE                       R47 P12
      323 CAPTURE                          VAL R15
      324 CAPTURE                          VAL R28
      325 CAPTURE                          VAL R2
      326 CAPTURE                          UPVAL U10
      327 CAPTURE                          VAL R4
      328 CAPTURE                          VAL R5
      329 CAPTURE                          VAL R9
      330 CAPTURE                          VAL R37
      331 CAPTURE                          VAL R38
      332 NEWTABLE                         R48 0 2
      334 MOVE                             R49 R5
      335 MOVE                             R50 R4
      336 SETLIST                          R48 R49 2 [1]
      338 CALL                             R46 2 1
      339 GETUPVAL                         R47 3
      340 GETTABLEKS                       R47 R47 K28 ["useCallback"]
      342 NEWCLOSURE                       R48 P13
      343 CAPTURE                          VAL R29
      344 CAPTURE                          VAL R2
      345 CAPTURE                          UPVAL U11
      346 CAPTURE                          VAL R22
      347 CAPTURE                          VAL R21
      348 CAPTURE                          VAL R39
      349 NEWTABLE                         R49 0 2
      351 MOVE                             R50 R39
      352 MOVE                             R51 R2
      353 SETLIST                          R49 R50 2 [1]
      355 CALL                             R47 2 1
      356 GETUPVAL                         R48 3
      357 GETTABLEKS                       R48 R48 K28 ["useCallback"]
      359 NEWCLOSURE                       R49 P14
      360 CAPTURE                          VAL R30
      361 CAPTURE                          VAL R29
      362 CAPTURE                          VAL R2
      363 CAPTURE                          VAL R17
      364 NEWTABLE                         R50 0 1
      366 MOVE                             R51 R2
      367 SETLIST                          R50 R51 1 [1]
      369 CALL                             R48 2 1
      370 GETUPVAL                         R49 3
      371 GETTABLEKS                       R49 R49 K28 ["useCallback"]
      373 NEWCLOSURE                       R50 P15
      374 CAPTURE                          UPVAL U2
      375 CAPTURE                          VAL R19
      376 NEWTABLE                         R51 0 0
      378 CALL                             R49 2 1
      379 GETUPVAL                         R50 3
      380 GETTABLEKS                       R50 R50 K28 ["useCallback"]
      382 NEWCLOSURE                       R51 P16
      383 CAPTURE                          UPVAL U2
      384 CAPTURE                          VAL R18
      385 CAPTURE                          VAL R19
      386 CAPTURE                          VAL R36
      387 NEWTABLE                         R52 0 2
      389 MOVE                             R53 R18
      390 MOVE                             R54 R36
      391 SETLIST                          R52 R53 2 [1]
      393 CALL                             R50 2 1
      394 GETUPVAL                         R51 3
      395 GETTABLEKS                       R51 R51 K28 ["useCallback"]
      397 NEWCLOSURE                       R52 P17
      398 CAPTURE                          VAL R17
      399 CAPTURE                          VAL R30
      400 CAPTURE                          VAL R29
      401 CAPTURE                          VAL R2
      402 CAPTURE                          VAL R22
      403 CAPTURE                          VAL R21
      404 CAPTURE                          UPVAL U2
      405 CAPTURE                          VAL R24
      406 CAPTURE                          VAL R39
      407 NEWTABLE                         R53 0 2
      409 MOVE                             R54 R39
      410 MOVE                             R55 R2
      411 SETLIST                          R53 R54 2 [1]
      413 CALL                             R51 2 1
      414 GETUPVAL                         R52 3
      415 GETTABLEKS                       R52 R52 K28 ["useCallback"]
      417 NEWCLOSURE                       R53 P18
      418 CAPTURE                          UPVAL U2
      419 CAPTURE                          VAL R30
      420 CAPTURE                          VAL R29
      421 CAPTURE                          VAL R23
      422 CAPTURE                          VAL R2
      423 CAPTURE                          VAL R22
      424 CAPTURE                          VAL R21
      425 CAPTURE                          VAL R24
      426 CAPTURE                          VAL R39
      427 CAPTURE                          VAL R40
      428 NEWTABLE                         R54 0 4
      430 MOVE                             R55 R23
      431 MOVE                             R56 R40
      432 MOVE                             R57 R39
      433 MOVE                             R58 R2
      434 SETLIST                          R54 R55 4 [1]
      436 CALL                             R52 2 1
      437 GETUPVAL                         R53 3
      438 GETTABLEKS                       R53 R53 K28 ["useCallback"]
      440 NEWCLOSURE                       R54 P19
      441 CAPTURE                          VAL R41
      442 NEWTABLE                         R55 0 1
      444 MOVE                             R56 R41
      445 SETLIST                          R55 R56 1 [1]
      447 CALL                             R53 2 1
      448 JUMPIFNOT                        R12 ; [+3]
      449 GETTABLEKS                       R54 R12 K30 ["deviceId"]
      451 JUMP                             ; [+3]
      452 GETUPVAL                         R54 5
      453 GETTABLEKS                       R54 R54 K31 ["DEFAULT_DEVICE_ID"]
      455 GETTABLEKS                       R56 R31 K23 ["isServerView"]
      457 JUMPIFNOT                        R56 ; [+3]
      458 NEWTABLE                         R55 0 0
      460 JUMP                             ; [+12]
      461 GETUPVAL                         R55 5
      462 GETTABLEKS                       R55 R55 K32 ["getMenuGroups"]
      464 MOVE                             R56 R32
      465 MOVE                             R57 R6
      466 MOVE                             R58 R54
      467 MOVE                             R59 R1
      468 JUMPIFNOT                        R4 ; [+2]
      469 MOVE                             R60 R8
      470 JUMP                             ; [+1]
      471 LOADNIL                          R60
      472 CALL                             R55 5 1
      473 GETTABLEKS                       R57 R31 K23 ["isServerView"]
      475 JUMPIFNOT                        R57 ; [+6]
      476 LOADK                            R58 K33 ["Toolbar"]
      477 LOADK                            R59 K34 ["ServerLabel"]
      478 NAMECALL                         R56 R1 K35 ["getText"]
      480 CALL                             R56 3 1
      481 JUMP                             ; [+7]
      482 GETUPVAL                         R56 5
      483 GETTABLEKS                       R56 R56 K36 ["getDeviceName"]
      485 MOVE                             R57 R54
      486 MOVE                             R58 R6
      487 MOVE                             R59 R1
      488 CALL                             R56 3 1
      489 NEWTABLE                         R57 4 0
      491 GETUPVAL                         R58 6
      492 GETTABLEKS                       R58 R58 K21 ["Category"]
      494 GETTABLEKS                       R58 R58 K37 ["PHONE_TABLET"]
      496 GETUPVAL                         R60 5
      497 GETTABLEKS                       R60 R60 K38 ["hasChoices"]
      499 GETUPVAL                         R61 6
      500 GETTABLEKS                       R61 R61 K21 ["Category"]
      502 GETTABLEKS                       R61 R61 K37 ["PHONE_TABLET"]
      504 MOVE                             R62 R6
      505 CALL                             R60 2 1
      506 NOT                              R59 R60
      507 SETTABLE                         R59 R57 R58
      508 GETUPVAL                         R58 6
      509 GETTABLEKS                       R58 R58 K21 ["Category"]
      511 GETTABLEKS                       R58 R58 K22 ["DESKTOP"]
      513 GETUPVAL                         R60 5
      514 GETTABLEKS                       R60 R60 K38 ["hasChoices"]
      516 GETUPVAL                         R61 6
      517 GETTABLEKS                       R61 R61 K21 ["Category"]
      519 GETTABLEKS                       R61 R61 K22 ["DESKTOP"]
      521 MOVE                             R62 R6
      522 CALL                             R60 2 1
      523 NOT                              R59 R60
      524 SETTABLE                         R59 R57 R58
      525 GETUPVAL                         R58 6
      526 GETTABLEKS                       R58 R58 K21 ["Category"]
      528 GETTABLEKS                       R58 R58 K39 ["CONSOLE"]
      530 GETUPVAL                         R60 5
      531 GETTABLEKS                       R60 R60 K38 ["hasChoices"]
      533 GETUPVAL                         R61 6
      534 GETTABLEKS                       R61 R61 K21 ["Category"]
      536 GETTABLEKS                       R61 R61 K39 ["CONSOLE"]
      538 MOVE                             R62 R6
      539 CALL                             R60 2 1
      540 NOT                              R59 R60
      541 SETTABLE                         R59 R57 R58
      542 GETUPVAL                         R58 6
      543 GETTABLEKS                       R58 R58 K21 ["Category"]
      545 GETTABLEKS                       R58 R58 K40 ["VR"]
      547 GETUPVAL                         R60 5
      548 GETTABLEKS                       R60 R60 K38 ["hasChoices"]
      550 GETUPVAL                         R61 6
      551 GETTABLEKS                       R61 R61 K21 ["Category"]
      553 GETTABLEKS                       R61 R61 K40 ["VR"]
      555 MOVE                             R62 R6
      556 CALL                             R60 2 1
      557 NOT                              R59 R60
      558 SETTABLE                         R59 R57 R58
      559 GETUPVAL                         R58 2
      560 GETTABLEKS                       R58 R58 K41 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
      562 CALL                             R58 0 1
      563 GETUPVAL                         R59 3
      564 GETTABLEKS                       R59 R59 K42 ["createElement"]
      566 GETUPVAL                         R60 3
      567 GETTABLEKS                       R60 R60 K43 ["Fragment"]
      569 LOADNIL                          R61
      570 DUPTABLE                         R62 K47 [{"Toolbar", "DeviceManagerDialog", "CalibratePhysicalScalingDialog", "SavePresetDialog"}]
      571 GETUPVAL                         R63 3
      572 GETTABLEKS                       R63 R63 K42 ["createElement"]
      574 GETUPVAL                         R64 12
      575 DUPTABLE                         R65 K50 [{["tag"] = "row align-y-center gap-small size-full padding-x-small bg-surface-0"}]
      576 DUPTABLE                         R66 K55 [{"Categories", "Spacer", "RightControls", "SimulatorPills"}]
      577 GETUPVAL                         R67 3
      578 GETTABLEKS                       R67 R67 K42 ["createElement"]
      580 GETUPVAL                         R68 13
      581 DUPTABLE                         R69 K69 [{["LayoutOrder"] = 1, ["categories"], ["activeCategory"], ["activeDeviceName"], ["serverDisabled"], ["disabledCategories"], ["onCategoryClick"], ["onChipClick"], ["isMenuOpen"], ["menuItems"], ["onMenuActivated"], ["onPressedOutside"]}]
      582 GETUPVAL                         R70 14
      583 SETTABLEKS                       R70 R69 K58 ["categories"]
      585 SETTABLEKS                       R33 R69 K59 ["activeCategory"]
      587 SETTABLEKS                       R56 R69 K60 ["activeDeviceName"]
      589 GETTABLEKS                       R70 R31 K70 ["serverButtonDisabled"]
      591 SETTABLEKS                       R70 R69 K61 ["serverDisabled"]
      593 SETTABLEKS                       R57 R69 K62 ["disabledCategories"]
      595 SETTABLEKS                       R43 R69 K63 ["onCategoryClick"]
      597 SETTABLEKS                       R44 R69 K64 ["onChipClick"]
      599 SETTABLEKS                       R25 R69 K65 ["isMenuOpen"]
      601 SETTABLEKS                       R55 R69 K66 ["menuItems"]
      603 SETTABLEKS                       R45 R69 K67 ["onMenuActivated"]
      605 SETTABLEKS                       R53 R69 K68 ["onPressedOutside"]
      607 CALL                             R67 2 1
      608 SETTABLEKS                       R67 R66 K51 ["Categories"]
      610 GETUPVAL                         R67 3
      611 GETTABLEKS                       R67 R67 K42 ["createElement"]
      613 GETUPVAL                         R68 12
      614 DUPTABLE                         R69 K73 [{["LayoutOrder"] = 2, ["tag"] = "grow"}]
      615 CALL                             R67 2 1
      616 SETTABLEKS                       R67 R66 K52 ["Spacer"]
      618 GETUPVAL                         R67 3
      619 GETTABLEKS                       R67 R67 K42 ["createElement"]
      621 GETUPVAL                         R68 15
      622 DUPTABLE                         R69 K81 [{["LayoutOrder"] = 3, ["activeCategory"], ["currentDevice"], ["isClientView"], [5], ["actions"], ["scalingMode"], ["onScalingModeChanged"], ["onCalibrateScaling"], ["onToggleAutoDetectScaling"], ["isAutoDetectScaling"]}]
      623 SETTABLEKS                       R33 R69 K59 ["activeCategory"]
      625 SETTABLEKS                       R12 R69 K18 ["currentDevice"]
      627 GETTABLEKS                       R70 R31 K75 ["isClientView"]
      629 SETTABLEKS                       R70 R69 K75 ["isClientView"]
      631 SETTABLEKS                       R2 R69 K0 ["simulatorService"]
      633 GETTABLEKS                       R70 R0 K16 ["actions"]
      635 SETTABLEKS                       R70 R69 K16 ["actions"]
      637 SETTABLEKS                       R20 R69 K76 ["scalingMode"]
      639 SETTABLEKS                       R47 R69 K77 ["onScalingModeChanged"]
      641 SETTABLEKS                       R48 R69 K78 ["onCalibrateScaling"]
      643 JUMPIFNOT                        R58 ; [+2]
      644 MOVE                             R70 R52
      645 JUMP                             ; [+1]
      646 LOADNIL                          R70
      647 SETTABLEKS                       R70 R69 K79 ["onToggleAutoDetectScaling"]
      649 JUMPIFNOT                        R58 ; [+2]
      650 MOVE                             R70 R23
      651 JUMP                             ; [+1]
      652 LOADNIL                          R70
      653 SETTABLEKS                       R70 R69 K80 ["isAutoDetectScaling"]
      655 CALL                             R67 2 1
      656 SETTABLEKS                       R67 R66 K53 ["RightControls"]
      658 JUMPIFNOT                        R34 ; [+41]
      659 GETUPVAL                         R67 3
      660 GETTABLEKS                       R67 R67 K42 ["createElement"]
      662 GETUPVAL                         R68 16
      663 DUPTABLE                         R69 K92 [{["LayoutOrder"] = 4, ["simulators"], ["viewModelsByName"], ["onControlChanged"], ["onApply"], ["onDismiss"], ["saveDialogSimulatorName"], ["onReset"], ["onRequestSave"], ["onDeleteSavedPreset"]}]
      664 GETTABLEKS                       R70 R36 K83 ["simulators"]
      666 SETTABLEKS                       R70 R69 K83 ["simulators"]
      668 GETTABLEKS                       R70 R36 K84 ["viewModelsByName"]
      670 SETTABLEKS                       R70 R69 K84 ["viewModelsByName"]
      672 GETTABLEKS                       R70 R36 K93 ["changeControl"]
      674 SETTABLEKS                       R70 R69 K85 ["onControlChanged"]
      676 GETTABLEKS                       R70 R36 K94 ["applyPending"]
      678 SETTABLEKS                       R70 R69 K86 ["onApply"]
      680 GETTABLEKS                       R70 R36 K95 ["discardPending"]
      682 SETTABLEKS                       R70 R69 K87 ["onDismiss"]
      684 GETTABLEKS                       R70 R18 K12 ["simulatorName"]
      686 SETTABLEKS                       R70 R69 K88 ["saveDialogSimulatorName"]
      688 GETTABLEKS                       R70 R36 K96 ["resetToDefault"]
      690 SETTABLEKS                       R70 R69 K89 ["onReset"]
      692 SETTABLEKS                       R49 R69 K90 ["onRequestSave"]
      694 GETTABLEKS                       R70 R36 K97 ["deleteSavedPreset"]
      696 SETTABLEKS                       R70 R69 K91 ["onDeleteSavedPreset"]
      698 CALL                             R67 2 1
      699 JUMP                             ; [+1]
      700 LOADNIL                          R67
      701 SETTABLEKS                       R67 R66 K54 ["SimulatorPills"]
      703 CALL                             R63 3 1
      704 SETTABLEKS                       R63 R62 K33 ["Toolbar"]
      706 GETTABLEKS                       R64 R14 K7 ["input"]
      708 JUMPIFNOT                        R64 ; [+13]
      709 GETUPVAL                         R63 3
      710 GETTABLEKS                       R63 R63 K42 ["createElement"]
      712 GETUPVAL                         R64 17
      713 DUPTABLE                         R65 K99 [{"input", "onResolved"}]
      714 GETTABLEKS                       R66 R14 K7 ["input"]
      716 SETTABLEKS                       R66 R65 K7 ["input"]
      718 SETTABLEKS                       R46 R65 K98 ["onResolved"]
      720 CALL                             R63 2 1
      721 JUMP                             ; [+1]
      722 LOADNIL                          R63
      723 SETTABLEKS                       R63 R62 K44 ["DeviceManagerDialog"]
      725 GETTABLEKS                       R64 R16 K10 ["initialDpi"]
      727 JUMPIFNOT                        R64 ; [+13]
      728 GETUPVAL                         R63 3
      729 GETTABLEKS                       R63 R63 K42 ["createElement"]
      731 MOVE                             R64 R3
      732 DUPTABLE                         R65 K100 [{"initialDpi", "onResolved"}]
      733 GETTABLEKS                       R66 R16 K10 ["initialDpi"]
      735 SETTABLEKS                       R66 R65 K10 ["initialDpi"]
      737 SETTABLEKS                       R51 R65 K98 ["onResolved"]
      739 CALL                             R63 2 1
      740 JUMP                             ; [+1]
      741 LOADNIL                          R63
      742 SETTABLEKS                       R63 R62 K45 ["CalibratePhysicalScalingDialog"]
      744 GETTABLEKS                       R64 R18 K12 ["simulatorName"]
      746 JUMPIFNOT                        R64 ; [+51]
      747 GETUPVAL                         R63 3
      748 GETTABLEKS                       R63 R63 K42 ["createElement"]
      750 GETUPVAL                         R64 18
      751 DUPTABLE                         R65 K103 [{"simulatorName", "existingNames", "reservedNames", "onResolved"}]
      752 GETTABLEKS                       R66 R18 K12 ["simulatorName"]
      754 SETTABLEKS                       R66 R65 K12 ["simulatorName"]
      756 GETTABLEKS                       R68 R36 K84 ["viewModelsByName"]
      758 GETTABLEKS                       R69 R18 K12 ["simulatorName"]
      760 GETTABLE                         R67 R68 R69
      761 JUMPIFEQKNIL                     R67 ; [+9]
      763 GETTABLEKS                       R67 R36 K84 ["viewModelsByName"]
      765 GETTABLEKS                       R68 R18 K12 ["simulatorName"]
      767 GETTABLE                         R66 R67 R68
      768 GETTABLEKS                       R66 R66 K104 ["savedPresetNames"]
      770 JUMP                             ; [+2]
      771 NEWTABLE                         R66 0 0
      773 SETTABLEKS                       R66 R65 K101 ["existingNames"]
      775 GETTABLEKS                       R68 R36 K84 ["viewModelsByName"]
      777 GETTABLEKS                       R69 R18 K12 ["simulatorName"]
      779 GETTABLE                         R67 R68 R69
      780 JUMPIFEQKNIL                     R67 ; [+9]
      782 GETTABLEKS                       R67 R36 K84 ["viewModelsByName"]
      784 GETTABLEKS                       R68 R18 K12 ["simulatorName"]
      786 GETTABLE                         R66 R67 R68
      787 GETTABLEKS                       R66 R66 K105 ["reservedPresetNames"]
      789 JUMP                             ; [+2]
      790 NEWTABLE                         R66 0 0
      792 SETTABLEKS                       R66 R65 K102 ["reservedNames"]
      794 SETTABLEKS                       R50 R65 K98 ["onResolved"]
      796 CALL                             R63 2 1
      797 JUMP                             ; [+1]
      798 LOADNIL                          R63
      799 SETTABLEKS                       R63 R62 K46 ["SavePresetDialog"]
      801 CALL                             R59 3 -1
      802 RETURN                           R59 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Bin"]
       27 GETTABLEKS                       R5 R5 K11 ["Common"]
       29 GETTABLEKS                       R5 R5 K12 ["defineLuaFlags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Src"]
       36 GETTABLEKS                       R6 R6 K14 ["CategoryButtons"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Src"]
       43 GETTABLEKS                       R7 R7 K15 ["CalibratePhysicalScalingDialog"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Src"]
       50 GETTABLEKS                       R8 R8 K16 ["DeviceConstants"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K13 ["Src"]
       57 GETTABLEKS                       R9 R9 K17 ["DeviceSerialization"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R10 R10 K18 ["Parent"]
       66 GETTABLEKS                       R10 R10 K19 ["CategoryRow"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K13 ["Src"]
       73 GETTABLEKS                       R11 R11 K20 ["DeviceManagerDialog"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R12 R0 K13 ["Src"]
       80 GETTABLEKS                       R12 R12 K20 ["DeviceManagerDialog"]
       82 GETTABLEKS                       R12 R12 K21 ["DeviceManagerModel"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETIMPORT                        R13 K1 [script]
       89 GETTABLEKS                       R13 R13 K18 ["Parent"]
       91 GETTABLEKS                       R13 R13 K22 ["RightControls"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K5 [require]
       96 GETTABLEKS                       R14 R0 K13 ["Src"]
       98 GETTABLEKS                       R14 R14 K23 ["SimulatorRegistry"]
      100 GETTABLEKS                       R14 R14 K24 ["SimulatorPillBar"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K5 [require]
      105 GETTABLEKS                       R15 R0 K13 ["Src"]
      107 GETTABLEKS                       R15 R15 K23 ["SimulatorRegistry"]
      109 GETTABLEKS                       R15 R15 K25 ["SavePresetDialog"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K13 ["Src"]
      116 GETTABLEKS                       R16 R16 K23 ["SimulatorRegistry"]
      118 GETTABLEKS                       R16 R16 K26 ["savedPresets"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K5 [require]
      123 GETTABLEKS                       R17 R0 K13 ["Src"]
      125 GETTABLEKS                       R17 R17 K27 ["Hooks"]
      127 GETTABLEKS                       R17 R17 K28 ["useServerView"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K5 [require]
      132 GETTABLEKS                       R18 R0 K13 ["Src"]
      134 GETTABLEKS                       R18 R18 K27 ["Hooks"]
      136 GETTABLEKS                       R18 R18 K29 ["useLocalization"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K5 [require]
      141 GETTABLEKS                       R19 R0 K13 ["Src"]
      143 GETTABLEKS                       R19 R19 K23 ["SimulatorRegistry"]
      145 GETTABLEKS                       R19 R19 K30 ["useSimulatorRegistry"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R20 R0 K13 ["Src"]
      152 GETTABLEKS                       R20 R20 K31 ["DeviceModel"]
      154 CALL                             R19 1 1
      155 NEWTABLE                         R20 4 0
      157 GETIMPORT                        R21 K35 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
      159 LOADK                            R22 K36 ["physical"]
      160 SETTABLE                         R22 R20 R21
      161 GETIMPORT                        R21 K38 [Enum.DeviceSimulatorScalingMode.ActualResolution]
      163 LOADK                            R22 K39 ["actual"]
      164 SETTABLE                         R22 R20 R21
      165 GETIMPORT                        R21 K41 [Enum.DeviceSimulatorScalingMode.FitToWindow]
      167 LOADK                            R22 K42 ["fit"]
      168 SETTABLE                         R22 R20 R21
      169 DUPTABLE                         R21 K43 [{"physical", "actual", "fit"}]
      170 GETIMPORT                        R22 K35 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
      172 SETTABLEKS                       R22 R21 K36 ["physical"]
      174 GETIMPORT                        R22 K38 [Enum.DeviceSimulatorScalingMode.ActualResolution]
      176 SETTABLEKS                       R22 R21 K39 ["actual"]
      178 GETIMPORT                        R22 K41 [Enum.DeviceSimulatorScalingMode.FitToWindow]
      180 SETTABLEKS                       R22 R21 K42 ["fit"]
      182 DUPCLOSURE                       R22 K44 [PROTO_44]
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R14
      202 RETURN                           R22 1
