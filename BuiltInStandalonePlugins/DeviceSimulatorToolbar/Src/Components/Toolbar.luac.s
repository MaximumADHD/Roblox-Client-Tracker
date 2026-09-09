PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R6 R5 K0 ["kind"]
       12 JUMPIFEQKS                       R6 K1 ["server"] ; [+8]
       14 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R5
       18 GETIMPORT                        R6 K4 [table.insert]
       20 CALL                             R6 2 0
       21 FORGLOOP                         R1 2 ; [-12]
       23 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDeviceListWithMetadataAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentlyEmulatedDeviceAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetScalingModeAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
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

PROTO_11:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsScreenDpiAutoDetectEnabledAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["categoryForDevice"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["current"]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetDeviceAndPersistAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["SERVER"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+8]
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["toggleServerView"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K2 ["getDefaultDeviceId"]
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 5
       19 GETTABLEKS                       R3 R3 K3 ["current"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+13]
       23 GETUPVAL                         R2 6
       24 JUMPIFNOT                        R2 ; [+8]
       25 GETUPVAL                         R2 2
       26 CALL                             R2 0 0
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K4 ["leaveServerView"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 7
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_25:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_26:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["current"]
        6 SUB                              R0 R1 R2
        7 LOADK                            R1 K4 [0.3]
        8 JUMPIFNOTLT                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 DUPCLOSURE                       R1 K5 [PROTO_25]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 NAMECALL                         R0 R0 K0 ["SetScalingModeAndPersistAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCalibratedScreenDpiAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetCalibratedScreenDpiAsync"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R2 K4 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
        8 NAMECALL                         R0 R0 K5 ["SetScalingModeAndPersistAsync"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["simulatorService"]
        4 GETTABLEKS                       R3 R0 K1 ["calibrationDialogComponent"]
        6 JUMPIF                           R3 ; [+1]
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["getFFlagEnableDeviceSimulatorClientViewportOnly"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R5
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R8 0 1
       24 MOVE                             R9 R5
       25 SETLIST                          R8 R9 1 [1]
       27 CALL                             R6 2 1
       28 GETTABLEKS                       R7 R0 K5 ["hiddenDeviceStore"]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K6 ["useState"]
       33 NEWTABLE                         R9 0 0
       35 CALL                             R8 1 2
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K6 ["useState"]
       39 NEWCLOSURE                       R11 P1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R7
       42 CALL                             R10 1 2
       43 GETUPVAL                         R12 3
       44 GETTABLEKS                       R12 R12 K7 ["useRef"]
       46 MOVE                             R13 R8
       47 CALL                             R12 1 1
       48 SETTABLEKS                       R8 R12 K8 ["current"]
       50 GETUPVAL                         R13 3
       51 GETTABLEKS                       R13 R13 K7 ["useRef"]
       53 MOVE                             R14 R10
       54 CALL                             R13 1 1
       55 SETTABLEKS                       R10 R13 K8 ["current"]
       57 GETUPVAL                         R14 3
       58 GETTABLEKS                       R14 R14 K6 ["useState"]
       60 LOADNIL                          R15
       61 CALL                             R14 1 2
       62 GETUPVAL                         R16 3
       63 GETTABLEKS                       R16 R16 K6 ["useState"]
       65 DUPTABLE                         R17 K11 [{["input"] = }]
       66 CALL                             R16 1 2
       67 GETUPVAL                         R18 3
       68 GETTABLEKS                       R18 R18 K6 ["useState"]
       70 DUPTABLE                         R19 K13 [{["initialDpi"] = }]
       71 CALL                             R18 1 2
       72 GETUPVAL                         R20 3
       73 GETTABLEKS                       R20 R20 K6 ["useState"]
       75 DUPTABLE                         R21 K15 [{["simulatorName"] = }]
       76 CALL                             R20 1 2
       77 GETUPVAL                         R22 3
       78 GETTABLEKS                       R22 R22 K6 ["useState"]
       80 LOADK                            R23 K16 ["physical"]
       81 CALL                             R22 1 2
       82 GETUPVAL                         R24 3
       83 GETTABLEKS                       R24 R24 K7 ["useRef"]
       85 MOVE                             R25 R22
       86 CALL                             R24 1 1
       87 SETTABLEKS                       R22 R24 K8 ["current"]
       89 GETUPVAL                         R25 3
       90 GETTABLEKS                       R25 R25 K6 ["useState"]
       92 LOADB                            R26 0
       93 CALL                             R25 1 2
       94 GETUPVAL                         R27 3
       95 GETTABLEKS                       R27 R27 K6 ["useState"]
       97 LOADB                            R28 0
       98 CALL                             R27 1 2
       99 GETUPVAL                         R29 3
      100 GETTABLEKS                       R29 R29 K7 ["useRef"]
      102 LOADK                            R30 K17 [-∞]
      103 CALL                             R29 1 1
      104 GETUPVAL                         R30 3
      105 GETTABLEKS                       R30 R30 K7 ["useRef"]
      107 LOADB                            R31 0
      108 CALL                             R30 1 1
      109 GETUPVAL                         R31 3
      110 GETTABLEKS                       R31 R31 K7 ["useRef"]
      112 LOADB                            R32 0
      113 CALL                             R31 1 1
      114 GETUPVAL                         R32 3
      115 GETTABLEKS                       R32 R32 K7 ["useRef"]
      117 LOADB                            R33 0
      118 CALL                             R32 1 1
      119 GETUPVAL                         R33 5
      120 DUPTABLE                         R34 K21 [{"actions", "placeSessionBridge", "simulatorService", "currentDevice"}]
      121 GETTABLEKS                       R35 R0 K18 ["actions"]
      123 SETTABLEKS                       R35 R34 K18 ["actions"]
      125 GETTABLEKS                       R35 R0 K19 ["placeSessionBridge"]
      127 SETTABLEKS                       R35 R34 K19 ["placeSessionBridge"]
      129 SETTABLEKS                       R2 R34 K0 ["simulatorService"]
      131 SETTABLEKS                       R14 R34 K20 ["currentDevice"]
      133 CALL                             R33 1 1
      134 JUMPIFNOT                        R14 ; [+12]
      135 GETUPVAL                         R34 6
      136 GETTABLEKS                       R34 R34 K22 ["categoryForDevice"]
      138 MOVE                             R35 R14
      139 CALL                             R34 1 1
      140 JUMPIF                           R34 ; [+11]
      141 GETUPVAL                         R34 7
      142 GETTABLEKS                       R34 R34 K23 ["Category"]
      144 GETTABLEKS                       R34 R34 K24 ["DESKTOP"]
      146 JUMP                             ; [+5]
      147 GETUPVAL                         R34 7
      148 GETTABLEKS                       R34 R34 K23 ["Category"]
      150 GETTABLEKS                       R34 R34 K24 ["DESKTOP"]
      152 NOT                              R35 R5
      153 JUMPIFNOT                        R35 ; [+2]
      154 GETTABLEKS                       R35 R33 K25 ["isServerView"]
      156 JUMPIFNOT                        R35 ; [+4]
      157 GETUPVAL                         R36 7
      158 GETTABLEKS                       R36 R36 K26 ["SERVER"]
      160 JUMP                             ; [+1]
      161 MOVE                             R36 R34
      162 GETTABLEKS                       R38 R0 K27 ["registryEnabled"]
      164 JUMPIFEQKB                       R38 TRUE ; [+2]
      166 LOADB                            R37 0 +1
      167 LOADB                            R37 1
      168 GETUPVAL                         R38 3
      169 GETTABLEKS                       R38 R38 K4 ["useMemo"]
      171 NEWCLOSURE                       R39 P2
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          VAL R37
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U8
      176 NEWTABLE                         R40 0 2
      178 MOVE                             R41 R37
      179 GETTABLEKS                       R42 R0 K28 ["plugin"]
      181 SETLIST                          R40 R41 2 [1]
      183 CALL                             R38 2 1
      184 GETUPVAL                         R39 9
      185 JUMPIFNOT                        R37 ; [+2]
      186 MOVE                             R40 R2
      187 JUMP                             ; [+1]
      188 LOADNIL                          R40
      189 MOVE                             R41 R38
      190 CALL                             R39 2 1
      191 GETUPVAL                         R40 3
      192 GETTABLEKS                       R40 R40 K29 ["useCallback"]
      194 NEWCLOSURE                       R41 P3
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R9
      198 NEWTABLE                         R42 0 1
      200 MOVE                             R43 R2
      201 SETLIST                          R42 R43 1 [1]
      203 CALL                             R40 2 1
      204 GETUPVAL                         R41 3
      205 GETTABLEKS                       R41 R41 K29 ["useCallback"]
      207 NEWCLOSURE                       R42 P4
      208 CAPTURE                          VAL R2
      209 CAPTURE                          UPVAL U6
      210 CAPTURE                          VAL R15
      211 NEWTABLE                         R43 0 1
      213 MOVE                             R44 R2
      214 SETLIST                          R43 R44 1 [1]
      216 CALL                             R41 2 1
      217 GETUPVAL                         R42 3
      218 GETTABLEKS                       R42 R42 K29 ["useCallback"]
      220 NEWCLOSURE                       R43 P5
      221 CAPTURE                          VAL R2
      222 CAPTURE                          UPVAL U10
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R23
      225 NEWTABLE                         R44 0 1
      227 MOVE                             R45 R2
      228 SETLIST                          R44 R45 1 [1]
      230 CALL                             R42 2 1
      231 GETUPVAL                         R43 3
      232 GETTABLEKS                       R43 R43 K29 ["useCallback"]
      234 NEWCLOSURE                       R44 P6
      235 CAPTURE                          UPVAL U2
      236 CAPTURE                          VAL R2
      237 CAPTURE                          VAL R26
      238 NEWTABLE                         R45 0 1
      240 MOVE                             R46 R2
      241 SETLIST                          R45 R46 1 [1]
      243 CALL                             R43 2 1
      244 GETUPVAL                         R44 3
      245 GETTABLEKS                       R44 R44 K30 ["useEffect"]
      247 NEWCLOSURE                       R45 P7
      248 CAPTURE                          VAL R2
      249 CAPTURE                          UPVAL U6
      250 CAPTURE                          VAL R15
      251 CAPTURE                          VAL R30
      252 CAPTURE                          VAL R40
      253 CAPTURE                          VAL R28
      254 CAPTURE                          UPVAL U2
      255 CAPTURE                          VAL R41
      256 CAPTURE                          VAL R42
      257 CAPTURE                          VAL R43
      258 NEWTABLE                         R46 0 5
      260 MOVE                             R47 R43
      261 MOVE                             R48 R41
      262 MOVE                             R49 R40
      263 MOVE                             R50 R42
      264 MOVE                             R51 R2
      265 SETLIST                          R46 R47 5 [1]
      267 CALL                             R44 2 0
      268 GETUPVAL                         R44 3
      269 GETTABLEKS                       R44 R44 K29 ["useCallback"]
      271 NEWCLOSURE                       R45 P8
      272 CAPTURE                          VAL R29
      273 CAPTURE                          VAL R28
      274 NEWTABLE                         R46 0 0
      276 CALL                             R44 2 1
      277 GETUPVAL                         R45 3
      278 GETTABLEKS                       R45 R45 K29 ["useCallback"]
      280 NEWCLOSURE                       R46 P9
      281 CAPTURE                          VAL R44
      282 CAPTURE                          VAL R2
      283 NEWTABLE                         R47 0 2
      285 MOVE                             R48 R44
      286 MOVE                             R49 R2
      287 SETLIST                          R47 R48 2 [1]
      289 CALL                             R45 2 1
      290 GETUPVAL                         R46 3
      291 GETTABLEKS                       R46 R46 K29 ["useCallback"]
      293 NEWCLOSURE                       R47 P10
      294 CAPTURE                          VAL R5
      295 CAPTURE                          UPVAL U7
      296 CAPTURE                          VAL R44
      297 CAPTURE                          VAL R33
      298 CAPTURE                          UPVAL U6
      299 CAPTURE                          VAL R12
      300 CAPTURE                          VAL R35
      301 CAPTURE                          VAL R45
      302 NEWTABLE                         R48 0 5
      304 MOVE                             R49 R44
      305 MOVE                             R50 R45
      306 MOVE                             R51 R33
      307 MOVE                             R52 R35
      308 MOVE                             R53 R5
      309 SETLIST                          R48 R49 5 [1]
      311 CALL                             R46 2 1
      312 GETUPVAL                         R47 3
      313 GETTABLEKS                       R47 R47 K29 ["useCallback"]
      315 NEWCLOSURE                       R48 P11
      316 CAPTURE                          VAL R29
      317 CAPTURE                          VAL R28
      318 NEWTABLE                         R49 0 0
      320 CALL                             R47 2 1
      321 GETUPVAL                         R48 3
      322 GETTABLEKS                       R48 R48 K29 ["useCallback"]
      324 NEWCLOSURE                       R49 P12
      325 CAPTURE                          UPVAL U6
      326 CAPTURE                          VAL R45
      327 CAPTURE                          VAL R44
      328 CAPTURE                          VAL R14
      329 CAPTURE                          VAL R17
      330 CAPTURE                          VAL R12
      331 CAPTURE                          VAL R4
      332 CAPTURE                          VAL R13
      333 NEWTABLE                         R50 0 3
      335 MOVE                             R51 R44
      336 MOVE                             R52 R45
      337 MOVE                             R53 R14
      338 SETLIST                          R50 R51 3 [1]
      340 CALL                             R48 2 1
      341 GETUPVAL                         R49 3
      342 GETTABLEKS                       R49 R49 K29 ["useCallback"]
      344 NEWCLOSURE                       R50 P13
      345 CAPTURE                          VAL R17
      346 CAPTURE                          VAL R30
      347 CAPTURE                          VAL R2
      348 CAPTURE                          UPVAL U11
      349 CAPTURE                          VAL R4
      350 CAPTURE                          VAL R7
      351 CAPTURE                          VAL R11
      352 CAPTURE                          VAL R40
      353 CAPTURE                          VAL R41
      354 NEWTABLE                         R51 0 2
      356 MOVE                             R52 R7
      357 MOVE                             R53 R4
      358 SETLIST                          R51 R52 2 [1]
      360 CALL                             R49 2 1
      361 GETUPVAL                         R50 3
      362 GETTABLEKS                       R50 R50 K29 ["useCallback"]
      364 NEWCLOSURE                       R51 P14
      365 CAPTURE                          VAL R31
      366 CAPTURE                          VAL R2
      367 CAPTURE                          UPVAL U12
      368 CAPTURE                          VAL R24
      369 CAPTURE                          VAL R23
      370 CAPTURE                          VAL R42
      371 NEWTABLE                         R52 0 2
      373 MOVE                             R53 R42
      374 MOVE                             R54 R2
      375 SETLIST                          R52 R53 2 [1]
      377 CALL                             R50 2 1
      378 GETUPVAL                         R51 3
      379 GETTABLEKS                       R51 R51 K29 ["useCallback"]
      381 NEWCLOSURE                       R52 P15
      382 CAPTURE                          VAL R32
      383 CAPTURE                          VAL R31
      384 CAPTURE                          VAL R2
      385 CAPTURE                          VAL R19
      386 NEWTABLE                         R53 0 1
      388 MOVE                             R54 R2
      389 SETLIST                          R53 R54 1 [1]
      391 CALL                             R51 2 1
      392 GETUPVAL                         R52 3
      393 GETTABLEKS                       R52 R52 K29 ["useCallback"]
      395 NEWCLOSURE                       R53 P16
      396 CAPTURE                          UPVAL U2
      397 CAPTURE                          VAL R21
      398 NEWTABLE                         R54 0 0
      400 CALL                             R52 2 1
      401 GETUPVAL                         R53 3
      402 GETTABLEKS                       R53 R53 K29 ["useCallback"]
      404 NEWCLOSURE                       R54 P17
      405 CAPTURE                          UPVAL U2
      406 CAPTURE                          VAL R20
      407 CAPTURE                          VAL R21
      408 CAPTURE                          VAL R39
      409 NEWTABLE                         R55 0 2
      411 MOVE                             R56 R20
      412 MOVE                             R57 R39
      413 SETLIST                          R55 R56 2 [1]
      415 CALL                             R53 2 1
      416 GETUPVAL                         R54 3
      417 GETTABLEKS                       R54 R54 K29 ["useCallback"]
      419 NEWCLOSURE                       R55 P18
      420 CAPTURE                          VAL R19
      421 CAPTURE                          VAL R32
      422 CAPTURE                          VAL R31
      423 CAPTURE                          VAL R2
      424 CAPTURE                          VAL R24
      425 CAPTURE                          VAL R23
      426 CAPTURE                          UPVAL U2
      427 CAPTURE                          VAL R26
      428 CAPTURE                          VAL R42
      429 NEWTABLE                         R56 0 2
      431 MOVE                             R57 R42
      432 MOVE                             R58 R2
      433 SETLIST                          R56 R57 2 [1]
      435 CALL                             R54 2 1
      436 GETUPVAL                         R55 3
      437 GETTABLEKS                       R55 R55 K29 ["useCallback"]
      439 NEWCLOSURE                       R56 P19
      440 CAPTURE                          UPVAL U2
      441 CAPTURE                          VAL R32
      442 CAPTURE                          VAL R31
      443 CAPTURE                          VAL R25
      444 CAPTURE                          VAL R2
      445 CAPTURE                          VAL R24
      446 CAPTURE                          VAL R23
      447 CAPTURE                          VAL R26
      448 CAPTURE                          VAL R42
      449 CAPTURE                          VAL R43
      450 NEWTABLE                         R57 0 4
      452 MOVE                             R58 R25
      453 MOVE                             R59 R43
      454 MOVE                             R60 R42
      455 MOVE                             R61 R2
      456 SETLIST                          R57 R58 4 [1]
      458 CALL                             R55 2 1
      459 GETUPVAL                         R56 3
      460 GETTABLEKS                       R56 R56 K29 ["useCallback"]
      462 NEWCLOSURE                       R57 P20
      463 CAPTURE                          VAL R44
      464 NEWTABLE                         R58 0 1
      466 MOVE                             R59 R44
      467 SETLIST                          R58 R59 1 [1]
      469 CALL                             R56 2 1
      470 JUMPIFNOT                        R14 ; [+3]
      471 GETTABLEKS                       R57 R14 K31 ["deviceId"]
      473 JUMP                             ; [+3]
      474 GETUPVAL                         R57 6
      475 GETTABLEKS                       R57 R57 K32 ["DEFAULT_DEVICE_ID"]
      477 JUMPIFNOT                        R35 ; [+3]
      478 NEWTABLE                         R58 0 0
      480 JUMP                             ; [+12]
      481 GETUPVAL                         R58 6
      482 GETTABLEKS                       R58 R58 K33 ["getMenuGroups"]
      484 MOVE                             R59 R34
      485 MOVE                             R60 R8
      486 MOVE                             R61 R57
      487 MOVE                             R62 R1
      488 JUMPIFNOT                        R4 ; [+2]
      489 MOVE                             R63 R10
      490 JUMP                             ; [+1]
      491 LOADNIL                          R63
      492 CALL                             R58 5 1
      493 JUMPIFNOT                        R35 ; [+6]
      494 LOADK                            R61 K34 ["Toolbar"]
      495 LOADK                            R62 K35 ["ServerLabel"]
      496 NAMECALL                         R59 R1 K36 ["getText"]
      498 CALL                             R59 3 1
      499 JUMP                             ; [+7]
      500 GETUPVAL                         R59 6
      501 GETTABLEKS                       R59 R59 K37 ["getDeviceName"]
      503 MOVE                             R60 R57
      504 MOVE                             R61 R8
      505 MOVE                             R62 R1
      506 CALL                             R59 3 1
      507 NEWTABLE                         R60 4 0
      509 GETUPVAL                         R61 7
      510 GETTABLEKS                       R61 R61 K23 ["Category"]
      512 GETTABLEKS                       R61 R61 K38 ["PHONE_TABLET"]
      514 GETUPVAL                         R63 6
      515 GETTABLEKS                       R63 R63 K39 ["hasChoices"]
      517 GETUPVAL                         R64 7
      518 GETTABLEKS                       R64 R64 K23 ["Category"]
      520 GETTABLEKS                       R64 R64 K38 ["PHONE_TABLET"]
      522 MOVE                             R65 R8
      523 CALL                             R63 2 1
      524 NOT                              R62 R63
      525 SETTABLE                         R62 R60 R61
      526 GETUPVAL                         R61 7
      527 GETTABLEKS                       R61 R61 K23 ["Category"]
      529 GETTABLEKS                       R61 R61 K24 ["DESKTOP"]
      531 GETUPVAL                         R63 6
      532 GETTABLEKS                       R63 R63 K39 ["hasChoices"]
      534 GETUPVAL                         R64 7
      535 GETTABLEKS                       R64 R64 K23 ["Category"]
      537 GETTABLEKS                       R64 R64 K24 ["DESKTOP"]
      539 MOVE                             R65 R8
      540 CALL                             R63 2 1
      541 NOT                              R62 R63
      542 SETTABLE                         R62 R60 R61
      543 GETUPVAL                         R61 7
      544 GETTABLEKS                       R61 R61 K23 ["Category"]
      546 GETTABLEKS                       R61 R61 K40 ["CONSOLE"]
      548 GETUPVAL                         R63 6
      549 GETTABLEKS                       R63 R63 K39 ["hasChoices"]
      551 GETUPVAL                         R64 7
      552 GETTABLEKS                       R64 R64 K23 ["Category"]
      554 GETTABLEKS                       R64 R64 K40 ["CONSOLE"]
      556 MOVE                             R65 R8
      557 CALL                             R63 2 1
      558 NOT                              R62 R63
      559 SETTABLE                         R62 R60 R61
      560 GETUPVAL                         R61 7
      561 GETTABLEKS                       R61 R61 K23 ["Category"]
      563 GETTABLEKS                       R61 R61 K41 ["VR"]
      565 GETUPVAL                         R63 6
      566 GETTABLEKS                       R63 R63 K39 ["hasChoices"]
      568 GETUPVAL                         R64 7
      569 GETTABLEKS                       R64 R64 K23 ["Category"]
      571 GETTABLEKS                       R64 R64 K41 ["VR"]
      573 MOVE                             R65 R8
      574 CALL                             R63 2 1
      575 NOT                              R62 R63
      576 SETTABLE                         R62 R60 R61
      577 GETUPVAL                         R61 2
      578 GETTABLEKS                       R61 R61 K42 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
      580 CALL                             R61 0 1
      581 GETUPVAL                         R62 3
      582 GETTABLEKS                       R62 R62 K43 ["createElement"]
      584 GETUPVAL                         R63 3
      585 GETTABLEKS                       R63 R63 K44 ["Fragment"]
      587 LOADNIL                          R64
      588 DUPTABLE                         R65 K48 [{"Toolbar", "DeviceManagerDialog", "CalibratePhysicalScalingDialog", "SavePresetDialog"}]
      589 GETUPVAL                         R66 3
      590 GETTABLEKS                       R66 R66 K43 ["createElement"]
      592 GETUPVAL                         R67 13
      593 DUPTABLE                         R68 K51 [{["tag"] = "row align-y-center gap-small size-full padding-x-small bg-surface-0"}]
      594 DUPTABLE                         R69 K56 [{"Categories", "Spacer", "RightControls", "SimulatorPills"}]
      595 GETUPVAL                         R70 3
      596 GETTABLEKS                       R70 R70 K43 ["createElement"]
      598 GETUPVAL                         R71 14
      599 DUPTABLE                         R72 K70 [{["LayoutOrder"] = 1, ["categories"], ["activeCategory"], ["activeDeviceName"], ["serverDisabled"], ["disabledCategories"], ["onCategoryClick"], ["onChipClick"], ["isMenuOpen"], ["menuItems"], ["onMenuActivated"], ["onPressedOutside"]}]
      600 SETTABLEKS                       R6 R72 K59 ["categories"]
      602 SETTABLEKS                       R36 R72 K60 ["activeCategory"]
      604 SETTABLEKS                       R59 R72 K61 ["activeDeviceName"]
      606 GETTABLEKS                       R73 R33 K71 ["serverButtonDisabled"]
      608 SETTABLEKS                       R73 R72 K62 ["serverDisabled"]
      610 SETTABLEKS                       R60 R72 K63 ["disabledCategories"]
      612 SETTABLEKS                       R46 R72 K64 ["onCategoryClick"]
      614 SETTABLEKS                       R47 R72 K65 ["onChipClick"]
      616 SETTABLEKS                       R27 R72 K66 ["isMenuOpen"]
      618 SETTABLEKS                       R58 R72 K67 ["menuItems"]
      620 SETTABLEKS                       R48 R72 K68 ["onMenuActivated"]
      622 SETTABLEKS                       R56 R72 K69 ["onPressedOutside"]
      624 CALL                             R70 2 1
      625 SETTABLEKS                       R70 R69 K52 ["Categories"]
      627 GETUPVAL                         R70 3
      628 GETTABLEKS                       R70 R70 K43 ["createElement"]
      630 GETUPVAL                         R71 13
      631 DUPTABLE                         R72 K74 [{["LayoutOrder"] = 2, ["tag"] = "grow"}]
      632 CALL                             R70 2 1
      633 SETTABLEKS                       R70 R69 K53 ["Spacer"]
      635 GETUPVAL                         R70 3
      636 GETTABLEKS                       R70 R70 K43 ["createElement"]
      638 GETUPVAL                         R71 15
      639 DUPTABLE                         R72 K82 [{["LayoutOrder"] = 3, ["activeCategory"], ["currentDevice"], ["isClientView"], [5], ["actions"], ["scalingMode"], ["onScalingModeChanged"], ["onCalibrateScaling"], ["onToggleAutoDetectScaling"], ["isAutoDetectScaling"]}]
      640 SETTABLEKS                       R36 R72 K60 ["activeCategory"]
      642 SETTABLEKS                       R14 R72 K20 ["currentDevice"]
      644 GETTABLEKS                       R73 R33 K76 ["isClientView"]
      646 SETTABLEKS                       R73 R72 K76 ["isClientView"]
      648 SETTABLEKS                       R2 R72 K0 ["simulatorService"]
      650 GETTABLEKS                       R73 R0 K18 ["actions"]
      652 SETTABLEKS                       R73 R72 K18 ["actions"]
      654 SETTABLEKS                       R22 R72 K77 ["scalingMode"]
      656 SETTABLEKS                       R50 R72 K78 ["onScalingModeChanged"]
      658 SETTABLEKS                       R51 R72 K79 ["onCalibrateScaling"]
      660 JUMPIFNOT                        R61 ; [+2]
      661 MOVE                             R73 R55
      662 JUMP                             ; [+1]
      663 LOADNIL                          R73
      664 SETTABLEKS                       R73 R72 K80 ["onToggleAutoDetectScaling"]
      666 JUMPIFNOT                        R61 ; [+2]
      667 MOVE                             R73 R25
      668 JUMP                             ; [+1]
      669 LOADNIL                          R73
      670 SETTABLEKS                       R73 R72 K81 ["isAutoDetectScaling"]
      672 CALL                             R70 2 1
      673 SETTABLEKS                       R70 R69 K54 ["RightControls"]
      675 JUMPIFNOT                        R37 ; [+41]
      676 GETUPVAL                         R70 3
      677 GETTABLEKS                       R70 R70 K43 ["createElement"]
      679 GETUPVAL                         R71 16
      680 DUPTABLE                         R72 K93 [{["LayoutOrder"] = 4, ["simulators"], ["viewModelsByName"], ["onControlChanged"], ["onApply"], ["onDismiss"], ["saveDialogSimulatorName"], ["onReset"], ["onRequestSave"], ["onDeleteSavedPreset"]}]
      681 GETTABLEKS                       R73 R39 K84 ["simulators"]
      683 SETTABLEKS                       R73 R72 K84 ["simulators"]
      685 GETTABLEKS                       R73 R39 K85 ["viewModelsByName"]
      687 SETTABLEKS                       R73 R72 K85 ["viewModelsByName"]
      689 GETTABLEKS                       R73 R39 K94 ["changeControl"]
      691 SETTABLEKS                       R73 R72 K86 ["onControlChanged"]
      693 GETTABLEKS                       R73 R39 K95 ["applyPending"]
      695 SETTABLEKS                       R73 R72 K87 ["onApply"]
      697 GETTABLEKS                       R73 R39 K96 ["discardPending"]
      699 SETTABLEKS                       R73 R72 K88 ["onDismiss"]
      701 GETTABLEKS                       R73 R20 K14 ["simulatorName"]
      703 SETTABLEKS                       R73 R72 K89 ["saveDialogSimulatorName"]
      705 GETTABLEKS                       R73 R39 K97 ["resetToDefault"]
      707 SETTABLEKS                       R73 R72 K90 ["onReset"]
      709 SETTABLEKS                       R52 R72 K91 ["onRequestSave"]
      711 GETTABLEKS                       R73 R39 K98 ["deleteSavedPreset"]
      713 SETTABLEKS                       R73 R72 K92 ["onDeleteSavedPreset"]
      715 CALL                             R70 2 1
      716 JUMP                             ; [+1]
      717 LOADNIL                          R70
      718 SETTABLEKS                       R70 R69 K55 ["SimulatorPills"]
      720 CALL                             R66 3 1
      721 SETTABLEKS                       R66 R65 K34 ["Toolbar"]
      723 GETTABLEKS                       R67 R16 K9 ["input"]
      725 JUMPIFNOT                        R67 ; [+13]
      726 GETUPVAL                         R66 3
      727 GETTABLEKS                       R66 R66 K43 ["createElement"]
      729 GETUPVAL                         R67 17
      730 DUPTABLE                         R68 K100 [{"input", "onResolved"}]
      731 GETTABLEKS                       R69 R16 K9 ["input"]
      733 SETTABLEKS                       R69 R68 K9 ["input"]
      735 SETTABLEKS                       R49 R68 K99 ["onResolved"]
      737 CALL                             R66 2 1
      738 JUMP                             ; [+1]
      739 LOADNIL                          R66
      740 SETTABLEKS                       R66 R65 K45 ["DeviceManagerDialog"]
      742 GETTABLEKS                       R67 R18 K12 ["initialDpi"]
      744 JUMPIFNOT                        R67 ; [+13]
      745 GETUPVAL                         R66 3
      746 GETTABLEKS                       R66 R66 K43 ["createElement"]
      748 MOVE                             R67 R3
      749 DUPTABLE                         R68 K101 [{"initialDpi", "onResolved"}]
      750 GETTABLEKS                       R69 R18 K12 ["initialDpi"]
      752 SETTABLEKS                       R69 R68 K12 ["initialDpi"]
      754 SETTABLEKS                       R54 R68 K99 ["onResolved"]
      756 CALL                             R66 2 1
      757 JUMP                             ; [+1]
      758 LOADNIL                          R66
      759 SETTABLEKS                       R66 R65 K46 ["CalibratePhysicalScalingDialog"]
      761 GETTABLEKS                       R67 R20 K14 ["simulatorName"]
      763 JUMPIFNOT                        R67 ; [+51]
      764 GETUPVAL                         R66 3
      765 GETTABLEKS                       R66 R66 K43 ["createElement"]
      767 GETUPVAL                         R67 18
      768 DUPTABLE                         R68 K104 [{"simulatorName", "existingNames", "reservedNames", "onResolved"}]
      769 GETTABLEKS                       R69 R20 K14 ["simulatorName"]
      771 SETTABLEKS                       R69 R68 K14 ["simulatorName"]
      773 GETTABLEKS                       R71 R39 K85 ["viewModelsByName"]
      775 GETTABLEKS                       R72 R20 K14 ["simulatorName"]
      777 GETTABLE                         R70 R71 R72
      778 JUMPIFEQKNIL                     R70 ; [+9]
      780 GETTABLEKS                       R70 R39 K85 ["viewModelsByName"]
      782 GETTABLEKS                       R71 R20 K14 ["simulatorName"]
      784 GETTABLE                         R69 R70 R71
      785 GETTABLEKS                       R69 R69 K105 ["savedPresetNames"]
      787 JUMP                             ; [+2]
      788 NEWTABLE                         R69 0 0
      790 SETTABLEKS                       R69 R68 K102 ["existingNames"]
      792 GETTABLEKS                       R71 R39 K85 ["viewModelsByName"]
      794 GETTABLEKS                       R72 R20 K14 ["simulatorName"]
      796 GETTABLE                         R70 R71 R72
      797 JUMPIFEQKNIL                     R70 ; [+9]
      799 GETTABLEKS                       R70 R39 K85 ["viewModelsByName"]
      801 GETTABLEKS                       R71 R20 K14 ["simulatorName"]
      803 GETTABLE                         R69 R70 R71
      804 GETTABLEKS                       R69 R69 K106 ["reservedPresetNames"]
      806 JUMP                             ; [+2]
      807 NEWTABLE                         R69 0 0
      809 SETTABLEKS                       R69 R68 K103 ["reservedNames"]
      811 SETTABLEKS                       R53 R68 K99 ["onResolved"]
      813 CALL                             R66 2 1
      814 JUMP                             ; [+1]
      815 LOADNIL                          R66
      816 SETTABLEKS                       R66 R65 K47 ["SavePresetDialog"]
      818 CALL                             R62 3 -1
      819 RETURN                           R62 -1

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
      182 DUPCLOSURE                       R22 K44 [PROTO_45]
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R14
      202 RETURN                           R22 1
