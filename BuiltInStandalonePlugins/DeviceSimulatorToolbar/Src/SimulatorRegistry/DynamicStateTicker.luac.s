PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 LOADB                            R2 1
        6 JUMPIFEQKS                       R1 K2 ["string"] ; [+8]
        8 LOADB                            R2 1
        9 JUMPIFEQKS                       R1 K3 ["number"] ; [+5]
       11 JUMPIFEQKS                       R1 K4 ["boolean"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 FASTCALL1                        TYPE R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K2 [type]
       11 CALL                             R1 1 1
       12 JUMPIFEQKS                       R1 K3 ["table"] ; [+3]
       14 LOADNIL                          R1
       15 RETURN                           R1 1
       16 GETTABLEKS                       R2 R0 K4 ["Icon"]
       18 FASTCALL1                        TYPE R2 ; [+2]
       19 GETIMPORT                        R1 K2 [type]
       21 CALL                             R1 1 1
       22 JUMPIFNOTEQKS                    R1 K5 ["string"] ; [+9]
       24 GETTABLEKS                       R2 R0 K6 ["Label"]
       26 FASTCALL1                        TYPE R2 ; [+2]
       27 GETIMPORT                        R1 K2 [type]
       29 CALL                             R1 1 1
       30 JUMPIFEQKS                       R1 K5 ["string"] ; [+3]
       32 LOADNIL                          R1
       33 RETURN                           R1 1
       34 LOADNIL                          R1
       35 GETTABLEKS                       R2 R0 K7 ["Values"]
       37 JUMPIFEQKNIL                     R2 ; [+81]
       39 GETTABLEKS                       R3 R0 K7 ["Values"]
       41 FASTCALL1                        TYPE R3 ; [+2]
       42 GETIMPORT                        R2 K2 [type]
       44 CALL                             R2 1 1
       45 JUMPIFEQKS                       R2 K3 ["table"] ; [+3]
       47 LOADNIL                          R2
       48 RETURN                           R2 1
       49 NEWTABLE                         R2 0 0
       51 NEWTABLE                         R3 0 0
       53 GETTABLEKS                       R4 R0 K7 ["Values"]
       55 LOADNIL                          R5
       56 LOADNIL                          R6
       57 FORGPREP                         R4
       58 FASTCALL1                        TYPE R8 ; [+3]
       59 MOVE                             R10 R8
       60 GETIMPORT                        R9 K2 [type]
       62 CALL                             R9 1 1
       63 JUMPIFNOTEQKS                    R9 K3 ["table"] ; [+31]
       65 GETTABLEKS                       R10 R8 K8 ["ControlId"]
       67 FASTCALL1                        TYPE R10 ; [+2]
       68 GETIMPORT                        R9 K2 [type]
       70 CALL                             R9 1 1
       71 JUMPIFNOTEQKS                    R9 K5 ["string"] ; [+23]
       73 GETTABLEKS                       R10 R8 K8 ["ControlId"]
       75 GETTABLE                         R9 R3 R10
       76 JUMPIF                           R9 ; [+18]
       77 GETTABLEKS                       R10 R8 K9 ["Value"]
       79 FASTCALL1                        TYPE R10 ; [+3]
       80 MOVE                             R12 R10
       81 GETIMPORT                        R11 K2 [type]
       83 CALL                             R11 1 1
       84 LOADB                            R9 1
       85 JUMPIFEQKS                       R11 K5 ["string"] ; [+8]
       87 LOADB                            R9 1
       88 JUMPIFEQKS                       R11 K10 ["number"] ; [+5]
       90 JUMPIFEQKS                       R11 K11 ["boolean"] ; [+2]
       92 LOADB                            R9 0 +1
       93 LOADB                            R9 1
       94 JUMPIF                           R9 ; [+2]
       95 LOADNIL                          R9
       96 RETURN                           R9 1
       97 GETTABLEKS                       R9 R8 K8 ["ControlId"]
       99 LOADB                            R10 1
      100 SETTABLE                         R10 R3 R9
      101 DUPTABLE                         R11 K12 [{"ControlId", "Value"}]
      102 GETTABLEKS                       R12 R8 K8 ["ControlId"]
      104 SETTABLEKS                       R12 R11 K8 ["ControlId"]
      106 GETTABLEKS                       R12 R8 K9 ["Value"]
      108 SETTABLEKS                       R12 R11 K9 ["Value"]
      110 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      112 MOVE                             R10 R2
      113 GETIMPORT                        R9 K14 [table.insert]
      115 CALL                             R9 2 0
      116 FORGLOOP                         R4 2 ; [-59]
      118 MOVE                             R1 R2
      119 DUPTABLE                         R2 K15 [{"Icon", "Label", "Values"}]
      120 GETTABLEKS                       R3 R0 K4 ["Icon"]
      122 SETTABLEKS                       R3 R2 K4 ["Icon"]
      124 GETTABLEKS                       R3 R0 K6 ["Label"]
      126 SETTABLEKS                       R3 R2 K6 ["Label"]
      128 SETTABLEKS                       R1 R2 K7 ["Values"]
      130 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 JUMPIFEQKNIL                     R0 ; [+13]
        9 GETTABLEKS                       R2 R0 K1 ["Icon"]
       11 GETTABLEKS                       R3 R1 K1 ["Icon"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["Label"]
       17 GETTABLEKS                       R3 R1 K2 ["Label"]
       19 JUMPIFEQ                         R2 R3 ; [+3]
       21 LOADB                            R2 0
       22 RETURN                           R2 1
       23 GETTABLEKS                       R2 R0 K3 ["Values"]
       25 JUMPIF                           R2 ; [+2]
       26 NEWTABLE                         R2 0 0
       28 GETTABLEKS                       R3 R1 K3 ["Values"]
       30 JUMPIF                           R3 ; [+2]
       31 NEWTABLE                         R3 0 0
       33 LENGTH                           R4 R2
       34 LENGTH                           R5 R3
       35 JUMPIFEQ                         R4 R5 ; [+3]
       37 LOADB                            R4 0
       38 RETURN                           R4 1
       39 NEWTABLE                         R4 0 0
       41 MOVE                             R5 R2
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 FORGPREP                         R5
       45 GETTABLEKS                       R10 R9 K4 ["ControlId"]
       47 GETTABLEKS                       R11 R9 K5 ["Value"]
       49 SETTABLE                         R11 R4 R10
       50 FORGLOOP                         R5 2 ; [-6]
       52 MOVE                             R5 R3
       53 LOADNIL                          R6
       54 LOADNIL                          R7
       55 FORGPREP                         R5
       56 GETTABLEKS                       R11 R9 K4 ["ControlId"]
       58 GETTABLE                         R10 R4 R11
       59 GETTABLEKS                       R11 R9 K5 ["Value"]
       61 JUMPIFEQ                         R10 R11 ; [+3]
       63 LOADB                            R10 0
       64 RETURN                           R10 1
       65 FORGLOOP                         R5 2 ; [-10]
       67 LOADB                            R5 1
       68 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_refreshRegistry"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onHeartbeat"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R3 16 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["_service"]
       10 GETTABLEKS                       R3 R1 K3 ["spawn"]
       12 JUMPIF                           R3 ; [+3]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["defaultSpawn"]
       16 SETTABLEKS                       R3 R2 K5 ["_spawn"]
       18 GETTABLEKS                       R3 R1 K6 ["onRegistryChanged"]
       20 SETTABLEKS                       R3 R2 K7 ["_onRegistryChanged"]
       22 GETTABLEKS                       R3 R1 K8 ["onDynamicStateChanged"]
       24 SETTABLEKS                       R3 R2 K9 ["_onDynamicStateChanged"]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K10 ["_simulators"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K11 ["_lastState"]
       34 LOADN                            R3 0
       35 SETTABLEKS                       R3 R2 K12 ["_elapsed"]
       37 LOADN                            R3 0
       38 SETTABLEKS                       R3 R2 K13 ["_generation"]
       40 LOADB                            R3 0
       41 SETTABLEKS                       R3 R2 K14 ["_refreshing"]
       43 LOADB                            R3 0
       44 SETTABLEKS                       R3 R2 K15 ["_refreshPending"]
       46 LOADB                            R3 0
       47 SETTABLEKS                       R3 R2 K16 ["_polling"]
       49 LOADB                            R3 0
       50 SETTABLEKS                       R3 R2 K17 ["_destroyed"]
       52 GETTABLEKS                       R3 R0 K18 ["SimulatorRegistryChanged"]
       54 NEWCLOSURE                       R5 P0
       55 CAPTURE                          VAL R2
       56 NAMECALL                         R3 R3 K19 ["Connect"]
       58 CALL                             R3 2 1
       59 SETTABLEKS                       R3 R2 K20 ["_registryConnection"]
       61 GETTABLEKS                       R3 R1 K21 ["heartbeat"]
       63 JUMPIF                           R3 ; [+3]
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K22 ["Heartbeat"]
       67 NEWCLOSURE                       R6 P1
       68 CAPTURE                          VAL R2
       69 NAMECALL                         R4 R3 K19 ["Connect"]
       71 CALL                             R4 2 1
       72 SETTABLEKS                       R4 R2 K23 ["_heartbeatConnection"]
       74 NAMECALL                         R4 R2 K24 ["_refreshRegistry"]
       76 CALL                             R4 1 0
       77 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_service"]
        3 NAMECALL                         R0 R0 K1 ["GetRegisteredSimulatorsAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_onRegistryChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["_destroyed"]
        8 JUMPIF                           R2 ; [+48]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["_generation"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+43]
       15 JUMPIFNOT                        R0 ; [+28]
       16 FASTCALL1                        TYPE R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K5 [type]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K6 ["table"] ; [+22]
       23 GETUPVAL                         R2 0
       24 SETTABLEKS                       R1 R2 K7 ["_simulators"]
       26 GETUPVAL                         R2 0
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K8 ["_lastState"]
       31 GETUPVAL                         R2 0
       32 LOADN                            R3 0
       33 SETTABLEKS                       R3 R2 K9 ["_elapsed"]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K10 ["safeCall"]
       38 LOADK                            R3 K11 ["registry change"]
       39 NEWCLOSURE                       R4 P1
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R1
       42 CALL                             R2 2 0
       43 JUMP                             ; [+13]
       44 GETIMPORT                        R2 K13 [warn]
       46 LOADK                            R4 K14 ["Device Simulator registry refresh failed: %*"]
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R6 R6 K15 ["formatError"]
       50 MOVE                             R7 R1
       51 CALL                             R6 1 1
       52 NAMECALL                         R4 R4 K16 ["format"]
       54 CALL                             R4 2 1
       55 MOVE                             R3 R4
       56 CALL                             R2 1 0
       57 GETUPVAL                         R2 0
       58 LOADB                            R3 0
       59 SETTABLEKS                       R3 R2 K17 ["_refreshing"]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R2 R2 K18 ["_refreshPending"]
       64 JUMPIFNOT                        R2 ; [+8]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K2 ["_destroyed"]
       68 JUMPIF                           R2 ; [+4]
       69 GETUPVAL                         R2 0
       70 NAMECALL                         R2 R2 K19 ["_refreshRegistry"]
       72 CALL                             R2 1 0
       73 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["_destroyed"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R1 R0 K2 ["_refreshing"]
       12 JUMPIFNOT                        R1 ; [+4]
       13 LOADB                            R1 1
       14 SETTABLEKS                       R1 R0 K3 ["_refreshPending"]
       16 RETURN                           R0 0
       17 LOADB                            R1 1
       18 SETTABLEKS                       R1 R0 K2 ["_refreshing"]
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K3 ["_refreshPending"]
       23 GETTABLEKS                       R1 R0 K4 ["_generation"]
       25 ADDK                             R1 R1 K5 [1]
       26 SETTABLEKS                       R1 R0 K4 ["_generation"]
       28 GETTABLEKS                       R1 R0 K4 ["_generation"]
       30 GETTABLEKS                       R2 R0 K6 ["_spawn"]
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U1
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["_destroyed"]
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K2 ["_elapsed"]
       12 ADD                              R2 R2 R1
       13 SETTABLEKS                       R2 R0 K2 ["_elapsed"]
       15 GETTABLEKS                       R2 R0 K2 ["_elapsed"]
       17 LOADK                            R3 K3 [0.25]
       18 JUMPIFNOTLT                      R2 R3 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R0 K2 ["_elapsed"]
       23 MODK                             R2 R2 K3 [0.25]
       24 SETTABLEKS                       R2 R0 K2 ["_elapsed"]
       26 NAMECALL                         R2 R0 K4 ["_poll"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_service"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Name"]
        6 NAMECALL                         R0 R0 K2 ["GetSimulatorDynamicStateAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_onDynamicStateChanged"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Name"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["_destroyed"]
        7 JUMPIF                           R5 ; [+71]
        8 GETUPVAL                         R5 2
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K1 ["_generation"]
       12 JUMPIFNOTEQ                      R5 R6 ; [+66]
       14 GETIMPORT                        R5 K3 [pcall]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R4
       19 CALL                             R5 1 2
       20 JUMPIFNOT                        R5 ; [+2]
       21 JUMPIFEQKNIL                     R6 ; [+55]
       23 JUMPIFNOT                        R5 ; [+4]
       24 GETUPVAL                         R7 3
       25 MOVE                             R8 R6
       26 CALL                             R7 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 JUMPIFNOTEQKNIL                  R7 ; [+21]
       31 JUMPIFNOT                        R5 ; [+2]
       32 LOADK                            R8 K4 ["returned an invalid state"]
       33 JUMP                             ; [+5]
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R8 R8 K5 ["formatError"]
       37 MOVE                             R9 R6
       38 CALL                             R8 1 1
       39 GETIMPORT                        R9 K7 [warn]
       41 LOADK                            R11 K8 ["Device Simulator state poll failed for %*: %*"]
       42 GETTABLEKS                       R13 R4 K9 ["Name"]
       44 MOVE                             R14 R8
       45 NAMECALL                         R11 R11 K10 ["format"]
       47 CALL                             R11 3 1
       48 MOVE                             R10 R11
       49 CALL                             R9 1 0
       50 JUMP                             ; [+26]
       51 GETUPVAL                         R8 5
       52 GETUPVAL                         R10 1
       53 GETTABLEKS                       R10 R10 K11 ["_lastState"]
       55 GETTABLEKS                       R11 R4 K9 ["Name"]
       57 GETTABLE                         R9 R10 R11
       58 MOVE                             R10 R7
       59 CALL                             R8 2 1
       60 JUMPIF                           R8 ; [+16]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K11 ["_lastState"]
       64 GETTABLEKS                       R9 R4 K9 ["Name"]
       66 SETTABLE                         R7 R8 R9
       67 GETUPVAL                         R8 4
       68 GETTABLEKS                       R8 R8 K12 ["safeCall"]
       70 GETTABLEKS                       R9 R4 K9 ["Name"]
       72 NEWCLOSURE                       R10 P1
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R7
       76 CALL                             R8 2 0
       77 FORGLOOP                         R0 2 ; [-74]
       79 GETUPVAL                         R0 1
       80 LOADB                            R1 0
       81 SETTABLEKS                       R1 R0 K13 ["_polling"]
       83 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["_destroyed"]
        8 JUMPIF                           R1 ; [+6]
        9 GETTABLEKS                       R1 R0 K2 ["_polling"]
       11 JUMPIF                           R1 ; [+3]
       12 GETTABLEKS                       R1 R0 K3 ["_refreshing"]
       14 JUMPIFNOT                        R1 ; [+1]
       15 RETURN                           R0 0
       16 LOADB                            R1 1
       17 SETTABLEKS                       R1 R0 K2 ["_polling"]
       19 GETTABLEKS                       R1 R0 K4 ["_generation"]
       21 GETTABLEKS                       R2 R0 K5 ["_simulators"]
       23 GETTABLEKS                       R3 R0 K6 ["_spawn"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R1 R0 K1 ["_refreshRegistry"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_destroyed"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        7 GETTABLEKS                       R1 R0 K1 ["_generation"]
        9 ADDK                             R1 R1 K2 [1]
       10 SETTABLEKS                       R1 R0 K1 ["_generation"]
       12 GETTABLEKS                       R1 R0 K3 ["_registryConnection"]
       14 NAMECALL                         R1 R1 K4 ["Disconnect"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K5 ["_heartbeatConnection"]
       19 NAMECALL                         R1 R1 K4 ["Disconnect"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["RunService"]
       19 NAMECALL                         R2 R2 K12 ["GetService"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K5 [require]
       24 GETIMPORT                        R4 K1 [script]
       26 GETTABLEKS                       R4 R4 K13 ["Parent"]
       28 GETTABLEKS                       R4 R4 K14 ["dispatch"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETIMPORT                        R5 K1 [script]
       35 GETTABLEKS                       R5 R5 K13 ["Parent"]
       37 GETTABLEKS                       R5 R5 K15 ["Types"]
       39 CALL                             R4 1 1
       40 NEWTABLE                         R5 8 0
       42 SETTABLEKS                       R5 R5 K16 ["__index"]
       44 DUPCLOSURE                       R6 K17 [PROTO_0]
       45 DUPCLOSURE                       R7 K18 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 DUPCLOSURE                       R8 K19 [PROTO_2]
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R9 K20 [PROTO_5]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R9 R5 K21 ["new"]
       55 DUPCLOSURE                       R9 K22 [PROTO_9]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R9 R5 K23 ["_refreshRegistry"]
       60 DUPCLOSURE                       R9 K24 [PROTO_10]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R9 R5 K25 ["_onHeartbeat"]
       64 DUPCLOSURE                       R9 K26 [PROTO_14]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R8
       69 SETTABLEKS                       R9 R5 K27 ["_poll"]
       71 DUPCLOSURE                       R9 K28 [PROTO_15]
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R9 R5 K29 ["RefreshRegistry"]
       75 DUPCLOSURE                       R9 K30 [PROTO_16]
       76 SETTABLEKS                       R9 R5 K31 ["Destroy"]
       78 RETURN                           R5 1
