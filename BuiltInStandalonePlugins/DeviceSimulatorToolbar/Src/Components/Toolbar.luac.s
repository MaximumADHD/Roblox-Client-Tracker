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
        1 NAMECALL                         R0 R0 K0 ["GetDeviceListWithMetadataAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
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

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentlyEmulatedDeviceAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
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

PROTO_6:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetScalingModeAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
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

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsScreenDpiAutoDetectEnabledAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["categoryForDevice"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 3
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 4
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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
       27 NAMECALL                         R2 R2 K1 ["Connect"]
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 4
       31 CALL                             R3 0 0
       32 GETUPVAL                         R3 6
       33 CALL                             R3 0 0
       34 GETUPVAL                         R3 7
       35 CALL                             R3 0 0
       36 GETUPVAL                         R3 8
       37 CALL                             R3 0 0
       38 NEWCLOSURE                       R3 P3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["current"]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetDeviceAndPersistAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_24:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["current"]
        6 SUB                              R0 R1 R2
        7 LOADK                            R1 K4 [0.3]
        8 JUMPIFNOTLT                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 DUPCLOSURE                       R1 K5 [PROTO_23]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 NAMECALL                         R0 R0 K0 ["SetScalingModeAndPersistAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCalibratedScreenDpiAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetCalibratedScreenDpiAsync"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R2 K4 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
        8 NAMECALL                         R0 R0 K5 ["SetScalingModeAndPersistAsync"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_41:
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
       59 LOADK                            R19 K12 ["physical"]
       60 CALL                             R18 1 2
       61 GETUPVAL                         R20 3
       62 GETTABLEKS                       R20 R20 K5 ["useRef"]
       64 MOVE                             R21 R18
       65 CALL                             R20 1 1
       66 SETTABLEKS                       R18 R20 K6 ["current"]
       68 GETUPVAL                         R21 3
       69 GETTABLEKS                       R21 R21 K4 ["useState"]
       71 LOADB                            R22 0
       72 CALL                             R21 1 2
       73 GETUPVAL                         R23 3
       74 GETTABLEKS                       R23 R23 K4 ["useState"]
       76 LOADB                            R24 0
       77 CALL                             R23 1 2
       78 GETUPVAL                         R25 3
       79 GETTABLEKS                       R25 R25 K5 ["useRef"]
       81 LOADK                            R26 K13 [-∞]
       82 CALL                             R25 1 1
       83 GETUPVAL                         R26 3
       84 GETTABLEKS                       R26 R26 K5 ["useRef"]
       86 LOADB                            R27 0
       87 CALL                             R26 1 1
       88 GETUPVAL                         R27 3
       89 GETTABLEKS                       R27 R27 K5 ["useRef"]
       91 LOADB                            R28 0
       92 CALL                             R27 1 1
       93 GETUPVAL                         R28 3
       94 GETTABLEKS                       R28 R28 K5 ["useRef"]
       96 LOADB                            R29 0
       97 CALL                             R28 1 1
       98 GETUPVAL                         R29 4
       99 DUPTABLE                         R30 K17 [{"actions", "placeSessionBridge", "simulatorService", "currentDevice"}]
      100 GETTABLEKS                       R31 R0 K14 ["actions"]
      102 SETTABLEKS                       R31 R30 K14 ["actions"]
      104 GETTABLEKS                       R31 R0 K15 ["placeSessionBridge"]
      106 SETTABLEKS                       R31 R30 K15 ["placeSessionBridge"]
      108 SETTABLEKS                       R2 R30 K0 ["simulatorService"]
      110 SETTABLEKS                       R12 R30 K16 ["currentDevice"]
      112 CALL                             R29 1 1
      113 JUMPIFNOT                        R12 ; [+12]
      114 GETUPVAL                         R30 5
      115 GETTABLEKS                       R30 R30 K18 ["categoryForDevice"]
      117 MOVE                             R31 R12
      118 CALL                             R30 1 1
      119 JUMPIF                           R30 ; [+11]
      120 GETUPVAL                         R30 6
      121 GETTABLEKS                       R30 R30 K19 ["Category"]
      123 GETTABLEKS                       R30 R30 K20 ["DESKTOP"]
      125 JUMP                             ; [+5]
      126 GETUPVAL                         R30 6
      127 GETTABLEKS                       R30 R30 K19 ["Category"]
      129 GETTABLEKS                       R30 R30 K20 ["DESKTOP"]
      131 GETTABLEKS                       R32 R29 K21 ["isServerView"]
      133 JUMPIFNOT                        R32 ; [+4]
      134 GETUPVAL                         R31 6
      135 GETTABLEKS                       R31 R31 K22 ["SERVER"]
      137 JUMP                             ; [+1]
      138 MOVE                             R31 R30
      139 GETTABLEKS                       R33 R0 K23 ["registryEnabled"]
      141 JUMPIFEQKB                       R33 TRUE ; [+2]
      143 LOADB                            R32 0 +1
      144 LOADB                            R32 1
      145 GETUPVAL                         R33 7
      146 JUMPIFNOT                        R32 ; [+2]
      147 MOVE                             R34 R2
      148 JUMP                             ; [+1]
      149 LOADNIL                          R34
      150 CALL                             R33 1 1
      151 GETUPVAL                         R34 3
      152 GETTABLEKS                       R34 R34 K24 ["useCallback"]
      154 NEWCLOSURE                       R35 P1
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R7
      158 NEWTABLE                         R36 0 1
      160 MOVE                             R37 R2
      161 SETLIST                          R36 R37 1 [1]
      163 CALL                             R34 2 1
      164 GETUPVAL                         R35 3
      165 GETTABLEKS                       R35 R35 K24 ["useCallback"]
      167 NEWCLOSURE                       R36 P2
      168 CAPTURE                          VAL R2
      169 CAPTURE                          UPVAL U5
      170 CAPTURE                          VAL R13
      171 NEWTABLE                         R37 0 1
      173 MOVE                             R38 R2
      174 SETLIST                          R37 R38 1 [1]
      176 CALL                             R35 2 1
      177 GETUPVAL                         R36 3
      178 GETTABLEKS                       R36 R36 K24 ["useCallback"]
      180 NEWCLOSURE                       R37 P3
      181 CAPTURE                          VAL R2
      182 CAPTURE                          UPVAL U8
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R19
      185 NEWTABLE                         R38 0 1
      187 MOVE                             R39 R2
      188 SETLIST                          R38 R39 1 [1]
      190 CALL                             R36 2 1
      191 GETUPVAL                         R37 3
      192 GETTABLEKS                       R37 R37 K24 ["useCallback"]
      194 NEWCLOSURE                       R38 P4
      195 CAPTURE                          UPVAL U2
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R22
      198 NEWTABLE                         R39 0 1
      200 MOVE                             R40 R2
      201 SETLIST                          R39 R40 1 [1]
      203 CALL                             R37 2 1
      204 GETUPVAL                         R38 3
      205 GETTABLEKS                       R38 R38 K25 ["useEffect"]
      207 NEWCLOSURE                       R39 P5
      208 CAPTURE                          VAL R2
      209 CAPTURE                          UPVAL U5
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R26
      212 CAPTURE                          VAL R34
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R35
      215 CAPTURE                          VAL R36
      216 CAPTURE                          VAL R37
      217 NEWTABLE                         R40 0 5
      219 MOVE                             R41 R37
      220 MOVE                             R42 R35
      221 MOVE                             R43 R34
      222 MOVE                             R44 R36
      223 MOVE                             R45 R2
      224 SETLIST                          R40 R41 5 [1]
      226 CALL                             R38 2 0
      227 GETUPVAL                         R38 3
      228 GETTABLEKS                       R38 R38 K24 ["useCallback"]
      230 NEWCLOSURE                       R39 P6
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R24
      233 NEWTABLE                         R40 0 0
      235 CALL                             R38 2 1
      236 GETUPVAL                         R39 3
      237 GETTABLEKS                       R39 R39 K24 ["useCallback"]
      239 NEWCLOSURE                       R40 P7
      240 CAPTURE                          VAL R38
      241 CAPTURE                          VAL R2
      242 NEWTABLE                         R41 0 2
      244 MOVE                             R42 R38
      245 MOVE                             R43 R2
      246 SETLIST                          R41 R42 2 [1]
      248 CALL                             R39 2 1
      249 GETUPVAL                         R40 3
      250 GETTABLEKS                       R40 R40 K24 ["useCallback"]
      252 NEWCLOSURE                       R41 P8
      253 CAPTURE                          UPVAL U6
      254 CAPTURE                          VAL R38
      255 CAPTURE                          VAL R29
      256 CAPTURE                          UPVAL U5
      257 CAPTURE                          VAL R10
      258 CAPTURE                          VAL R39
      259 NEWTABLE                         R42 0 3
      261 MOVE                             R43 R38
      262 MOVE                             R44 R39
      263 MOVE                             R45 R29
      264 SETLIST                          R42 R43 3 [1]
      266 CALL                             R40 2 1
      267 GETUPVAL                         R41 3
      268 GETTABLEKS                       R41 R41 K24 ["useCallback"]
      270 NEWCLOSURE                       R42 P9
      271 CAPTURE                          VAL R25
      272 CAPTURE                          VAL R24
      273 NEWTABLE                         R43 0 0
      275 CALL                             R41 2 1
      276 GETUPVAL                         R42 3
      277 GETTABLEKS                       R42 R42 K24 ["useCallback"]
      279 NEWCLOSURE                       R43 P10
      280 CAPTURE                          UPVAL U5
      281 CAPTURE                          VAL R39
      282 CAPTURE                          VAL R38
      283 CAPTURE                          VAL R12
      284 CAPTURE                          VAL R15
      285 CAPTURE                          VAL R10
      286 CAPTURE                          VAL R4
      287 CAPTURE                          VAL R11
      288 NEWTABLE                         R44 0 3
      290 MOVE                             R45 R38
      291 MOVE                             R46 R39
      292 MOVE                             R47 R12
      293 SETLIST                          R44 R45 3 [1]
      295 CALL                             R42 2 1
      296 GETUPVAL                         R43 3
      297 GETTABLEKS                       R43 R43 K24 ["useCallback"]
      299 NEWCLOSURE                       R44 P11
      300 CAPTURE                          VAL R15
      301 CAPTURE                          VAL R26
      302 CAPTURE                          VAL R2
      303 CAPTURE                          UPVAL U9
      304 CAPTURE                          VAL R4
      305 CAPTURE                          VAL R5
      306 CAPTURE                          VAL R9
      307 CAPTURE                          VAL R34
      308 CAPTURE                          VAL R35
      309 NEWTABLE                         R45 0 2
      311 MOVE                             R46 R5
      312 MOVE                             R47 R4
      313 SETLIST                          R45 R46 2 [1]
      315 CALL                             R43 2 1
      316 GETUPVAL                         R44 3
      317 GETTABLEKS                       R44 R44 K24 ["useCallback"]
      319 NEWCLOSURE                       R45 P12
      320 CAPTURE                          VAL R27
      321 CAPTURE                          VAL R2
      322 CAPTURE                          UPVAL U10
      323 CAPTURE                          VAL R20
      324 CAPTURE                          VAL R19
      325 CAPTURE                          VAL R36
      326 NEWTABLE                         R46 0 2
      328 MOVE                             R47 R36
      329 MOVE                             R48 R2
      330 SETLIST                          R46 R47 2 [1]
      332 CALL                             R44 2 1
      333 GETUPVAL                         R45 3
      334 GETTABLEKS                       R45 R45 K24 ["useCallback"]
      336 NEWCLOSURE                       R46 P13
      337 CAPTURE                          VAL R28
      338 CAPTURE                          VAL R27
      339 CAPTURE                          VAL R2
      340 CAPTURE                          VAL R17
      341 NEWTABLE                         R47 0 1
      343 MOVE                             R48 R2
      344 SETLIST                          R47 R48 1 [1]
      346 CALL                             R45 2 1
      347 GETUPVAL                         R46 3
      348 GETTABLEKS                       R46 R46 K24 ["useCallback"]
      350 NEWCLOSURE                       R47 P14
      351 CAPTURE                          VAL R17
      352 CAPTURE                          VAL R28
      353 CAPTURE                          VAL R27
      354 CAPTURE                          VAL R2
      355 CAPTURE                          VAL R20
      356 CAPTURE                          VAL R19
      357 CAPTURE                          UPVAL U2
      358 CAPTURE                          VAL R22
      359 CAPTURE                          VAL R36
      360 NEWTABLE                         R48 0 2
      362 MOVE                             R49 R36
      363 MOVE                             R50 R2
      364 SETLIST                          R48 R49 2 [1]
      366 CALL                             R46 2 1
      367 GETUPVAL                         R47 3
      368 GETTABLEKS                       R47 R47 K24 ["useCallback"]
      370 NEWCLOSURE                       R48 P15
      371 CAPTURE                          UPVAL U2
      372 CAPTURE                          VAL R28
      373 CAPTURE                          VAL R27
      374 CAPTURE                          VAL R21
      375 CAPTURE                          VAL R2
      376 CAPTURE                          VAL R20
      377 CAPTURE                          VAL R19
      378 CAPTURE                          VAL R22
      379 CAPTURE                          VAL R36
      380 CAPTURE                          VAL R37
      381 NEWTABLE                         R49 0 4
      383 MOVE                             R50 R21
      384 MOVE                             R51 R37
      385 MOVE                             R52 R36
      386 MOVE                             R53 R2
      387 SETLIST                          R49 R50 4 [1]
      389 CALL                             R47 2 1
      390 GETUPVAL                         R48 3
      391 GETTABLEKS                       R48 R48 K24 ["useCallback"]
      393 NEWCLOSURE                       R49 P16
      394 CAPTURE                          VAL R38
      395 NEWTABLE                         R50 0 1
      397 MOVE                             R51 R38
      398 SETLIST                          R50 R51 1 [1]
      400 CALL                             R48 2 1
      401 JUMPIFNOT                        R12 ; [+3]
      402 GETTABLEKS                       R49 R12 K26 ["deviceId"]
      404 JUMP                             ; [+3]
      405 GETUPVAL                         R49 5
      406 GETTABLEKS                       R49 R49 K27 ["DEFAULT_DEVICE_ID"]
      408 GETTABLEKS                       R51 R29 K21 ["isServerView"]
      410 JUMPIFNOT                        R51 ; [+3]
      411 NEWTABLE                         R50 0 0
      413 JUMP                             ; [+12]
      414 GETUPVAL                         R50 5
      415 GETTABLEKS                       R50 R50 K28 ["getMenuGroups"]
      417 MOVE                             R51 R30
      418 MOVE                             R52 R6
      419 MOVE                             R53 R49
      420 MOVE                             R54 R1
      421 JUMPIFNOT                        R4 ; [+2]
      422 MOVE                             R55 R8
      423 JUMP                             ; [+1]
      424 LOADNIL                          R55
      425 CALL                             R50 5 1
      426 GETTABLEKS                       R52 R29 K21 ["isServerView"]
      428 JUMPIFNOT                        R52 ; [+6]
      429 LOADK                            R53 K29 ["Toolbar"]
      430 LOADK                            R54 K30 ["ServerLabel"]
      431 NAMECALL                         R51 R1 K31 ["getText"]
      433 CALL                             R51 3 1
      434 JUMP                             ; [+7]
      435 GETUPVAL                         R51 5
      436 GETTABLEKS                       R51 R51 K32 ["getDeviceName"]
      438 MOVE                             R52 R49
      439 MOVE                             R53 R6
      440 MOVE                             R54 R1
      441 CALL                             R51 3 1
      442 NEWTABLE                         R52 4 0
      444 GETUPVAL                         R53 6
      445 GETTABLEKS                       R53 R53 K19 ["Category"]
      447 GETTABLEKS                       R53 R53 K33 ["PHONE_TABLET"]
      449 GETUPVAL                         R55 5
      450 GETTABLEKS                       R55 R55 K34 ["hasChoices"]
      452 GETUPVAL                         R56 6
      453 GETTABLEKS                       R56 R56 K19 ["Category"]
      455 GETTABLEKS                       R56 R56 K33 ["PHONE_TABLET"]
      457 MOVE                             R57 R6
      458 CALL                             R55 2 1
      459 NOT                              R54 R55
      460 SETTABLE                         R54 R52 R53
      461 GETUPVAL                         R53 6
      462 GETTABLEKS                       R53 R53 K19 ["Category"]
      464 GETTABLEKS                       R53 R53 K20 ["DESKTOP"]
      466 GETUPVAL                         R55 5
      467 GETTABLEKS                       R55 R55 K34 ["hasChoices"]
      469 GETUPVAL                         R56 6
      470 GETTABLEKS                       R56 R56 K19 ["Category"]
      472 GETTABLEKS                       R56 R56 K20 ["DESKTOP"]
      474 MOVE                             R57 R6
      475 CALL                             R55 2 1
      476 NOT                              R54 R55
      477 SETTABLE                         R54 R52 R53
      478 GETUPVAL                         R53 6
      479 GETTABLEKS                       R53 R53 K19 ["Category"]
      481 GETTABLEKS                       R53 R53 K35 ["CONSOLE"]
      483 GETUPVAL                         R55 5
      484 GETTABLEKS                       R55 R55 K34 ["hasChoices"]
      486 GETUPVAL                         R56 6
      487 GETTABLEKS                       R56 R56 K19 ["Category"]
      489 GETTABLEKS                       R56 R56 K35 ["CONSOLE"]
      491 MOVE                             R57 R6
      492 CALL                             R55 2 1
      493 NOT                              R54 R55
      494 SETTABLE                         R54 R52 R53
      495 GETUPVAL                         R53 6
      496 GETTABLEKS                       R53 R53 K19 ["Category"]
      498 GETTABLEKS                       R53 R53 K36 ["VR"]
      500 GETUPVAL                         R55 5
      501 GETTABLEKS                       R55 R55 K34 ["hasChoices"]
      503 GETUPVAL                         R56 6
      504 GETTABLEKS                       R56 R56 K19 ["Category"]
      506 GETTABLEKS                       R56 R56 K36 ["VR"]
      508 MOVE                             R57 R6
      509 CALL                             R55 2 1
      510 NOT                              R54 R55
      511 SETTABLE                         R54 R52 R53
      512 GETUPVAL                         R53 2
      513 GETTABLEKS                       R53 R53 K37 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
      515 CALL                             R53 0 1
      516 GETUPVAL                         R54 3
      517 GETTABLEKS                       R54 R54 K38 ["createElement"]
      519 GETUPVAL                         R55 3
      520 GETTABLEKS                       R55 R55 K39 ["Fragment"]
      522 LOADNIL                          R56
      523 DUPTABLE                         R57 K42 [{"Toolbar", "DeviceManagerDialog", "CalibratePhysicalScalingDialog"}]
      524 GETUPVAL                         R58 3
      525 GETTABLEKS                       R58 R58 K38 ["createElement"]
      527 GETUPVAL                         R59 11
      528 DUPTABLE                         R60 K45 [{["tag"] = "row align-y-center gap-small size-full padding-x-small bg-surface-0"}]
      529 DUPTABLE                         R61 K50 [{"Categories", "Spacer", "RightControls", "SimulatorPills"}]
      530 GETUPVAL                         R62 3
      531 GETTABLEKS                       R62 R62 K38 ["createElement"]
      533 GETUPVAL                         R63 12
      534 DUPTABLE                         R64 K64 [{["LayoutOrder"] = 1, ["categories"], ["activeCategory"], ["activeDeviceName"], ["serverDisabled"], ["disabledCategories"], ["onCategoryClick"], ["onChipClick"], ["isMenuOpen"], ["menuItems"], ["onMenuActivated"], ["onPressedOutside"]}]
      535 GETUPVAL                         R65 13
      536 SETTABLEKS                       R65 R64 K53 ["categories"]
      538 SETTABLEKS                       R31 R64 K54 ["activeCategory"]
      540 SETTABLEKS                       R51 R64 K55 ["activeDeviceName"]
      542 GETTABLEKS                       R65 R29 K65 ["serverButtonDisabled"]
      544 SETTABLEKS                       R65 R64 K56 ["serverDisabled"]
      546 SETTABLEKS                       R52 R64 K57 ["disabledCategories"]
      548 SETTABLEKS                       R40 R64 K58 ["onCategoryClick"]
      550 SETTABLEKS                       R41 R64 K59 ["onChipClick"]
      552 SETTABLEKS                       R23 R64 K60 ["isMenuOpen"]
      554 SETTABLEKS                       R50 R64 K61 ["menuItems"]
      556 SETTABLEKS                       R42 R64 K62 ["onMenuActivated"]
      558 SETTABLEKS                       R48 R64 K63 ["onPressedOutside"]
      560 CALL                             R62 2 1
      561 SETTABLEKS                       R62 R61 K46 ["Categories"]
      563 GETUPVAL                         R62 3
      564 GETTABLEKS                       R62 R62 K38 ["createElement"]
      566 GETUPVAL                         R63 11
      567 DUPTABLE                         R64 K68 [{["LayoutOrder"] = 2, ["tag"] = "grow"}]
      568 CALL                             R62 2 1
      569 SETTABLEKS                       R62 R61 K47 ["Spacer"]
      571 GETUPVAL                         R62 3
      572 GETTABLEKS                       R62 R62 K38 ["createElement"]
      574 GETUPVAL                         R63 14
      575 DUPTABLE                         R64 K76 [{["LayoutOrder"] = 3, ["activeCategory"], ["currentDevice"], ["isClientView"], [5], ["actions"], ["scalingMode"], ["onScalingModeChanged"], ["onCalibrateScaling"], ["onToggleAutoDetectScaling"], ["isAutoDetectScaling"]}]
      576 SETTABLEKS                       R31 R64 K54 ["activeCategory"]
      578 SETTABLEKS                       R12 R64 K16 ["currentDevice"]
      580 GETTABLEKS                       R65 R29 K70 ["isClientView"]
      582 SETTABLEKS                       R65 R64 K70 ["isClientView"]
      584 SETTABLEKS                       R2 R64 K0 ["simulatorService"]
      586 GETTABLEKS                       R65 R0 K14 ["actions"]
      588 SETTABLEKS                       R65 R64 K14 ["actions"]
      590 SETTABLEKS                       R18 R64 K71 ["scalingMode"]
      592 SETTABLEKS                       R44 R64 K72 ["onScalingModeChanged"]
      594 SETTABLEKS                       R45 R64 K73 ["onCalibrateScaling"]
      596 JUMPIFNOT                        R53 ; [+2]
      597 MOVE                             R65 R47
      598 JUMP                             ; [+1]
      599 LOADNIL                          R65
      600 SETTABLEKS                       R65 R64 K74 ["onToggleAutoDetectScaling"]
      602 JUMPIFNOT                        R53 ; [+2]
      603 MOVE                             R65 R21
      604 JUMP                             ; [+1]
      605 LOADNIL                          R65
      606 SETTABLEKS                       R65 R64 K75 ["isAutoDetectScaling"]
      608 CALL                             R62 2 1
      609 SETTABLEKS                       R62 R61 K48 ["RightControls"]
      611 JUMPIFNOT                        R32 ; [+23]
      612 GETUPVAL                         R62 3
      613 GETTABLEKS                       R62 R62 K38 ["createElement"]
      615 GETUPVAL                         R63 15
      616 DUPTABLE                         R64 K82 [{["LayoutOrder"] = 4, ["simulators"], ["valuesByName"], ["dynamicStateByName"], ["onControlChanged"]}]
      617 GETTABLEKS                       R65 R33 K78 ["simulators"]
      619 SETTABLEKS                       R65 R64 K78 ["simulators"]
      621 GETTABLEKS                       R65 R33 K79 ["valuesByName"]
      623 SETTABLEKS                       R65 R64 K79 ["valuesByName"]
      625 GETTABLEKS                       R65 R33 K80 ["dynamicStateByName"]
      627 SETTABLEKS                       R65 R64 K80 ["dynamicStateByName"]
      629 GETTABLEKS                       R65 R33 K83 ["changeControl"]
      631 SETTABLEKS                       R65 R64 K81 ["onControlChanged"]
      633 CALL                             R62 2 1
      634 JUMP                             ; [+1]
      635 LOADNIL                          R62
      636 SETTABLEKS                       R62 R61 K49 ["SimulatorPills"]
      638 CALL                             R58 3 1
      639 SETTABLEKS                       R58 R57 K29 ["Toolbar"]
      641 GETTABLEKS                       R59 R14 K7 ["input"]
      643 JUMPIFNOT                        R59 ; [+13]
      644 GETUPVAL                         R58 3
      645 GETTABLEKS                       R58 R58 K38 ["createElement"]
      647 GETUPVAL                         R59 16
      648 DUPTABLE                         R60 K85 [{"input", "onResolved"}]
      649 GETTABLEKS                       R61 R14 K7 ["input"]
      651 SETTABLEKS                       R61 R60 K7 ["input"]
      653 SETTABLEKS                       R43 R60 K84 ["onResolved"]
      655 CALL                             R58 2 1
      656 JUMP                             ; [+1]
      657 LOADNIL                          R58
      658 SETTABLEKS                       R58 R57 K40 ["DeviceManagerDialog"]
      660 GETTABLEKS                       R59 R16 K10 ["initialDpi"]
      662 JUMPIFNOT                        R59 ; [+13]
      663 GETUPVAL                         R58 3
      664 GETTABLEKS                       R58 R58 K38 ["createElement"]
      666 MOVE                             R59 R3
      667 DUPTABLE                         R60 K86 [{"initialDpi", "onResolved"}]
      668 GETTABLEKS                       R61 R16 K10 ["initialDpi"]
      670 SETTABLEKS                       R61 R60 K10 ["initialDpi"]
      672 SETTABLEKS                       R46 R60 K84 ["onResolved"]
      674 CALL                             R58 2 1
      675 JUMP                             ; [+1]
      676 LOADNIL                          R58
      677 SETTABLEKS                       R58 R57 K41 ["CalibratePhysicalScalingDialog"]
      679 CALL                             R54 3 -1
      680 RETURN                           R54 -1

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
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["CategoryButtons"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["CalibratePhysicalScalingDialog"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R7 K13 ["DeviceConstants"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R0 K10 ["Src"]
       48 GETTABLEKS                       R8 R8 K14 ["DeviceSerialization"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETIMPORT                        R9 K1 [script]
       55 GETTABLEKS                       R9 R9 K15 ["Parent"]
       57 GETTABLEKS                       R9 R9 K16 ["CategoryRow"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Src"]
       64 GETTABLEKS                       R10 R10 K17 ["DeviceManagerDialog"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K10 ["Src"]
       71 GETTABLEKS                       R11 R11 K17 ["DeviceManagerDialog"]
       73 GETTABLEKS                       R11 R11 K18 ["DeviceManagerModel"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K5 [require]
       78 GETIMPORT                        R12 K1 [script]
       80 GETTABLEKS                       R12 R12 K15 ["Parent"]
       82 GETTABLEKS                       R12 R12 K19 ["RightControls"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R13 R0 K10 ["Src"]
       89 GETTABLEKS                       R13 R13 K20 ["SimulatorRegistry"]
       91 GETTABLEKS                       R13 R13 K21 ["SimulatorPillBar"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K5 [require]
       96 GETTABLEKS                       R14 R0 K10 ["Src"]
       98 GETTABLEKS                       R14 R14 K22 ["Hooks"]
      100 GETTABLEKS                       R14 R14 K23 ["useServerView"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K5 [require]
      105 GETTABLEKS                       R15 R0 K10 ["Src"]
      107 GETTABLEKS                       R15 R15 K22 ["Hooks"]
      109 GETTABLEKS                       R15 R15 K24 ["useLocalization"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K10 ["Src"]
      116 GETTABLEKS                       R16 R16 K20 ["SimulatorRegistry"]
      118 GETTABLEKS                       R16 R16 K25 ["useSimulatorRegistry"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K5 [require]
      123 GETTABLEKS                       R17 R0 K26 ["Bin"]
      125 GETTABLEKS                       R17 R17 K27 ["Common"]
      127 GETTABLEKS                       R17 R17 K28 ["defineLuaFlags"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K5 [require]
      132 GETTABLEKS                       R18 R0 K10 ["Src"]
      134 GETTABLEKS                       R18 R18 K29 ["DeviceModel"]
      136 CALL                             R17 1 1
      137 NEWTABLE                         R18 4 0
      139 GETIMPORT                        R19 K33 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
      141 LOADK                            R20 K34 ["physical"]
      142 SETTABLE                         R20 R18 R19
      143 GETIMPORT                        R19 K36 [Enum.DeviceSimulatorScalingMode.ActualResolution]
      145 LOADK                            R20 K37 ["actual"]
      146 SETTABLE                         R20 R18 R19
      147 GETIMPORT                        R19 K39 [Enum.DeviceSimulatorScalingMode.FitToWindow]
      149 LOADK                            R20 K40 ["fit"]
      150 SETTABLE                         R20 R18 R19
      151 DUPTABLE                         R19 K41 [{"physical", "actual", "fit"}]
      152 GETIMPORT                        R20 K33 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
      154 SETTABLEKS                       R20 R19 K34 ["physical"]
      156 GETIMPORT                        R20 K36 [Enum.DeviceSimulatorScalingMode.ActualResolution]
      158 SETTABLEKS                       R20 R19 K37 ["actual"]
      160 GETIMPORT                        R20 K39 [Enum.DeviceSimulatorScalingMode.FitToWindow]
      162 SETTABLEKS                       R20 R19 K40 ["fit"]
      164 DUPCLOSURE                       R20 K42 [PROTO_41]
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R9
      182 RETURN                           R20 1
