PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["_TearDownSignals"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R0 R1 K2 ["_focusedSessionId"]
       12 GETUPVAL                         R1 0
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K3 ["_deviceBridge"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K4 ["_registryChanged"]
       19 NAMECALL                         R1 R1 K5 ["Fire"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 MOVE                             R3 R0
       24 NAMECALL                         R1 R1 K6 ["_LoadBridge"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["_TearDownSignals"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R0 R1 K2 ["_focusedSessionId"]
       12 GETUPVAL                         R1 0
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K3 ["_deviceBridge"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K4 ["_registryChanged"]
       19 NAMECALL                         R1 R1 K5 ["Fire"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 MOVE                             R3 R0
       24 NAMECALL                         R1 R1 K6 ["_LoadBridge"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIF                           R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["_focusedSessionId"]
        7 JUMPIFEQKNIL                     R1 ; [+7]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["_focusedSessionId"]
       12 JUMPIFEQ                         R0 R1 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K1 ["_focusedSessionId"]
       19 GETUPVAL                         R1 0
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K2 ["_deviceBridge"]
       23 GETUPVAL                         R1 0
       24 NAMECALL                         R1 R1 K3 ["_TearDownSignals"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K4 ["_registryChanged"]
       30 NAMECALL                         R1 R1 K5 ["Fire"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_destroyed"]
        3 JUMPIF                           R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_registryChanged"]
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_destroyed"]
        3 JUMPIF                           R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_registryChanged"]
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R5 32 0
        2 GETUPVAL                         R6 0
        3 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
        5 GETIMPORT                        R4 K1 [setmetatable]
        7 CALL                             R4 2 1
        8 SETTABLEKS                       R0 R4 K2 ["_plugin"]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 SETTABLEKS                       R5 R4 K3 ["_registryEnabled"]
       16 LOADNIL                          R5
       17 SETTABLEKS                       R5 R4 K4 ["_deviceBridge"]
       19 GETTABLEKS                       R6 R4 K3 ["_registryEnabled"]
       21 JUMPIFNOT                        R6 ; [+2]
       22 MOVE                             R5 R2
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R4 K5 ["_registryBridge"]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K6 ["_supportsStagedDynamicState"]
       30 LOADNIL                          R5
       31 SETTABLEKS                       R5 R4 K7 ["_focusedSessionId"]
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K8 ["_destroyed"]
       36 NEWTABLE                         R5 0 0
       38 SETTABLEKS                       R5 R4 K9 ["_lifecycleConnections"]
       40 GETIMPORT                        R5 K12 [Instance.new]
       42 LOADK                            R6 K13 ["BindableEvent"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K14 ["_deviceChanged"]
       46 GETTABLEKS                       R5 R4 K14 ["_deviceChanged"]
       48 GETTABLEKS                       R5 R5 K15 ["Event"]
       50 SETTABLEKS                       R5 R4 K16 ["EmulatedDeviceChanged"]
       52 GETIMPORT                        R5 K12 [Instance.new]
       54 LOADK                            R6 K13 ["BindableEvent"]
       55 CALL                             R5 1 1
       56 SETTABLEKS                       R5 R4 K17 ["_deviceListChanged"]
       58 GETTABLEKS                       R5 R4 K17 ["_deviceListChanged"]
       60 GETTABLEKS                       R5 R5 K15 ["Event"]
       62 SETTABLEKS                       R5 R4 K18 ["DeviceListChanged"]
       64 GETIMPORT                        R5 K12 [Instance.new]
       66 LOADK                            R6 K13 ["BindableEvent"]
       67 CALL                             R5 1 1
       68 SETTABLEKS                       R5 R4 K19 ["_registryChanged"]
       70 GETTABLEKS                       R5 R4 K19 ["_registryChanged"]
       72 GETTABLEKS                       R5 R5 K15 ["Event"]
       74 SETTABLEKS                       R5 R4 K20 ["SimulatorRegistryChanged"]
       76 GETIMPORT                        R5 K12 [Instance.new]
       78 LOADK                            R6 K13 ["BindableEvent"]
       79 CALL                             R5 1 1
       80 SETTABLEKS                       R5 R4 K21 ["_bridgeAvailable"]
       82 GETTABLEKS                       R5 R4 K21 ["_bridgeAvailable"]
       84 GETTABLEKS                       R5 R5 K15 ["Event"]
       86 SETTABLEKS                       R5 R4 K22 ["BridgeAvailable"]
       88 LOADNIL                          R5
       89 SETTABLEKS                       R5 R4 K23 ["_deviceChangedConn"]
       91 LOADNIL                          R5
       92 SETTABLEKS                       R5 R4 K24 ["_deviceListChangedConn"]
       94 LOADNIL                          R5
       95 SETTABLEKS                       R5 R4 K25 ["_registryChangedConn"]
       97 NAMECALL                         R5 R4 K26 ["_SetupRegistrySignal"]
       99 CALL                             R5 1 0
      100 NEWCLOSURE                       R5 P0
      101 CAPTURE                          VAL R4
      102 GETTABLEKS                       R7 R4 K9 ["_lifecycleConnections"]
      104 GETTABLEKS                       R8 R1 K27 ["PlaceSessionStarted"]
      106 NEWCLOSURE                       R10 P1
      107 CAPTURE                          VAL R4
      108 NAMECALL                         R8 R8 K28 ["Connect"]
      110 CALL                             R8 2 -1
      111 FASTCALL                         TABLE_INSERT ; [+2]
      112 GETIMPORT                        R6 K31 [table.insert]
      114 CALL                             R6 -1 0
      115 GETTABLEKS                       R7 R4 K9 ["_lifecycleConnections"]
      117 GETTABLEKS                       R8 R1 K32 ["PlaceSessionEnded"]
      119 NEWCLOSURE                       R10 P2
      120 CAPTURE                          VAL R4
      121 NAMECALL                         R8 R8 K28 ["Connect"]
      123 CALL                             R8 2 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R6 K31 [table.insert]
      127 CALL                             R6 -1 0
      128 GETTABLEKS                       R6 R4 K3 ["_registryEnabled"]
      130 JUMPIFNOT                        R6 ; [+26]
      131 GETTABLEKS                       R7 R4 K9 ["_lifecycleConnections"]
      133 GETTABLEKS                       R8 R1 K33 ["CurrentDataModelTypeAboutToChange"]
      135 NEWCLOSURE                       R10 P3
      136 CAPTURE                          VAL R4
      137 NAMECALL                         R8 R8 K28 ["Connect"]
      139 CALL                             R8 2 -1
      140 FASTCALL                         TABLE_INSERT ; [+2]
      141 GETIMPORT                        R6 K31 [table.insert]
      143 CALL                             R6 -1 0
      144 GETTABLEKS                       R7 R4 K9 ["_lifecycleConnections"]
      146 GETTABLEKS                       R8 R1 K34 ["CurrentDataModelTypeChanged"]
      148 NEWCLOSURE                       R10 P4
      149 CAPTURE                          VAL R4
      150 NAMECALL                         R8 R8 K28 ["Connect"]
      152 CALL                             R8 2 -1
      153 FASTCALL                         TABLE_INSERT ; [+2]
      154 GETIMPORT                        R6 K31 [table.insert]
      156 CALL                             R6 -1 0
      157 NAMECALL                         R6 R1 K35 ["GetFocusedSessionIdAsync"]
      159 CALL                             R6 1 1
      160 JUMPIFNOT                        R6 ; [+21]
      161 GETTABLEKS                       R7 R4 K8 ["_destroyed"]
      163 JUMPIFNOT                        R7 ; [+1]
      164 RETURN                           R4 1
      165 NAMECALL                         R7 R4 K36 ["_TearDownSignals"]
      167 CALL                             R7 1 0
      168 SETTABLEKS                       R6 R4 K7 ["_focusedSessionId"]
      170 LOADNIL                          R7
      171 SETTABLEKS                       R7 R4 K4 ["_deviceBridge"]
      173 GETTABLEKS                       R7 R4 K19 ["_registryChanged"]
      175 NAMECALL                         R7 R7 K37 ["Fire"]
      177 CALL                             R7 1 0
      178 MOVE                             R9 R6
      179 NAMECALL                         R7 R4 K38 ["_LoadBridge"]
      181 CALL                             R7 2 0
      182 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_registryChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_registryBridge"]
        3 GETTABLEKS                       R0 R0 K1 ["SimulatorRegistryChanged"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 NAMECALL                         R0 R0 K2 ["Connect"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_registryBridge"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 2
        9 JUMPIFNOT                        R1 ; [+2]
       10 SETTABLEKS                       R2 R0 K3 ["_registryChangedConn"]
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_deviceChanged"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceListChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_deviceBridge"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_deviceChangedConn"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R1 R0 K1 ["_deviceChangedConn"]
        9 NAMECALL                         R1 R1 K2 ["Disconnect"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K3 ["_deviceListChangedConn"]
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETTABLEKS                       R1 R0 K3 ["_deviceListChangedConn"]
       17 NAMECALL                         R1 R1 K2 ["Disconnect"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K0 ["_deviceBridge"]
       22 GETTABLEKS                       R1 R1 K4 ["EmulatedDeviceChanged"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R1 R1 K5 ["Connect"]
       28 CALL                             R1 2 1
       29 SETTABLEKS                       R1 R0 K1 ["_deviceChangedConn"]
       31 GETTABLEKS                       R1 R0 K0 ["_deviceBridge"]
       33 GETTABLEKS                       R1 R1 K6 ["DeviceListChanged"]
       35 NEWCLOSURE                       R3 P1
       36 CAPTURE                          VAL R0
       37 NAMECALL                         R1 R1 K5 ["Connect"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K3 ["_deviceListChangedConn"]
       42 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_deviceChangedConn"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_deviceChangedConn"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_deviceChangedConn"]
       11 GETTABLEKS                       R1 R0 K2 ["_deviceListChangedConn"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_deviceListChangedConn"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_deviceListChangedConn"]
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 LOADK                            R2 K1 ["StudioDeviceEmulator"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_14:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R0 K3 ["_destroyed"]
        5 JUMPIF                           R3 ; [+36]
        6 GETIMPORT                        R4 K2 [os.clock]
        8 CALL                             R4 0 1
        9 SUB                              R3 R4 R2
       10 LOADN                            R4 5
       11 JUMPIFNOTLE                      R3 R4 ; [+30]
       13 GETIMPORT                        R3 K5 [pcall]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R3 1 2
       18 GETTABLEKS                       R5 R0 K3 ["_destroyed"]
       20 JUMPIF                           R5 ; [+21]
       21 GETTABLEKS                       R5 R0 K6 ["_focusedSessionId"]
       23 JUMPIFNOTEQ                      R5 R1 ; [+18]
       25 JUMPIFNOT                        R3 ; [+12]
       26 JUMPIFNOT                        R4 ; [+11]
       27 SETTABLEKS                       R4 R0 K7 ["_deviceBridge"]
       29 NAMECALL                         R5 R0 K8 ["_SetupSignals"]
       31 CALL                             R5 1 0
       32 GETTABLEKS                       R5 R0 K9 ["_bridgeAvailable"]
       34 NAMECALL                         R5 R5 K10 ["Fire"]
       36 CALL                             R5 1 0
       37 RETURN                           R0 0
       38 GETIMPORT                        R5 K13 [task.wait]
       40 CALL                             R5 0 0
       41 JUMPBACK                         ; [-39]
       42 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_deviceBridge"]
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETTABLEKS                       R3 R0 K1 ["_focusedSessionId"]
        5 JUMPIFEQ                         R1 R3 ; [+5]
        7 GETIMPORT                        R3 K3 [error]
        9 LOADK                            R4 K4 ["Unable to get DeviceBridge for current place"]
       10 CALL                             R3 1 0
       11 MOVE                             R3 R2
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R4 R0 K1 ["_focusedSessionId"]
       15 JUMPIFEQ                         R1 R4 ; [+5]
       17 GETIMPORT                        R4 K3 [error]
       19 LOADK                            R5 K5 ["Returning from stale call"]
       20 CALL                             R4 1 0
       21 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 NAMECALL                         R0 R0 K1 ["GetCurrentlyEmulatedDeviceAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R0 K1 ["_Call"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 NAMECALL                         R0 R0 K1 ["GetDeviceListWithMetadataAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R0 K1 ["_Call"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 NAMECALL                         R0 R0 K1 ["UpdateDevicesAsync"]
        8 CALL                             R0 4 -1
        9 RETURN                           R0 -1

PROTO_21:
        0 GETTABLEKS                       R6 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R7 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 NAMECALL                         R4 R0 K1 ["_Call"]
        9 CALL                             R4 3 -1
       10 RETURN                           R4 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["SetDeviceAndPersistAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_23:
        0 GETTABLEKS                       R4 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 NAMECALL                         R2 R0 K1 ["_Call"]
        7 CALL                             R2 3 -1
        8 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 NAMECALL                         R0 R0 K1 ["MockBackButtonPressedAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R0 K1 ["_Call"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 NAMECALL                         R0 R0 K1 ["RotateDeviceToNextPosAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_27:
        0 GETTABLEKS                       R3 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R0 K1 ["_Call"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 NAMECALL                         R0 R0 K1 ["GetScalingModeAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_29:
        0 GETTABLEKS                       R3 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R0 K1 ["_Call"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["SetScalingModeAndPersistAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_31:
        0 GETTABLEKS                       R4 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 NAMECALL                         R2 R0 K1 ["_Call"]
        7 CALL                             R2 3 -1
        8 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 NAMECALL                         R0 R0 K1 ["GetCalibratedScreenDpiAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_33:
        0 GETTABLEKS                       R3 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R0 K1 ["_Call"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["SetCalibratedScreenDpiAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_35:
        0 GETTABLEKS                       R4 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 NAMECALL                         R2 R0 K1 ["_Call"]
        7 CALL                             R2 3 -1
        8 RETURN                           R2 -1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 NAMECALL                         R0 R0 K1 ["AutoCalibrateScreenDpiAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_37:
        0 GETTABLEKS                       R3 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R0 K1 ["_Call"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 NAMECALL                         R0 R0 K1 ["DisableAutoDetectScreenDpiAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_39:
        0 GETTABLEKS                       R3 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R0 K1 ["_Call"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_deviceBridge"]
        3 NAMECALL                         R0 R0 K1 ["IsScreenDpiAutoDetectEnabledAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_41:
        0 GETTABLEKS                       R3 R0 K0 ["_focusedSessionId"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R0 K1 ["_Call"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_registryBridge"]
        2 GETTABLEKS                       R2 R0 K1 ["_registryEnabled"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 JUMPIFNOTEQKNIL                  R1 ; [+4]
        7 NEWTABLE                         R2 0 0
        9 RETURN                           R2 1
       10 NAMECALL                         R2 R1 K2 ["GetRegisteredSimulatorsAsync"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["GetSimulatorDynamicStateAsync"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_44:
        0 GETTABLEKS                       R3 R0 K0 ["_registryBridge"]
        2 GETTABLEKS                       R4 R0 K1 ["_registryEnabled"]
        4 JUMPIFNOT                        R4 ; [+2]
        5 JUMPIFNOTEQKNIL                  R3 ; [+3]
        7 LOADNIL                          R4
        8 RETURN                           R4 1
        9 JUMPIFEQKNIL                     R2 ; [+5]
       11 GETTABLEKS                       R4 R0 K2 ["_supportsStagedDynamicState"]
       13 JUMPIFNOTEQKB                    R4 FALSE ; [+6]
       15 MOVE                             R6 R1
       16 NAMECALL                         R4 R3 K3 ["GetSimulatorDynamicStateAsync"]
       18 CALL                             R4 2 -1
       19 RETURN                           R4 -1
       20 GETIMPORT                        R4 K5 [pcall]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CALL                             R4 1 2
       27 JUMPIFNOT                        R4 ; [+4]
       28 LOADB                            R6 1
       29 SETTABLEKS                       R6 R0 K2 ["_supportsStagedDynamicState"]
       31 RETURN                           R5 1
       32 GETIMPORT                        R6 K8 [string.find]
       34 FASTCALL1                        TOSTRING R5 ; [+3]
       35 MOVE                             R8 R5
       36 GETIMPORT                        R7 K10 [tostring]
       38 CALL                             R7 1 1
       39 LOADK                            R8 K11 ["Incorrect number of parameters passed to GetSimulatorDynamicStateAsync"]
       40 LOADN                            R9 1
       41 LOADB                            R10 1
       42 CALL                             R6 4 1
       43 JUMPIFNOTEQKNIL                  R6 ; [+6]
       45 GETIMPORT                        R6 K13 [error]
       47 MOVE                             R7 R5
       48 LOADN                            R8 0
       49 CALL                             R6 2 0
       50 LOADB                            R6 0
       51 SETTABLEKS                       R6 R0 K2 ["_supportsStagedDynamicState"]
       53 MOVE                             R8 R1
       54 NAMECALL                         R6 R3 K3 ["GetSimulatorDynamicStateAsync"]
       56 CALL                             R6 2 -1
       57 RETURN                           R6 -1

PROTO_45:
        0 GETTABLEKS                       R5 R0 K0 ["_registryEnabled"]
        2 JUMPIF                           R5 ; [+2]
        3 LOADNIL                          R5
        4 RETURN                           R5 1
        5 GETTABLEKS                       R5 R0 K1 ["_registryBridge"]
        7 JUMPIFNOTEQKNIL                  R5 ; [+5]
        9 GETIMPORT                        R6 K3 [error]
       11 LOADK                            R7 K4 ["SimulatorRegistryBridge is unavailable"]
       12 CALL                             R6 1 0
       13 MOVE                             R8 R1
       14 MOVE                             R9 R2
       15 MOVE                             R10 R3
       16 MOVE                             R11 R4
       17 NAMECALL                         R6 R5 K5 ["NotifyControlChangedAsync"]
       19 CALL                             R6 5 -1
       20 RETURN                           R6 -1

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["_destroyed"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["_focusedSessionId"]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K2 ["_deviceBridge"]
       13 NAMECALL                         R1 R0 K3 ["_TearDownSignals"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K4 ["_registryChangedConn"]
       18 JUMPIFNOT                        R1 ; [+8]
       19 GETTABLEKS                       R1 R0 K4 ["_registryChangedConn"]
       21 NAMECALL                         R1 R1 K5 ["Disconnect"]
       23 CALL                             R1 1 0
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K4 ["_registryChangedConn"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K6 ["_registryBridge"]
       30 GETTABLEKS                       R1 R0 K7 ["_lifecycleConnections"]
       32 LOADNIL                          R2
       33 LOADNIL                          R3
       34 FORGPREP                         R1
       35 NAMECALL                         R6 R5 K5 ["Disconnect"]
       37 CALL                             R6 1 0
       38 FORGLOOP                         R1 2 ; [-4]
       40 GETIMPORT                        R1 K10 [table.clear]
       42 GETTABLEKS                       R2 R0 K7 ["_lifecycleConnections"]
       44 CALL                             R1 1 0
       45 GETTABLEKS                       R1 R0 K11 ["_bridgeAvailable"]
       47 NAMECALL                         R1 R1 K12 ["Destroy"]
       49 CALL                             R1 1 0
       50 GETTABLEKS                       R1 R0 K13 ["_deviceChanged"]
       52 NAMECALL                         R1 R1 K12 ["Destroy"]
       54 CALL                             R1 1 0
       55 GETTABLEKS                       R1 R0 K14 ["_deviceListChanged"]
       57 NAMECALL                         R1 R1 K12 ["Destroy"]
       59 CALL                             R1 1 0
       60 GETTABLEKS                       R1 R0 K15 ["_registryChanged"]
       62 NAMECALL                         R1 R1 K12 ["Destroy"]
       64 CALL                             R1 1 0
       65 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_5]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_8]
       10 SETTABLEKS                       R1 R0 K4 ["_SetupRegistrySignal"]
       12 DUPCLOSURE                       R1 K5 [PROTO_11]
       13 SETTABLEKS                       R1 R0 K6 ["_SetupSignals"]
       15 DUPCLOSURE                       R1 K7 [PROTO_12]
       16 SETTABLEKS                       R1 R0 K8 ["_TearDownSignals"]
       18 DUPCLOSURE                       R1 K9 [PROTO_14]
       19 SETTABLEKS                       R1 R0 K10 ["_LoadBridge"]
       21 DUPCLOSURE                       R1 K11 [PROTO_15]
       22 SETTABLEKS                       R1 R0 K12 ["_Call"]
       24 DUPCLOSURE                       R1 K13 [PROTO_17]
       25 SETTABLEKS                       R1 R0 K14 ["GetCurrentlyEmulatedDeviceAsync"]
       27 DUPCLOSURE                       R1 K15 [PROTO_19]
       28 SETTABLEKS                       R1 R0 K16 ["GetDeviceListWithMetadataAsync"]
       30 DUPCLOSURE                       R1 K17 [PROTO_21]
       31 SETTABLEKS                       R1 R0 K18 ["UpdateDevicesAsync"]
       33 DUPCLOSURE                       R1 K19 [PROTO_23]
       34 SETTABLEKS                       R1 R0 K20 ["SetDeviceAndPersistAsync"]
       36 DUPCLOSURE                       R1 K21 [PROTO_25]
       37 SETTABLEKS                       R1 R0 K22 ["MockBackButtonPressedAsync"]
       39 DUPCLOSURE                       R1 K23 [PROTO_27]
       40 SETTABLEKS                       R1 R0 K24 ["RotateDeviceToNextPosAsync"]
       42 DUPCLOSURE                       R1 K25 [PROTO_29]
       43 SETTABLEKS                       R1 R0 K26 ["GetScalingModeAsync"]
       45 DUPCLOSURE                       R1 K27 [PROTO_31]
       46 SETTABLEKS                       R1 R0 K28 ["SetScalingModeAndPersistAsync"]
       48 DUPCLOSURE                       R1 K29 [PROTO_33]
       49 SETTABLEKS                       R1 R0 K30 ["GetCalibratedScreenDpiAsync"]
       51 DUPCLOSURE                       R1 K31 [PROTO_35]
       52 SETTABLEKS                       R1 R0 K32 ["SetCalibratedScreenDpiAsync"]
       54 DUPCLOSURE                       R1 K33 [PROTO_37]
       55 SETTABLEKS                       R1 R0 K34 ["AutoCalibrateScreenDpiAsync"]
       57 DUPCLOSURE                       R1 K35 [PROTO_39]
       58 SETTABLEKS                       R1 R0 K36 ["DisableAutoDetectScreenDpiAsync"]
       60 DUPCLOSURE                       R1 K37 [PROTO_41]
       61 SETTABLEKS                       R1 R0 K38 ["IsScreenDpiAutoDetectEnabledAsync"]
       63 DUPCLOSURE                       R1 K39 [PROTO_42]
       64 SETTABLEKS                       R1 R0 K40 ["GetRegisteredSimulatorsAsync"]
       66 DUPCLOSURE                       R1 K41 [PROTO_44]
       67 SETTABLEKS                       R1 R0 K42 ["GetSimulatorDynamicStateAsync"]
       69 DUPCLOSURE                       R1 K43 [PROTO_45]
       70 SETTABLEKS                       R1 R0 K44 ["NotifyControlChangedAsync"]
       72 DUPCLOSURE                       R1 K45 [PROTO_46]
       73 SETTABLEKS                       R1 R0 K46 ["Destroy"]
       75 RETURN                           R0 1
