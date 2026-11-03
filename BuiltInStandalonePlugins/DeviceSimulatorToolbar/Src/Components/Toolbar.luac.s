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
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetPerformanceSimulationMemoryTiersAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETIMPORT                        R7 K1 [pcall]
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R6
       12 CALL                             R7 1 2
       13 GETUPVAL                         R9 2
       14 GETTABLEKS                       R9 R9 K2 ["current"]
       16 GETUPVAL                         R10 3
       17 JUMPIFEQ                         R9 R10 ; [+2]
       19 RETURN                           R0 0
       20 JUMPIFNOT                        R7 ; [+21]
       21 FASTCALL1                        TYPE R8 ; [+3]
       22 MOVE                             R10 R8
       23 GETIMPORT                        R9 K4 [type]
       25 CALL                             R9 1 1
       26 JUMPIFNOTEQKS                    R9 K5 ["table"] ; [+15]
       28 LENGTH                           R9 R8
       29 LOADN                            R10 0
       30 JUMPIFNOTLT                      R10 R9 ; [+11]
       32 GETIMPORT                        R9 K7 [table.clone]
       34 MOVE                             R10 R8
       35 CALL                             R9 1 1
       36 GETIMPORT                        R10 K9 [table.sort]
       38 MOVE                             R11 R9
       39 CALL                             R10 1 0
       40 SETTABLE                         R9 R0 R6
       41 LOADB                            R1 1
       42 FORGLOOP                         R2 2 ; [-36]
       44 GETUPVAL                         R2 4
       45 JUMPIFNOT                        R1 ; [+2]
       46 MOVE                             R3 R0
       47 JUMP                             ; [+1]
       48 LOADNIL                          R3
       49 CALL                             R2 1 0
       50 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getEngineFeatureDeviceSimulatorNominalMemory"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R1 R0 K1 ["current"]
        9 ADDK                             R1 R1 K2 [1]
       10 SETTABLEKS                       R1 R0 K1 ["current"]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["current"]
       15 GETIMPORT                        R1 K5 [task.spawn]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U4
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentlyEmulatedDeviceAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
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

PROTO_11:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetScalingModeAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_13:
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

PROTO_14:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsScreenDpiAutoDetectEnabledAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["categoryForDevice"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_20:
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
       16 GETUPVAL                         R0 6
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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
       28 CAPTURE                          UPVAL U10
       29 NAMECALL                         R2 R2 K1 ["Connect"]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R3 4
       33 CALL                             R3 0 0
       34 GETUPVAL                         R3 7
       35 CALL                             R3 0 0
       36 GETUPVAL                         R3 8
       37 CALL                             R3 0 0
       38 GETUPVAL                         R3 9
       39 CALL                             R3 0 0
       40 GETUPVAL                         R3 10
       41 CALL                             R3 0 0
       42 NEWCLOSURE                       R3 P3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 RETURN                           R3 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["current"]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetDeviceAndPersistAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_25:
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
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K8 ["getFFlagDeviceSimulatorRefreshStateOnDeviceChange"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+12]
       24 JUMPIFNOT                        R0 ; [+11]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K9 ["refreshDynamicState"]
       28 CALL                             R2 0 0
       29 GETIMPORT                        R2 K12 [task.delay]
       31 LOADK                            R3 K13 [0.1]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K9 ["refreshDynamicState"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_29:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["current"]
        6 SUB                              R0 R1 R2
        7 LOADK                            R1 K4 [0.3]
        8 JUMPIFNOTLT                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 DUPCLOSURE                       R1 K5 [PROTO_28]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 NAMECALL                         R0 R0 K0 ["SetScalingModeAndPersistAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCalibratedScreenDpiAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetCalibratedScreenDpiAsync"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R2 K4 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
        8 NAMECALL                         R0 R0 K5 ["SetScalingModeAndPersistAsync"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetDeviceAndPersistAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_49:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+12]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R5 K4 ["[DeviceSimulatorToolbar] Failed to select device '"]
       10 MOVE                             R6 R0
       11 LOADK                            R7 K5 ["': "]
       12 FASTCALL1                        TOSTRING R2 ; [+3]
       13 MOVE                             R9 R2
       14 GETIMPORT                        R8 K7 [tostring]
       16 CALL                             R8 1 1
       17 CONCAT                           R4 R5 R8
       18 CALL                             R3 1 0
       19 RETURN                           R1 1

PROTO_50:
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
       65 LOADNIL                          R17
       66 CALL                             R16 1 2
       67 GETUPVAL                         R18 3
       68 GETTABLEKS                       R18 R18 K7 ["useRef"]
       70 LOADN                            R19 0
       71 CALL                             R18 1 1
       72 GETUPVAL                         R19 3
       73 GETTABLEKS                       R19 R19 K6 ["useState"]
       75 DUPTABLE                         R20 K11 [{["input"] = }]
       76 CALL                             R19 1 2
       77 GETUPVAL                         R21 3
       78 GETTABLEKS                       R21 R21 K6 ["useState"]
       80 DUPTABLE                         R22 K13 [{["initialDpi"] = }]
       81 CALL                             R21 1 2
       82 GETUPVAL                         R23 3
       83 GETTABLEKS                       R23 R23 K6 ["useState"]
       85 DUPTABLE                         R24 K15 [{["simulatorName"] = }]
       86 CALL                             R23 1 2
       87 GETUPVAL                         R25 3
       88 GETTABLEKS                       R25 R25 K6 ["useState"]
       90 LOADK                            R26 K16 ["physical"]
       91 CALL                             R25 1 2
       92 GETUPVAL                         R27 3
       93 GETTABLEKS                       R27 R27 K7 ["useRef"]
       95 MOVE                             R28 R25
       96 CALL                             R27 1 1
       97 SETTABLEKS                       R25 R27 K8 ["current"]
       99 GETUPVAL                         R28 3
      100 GETTABLEKS                       R28 R28 K6 ["useState"]
      102 LOADB                            R29 0
      103 CALL                             R28 1 2
      104 GETUPVAL                         R30 3
      105 GETTABLEKS                       R30 R30 K6 ["useState"]
      107 LOADB                            R31 0
      108 CALL                             R30 1 2
      109 GETUPVAL                         R32 3
      110 GETTABLEKS                       R32 R32 K7 ["useRef"]
      112 LOADK                            R33 K17 [-Infinity]
      113 CALL                             R32 1 1
      114 GETUPVAL                         R33 3
      115 GETTABLEKS                       R33 R33 K7 ["useRef"]
      117 LOADB                            R34 0
      118 CALL                             R33 1 1
      119 GETUPVAL                         R34 3
      120 GETTABLEKS                       R34 R34 K7 ["useRef"]
      122 LOADB                            R35 0
      123 CALL                             R34 1 1
      124 GETUPVAL                         R35 3
      125 GETTABLEKS                       R35 R35 K7 ["useRef"]
      127 LOADB                            R36 0
      128 CALL                             R35 1 1
      129 GETUPVAL                         R36 5
      130 DUPTABLE                         R37 K21 [{"actions", "placeSessionBridge", "simulatorService", "currentDevice"}]
      131 GETTABLEKS                       R38 R0 K18 ["actions"]
      133 SETTABLEKS                       R38 R37 K18 ["actions"]
      135 GETTABLEKS                       R38 R0 K19 ["placeSessionBridge"]
      137 SETTABLEKS                       R38 R37 K19 ["placeSessionBridge"]
      139 SETTABLEKS                       R2 R37 K0 ["simulatorService"]
      141 SETTABLEKS                       R14 R37 K20 ["currentDevice"]
      143 CALL                             R36 1 1
      144 JUMPIFNOT                        R14 ; [+12]
      145 GETUPVAL                         R37 6
      146 GETTABLEKS                       R37 R37 K22 ["categoryForDevice"]
      148 MOVE                             R38 R14
      149 CALL                             R37 1 1
      150 JUMPIF                           R37 ; [+11]
      151 GETUPVAL                         R37 7
      152 GETTABLEKS                       R37 R37 K23 ["Category"]
      154 GETTABLEKS                       R37 R37 K24 ["DESKTOP"]
      156 JUMP                             ; [+5]
      157 GETUPVAL                         R37 7
      158 GETTABLEKS                       R37 R37 K23 ["Category"]
      160 GETTABLEKS                       R37 R37 K24 ["DESKTOP"]
      162 NOT                              R38 R5
      163 JUMPIFNOT                        R38 ; [+2]
      164 GETTABLEKS                       R38 R36 K25 ["isServerView"]
      166 JUMPIFNOT                        R38 ; [+4]
      167 GETUPVAL                         R39 7
      168 GETTABLEKS                       R39 R39 K26 ["SERVER"]
      170 JUMP                             ; [+1]
      171 MOVE                             R39 R37
      172 GETTABLEKS                       R41 R0 K27 ["registryEnabled"]
      174 JUMPIFEQKB                       R41 TRUE ; [+2]
      176 LOADB                            R40 0 +1
      177 LOADB                            R40 1
      178 GETUPVAL                         R41 3
      179 GETTABLEKS                       R41 R41 K4 ["useMemo"]
      181 NEWCLOSURE                       R42 P2
      182 CAPTURE                          UPVAL U2
      183 CAPTURE                          VAL R40
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U8
      186 NEWTABLE                         R43 0 2
      188 MOVE                             R44 R40
      189 GETTABLEKS                       R45 R0 K28 ["plugin"]
      191 SETLIST                          R43 R44 2 [1]
      193 CALL                             R41 2 1
      194 GETUPVAL                         R42 9
      195 JUMPIFNOT                        R40 ; [+2]
      196 MOVE                             R43 R2
      197 JUMP                             ; [+1]
      198 LOADNIL                          R43
      199 MOVE                             R44 R41
      200 CALL                             R42 2 1
      201 GETUPVAL                         R43 3
      202 GETTABLEKS                       R43 R43 K29 ["useCallback"]
      204 NEWCLOSURE                       R44 P3
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R9
      208 NEWTABLE                         R45 0 1
      210 MOVE                             R46 R2
      211 SETLIST                          R45 R46 1 [1]
      213 CALL                             R43 2 1
      214 GETUPVAL                         R44 3
      215 GETTABLEKS                       R44 R44 K29 ["useCallback"]
      217 NEWCLOSURE                       R45 P4
      218 CAPTURE                          UPVAL U2
      219 CAPTURE                          VAL R18
      220 CAPTURE                          UPVAL U10
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R17
      223 NEWTABLE                         R46 0 1
      225 MOVE                             R47 R2
      226 SETLIST                          R46 R47 1 [1]
      228 CALL                             R44 2 1
      229 GETUPVAL                         R45 3
      230 GETTABLEKS                       R45 R45 K29 ["useCallback"]
      232 NEWCLOSURE                       R46 P5
      233 CAPTURE                          VAL R2
      234 CAPTURE                          UPVAL U6
      235 CAPTURE                          VAL R15
      236 NEWTABLE                         R47 0 1
      238 MOVE                             R48 R2
      239 SETLIST                          R47 R48 1 [1]
      241 CALL                             R45 2 1
      242 GETUPVAL                         R46 3
      243 GETTABLEKS                       R46 R46 K29 ["useCallback"]
      245 NEWCLOSURE                       R47 P6
      246 CAPTURE                          VAL R2
      247 CAPTURE                          UPVAL U11
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R26
      250 NEWTABLE                         R48 0 1
      252 MOVE                             R49 R2
      253 SETLIST                          R48 R49 1 [1]
      255 CALL                             R46 2 1
      256 GETUPVAL                         R47 3
      257 GETTABLEKS                       R47 R47 K29 ["useCallback"]
      259 NEWCLOSURE                       R48 P7
      260 CAPTURE                          UPVAL U2
      261 CAPTURE                          VAL R2
      262 CAPTURE                          VAL R29
      263 NEWTABLE                         R49 0 1
      265 MOVE                             R50 R2
      266 SETLIST                          R49 R50 1 [1]
      268 CALL                             R47 2 1
      269 GETUPVAL                         R48 3
      270 GETTABLEKS                       R48 R48 K30 ["useEffect"]
      272 NEWCLOSURE                       R49 P8
      273 CAPTURE                          VAL R2
      274 CAPTURE                          UPVAL U6
      275 CAPTURE                          VAL R15
      276 CAPTURE                          VAL R33
      277 CAPTURE                          VAL R43
      278 CAPTURE                          VAL R31
      279 CAPTURE                          UPVAL U2
      280 CAPTURE                          VAL R45
      281 CAPTURE                          VAL R46
      282 CAPTURE                          VAL R47
      283 CAPTURE                          VAL R44
      284 NEWTABLE                         R50 0 6
      286 MOVE                             R51 R47
      287 MOVE                             R52 R45
      288 MOVE                             R53 R43
      289 MOVE                             R54 R44
      290 MOVE                             R55 R46
      291 MOVE                             R56 R2
      292 SETLIST                          R50 R51 6 [1]
      294 CALL                             R48 2 0
      295 GETUPVAL                         R48 3
      296 GETTABLEKS                       R48 R48 K29 ["useCallback"]
      298 NEWCLOSURE                       R49 P9
      299 CAPTURE                          VAL R32
      300 CAPTURE                          VAL R31
      301 NEWTABLE                         R50 0 0
      303 CALL                             R48 2 1
      304 GETUPVAL                         R49 3
      305 GETTABLEKS                       R49 R49 K29 ["useCallback"]
      307 NEWCLOSURE                       R50 P10
      308 CAPTURE                          VAL R48
      309 CAPTURE                          VAL R2
      310 CAPTURE                          UPVAL U2
      311 CAPTURE                          VAL R42
      312 NEWTABLE                         R51 0 3
      314 MOVE                             R52 R48
      315 MOVE                             R53 R2
      316 GETTABLEKS                       R54 R42 K31 ["refreshDynamicState"]
      318 SETLIST                          R51 R52 3 [1]
      320 CALL                             R49 2 1
      321 GETUPVAL                         R50 3
      322 GETTABLEKS                       R50 R50 K29 ["useCallback"]
      324 NEWCLOSURE                       R51 P11
      325 CAPTURE                          VAL R5
      326 CAPTURE                          UPVAL U7
      327 CAPTURE                          VAL R48
      328 CAPTURE                          VAL R36
      329 CAPTURE                          UPVAL U6
      330 CAPTURE                          VAL R12
      331 CAPTURE                          VAL R38
      332 CAPTURE                          VAL R49
      333 NEWTABLE                         R52 0 5
      335 MOVE                             R53 R48
      336 MOVE                             R54 R49
      337 MOVE                             R55 R36
      338 MOVE                             R56 R38
      339 MOVE                             R57 R5
      340 SETLIST                          R52 R53 5 [1]
      342 CALL                             R50 2 1
      343 GETUPVAL                         R51 3
      344 GETTABLEKS                       R51 R51 K29 ["useCallback"]
      346 NEWCLOSURE                       R52 P12
      347 CAPTURE                          VAL R32
      348 CAPTURE                          VAL R31
      349 NEWTABLE                         R53 0 0
      351 CALL                             R51 2 1
      352 GETUPVAL                         R52 3
      353 GETTABLEKS                       R52 R52 K29 ["useCallback"]
      355 NEWCLOSURE                       R53 P13
      356 CAPTURE                          UPVAL U6
      357 CAPTURE                          VAL R49
      358 CAPTURE                          VAL R48
      359 CAPTURE                          VAL R14
      360 CAPTURE                          VAL R20
      361 CAPTURE                          VAL R12
      362 CAPTURE                          VAL R4
      363 CAPTURE                          VAL R13
      364 NEWTABLE                         R54 0 3
      366 MOVE                             R55 R48
      367 MOVE                             R56 R49
      368 MOVE                             R57 R14
      369 SETLIST                          R54 R55 3 [1]
      371 CALL                             R52 2 1
      372 GETUPVAL                         R53 3
      373 GETTABLEKS                       R53 R53 K29 ["useCallback"]
      375 NEWCLOSURE                       R54 P14
      376 CAPTURE                          VAL R20
      377 CAPTURE                          VAL R33
      378 CAPTURE                          VAL R2
      379 CAPTURE                          UPVAL U12
      380 CAPTURE                          VAL R4
      381 CAPTURE                          VAL R7
      382 CAPTURE                          VAL R11
      383 CAPTURE                          VAL R43
      384 CAPTURE                          VAL R45
      385 NEWTABLE                         R55 0 2
      387 MOVE                             R56 R7
      388 MOVE                             R57 R4
      389 SETLIST                          R55 R56 2 [1]
      391 CALL                             R53 2 1
      392 GETUPVAL                         R54 3
      393 GETTABLEKS                       R54 R54 K29 ["useCallback"]
      395 NEWCLOSURE                       R55 P15
      396 CAPTURE                          VAL R34
      397 CAPTURE                          VAL R2
      398 CAPTURE                          UPVAL U13
      399 CAPTURE                          VAL R27
      400 CAPTURE                          VAL R26
      401 CAPTURE                          VAL R46
      402 NEWTABLE                         R56 0 2
      404 MOVE                             R57 R46
      405 MOVE                             R58 R2
      406 SETLIST                          R56 R57 2 [1]
      408 CALL                             R54 2 1
      409 GETUPVAL                         R55 3
      410 GETTABLEKS                       R55 R55 K29 ["useCallback"]
      412 NEWCLOSURE                       R56 P16
      413 CAPTURE                          VAL R35
      414 CAPTURE                          VAL R34
      415 CAPTURE                          VAL R2
      416 CAPTURE                          VAL R22
      417 NEWTABLE                         R57 0 1
      419 MOVE                             R58 R2
      420 SETLIST                          R57 R58 1 [1]
      422 CALL                             R55 2 1
      423 GETUPVAL                         R56 3
      424 GETTABLEKS                       R56 R56 K29 ["useCallback"]
      426 NEWCLOSURE                       R57 P17
      427 CAPTURE                          UPVAL U2
      428 CAPTURE                          VAL R24
      429 NEWTABLE                         R58 0 0
      431 CALL                             R56 2 1
      432 GETUPVAL                         R57 3
      433 GETTABLEKS                       R57 R57 K29 ["useCallback"]
      435 NEWCLOSURE                       R58 P18
      436 CAPTURE                          UPVAL U2
      437 CAPTURE                          VAL R23
      438 CAPTURE                          VAL R24
      439 CAPTURE                          VAL R42
      440 NEWTABLE                         R59 0 2
      442 MOVE                             R60 R23
      443 MOVE                             R61 R42
      444 SETLIST                          R59 R60 2 [1]
      446 CALL                             R57 2 1
      447 GETUPVAL                         R58 3
      448 GETTABLEKS                       R58 R58 K29 ["useCallback"]
      450 NEWCLOSURE                       R59 P19
      451 CAPTURE                          VAL R22
      452 CAPTURE                          VAL R35
      453 CAPTURE                          VAL R34
      454 CAPTURE                          VAL R2
      455 CAPTURE                          VAL R27
      456 CAPTURE                          VAL R26
      457 CAPTURE                          UPVAL U2
      458 CAPTURE                          VAL R29
      459 CAPTURE                          VAL R46
      460 NEWTABLE                         R60 0 2
      462 MOVE                             R61 R46
      463 MOVE                             R62 R2
      464 SETLIST                          R60 R61 2 [1]
      466 CALL                             R58 2 1
      467 GETUPVAL                         R59 3
      468 GETTABLEKS                       R59 R59 K29 ["useCallback"]
      470 NEWCLOSURE                       R60 P20
      471 CAPTURE                          UPVAL U2
      472 CAPTURE                          VAL R35
      473 CAPTURE                          VAL R34
      474 CAPTURE                          VAL R28
      475 CAPTURE                          VAL R2
      476 CAPTURE                          VAL R27
      477 CAPTURE                          VAL R26
      478 CAPTURE                          VAL R29
      479 CAPTURE                          VAL R46
      480 CAPTURE                          VAL R47
      481 NEWTABLE                         R61 0 4
      483 MOVE                             R62 R28
      484 MOVE                             R63 R47
      485 MOVE                             R64 R46
      486 MOVE                             R65 R2
      487 SETLIST                          R61 R62 4 [1]
      489 CALL                             R59 2 1
      490 GETUPVAL                         R60 3
      491 GETTABLEKS                       R60 R60 K29 ["useCallback"]
      493 NEWCLOSURE                       R61 P21
      494 CAPTURE                          VAL R48
      495 NEWTABLE                         R62 0 1
      497 MOVE                             R63 R48
      498 SETLIST                          R62 R63 1 [1]
      500 CALL                             R60 2 1
      501 JUMPIFNOT                        R14 ; [+3]
      502 GETTABLEKS                       R61 R14 K32 ["deviceId"]
      504 JUMP                             ; [+3]
      505 GETUPVAL                         R61 6
      506 GETTABLEKS                       R61 R61 K33 ["DEFAULT_DEVICE_ID"]
      508 JUMPIFNOT                        R38 ; [+3]
      509 NEWTABLE                         R62 0 0
      511 JUMP                             ; [+12]
      512 GETUPVAL                         R62 6
      513 GETTABLEKS                       R62 R62 K34 ["getMenuGroups"]
      515 MOVE                             R63 R37
      516 MOVE                             R64 R8
      517 MOVE                             R65 R61
      518 MOVE                             R66 R1
      519 JUMPIFNOT                        R4 ; [+2]
      520 MOVE                             R67 R10
      521 JUMP                             ; [+1]
      522 LOADNIL                          R67
      523 CALL                             R62 5 1
      524 GETUPVAL                         R63 2
      525 GETTABLEKS                       R63 R63 K35 ["getFFlagDeviceSimulatorWheelCycleDevice"]
      527 CALL                             R63 0 1
      528 GETUPVAL                         R64 3
      529 GETTABLEKS                       R64 R64 K29 ["useCallback"]
      531 NEWCLOSURE                       R65 P22
      532 CAPTURE                          VAL R2
      533 NEWTABLE                         R66 0 1
      535 MOVE                             R67 R2
      536 SETLIST                          R66 R67 1 [1]
      538 CALL                             R64 2 1
      539 GETUPVAL                         R65 14
      540 DUPTABLE                         R66 K40 [{"menuGroups", "selectedDeviceId", "isEnabled", "applyDevice"}]
      541 SETTABLEKS                       R62 R66 K36 ["menuGroups"]
      543 SETTABLEKS                       R61 R66 K37 ["selectedDeviceId"]
      545 MOVE                             R67 R63
      546 JUMPIFNOT                        R67 ; [+3]
      547 NOT                              R67 R30
      548 JUMPIFNOT                        R67 ; [+1]
      549 NOT                              R67 R38
      550 SETTABLEKS                       R67 R66 K38 ["isEnabled"]
      552 SETTABLEKS                       R64 R66 K39 ["applyDevice"]
      554 CALL                             R65 1 1
      555 JUMPIFNOT                        R38 ; [+6]
      556 LOADK                            R68 K41 ["Toolbar"]
      557 LOADK                            R69 K42 ["ServerLabel"]
      558 NAMECALL                         R66 R1 K43 ["getText"]
      560 CALL                             R66 3 1
      561 JUMP                             ; [+7]
      562 GETUPVAL                         R66 6
      563 GETTABLEKS                       R66 R66 K44 ["getDeviceName"]
      565 MOVE                             R67 R61
      566 MOVE                             R68 R8
      567 MOVE                             R69 R1
      568 CALL                             R66 3 1
      569 NEWTABLE                         R67 4 0
      571 GETUPVAL                         R68 7
      572 GETTABLEKS                       R68 R68 K23 ["Category"]
      574 GETTABLEKS                       R68 R68 K45 ["PHONE_TABLET"]
      576 GETUPVAL                         R70 6
      577 GETTABLEKS                       R70 R70 K46 ["hasChoices"]
      579 GETUPVAL                         R71 7
      580 GETTABLEKS                       R71 R71 K23 ["Category"]
      582 GETTABLEKS                       R71 R71 K45 ["PHONE_TABLET"]
      584 MOVE                             R72 R8
      585 CALL                             R70 2 1
      586 NOT                              R69 R70
      587 SETTABLE                         R69 R67 R68
      588 GETUPVAL                         R68 7
      589 GETTABLEKS                       R68 R68 K23 ["Category"]
      591 GETTABLEKS                       R68 R68 K24 ["DESKTOP"]
      593 GETUPVAL                         R70 6
      594 GETTABLEKS                       R70 R70 K46 ["hasChoices"]
      596 GETUPVAL                         R71 7
      597 GETTABLEKS                       R71 R71 K23 ["Category"]
      599 GETTABLEKS                       R71 R71 K24 ["DESKTOP"]
      601 MOVE                             R72 R8
      602 CALL                             R70 2 1
      603 NOT                              R69 R70
      604 SETTABLE                         R69 R67 R68
      605 GETUPVAL                         R68 7
      606 GETTABLEKS                       R68 R68 K23 ["Category"]
      608 GETTABLEKS                       R68 R68 K47 ["CONSOLE"]
      610 GETUPVAL                         R70 6
      611 GETTABLEKS                       R70 R70 K46 ["hasChoices"]
      613 GETUPVAL                         R71 7
      614 GETTABLEKS                       R71 R71 K23 ["Category"]
      616 GETTABLEKS                       R71 R71 K47 ["CONSOLE"]
      618 MOVE                             R72 R8
      619 CALL                             R70 2 1
      620 NOT                              R69 R70
      621 SETTABLE                         R69 R67 R68
      622 GETUPVAL                         R68 7
      623 GETTABLEKS                       R68 R68 K23 ["Category"]
      625 GETTABLEKS                       R68 R68 K48 ["VR"]
      627 GETUPVAL                         R70 6
      628 GETTABLEKS                       R70 R70 K46 ["hasChoices"]
      630 GETUPVAL                         R71 7
      631 GETTABLEKS                       R71 R71 K23 ["Category"]
      633 GETTABLEKS                       R71 R71 K48 ["VR"]
      635 MOVE                             R72 R8
      636 CALL                             R70 2 1
      637 NOT                              R69 R70
      638 SETTABLE                         R69 R67 R68
      639 GETUPVAL                         R68 2
      640 GETTABLEKS                       R68 R68 K49 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
      642 CALL                             R68 0 1
      643 GETUPVAL                         R69 3
      644 GETTABLEKS                       R69 R69 K50 ["createElement"]
      646 GETUPVAL                         R70 3
      647 GETTABLEKS                       R70 R70 K51 ["Fragment"]
      649 LOADNIL                          R71
      650 DUPTABLE                         R72 K55 [{"Toolbar", "DeviceManagerDialog", "CalibratePhysicalScalingDialog", "SavePresetDialog"}]
      651 GETUPVAL                         R73 3
      652 GETTABLEKS                       R73 R73 K50 ["createElement"]
      654 GETUPVAL                         R74 15
      655 DUPTABLE                         R75 K58 [{["tag"] = "row align-y-center gap-small size-full padding-x-small bg-surface-0"}]
      656 DUPTABLE                         R76 K63 [{"Categories", "Spacer", "RightControls", "SimulatorPills"}]
      657 GETUPVAL                         R77 3
      658 GETTABLEKS                       R77 R77 K50 ["createElement"]
      660 GETUPVAL                         R78 16
      661 DUPTABLE                         R79 K78 [{["LayoutOrder"] = 1, ["categories"], ["activeCategory"], ["activeDeviceName"], ["serverDisabled"], ["disabledCategories"], ["onCategoryClick"], ["onChipClick"], ["isMenuOpen"], ["menuItems"], ["onMenuActivated"], ["onPressedOutside"], ["onChipWheel"]}]
      662 SETTABLEKS                       R6 R79 K66 ["categories"]
      664 SETTABLEKS                       R39 R79 K67 ["activeCategory"]
      666 SETTABLEKS                       R66 R79 K68 ["activeDeviceName"]
      668 GETTABLEKS                       R80 R36 K79 ["serverButtonDisabled"]
      670 SETTABLEKS                       R80 R79 K69 ["serverDisabled"]
      672 SETTABLEKS                       R67 R79 K70 ["disabledCategories"]
      674 SETTABLEKS                       R50 R79 K71 ["onCategoryClick"]
      676 SETTABLEKS                       R51 R79 K72 ["onChipClick"]
      678 SETTABLEKS                       R30 R79 K73 ["isMenuOpen"]
      680 SETTABLEKS                       R62 R79 K74 ["menuItems"]
      682 SETTABLEKS                       R52 R79 K75 ["onMenuActivated"]
      684 SETTABLEKS                       R60 R79 K76 ["onPressedOutside"]
      686 JUMPIFNOT                        R63 ; [+2]
      687 MOVE                             R80 R65
      688 JUMP                             ; [+1]
      689 LOADNIL                          R80
      690 SETTABLEKS                       R80 R79 K77 ["onChipWheel"]
      692 CALL                             R77 2 1
      693 SETTABLEKS                       R77 R76 K59 ["Categories"]
      695 GETUPVAL                         R77 3
      696 GETTABLEKS                       R77 R77 K50 ["createElement"]
      698 GETUPVAL                         R78 15
      699 DUPTABLE                         R79 K82 [{["LayoutOrder"] = 2, ["tag"] = "grow"}]
      700 CALL                             R77 2 1
      701 SETTABLEKS                       R77 R76 K60 ["Spacer"]
      703 GETUPVAL                         R77 3
      704 GETTABLEKS                       R77 R77 K50 ["createElement"]
      706 GETUPVAL                         R78 17
      707 DUPTABLE                         R79 K90 [{["LayoutOrder"] = 3, ["activeCategory"], ["currentDevice"], ["isClientView"], [5], ["actions"], ["scalingMode"], ["onScalingModeChanged"], ["onCalibrateScaling"], ["onToggleAutoDetectScaling"], ["isAutoDetectScaling"]}]
      708 SETTABLEKS                       R39 R79 K67 ["activeCategory"]
      710 SETTABLEKS                       R14 R79 K20 ["currentDevice"]
      712 GETTABLEKS                       R80 R36 K84 ["isClientView"]
      714 SETTABLEKS                       R80 R79 K84 ["isClientView"]
      716 SETTABLEKS                       R2 R79 K0 ["simulatorService"]
      718 GETTABLEKS                       R80 R0 K18 ["actions"]
      720 SETTABLEKS                       R80 R79 K18 ["actions"]
      722 SETTABLEKS                       R25 R79 K85 ["scalingMode"]
      724 SETTABLEKS                       R54 R79 K86 ["onScalingModeChanged"]
      726 SETTABLEKS                       R55 R79 K87 ["onCalibrateScaling"]
      728 JUMPIFNOT                        R68 ; [+2]
      729 MOVE                             R80 R59
      730 JUMP                             ; [+1]
      731 LOADNIL                          R80
      732 SETTABLEKS                       R80 R79 K88 ["onToggleAutoDetectScaling"]
      734 JUMPIFNOT                        R68 ; [+2]
      735 MOVE                             R80 R28
      736 JUMP                             ; [+1]
      737 LOADNIL                          R80
      738 SETTABLEKS                       R80 R79 K89 ["isAutoDetectScaling"]
      740 CALL                             R77 2 1
      741 SETTABLEKS                       R77 R76 K61 ["RightControls"]
      743 JUMPIFNOT                        R40 ; [+41]
      744 GETUPVAL                         R77 3
      745 GETTABLEKS                       R77 R77 K50 ["createElement"]
      747 GETUPVAL                         R78 18
      748 DUPTABLE                         R79 K101 [{["LayoutOrder"] = 4, ["simulators"], ["viewModelsByName"], ["onControlChanged"], ["onApply"], ["onDismiss"], ["saveDialogSimulatorName"], ["onReset"], ["onRequestSave"], ["onDeleteSavedPreset"]}]
      749 GETTABLEKS                       R80 R42 K92 ["simulators"]
      751 SETTABLEKS                       R80 R79 K92 ["simulators"]
      753 GETTABLEKS                       R80 R42 K93 ["viewModelsByName"]
      755 SETTABLEKS                       R80 R79 K93 ["viewModelsByName"]
      757 GETTABLEKS                       R80 R42 K102 ["changeControl"]
      759 SETTABLEKS                       R80 R79 K94 ["onControlChanged"]
      761 GETTABLEKS                       R80 R42 K103 ["applyPending"]
      763 SETTABLEKS                       R80 R79 K95 ["onApply"]
      765 GETTABLEKS                       R80 R42 K104 ["discardPending"]
      767 SETTABLEKS                       R80 R79 K96 ["onDismiss"]
      769 GETTABLEKS                       R80 R23 K14 ["simulatorName"]
      771 SETTABLEKS                       R80 R79 K97 ["saveDialogSimulatorName"]
      773 GETTABLEKS                       R80 R42 K105 ["resetToDefault"]
      775 SETTABLEKS                       R80 R79 K98 ["onReset"]
      777 SETTABLEKS                       R56 R79 K99 ["onRequestSave"]
      779 GETTABLEKS                       R80 R42 K106 ["deleteSavedPreset"]
      781 SETTABLEKS                       R80 R79 K100 ["onDeleteSavedPreset"]
      783 CALL                             R77 2 1
      784 JUMP                             ; [+1]
      785 LOADNIL                          R77
      786 SETTABLEKS                       R77 R76 K62 ["SimulatorPills"]
      788 CALL                             R73 3 1
      789 SETTABLEKS                       R73 R72 K41 ["Toolbar"]
      791 GETTABLEKS                       R74 R19 K9 ["input"]
      793 JUMPIFNOT                        R74 ; [+23]
      794 GETUPVAL                         R73 3
      795 GETTABLEKS                       R73 R73 K50 ["createElement"]
      797 GETUPVAL                         R74 19
      798 DUPTABLE                         R75 K109 [{"input", "memoryTiersByPlatform", "onResolved"}]
      799 GETTABLEKS                       R76 R19 K9 ["input"]
      801 SETTABLEKS                       R76 R75 K9 ["input"]
      803 GETUPVAL                         R77 2
      804 GETTABLEKS                       R77 R77 K110 ["getEngineFeatureDeviceSimulatorNominalMemory"]
      806 CALL                             R77 0 1
      807 JUMPIFNOT                        R77 ; [+2]
      808 MOVE                             R76 R16
      809 JUMP                             ; [+1]
      810 LOADNIL                          R76
      811 SETTABLEKS                       R76 R75 K107 ["memoryTiersByPlatform"]
      813 SETTABLEKS                       R53 R75 K108 ["onResolved"]
      815 CALL                             R73 2 1
      816 JUMP                             ; [+1]
      817 LOADNIL                          R73
      818 SETTABLEKS                       R73 R72 K52 ["DeviceManagerDialog"]
      820 GETTABLEKS                       R74 R21 K12 ["initialDpi"]
      822 JUMPIFNOT                        R74 ; [+13]
      823 GETUPVAL                         R73 3
      824 GETTABLEKS                       R73 R73 K50 ["createElement"]
      826 MOVE                             R74 R3
      827 DUPTABLE                         R75 K111 [{"initialDpi", "onResolved"}]
      828 GETTABLEKS                       R76 R21 K12 ["initialDpi"]
      830 SETTABLEKS                       R76 R75 K12 ["initialDpi"]
      832 SETTABLEKS                       R58 R75 K108 ["onResolved"]
      834 CALL                             R73 2 1
      835 JUMP                             ; [+1]
      836 LOADNIL                          R73
      837 SETTABLEKS                       R73 R72 K53 ["CalibratePhysicalScalingDialog"]
      839 GETTABLEKS                       R74 R23 K14 ["simulatorName"]
      841 JUMPIFNOT                        R74 ; [+51]
      842 GETUPVAL                         R73 3
      843 GETTABLEKS                       R73 R73 K50 ["createElement"]
      845 GETUPVAL                         R74 20
      846 DUPTABLE                         R75 K114 [{"simulatorName", "existingNames", "reservedNames", "onResolved"}]
      847 GETTABLEKS                       R76 R23 K14 ["simulatorName"]
      849 SETTABLEKS                       R76 R75 K14 ["simulatorName"]
      851 GETTABLEKS                       R78 R42 K93 ["viewModelsByName"]
      853 GETTABLEKS                       R79 R23 K14 ["simulatorName"]
      855 GETTABLE                         R77 R78 R79
      856 JUMPIFEQKNIL                     R77 ; [+9]
      858 GETTABLEKS                       R77 R42 K93 ["viewModelsByName"]
      860 GETTABLEKS                       R78 R23 K14 ["simulatorName"]
      862 GETTABLE                         R76 R77 R78
      863 GETTABLEKS                       R76 R76 K115 ["savedPresetNames"]
      865 JUMP                             ; [+2]
      866 NEWTABLE                         R76 0 0
      868 SETTABLEKS                       R76 R75 K112 ["existingNames"]
      870 GETTABLEKS                       R78 R42 K93 ["viewModelsByName"]
      872 GETTABLEKS                       R79 R23 K14 ["simulatorName"]
      874 GETTABLE                         R77 R78 R79
      875 JUMPIFEQKNIL                     R77 ; [+9]
      877 GETTABLEKS                       R77 R42 K93 ["viewModelsByName"]
      879 GETTABLEKS                       R78 R23 K14 ["simulatorName"]
      881 GETTABLE                         R76 R77 R78
      882 GETTABLEKS                       R76 R76 K116 ["reservedPresetNames"]
      884 JUMP                             ; [+2]
      885 NEWTABLE                         R76 0 0
      887 SETTABLEKS                       R76 R75 K113 ["reservedNames"]
      889 SETTABLEKS                       R57 R75 K108 ["onResolved"]
      891 CALL                             R73 2 1
      892 JUMP                             ; [+1]
      893 LOADNIL                          R73
      894 SETTABLEKS                       R73 R72 K54 ["SavePresetDialog"]
      896 CALL                             R69 3 -1
      897 RETURN                           R69 -1

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
      127 GETTABLEKS                       R17 R17 K28 ["useDeviceWheelCycling"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K5 [require]
      132 GETTABLEKS                       R18 R0 K13 ["Src"]
      134 GETTABLEKS                       R18 R18 K27 ["Hooks"]
      136 GETTABLEKS                       R18 R18 K29 ["useServerView"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K5 [require]
      141 GETTABLEKS                       R19 R0 K13 ["Src"]
      143 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      145 GETTABLEKS                       R19 R19 K30 ["useLocalization"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R20 R0 K13 ["Src"]
      152 GETTABLEKS                       R20 R20 K23 ["SimulatorRegistry"]
      154 GETTABLEKS                       R20 R20 K31 ["useSimulatorRegistry"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K5 [require]
      159 GETTABLEKS                       R21 R0 K13 ["Src"]
      161 GETTABLEKS                       R21 R21 K32 ["DeviceModel"]
      163 CALL                             R20 1 1
      164 NEWTABLE                         R21 0 8
      166 GETIMPORT                        R22 K36 [Enum.Platform.Android]
      168 GETIMPORT                        R23 K38 [Enum.Platform.IOS]
      170 GETIMPORT                        R24 K40 [Enum.Platform.MetaOS]
      172 GETIMPORT                        R25 K42 [Enum.Platform.OSX]
      174 GETIMPORT                        R26 K44 [Enum.Platform.PS4]
      176 GETIMPORT                        R27 K46 [Enum.Platform.PS5]
      178 GETIMPORT                        R28 K48 [Enum.Platform.Windows]
      180 GETIMPORT                        R29 K50 [Enum.Platform.XBoxOne]
      182 SETLIST                          R21 R22 8 [1]
      184 NEWTABLE                         R22 4 0
      186 GETIMPORT                        R23 K53 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
      188 LOADK                            R24 K54 ["physical"]
      189 SETTABLE                         R24 R22 R23
      190 GETIMPORT                        R23 K56 [Enum.DeviceSimulatorScalingMode.ActualResolution]
      192 LOADK                            R24 K57 ["actual"]
      193 SETTABLE                         R24 R22 R23
      194 GETIMPORT                        R23 K59 [Enum.DeviceSimulatorScalingMode.FitToWindow]
      196 LOADK                            R24 K60 ["fit"]
      197 SETTABLE                         R24 R22 R23
      198 DUPTABLE                         R23 K61 [{"physical", "actual", "fit"}]
      199 GETIMPORT                        R24 K53 [Enum.DeviceSimulatorScalingMode.ScaleToPhysicalSize]
      201 SETTABLEKS                       R24 R23 K54 ["physical"]
      203 GETIMPORT                        R24 K56 [Enum.DeviceSimulatorScalingMode.ActualResolution]
      205 SETTABLEKS                       R24 R23 K57 ["actual"]
      207 GETIMPORT                        R24 K59 [Enum.DeviceSimulatorScalingMode.FitToWindow]
      209 SETTABLEKS                       R24 R23 K60 ["fit"]
      211 DUPCLOSURE                       R24 K62 [PROTO_50]
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R1
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R8
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R12
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R10
      232 CAPTURE                          VAL R14
      233 RETURN                           R24 1
