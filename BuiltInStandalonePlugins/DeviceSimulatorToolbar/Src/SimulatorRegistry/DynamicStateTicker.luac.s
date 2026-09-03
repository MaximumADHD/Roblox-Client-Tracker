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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 JUMPIFNOTEQ                      R0 R1 ; [+3]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 JUMPIFEQKNIL                     R0 ; [+3]
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 LOADB                            R2 0
       16 RETURN                           R2 1
       17 MOVE                             R2 R0
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 GETTABLE                         R7 R1 R5
       22 JUMPIFEQ                         R7 R6 ; [+3]
       24 LOADB                            R7 0
       25 RETURN                           R7 1
       26 FORGLOOP                         R2 2 ; [-6]
       28 MOVE                             R2 R1
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 FORGPREP                         R2
       32 GETTABLE                         R7 R0 R5
       33 JUMPIFEQ                         R7 R6 ; [+3]
       35 LOADB                            R7 0
       36 RETURN                           R7 1
       37 FORGLOOP                         R2 2 ; [-6]
       39 LOADB                            R2 1
       40 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 NEWTABLE                         R1 0 0
       13 MOVE                             R2 R0
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R5
       21 GETIMPORT                        R7 K3 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 1 ; [-8]
       26 GETIMPORT                        R2 K5 [table.sort]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 NEWTABLE                         R2 0 0
       32 MOVE                             R3 R1
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 DUPTABLE                         R10 K8 [{"ControlId", "Value"}]
       37 SETTABLEKS                       R7 R10 K6 ["ControlId"]
       39 GETTABLE                         R11 R0 R7
       40 SETTABLEKS                       R11 R10 K7 ["Value"]
       42 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       44 MOVE                             R9 R2
       45 GETIMPORT                        R8 K3 [table.insert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R3 2 ; [-13]
       50 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_refreshRegistry"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onHeartbeat"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R3 32 0
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
       34 NEWTABLE                         R3 0 0
       36 SETTABLEKS                       R3 R2 K12 ["_lastStateWasStaged"]
       38 NEWTABLE                         R3 0 0
       40 SETTABLEKS                       R3 R2 K13 ["_stagedValues"]
       42 NEWTABLE                         R3 0 0
       44 SETTABLEKS                       R3 R2 K14 ["_stagedVersions"]
       46 LOADN                            R3 0
       47 SETTABLEKS                       R3 R2 K15 ["_elapsed"]
       49 LOADN                            R3 0
       50 SETTABLEKS                       R3 R2 K16 ["_generation"]
       52 LOADB                            R3 0
       53 SETTABLEKS                       R3 R2 K17 ["_refreshing"]
       55 LOADB                            R3 0
       56 SETTABLEKS                       R3 R2 K18 ["_refreshPending"]
       58 LOADB                            R3 0
       59 SETTABLEKS                       R3 R2 K19 ["_polling"]
       61 LOADB                            R3 0
       62 SETTABLEKS                       R3 R2 K20 ["_pollPending"]
       64 LOADB                            R3 0
       65 SETTABLEKS                       R3 R2 K21 ["_destroyed"]
       67 GETTABLEKS                       R3 R0 K22 ["SimulatorRegistryChanged"]
       69 NEWCLOSURE                       R5 P0
       70 CAPTURE                          VAL R2
       71 NAMECALL                         R3 R3 K23 ["Connect"]
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R2 K24 ["_registryConnection"]
       76 GETTABLEKS                       R3 R1 K25 ["heartbeat"]
       78 JUMPIF                           R3 ; [+3]
       79 GETUPVAL                         R3 2
       80 GETTABLEKS                       R3 R3 K26 ["Heartbeat"]
       82 NEWCLOSURE                       R6 P1
       83 CAPTURE                          VAL R2
       84 NAMECALL                         R4 R3 K23 ["Connect"]
       86 CALL                             R4 2 1
       87 SETTABLEKS                       R4 R2 K27 ["_heartbeatConnection"]
       89 NAMECALL                         R4 R2 K28 ["_refreshRegistry"]
       91 CALL                             R4 1 0
       92 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_service"]
        3 NAMECALL                         R0 R0 K1 ["GetRegisteredSimulatorsAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_onRegistryChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["_destroyed"]
        8 JUMPIF                           R2 ; [+53]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["_generation"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+48]
       15 JUMPIFNOT                        R0 ; [+33]
       16 FASTCALL1                        TYPE R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K5 [type]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K6 ["table"] ; [+27]
       23 GETUPVAL                         R2 0
       24 SETTABLEKS                       R1 R2 K7 ["_simulators"]
       26 GETUPVAL                         R2 0
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K8 ["_lastState"]
       31 GETUPVAL                         R2 0
       32 NEWTABLE                         R3 0 0
       34 SETTABLEKS                       R3 R2 K9 ["_lastStateWasStaged"]
       36 GETUPVAL                         R2 0
       37 LOADN                            R3 0
       38 SETTABLEKS                       R3 R2 K10 ["_elapsed"]
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R2 R2 K11 ["safeCall"]
       43 LOADK                            R3 K12 ["registry change"]
       44 NEWCLOSURE                       R4 P1
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          VAL R1
       47 CALL                             R2 2 0
       48 JUMP                             ; [+13]
       49 GETIMPORT                        R2 K14 [warn]
       51 LOADK                            R4 K15 ["Device Simulator registry refresh failed: %*"]
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R6 R6 K16 ["formatError"]
       55 MOVE                             R7 R1
       56 CALL                             R6 1 1
       57 NAMECALL                         R4 R4 K17 ["format"]
       59 CALL                             R4 2 1
       60 MOVE                             R3 R4
       61 CALL                             R2 1 0
       62 GETUPVAL                         R2 0
       63 LOADB                            R3 0
       64 SETTABLEKS                       R3 R2 K18 ["_refreshing"]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K19 ["_refreshPending"]
       69 JUMPIFNOT                        R2 ; [+9]
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R2 R2 K2 ["_destroyed"]
       73 JUMPIF                           R2 ; [+5]
       74 GETUPVAL                         R2 0
       75 NAMECALL                         R2 R2 K20 ["_refreshRegistry"]
       77 CALL                             R2 1 0
       78 RETURN                           R0 0
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R2 R2 K21 ["_pollPending"]
       82 JUMPIFNOT                        R2 ; [+8]
       83 GETUPVAL                         R2 0
       84 GETTABLEKS                       R2 R2 K2 ["_destroyed"]
       86 JUMPIF                           R2 ; [+4]
       87 GETUPVAL                         R2 0
       88 NAMECALL                         R2 R2 K22 ["_poll"]
       90 CALL                             R2 1 0
       91 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_service"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Name"]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 CALL                             R3 1 1
        9 NAMECALL                         R0 R0 K2 ["GetSimulatorDynamicStateAsync"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_onDynamicStateChanged"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Name"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["_destroyed"]
        7 JUMPIF                           R5 ; [+124]
        8 GETUPVAL                         R5 2
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K1 ["_generation"]
       12 JUMPIFNOTEQ                      R5 R6 ; [+119]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K2 ["_stagedValues"]
       17 GETTABLEKS                       R7 R4 K3 ["Name"]
       19 GETTABLE                         R5 R6 R7
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K5 ["_stagedVersions"]
       23 GETTABLEKS                       R9 R4 K3 ["Name"]
       25 GETTABLE                         R7 R8 R9
       26 ORK                              R6 R7 K4 [0]
       27 GETIMPORT                        R7 K7 [pcall]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R4
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R5
       34 CALL                             R7 1 2
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K0 ["_destroyed"]
       38 JUMPIF                           R9 ; [+93]
       39 GETUPVAL                         R9 2
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K1 ["_generation"]
       43 JUMPIFNOTEQ                      R9 R10 ; [+88]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K5 ["_stagedVersions"]
       48 GETTABLEKS                       R12 R4 K3 ["Name"]
       50 GETTABLE                         R10 R11 R12
       51 ORK                              R9 R10 K4 [0]
       52 JUMPIFNOTEQ                      R6 R9 ; [+77]
       54 JUMPIFNOT                        R7 ; [+2]
       55 JUMPIFEQKNIL                     R8 ; [+74]
       57 JUMPIFNOT                        R7 ; [+4]
       58 GETUPVAL                         R9 4
       59 MOVE                             R10 R8
       60 CALL                             R9 1 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R9
       63 JUMPIFNOTEQKNIL                  R9 ; [+21]
       65 JUMPIFNOT                        R7 ; [+2]
       66 LOADK                            R10 K8 ["returned an invalid state"]
       67 JUMP                             ; [+5]
       68 GETUPVAL                         R10 5
       69 GETTABLEKS                       R10 R10 K9 ["formatError"]
       71 MOVE                             R11 R8
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K11 [warn]
       75 LOADK                            R13 K12 ["Device Simulator state poll failed for %*: %*"]
       76 GETTABLEKS                       R15 R4 K3 ["Name"]
       78 MOVE                             R16 R10
       79 NAMECALL                         R13 R13 K13 ["format"]
       81 CALL                             R13 3 1
       82 MOVE                             R12 R13
       83 CALL                             R11 1 0
       84 JUMP                             ; [+45]
       85 JUMPIFNOTEQKNIL                  R5 ; [+2]
       87 LOADB                            R10 0 +1
       88 LOADB                            R10 1
       89 GETUPVAL                         R12 1
       90 GETTABLEKS                       R12 R12 K14 ["_lastStateWasStaged"]
       92 GETTABLEKS                       R13 R4 K3 ["Name"]
       94 GETTABLE                         R11 R12 R13
       95 JUMPIFNOTEQ                      R11 R10 ; [+11]
       97 GETUPVAL                         R11 6
       98 GETUPVAL                         R13 1
       99 GETTABLEKS                       R13 R13 K15 ["_lastState"]
      101 GETTABLEKS                       R14 R4 K3 ["Name"]
      103 GETTABLE                         R12 R13 R14
      104 MOVE                             R13 R9
      105 CALL                             R11 2 1
      106 JUMPIF                           R11 ; [+23]
      107 GETUPVAL                         R11 1
      108 GETTABLEKS                       R11 R11 K15 ["_lastState"]
      110 GETTABLEKS                       R12 R4 K3 ["Name"]
      112 SETTABLE                         R9 R11 R12
      113 GETUPVAL                         R11 1
      114 GETTABLEKS                       R11 R11 K14 ["_lastStateWasStaged"]
      116 GETTABLEKS                       R12 R4 K3 ["Name"]
      118 SETTABLE                         R10 R11 R12
      119 GETUPVAL                         R11 5
      120 GETTABLEKS                       R11 R11 K16 ["safeCall"]
      122 GETTABLEKS                       R12 R4 K3 ["Name"]
      124 NEWCLOSURE                       R13 P1
      125 CAPTURE                          UPVAL U1
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R10
      129 CALL                             R11 2 0
      130 FORGLOOP                         R0 2 ; [-127]
      132 GETUPVAL                         R0 1
      133 LOADB                            R1 0
      134 SETTABLEKS                       R1 R0 K17 ["_polling"]
      136 GETUPVAL                         R0 1
      137 GETTABLEKS                       R0 R0 K18 ["_pollPending"]
      139 JUMPIFNOT                        R0 ; [+8]
      140 GETUPVAL                         R0 1
      141 GETTABLEKS                       R0 R0 K0 ["_destroyed"]
      143 JUMPIF                           R0 ; [+4]
      144 GETUPVAL                         R0 1
      145 NAMECALL                         R0 R0 K19 ["_poll"]
      147 CALL                             R0 1 0
      148 RETURN                           R0 0

PROTO_16:
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
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K4 ["_pollPending"]
       22 GETTABLEKS                       R1 R0 K5 ["_generation"]
       24 GETTABLEKS                       R2 R0 K6 ["_simulators"]
       26 GETTABLEKS                       R3 R0 K7 ["_spawn"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R3 R0 K1 ["_destroyed"]
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R5 R0 K2 ["_stagedValues"]
       12 GETTABLE                         R4 R5 R1
       13 MOVE                             R5 R2
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+1]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R0 K2 ["_stagedValues"]
       19 JUMPIFEQKNIL                     R2 ; [+6]
       21 GETIMPORT                        R4 K5 [table.clone]
       23 MOVE                             R5 R2
       24 CALL                             R4 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R3 R1
       28 GETTABLEKS                       R3 R0 K6 ["_stagedVersions"]
       30 GETTABLEKS                       R7 R0 K6 ["_stagedVersions"]
       32 GETTABLE                         R6 R7 R1
       33 ORK                              R5 R6 K8 [0]
       34 ADDK                             R4 R5 K7 [1]
       35 SETTABLE                         R4 R3 R1
       36 NAMECALL                         R3 R0 K9 ["RefreshDynamicState"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K1 ["_destroyed"]
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["_pollPending"]
       12 GETTABLEKS                       R1 R0 K3 ["_polling"]
       14 JUMPIF                           R1 ; [+6]
       15 GETTABLEKS                       R1 R0 K4 ["_refreshing"]
       17 JUMPIF                           R1 ; [+3]
       18 NAMECALL                         R1 R0 K5 ["_poll"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R1 R0 K1 ["_refreshRegistry"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_destroyed"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        7 GETTABLEKS                       R1 R0 K1 ["_generation"]
        9 ADDK                             R1 R1 K2 [1]
       10 SETTABLEKS                       R1 R0 K1 ["_generation"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["_stagedValues"]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K4 ["_stagedVersions"]
       20 GETTABLEKS                       R1 R0 K5 ["_registryConnection"]
       22 NAMECALL                         R1 R1 K6 ["Disconnect"]
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R1 R0 K7 ["_heartbeatConnection"]
       27 NAMECALL                         R1 R1 K6 ["Disconnect"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

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
       40 NEWTABLE                         R5 16 0
       42 SETTABLEKS                       R5 R5 K16 ["__index"]
       44 DUPCLOSURE                       R6 K17 [PROTO_0]
       45 DUPCLOSURE                       R7 K18 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 DUPCLOSURE                       R8 K19 [PROTO_2]
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R9 K20 [PROTO_3]
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R10 K21 [PROTO_4]
       52 CAPTURE                          VAL R1
       53 DUPCLOSURE                       R11 K22 [PROTO_7]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R11 R5 K23 ["new"]
       59 DUPCLOSURE                       R11 K24 [PROTO_11]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R11 R5 K25 ["_refreshRegistry"]
       64 DUPCLOSURE                       R11 K26 [PROTO_12]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R11 R5 K27 ["_onHeartbeat"]
       68 DUPCLOSURE                       R11 K28 [PROTO_16]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R8
       74 SETTABLEKS                       R11 R5 K29 ["_poll"]
       76 DUPCLOSURE                       R11 K30 [PROTO_17]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 SETTABLEKS                       R11 R5 K31 ["SetStagedValues"]
       81 DUPCLOSURE                       R11 K32 [PROTO_18]
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R11 R5 K33 ["RefreshDynamicState"]
       85 DUPCLOSURE                       R11 K34 [PROTO_19]
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R11 R5 K35 ["RefreshRegistry"]
       89 DUPCLOSURE                       R11 K36 [PROTO_20]
       90 SETTABLEKS                       R11 R5 K37 ["Destroy"]
       92 RETURN                           R5 1
