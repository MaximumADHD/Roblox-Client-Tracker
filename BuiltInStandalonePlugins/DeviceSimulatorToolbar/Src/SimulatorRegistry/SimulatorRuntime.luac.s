PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 FASTCALL1                        TYPE R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K2 [type]
       11 CALL                             R1 1 1
       12 LOADB                            R2 1
       13 JUMPIFEQKS                       R1 K3 ["string"] ; [+8]
       15 LOADB                            R2 1
       16 JUMPIFEQKS                       R1 K4 ["number"] ; [+5]
       18 JUMPIFEQKS                       R1 K5 ["boolean"] ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K1 ["makeControlPath"]
       13 MOVE                             R9 R1
       14 MOVE                             R10 R6
       15 CALL                             R8 2 1
       16 GETTABLEKS                       R9 R7 K2 ["Type"]
       18 GETUPVAL                         R10 2
       19 GETTABLEKS                       R10 R10 K3 ["Section"]
       21 JUMPIFNOTEQ                      R9 R10 ; [+8]
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R10 R7 K4 ["Controls"]
       26 MOVE                             R11 R8
       27 MOVE                             R12 R2
       28 CALL                             R9 3 0
       29 JUMP                             ; [+13]
       30 GETTABLEKS                       R9 R7 K5 ["Value"]
       32 JUMPIFEQKNIL                     R9 ; [+10]
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K6 ["makeControlKey"]
       37 MOVE                             R10 R7
       38 MOVE                             R11 R8
       39 CALL                             R9 2 1
       40 GETTABLEKS                       R10 R7 K5 ["Value"]
       42 SETTABLE                         R10 R2 R9
       43 GETTABLEKS                       R9 R7 K2 ["Type"]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K7 ["Dropdown"]
       48 JUMPIFNOTEQ                      R9 R10 ; [+11]
       50 GETTABLEKS                       R9 R7 K8 ["BundledControls"]
       52 JUMPIFEQKNIL                     R9 ; [+7]
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R10 R7 K8 ["BundledControls"]
       57 MOVE                             R11 R8
       58 MOVE                             R12 R2
       59 CALL                             R9 3 0
       60 FORGLOOP                         R3 2 ; [-51]
       62 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R8 R8 K0 ["makeControlPath"]
        7 MOVE                             R9 R1
        8 MOVE                             R10 R6
        9 CALL                             R8 2 1
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K1 ["makeControlKey"]
       13 MOVE                             R10 R7
       14 MOVE                             R11 R8
       15 CALL                             R9 2 1
       16 GETTABLEKS                       R10 R7 K2 ["Type"]
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K3 ["Section"]
       21 JUMPIFNOTEQ                      R10 R11 ; [+8]
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R11 R7 K4 ["Controls"]
       26 MOVE                             R12 R8
       27 MOVE                             R13 R2
       28 CALL                             R10 3 0
       29 JUMP                             ; [+21]
       30 GETTABLEKS                       R10 R7 K2 ["Type"]
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K5 ["Slider"]
       35 JUMPIFEQ                         R10 R11 ; [+8]
       37 GETTABLEKS                       R10 R7 K2 ["Type"]
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R11 R11 K6 ["NumberField"]
       42 JUMPIFNOTEQ                      R10 R11 ; [+8]
       44 GETTABLEKS                       R10 R7 K7 ["Precision"]
       46 JUMPIFEQKNIL                     R10 ; [+4]
       48 GETTABLEKS                       R10 R7 K7 ["Precision"]
       50 SETTABLE                         R10 R2 R9
       51 GETTABLEKS                       R10 R7 K2 ["Type"]
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R11 R11 K8 ["Dropdown"]
       56 JUMPIFNOTEQ                      R10 R11 ; [+11]
       58 GETTABLEKS                       R10 R7 K9 ["BundledControls"]
       60 JUMPIFEQKNIL                     R10 ; [+7]
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R11 R7 K9 ["BundledControls"]
       65 MOVE                             R12 R8
       66 MOVE                             R13 R2
       67 CALL                             R10 3 0
       68 FORGLOOP                         R3 2 ; [-65]
       70 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R3 1
        3 RETURN                           R3 1
        4 JUMPIFEQKNIL                     R2 ; [+15]
        6 FASTCALL1                        TYPE R0 ; [+3]
        7 MOVE                             R4 R0
        8 GETIMPORT                        R3 K1 [type]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+8]
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K1 [type]
       17 CALL                             R3 1 1
       18 JUMPIFEQKS                       R3 K2 ["number"] ; [+3]
       20 LOADB                            R3 0
       21 RETURN                           R3 1
       22 LOADN                            R4 10
       23 POW                              R3 R4 R2
       24 MUL                              R4 R0 R3
       25 MUL                              R5 R1 R3
       26 JUMPIFEQKN                       R3 K3 [∞] ; [+15]
       28 FASTCALL1                        MATH_ABS R4 ; [+3]
       29 MOVE                             R7 R4
       30 GETIMPORT                        R6 K6 [math.abs]
       32 CALL                             R6 1 1
       33 JUMPIFEQKN                       R6 K3 [∞] ; [+8]
       35 FASTCALL1                        MATH_ABS R5 ; [+3]
       36 MOVE                             R7 R5
       37 GETIMPORT                        R6 K6 [math.abs]
       39 CALL                             R6 1 1
       40 JUMPIFNOTEQKN                    R6 K3 [∞] ; [+3]
       42 LOADB                            R6 0
       43 RETURN                           R6 1
       44 FASTCALL1                        MATH_ROUND R4 ; [+3]
       45 MOVE                             R8 R4
       46 GETIMPORT                        R7 K8 [math.round]
       48 CALL                             R7 1 1
       49 FASTCALL1                        MATH_ROUND R5 ; [+3]
       50 MOVE                             R9 R5
       51 GETIMPORT                        R8 K8 [math.round]
       53 CALL                             R8 1 1
       54 JUMPIFEQ                         R7 R8 ; [+2]
       56 LOADB                            R6 0 +1
       57 LOADB                            R6 1
       58 RETURN                           R6 1

PROTO_4:
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
       16 GETTABLEKS                       R2 R0 K4 ["Applied"]
       18 FASTCALL1                        TYPE R2 ; [+2]
       19 GETIMPORT                        R1 K2 [type]
       21 CALL                             R1 1 1
       22 JUMPIFNOTEQKS                    R1 K5 ["boolean"] ; [+17]
       24 GETTABLEKS                       R2 R0 K6 ["Generation"]
       26 FASTCALL1                        TYPE R2 ; [+2]
       27 GETIMPORT                        R1 K2 [type]
       29 CALL                             R1 1 1
       30 JUMPIFNOTEQKS                    R1 K7 ["number"] ; [+9]
       32 GETTABLEKS                       R2 R0 K8 ["Values"]
       34 FASTCALL1                        TYPE R2 ; [+2]
       35 GETIMPORT                        R1 K2 [type]
       37 CALL                             R1 1 1
       38 JUMPIFEQKS                       R1 K3 ["table"] ; [+3]
       40 LOADNIL                          R1
       41 RETURN                           R1 1
       42 NEWTABLE                         R1 0 0
       44 GETTABLEKS                       R2 R0 K8 ["Values"]
       46 LOADNIL                          R3
       47 LOADNIL                          R4
       48 FORGPREP                         R2
       49 FASTCALL1                        TYPE R6 ; [+3]
       50 MOVE                             R8 R6
       51 GETIMPORT                        R7 K2 [type]
       53 CALL                             R7 1 1
       54 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+34]
       56 GETTABLEKS                       R8 R6 K9 ["ControlId"]
       58 FASTCALL1                        TYPE R8 ; [+2]
       59 GETIMPORT                        R7 K2 [type]
       61 CALL                             R7 1 1
       62 JUMPIFNOTEQKS                    R7 K10 ["string"] ; [+26]
       64 GETTABLEKS                       R8 R6 K11 ["Value"]
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       69 CALL                             R9 0 1
       70 JUMPIF                           R9 ; [+2]
       71 LOADB                            R7 0
       72 JUMP                             ; [+15]
       73 FASTCALL1                        TYPE R8 ; [+3]
       74 MOVE                             R10 R8
       75 GETIMPORT                        R9 K2 [type]
       77 CALL                             R9 1 1
       78 LOADB                            R7 1
       79 JUMPIFEQKS                       R9 K10 ["string"] ; [+8]
       81 LOADB                            R7 1
       82 JUMPIFEQKS                       R9 K7 ["number"] ; [+5]
       84 JUMPIFEQKS                       R9 K5 ["boolean"] ; [+2]
       86 LOADB                            R7 0 +1
       87 LOADB                            R7 1
       88 JUMPIF                           R7 ; [+2]
       89 LOADNIL                          R7
       90 RETURN                           R7 1
       91 DUPTABLE                         R9 K12 [{"ControlId", "Value"}]
       92 GETTABLEKS                       R10 R6 K9 ["ControlId"]
       94 SETTABLEKS                       R10 R9 K9 ["ControlId"]
       96 GETTABLEKS                       R10 R6 K11 ["Value"]
       98 SETTABLEKS                       R10 R9 K11 ["Value"]
      100 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      102 MOVE                             R8 R1
      103 GETIMPORT                        R7 K14 [table.insert]
      105 CALL                             R7 2 0
      106 FORGLOOP                         R2 2 ; [-58]
      108 DUPTABLE                         R2 K15 [{"Applied", "Generation", "Values"}]
      109 GETTABLEKS                       R3 R0 K4 ["Applied"]
      111 SETTABLEKS                       R3 R2 K4 ["Applied"]
      113 GETTABLEKS                       R3 R0 K6 ["Generation"]
      115 SETTABLEKS                       R3 R2 K6 ["Generation"]
      117 SETTABLEKS                       R1 R2 K8 ["Values"]
      119 RETURN                           R2 1

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
       18 GETTABLEKS                       R3 R1 K6 ["onValuesChanged"]
       20 SETTABLEKS                       R3 R2 K7 ["_onValuesChanged"]
       22 GETTABLEKS                       R3 R1 K8 ["onStaleGeneration"]
       24 SETTABLEKS                       R3 R2 K9 ["_onStaleGeneration"]
       26 GETTABLEKS                       R3 R1 K10 ["onApplyCompleted"]
       28 SETTABLEKS                       R3 R2 K11 ["_onApplyCompleted"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K12 ["_values"]
       34 NEWTABLE                         R3 0 0
       36 SETTABLEKS                       R3 R2 K13 ["_generations"]
       38 NEWTABLE                         R3 0 0
       40 SETTABLEKS                       R3 R2 K14 ["_operationIds"]
       42 NEWTABLE                         R3 0 0
       44 SETTABLEKS                       R3 R2 K15 ["_pending"]
       46 NEWTABLE                         R3 0 0
       48 SETTABLEKS                       R3 R2 K16 ["_pendingOrder"]
       50 NEWTABLE                         R3 0 0
       52 SETTABLEKS                       R3 R2 K17 ["_applyingValues"]
       54 NEWTABLE                         R3 0 0
       56 SETTABLEKS                       R3 R2 K18 ["_awaitingPresentation"]
       58 NEWTABLE                         R3 0 0
       60 SETTABLEKS                       R3 R2 K19 ["_deferred"]
       62 NEWTABLE                         R3 0 0
       64 SETTABLEKS                       R3 R2 K20 ["_numericPrecisions"]
       66 LOADB                            R3 0
       67 SETTABLEKS                       R3 R2 K21 ["_destroyed"]
       69 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+3]
        5 NEWTABLE                         R2 0 0
        7 RETURN                           R2 1
        8 GETTABLEKS                       R3 R0 K1 ["_values"]
       10 GETTABLE                         R2 R3 R1
       11 JUMPIF                           R2 ; [+2]
       12 NEWTABLE                         R2 0 0
       14 GETTABLEKS                       R4 R0 K2 ["_applyingValues"]
       16 GETTABLE                         R3 R4 R1
       17 GETTABLEKS                       R5 R0 K3 ["_pending"]
       19 GETTABLE                         R4 R5 R1
       20 JUMPIFNOTEQKNIL                  R3 ; [+10]
       22 JUMPIFEQKNIL                     R4 ; [+7]
       24 GETIMPORT                        R5 K5 [next]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKNIL                  R5 ; [+2]
       30 RETURN                           R2 1
       31 GETIMPORT                        R5 K8 [table.clone]
       33 MOVE                             R6 R2
       34 CALL                             R5 1 1
       35 MOVE                             R6 R3
       36 JUMPIF                           R6 ; [+2]
       37 NEWTABLE                         R6 0 0
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 SETTABLE                         R10 R5 R9
       43 FORGLOOP                         R6 2 ; [-2]
       45 MOVE                             R6 R4
       46 JUMPIF                           R6 ; [+2]
       47 NEWTABLE                         R6 0 0
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 FORGPREP                         R6
       52 SETTABLE                         R10 R5 R9
       53 FORGLOOP                         R6 2 ; [-2]
       55 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R4 R0 K1 ["_deferred"]
        9 GETTABLE                         R3 R4 R1
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R0 K1 ["_pending"]
        9 GETTABLE                         R2 R3 R1
       10 LOADB                            R3 0
       11 JUMPIFEQKNIL                     R2 ; [+9]
       13 GETIMPORT                        R4 K3 [next]
       15 MOVE                             R5 R2
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKNIL                  R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R0 K1 ["HasPendingChanges"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+7]
       12 GETTABLEKS                       R4 R0 K2 ["_applyingValues"]
       14 GETTABLE                         R3 R4 R1
       15 JUMPIFNOTEQKNIL                  R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R0 K1 ["HasPendingChanges"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+9]
       12 GETTABLEKS                       R3 R0 K2 ["_applyingValues"]
       14 GETTABLE                         R2 R3 R1
       15 JUMPIFEQKNIL                     R2 ; [+10]
       17 GETTABLEKS                       R3 R0 K3 ["_awaitingPresentation"]
       19 GETTABLE                         R2 R3 R1
       20 JUMPIF                           R2 ; [+5]
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R0 K4 ["GetValues"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
       26 LOADNIL                          R2
       27 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R4 R0 K1 ["_awaitingPresentation"]
        9 GETTABLE                         R3 R4 R1
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R3 R0 K1 ["_destroyed"]
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R0 K2 ["_values"]
       11 GETTABLE                         R3 R4 R1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 RETURN                           R0 0
       15 GETIMPORT                        R4 K5 [table.clone]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 LOADB                            R5 0
       20 MOVE                             R6 R2
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R13 R10 K6 ["ControlId"]
       27 GETTABLE                         R12 R4 R13
       28 GETTABLEKS                       R13 R10 K7 ["Value"]
       30 GETTABLEKS                       R15 R0 K8 ["_numericPrecisions"]
       32 GETTABLE                         R14 R15 R1
       33 JUMPIFNOT                        R14 ; [+6]
       34 GETTABLEKS                       R16 R0 K8 ["_numericPrecisions"]
       36 GETTABLE                         R15 R16 R1
       37 GETTABLEKS                       R16 R10 K6 ["ControlId"]
       39 GETTABLE                         R14 R15 R16
       40 CALL                             R11 3 1
       41 JUMPIF                           R11 ; [+6]
       42 GETTABLEKS                       R11 R10 K6 ["ControlId"]
       44 GETTABLEKS                       R12 R10 K7 ["Value"]
       46 SETTABLE                         R12 R4 R11
       47 LOADB                            R5 1
       48 FORGLOOP                         R6 2 ; [-25]
       50 GETTABLEKS                       R7 R0 K9 ["_pending"]
       52 GETTABLE                         R6 R7 R1
       53 LOADB                            R7 0
       54 JUMPIFEQKNIL                     R6 ; [+17]
       56 JUMPIFNOT                        R5 ; [+15]
       57 GETTABLEKS                       R9 R0 K10 ["_applyingValues"]
       59 GETTABLE                         R8 R9 R1
       60 JUMPIFNOTEQKNIL                  R8 ; [+11]
       62 GETTABLEKS                       R8 R0 K9 ["_pending"]
       64 LOADNIL                          R9
       65 SETTABLE                         R9 R8 R1
       66 GETTABLEKS                       R8 R0 K11 ["_pendingOrder"]
       68 LOADNIL                          R9
       69 SETTABLE                         R9 R8 R1
       70 LOADB                            R7 1
       71 JUMP                             ; [+75]
       72 JUMPIFEQKNIL                     R6 ; [+74]
       74 GETIMPORT                        R8 K5 [table.clone]
       76 MOVE                             R9 R6
       77 CALL                             R8 1 1
       78 MOVE                             R6 R8
       79 MOVE                             R8 R6
       80 LOADNIL                          R9
       81 LOADNIL                          R10
       82 FORGPREP                         R8
       83 GETUPVAL                         R13 1
       84 GETTABLE                         R14 R4 R11
       85 MOVE                             R15 R12
       86 GETTABLEKS                       R17 R0 K8 ["_numericPrecisions"]
       88 GETTABLE                         R16 R17 R1
       89 JUMPIFNOT                        R16 ; [+4]
       90 GETTABLEKS                       R18 R0 K8 ["_numericPrecisions"]
       92 GETTABLE                         R17 R18 R1
       93 GETTABLE                         R16 R17 R11
       94 CALL                             R13 3 1
       95 JUMPIFNOT                        R13 ; [+3]
       96 LOADNIL                          R13
       97 SETTABLE                         R13 R6 R11
       98 LOADB                            R7 1
       99 FORGLOOP                         R8 2 ; [-17]
      101 GETTABLEKS                       R8 R0 K9 ["_pending"]
      103 GETIMPORT                        R10 K13 [next]
      105 MOVE                             R11 R6
      106 CALL                             R10 1 1
      107 JUMPIFEQKNIL                     R10 ; [+3]
      109 MOVE                             R9 R6
      110 JUMP                             ; [+1]
      111 LOADNIL                          R9
      112 SETTABLE                         R9 R8 R1
      113 JUMPIFNOT                        R7 ; [+33]
      114 NEWTABLE                         R8 0 0
      116 GETTABLEKS                       R12 R0 K11 ["_pendingOrder"]
      118 GETTABLE                         R9 R12 R1
      119 JUMPIF                           R9 ; [+2]
      120 NEWTABLE                         R9 0 0
      122 LOADNIL                          R10
      123 LOADNIL                          R11
      124 FORGPREP                         R9
      125 GETTABLE                         R14 R6 R13
      126 JUMPIFEQKNIL                     R14 ; [+8]
      128 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      130 MOVE                             R15 R8
      131 MOVE                             R16 R13
      132 GETIMPORT                        R14 K15 [table.insert]
      134 CALL                             R14 2 0
      135 FORGLOOP                         R9 2 ; [-11]
      137 GETTABLEKS                       R9 R0 K11 ["_pendingOrder"]
      139 LENGTH                           R11 R8
      140 LOADN                            R12 0
      141 JUMPIFNOTLT                      R12 R11 ; [+3]
      143 MOVE                             R10 R8
      144 JUMP                             ; [+1]
      145 LOADNIL                          R10
      146 SETTABLE                         R10 R9 R1
      147 JUMPIFNOT                        R5 ; [+3]
      148 GETTABLEKS                       R8 R0 K2 ["_values"]
      150 SETTABLE                         R4 R8 R1
      151 JUMPIF                           R5 ; [+1]
      152 JUMPIFNOT                        R7 ; [+4]
      153 MOVE                             R10 R1
      154 NAMECALL                         R8 R0 K16 ["_notify"]
      156 CALL                             R8 2 0
      157 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["_destroyed"]
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 NEWTABLE                         R2 0 0
       12 NEWTABLE                         R3 0 0
       14 NEWTABLE                         R4 0 0
       16 NEWTABLE                         R5 0 0
       18 NEWTABLE                         R6 0 0
       20 NEWTABLE                         R7 0 0
       22 NEWTABLE                         R8 0 0
       24 NEWTABLE                         R9 0 0
       26 NEWTABLE                         R10 0 0
       28 NEWTABLE                         R11 0 0
       30 MOVE                             R12 R1
       31 LOADNIL                          R13
       32 LOADNIL                          R14
       33 FORGPREP                         R12
       34 GETTABLEKS                       R17 R16 K2 ["Name"]
       36 GETTABLEKS                       R18 R16 K3 ["Generation"]
       38 SETTABLE                         R18 R3 R17
       39 GETTABLEKS                       R19 R16 K4 ["Config"]
       41 GETTABLEKS                       R19 R19 K5 ["ApplyMode"]
       43 GETUPVAL                         R20 1
       44 GETTABLEKS                       R20 R20 K6 ["Deferred"]
       46 JUMPIFEQ                         R19 R20 ; [+2]
       48 LOADB                            R18 0 +1
       49 LOADB                            R18 1
       50 SETTABLE                         R18 R9 R17
       51 NEWTABLE                         R18 0 0
       53 GETUPVAL                         R19 2
       54 GETTABLEKS                       R20 R16 K4 ["Config"]
       56 GETTABLEKS                       R20 R20 K7 ["Controls"]
       58 LOADNIL                          R21
       59 MOVE                             R22 R18
       60 CALL                             R19 3 0
       61 SETTABLE                         R18 R10 R17
       62 LOADB                            R19 0
       63 GETTABLEKS                       R21 R0 K8 ["_generations"]
       65 GETTABLE                         R20 R21 R17
       66 GETTABLEKS                       R21 R16 K3 ["Generation"]
       68 JUMPIFNOTEQ                      R20 R21 ; [+4]
       70 GETTABLEKS                       R20 R0 K9 ["_values"]
       72 GETTABLE                         R19 R20 R17
       73 JUMPIFNOT                        R19 ; [+38]
       74 SETTABLE                         R19 R2 R17
       75 GETTABLEKS                       R22 R0 K11 ["_operationIds"]
       77 GETTABLE                         R21 R22 R17
       78 ORK                              R20 R21 K10 [0]
       79 SETTABLE                         R20 R4 R17
       80 GETTABLEKS                       R21 R0 K12 ["_pending"]
       82 GETTABLE                         R20 R21 R17
       83 JUMPIFEQKNIL                     R20 ; [+12]
       85 GETTABLEKS                       R21 R0 K12 ["_pending"]
       87 GETTABLE                         R20 R21 R17
       88 SETTABLE                         R20 R5 R17
       89 GETTABLEKS                       R21 R0 K13 ["_pendingOrder"]
       91 GETTABLE                         R20 R21 R17
       92 JUMPIF                           R20 ; [+2]
       93 NEWTABLE                         R20 0 0
       95 SETTABLE                         R20 R6 R17
       96 GETTABLEKS                       R21 R0 K14 ["_applyingValues"]
       98 GETTABLE                         R20 R21 R17
       99 JUMPIFEQKNIL                     R20 ; [+5]
      101 GETTABLEKS                       R21 R0 K14 ["_applyingValues"]
      103 GETTABLE                         R20 R21 R17
      104 SETTABLE                         R20 R7 R17
      105 GETTABLEKS                       R21 R0 K15 ["_awaitingPresentation"]
      107 GETTABLE                         R20 R21 R17
      108 JUMPIFNOT                        R20 ; [+37]
      109 LOADB                            R20 1
      110 SETTABLE                         R20 R8 R17
      111 JUMP                             ; [+34]
      112 NEWTABLE                         R20 0 0
      114 GETTABLEKS                       R21 R16 K4 ["Config"]
      116 JUMPIFEQKNIL                     R21 ; [+19]
      118 GETTABLEKS                       R22 R16 K4 ["Config"]
      120 GETTABLEKS                       R22 R22 K7 ["Controls"]
      122 FASTCALL1                        TYPE R22 ; [+2]
      123 GETIMPORT                        R21 K17 [type]
      125 CALL                             R21 1 1
      126 JUMPIFNOTEQKS                    R21 K18 ["table"] ; [+9]
      128 GETUPVAL                         R21 3
      129 GETTABLEKS                       R22 R16 K4 ["Config"]
      131 GETTABLEKS                       R22 R22 K7 ["Controls"]
      133 LOADNIL                          R23
      134 MOVE                             R24 R20
      135 CALL                             R21 3 0
      136 SETTABLE                         R20 R2 R17
      137 LOADN                            R21 0
      138 SETTABLE                         R21 R4 R17
      139 FASTCALL2                        TABLE_INSERT R11 R17 ; [+5]
      141 MOVE                             R22 R11
      142 MOVE                             R23 R17
      143 GETIMPORT                        R21 K20 [table.insert]
      145 CALL                             R21 2 0
      146 FORGLOOP                         R12 2 ; [-113]
      148 NEWTABLE                         R12 0 0
      150 GETTABLEKS                       R13 R0 K9 ["_values"]
      152 LOADNIL                          R14
      153 LOADNIL                          R15
      154 FORGPREP                         R13
      155 GETTABLE                         R18 R2 R16
      156 JUMPIFNOTEQKNIL                  R18 ; [+8]
      158 FASTCALL2                        TABLE_INSERT R12 R16 ; [+5]
      160 MOVE                             R19 R12
      161 MOVE                             R20 R16
      162 GETIMPORT                        R18 K20 [table.insert]
      164 CALL                             R18 2 0
      165 FORGLOOP                         R13 1 ; [-11]
      167 SETTABLEKS                       R2 R0 K9 ["_values"]
      169 SETTABLEKS                       R3 R0 K8 ["_generations"]
      171 SETTABLEKS                       R4 R0 K11 ["_operationIds"]
      173 SETTABLEKS                       R5 R0 K12 ["_pending"]
      175 SETTABLEKS                       R6 R0 K13 ["_pendingOrder"]
      177 SETTABLEKS                       R7 R0 K14 ["_applyingValues"]
      179 SETTABLEKS                       R8 R0 K15 ["_awaitingPresentation"]
      181 SETTABLEKS                       R9 R0 K21 ["_deferred"]
      183 SETTABLEKS                       R10 R0 K22 ["_numericPrecisions"]
      185 MOVE                             R13 R11
      186 LOADNIL                          R14
      187 LOADNIL                          R15
      188 FORGPREP                         R13
      189 MOVE                             R20 R17
      190 NAMECALL                         R18 R0 K23 ["_notify"]
      192 CALL                             R18 2 0
      193 FORGLOOP                         R13 2 ; [-5]
      195 MOVE                             R13 R12
      196 LOADNIL                          R14
      197 LOADNIL                          R15
      198 FORGPREP                         R13
      199 GETUPVAL                         R18 4
      200 GETTABLEKS                       R18 R18 K24 ["safeCall"]
      202 LOADK                            R20 K25 ["%* values listener"]
      203 MOVE                             R22 R17
      204 NAMECALL                         R20 R20 K26 ["format"]
      206 CALL                             R20 2 1
      207 MOVE                             R19 R20
      208 GETTABLEKS                       R20 R0 K27 ["_onValuesChanged"]
      210 MOVE                             R21 R17
      211 LOADNIL                          R22
      212 CALL                             R18 4 0
      213 FORGLOOP                         R13 2 ; [-15]
      215 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_service"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 NAMECALL                         R0 R0 K1 ["NotifyControlChangedAsync"]
        9 CALL                             R0 5 -1
       10 RETURN                           R0 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["_destroyed"]
       12 JUMPIF                           R2 ; [+16]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["_generations"]
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R2 R3 R4
       18 GETUPVAL                         R3 4
       19 JUMPIFNOTEQ                      R2 R3 ; [+9]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["_operationIds"]
       24 GETUPVAL                         R4 1
       25 GETTABLE                         R2 R3 R4
       26 GETUPVAL                         R3 5
       27 JUMPIFEQ                         R2 R3 ; [+2]
       29 RETURN                           R0 0
       30 JUMPIF                           R0 ; [+23]
       31 GETIMPORT                        R2 K6 [warn]
       33 LOADK                            R4 K7 ["Device Simulator control change failed for %*/%*: %*"]
       34 GETUPVAL                         R6 1
       35 GETUPVAL                         R7 2
       36 GETUPVAL                         R8 6
       37 GETTABLEKS                       R8 R8 K8 ["formatError"]
       39 MOVE                             R9 R1
       40 CALL                             R8 1 1
       41 NAMECALL                         R4 R4 K9 ["format"]
       43 CALL                             R4 4 1
       44 MOVE                             R3 R4
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 0
       47 GETUPVAL                         R4 1
       48 GETUPVAL                         R5 2
       49 GETUPVAL                         R6 7
       50 NAMECALL                         R2 R2 K10 ["_setValue"]
       52 CALL                             R2 4 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R2 8
       55 MOVE                             R3 R1
       56 CALL                             R2 1 1
       57 JUMPIFNOTEQKNIL                  R2 ; [+19]
       59 GETIMPORT                        R3 K6 [warn]
       61 LOADK                            R5 K11 ["Device Simulator control change for %*/%* returned an invalid result"]
       62 GETUPVAL                         R7 1
       63 GETUPVAL                         R8 2
       64 NAMECALL                         R5 R5 K9 ["format"]
       66 CALL                             R5 3 1
       67 MOVE                             R4 R5
       68 CALL                             R3 1 0
       69 GETUPVAL                         R3 0
       70 GETUPVAL                         R5 1
       71 GETUPVAL                         R6 2
       72 GETUPVAL                         R7 7
       73 NAMECALL                         R3 R3 K10 ["_setValue"]
       75 CALL                             R3 4 0
       76 RETURN                           R0 0
       77 GETTABLEKS                       R3 R2 K12 ["Applied"]
       79 JUMPIF                           R3 ; [+17]
       80 GETUPVAL                         R3 0
       81 GETUPVAL                         R5 1
       82 GETUPVAL                         R6 2
       83 GETUPVAL                         R7 7
       84 NAMECALL                         R3 R3 K10 ["_setValue"]
       86 CALL                             R3 4 0
       87 GETUPVAL                         R3 0
       88 GETTABLEKS                       R3 R3 K13 ["_onStaleGeneration"]
       90 JUMPIFNOT                        R3 ; [+5]
       91 GETUPVAL                         R3 0
       92 GETTABLEKS                       R3 R3 K13 ["_onStaleGeneration"]
       94 GETUPVAL                         R4 1
       95 CALL                             R3 1 0
       96 RETURN                           R0 0
       97 GETUPVAL                         R3 0
       98 GETUPVAL                         R5 1
       99 GETTABLEKS                       R6 R2 K14 ["Values"]
      101 NAMECALL                         R3 R3 K15 ["_applyPatch"]
      103 CALL                             R3 3 0
      104 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R5 0 1
        4 JUMPIF                           R5 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R5 R0 K1 ["_destroyed"]
        8 JUMPIFNOT                        R5 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R6 R0 K2 ["_generations"]
       12 GETTABLE                         R5 R6 R1
       13 GETTABLEKS                       R7 R0 K3 ["_values"]
       15 GETTABLE                         R6 R7 R1
       16 JUMPIFEQKNIL                     R5 ; [+3]
       18 JUMPIFNOTEQKNIL                  R6 ; [+2]
       20 RETURN                           R0 0
       21 MOVE                             R9 R1
       22 NAMECALL                         R7 R0 K4 ["IsDeferred"]
       24 CALL                             R7 2 1
       25 JUMPIFNOT                        R7 ; [+8]
       26 MOVE                             R9 R1
       27 MOVE                             R10 R2
       28 MOVE                             R11 R3
       29 MOVE                             R12 R4
       30 NAMECALL                         R7 R0 K5 ["_stageValue"]
       32 CALL                             R7 5 0
       33 RETURN                           R0 0
       34 GETTABLE                         R7 R6 R2
       35 GETTABLEKS                       R11 R0 K8 ["_operationIds"]
       37 GETTABLE                         R10 R11 R1
       38 ORK                              R9 R10 K7 [0]
       39 ADDK                             R8 R9 K6 [1]
       40 GETTABLEKS                       R9 R0 K8 ["_operationIds"]
       42 SETTABLE                         R8 R9 R1
       43 MOVE                             R11 R1
       44 MOVE                             R12 R2
       45 MOVE                             R13 R3
       46 NAMECALL                         R9 R0 K9 ["_setValue"]
       48 CALL                             R9 4 0
       49 GETTABLEKS                       R9 R0 K10 ["_spawn"]
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          UPVAL U2
       61 CALL                             R9 1 0
       62 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R5 0 1
        4 JUMPIF                           R5 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R5 K3 [table.clone]
        8 GETTABLEKS                       R7 R0 K4 ["_pending"]
       10 GETTABLE                         R6 R7 R1
       11 JUMPIF                           R6 ; [+2]
       12 NEWTABLE                         R6 0 0
       14 CALL                             R5 1 1
       15 NEWTABLE                         R6 0 0
       17 GETTABLEKS                       R10 R0 K5 ["_pendingOrder"]
       19 GETTABLE                         R7 R10 R1
       20 JUMPIF                           R7 ; [+2]
       21 NEWTABLE                         R7 0 0
       23 LOADNIL                          R8
       24 LOADNIL                          R9
       25 FORGPREP                         R7
       26 JUMPIFEQ                         R11 R2 ; [+8]
       28 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       30 MOVE                             R13 R6
       31 MOVE                             R14 R11
       32 GETIMPORT                        R12 K7 [table.insert]
       34 CALL                             R12 2 0
       35 FORGLOOP                         R7 2 ; [-10]
       37 JUMPIF                           R4 ; [+19]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R10 R0 K8 ["_values"]
       41 GETTABLE                         R9 R10 R1
       42 GETTABLE                         R8 R9 R2
       43 MOVE                             R9 R3
       44 GETTABLEKS                       R11 R0 K9 ["_numericPrecisions"]
       46 GETTABLE                         R10 R11 R1
       47 JUMPIFNOT                        R10 ; [+4]
       48 GETTABLEKS                       R12 R0 K9 ["_numericPrecisions"]
       50 GETTABLE                         R11 R12 R1
       51 GETTABLE                         R10 R11 R2
       52 CALL                             R7 3 1
       53 JUMPIFNOT                        R7 ; [+3]
       54 LOADNIL                          R7
       55 SETTABLE                         R7 R5 R2
       56 JUMP                             ; [+8]
       57 SETTABLE                         R3 R5 R2
       58 FASTCALL2                        TABLE_INSERT R6 R2 ; [+5]
       60 MOVE                             R8 R6
       61 MOVE                             R9 R2
       62 GETIMPORT                        R7 K7 [table.insert]
       64 CALL                             R7 2 0
       65 GETTABLEKS                       R7 R0 K4 ["_pending"]
       67 GETIMPORT                        R9 K11 [next]
       69 MOVE                             R10 R5
       70 CALL                             R9 1 1
       71 JUMPIFEQKNIL                     R9 ; [+3]
       73 MOVE                             R8 R5
       74 JUMP                             ; [+1]
       75 LOADNIL                          R8
       76 SETTABLE                         R8 R7 R1
       77 GETTABLEKS                       R7 R0 K5 ["_pendingOrder"]
       79 LENGTH                           R9 R6
       80 LOADN                            R10 0
       81 JUMPIFNOTLT                      R10 R9 ; [+3]
       83 MOVE                             R8 R6
       84 JUMP                             ; [+1]
       85 LOADNIL                          R8
       86 SETTABLE                         R8 R7 R1
       87 MOVE                             R9 R1
       88 NAMECALL                         R7 R0 K12 ["_notify"]
       90 CALL                             R7 2 0
       91 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R5 R0 K0 ["_values"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIFNOTEQKNIL                  R4 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R5 K3 [table.clone]
        8 MOVE                             R6 R4
        9 CALL                             R5 1 1
       10 SETTABLE                         R3 R5 R2
       11 GETTABLEKS                       R6 R0 K0 ["_values"]
       13 SETTABLE                         R5 R6 R1
       14 MOVE                             R8 R1
       15 NAMECALL                         R6 R0 K4 ["_notify"]
       17 CALL                             R6 2 0
       18 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R2
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["ControlId"]
        8 GETTABLEKS                       R10 R8 K1 ["Value"]
       10 SETTABLE                         R10 R3 R9
       11 FORGLOOP                         R4 2 ; [-6]
       13 GETTABLEKS                       R4 R0 K2 ["_values"]
       15 SETTABLE                         R3 R4 R1
       16 MOVE                             R6 R1
       17 NAMECALL                         R4 R0 K3 ["_notify"]
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["_values"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["safeCall"]
        9 LOADK                            R4 K2 ["%* values listener"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 GETTABLEKS                       R4 R0 K4 ["_onValuesChanged"]
       17 MOVE                             R5 R1
       18 MOVE                             R8 R1
       19 NAMECALL                         R6 R0 K5 ["GetValues"]
       21 CALL                             R6 2 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K1 ["_pending"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R0 K1 ["_pending"]
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R2 R1
       16 GETTABLEKS                       R2 R0 K2 ["_pendingOrder"]
       18 LOADNIL                          R3
       19 SETTABLE                         R3 R2 R1
       20 MOVE                             R4 R1
       21 NAMECALL                         R2 R0 K3 ["_notify"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_service"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 NAMECALL                         R0 R0 K1 ["NotifyControlChangedAsync"]
        9 CALL                             R0 5 -1
       10 RETURN                           R0 -1

PROTO_23:
        0 LOADNIL                          R0
        1 LOADB                            R1 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 1
        7 GETTABLE                         R7 R8 R6
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R8 R8 K0 ["_destroyed"]
       11 JUMPIFNOT                        R8 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R9 2
       14 GETTABLEKS                       R9 R9 K1 ["_generations"]
       16 GETUPVAL                         R10 3
       17 GETTABLE                         R8 R9 R10
       18 GETUPVAL                         R9 4
       19 JUMPIFNOTEQ                      R8 R9 ; [+88]
       21 JUMPIFEQKNIL                     R7 ; [+84]
       23 GETIMPORT                        R8 K3 [pcall]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R6
       29 CAPTURE                          VAL R7
       30 CAPTURE                          UPVAL U4
       31 CALL                             R8 1 2
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R10 R10 K0 ["_destroyed"]
       35 JUMPIF                           R10 ; [+72]
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R11 R11 K1 ["_generations"]
       39 GETUPVAL                         R12 3
       40 GETTABLE                         R10 R11 R12
       41 GETUPVAL                         R11 4
       42 JUMPIFNOTEQ                      R10 R11 ; [+65]
       44 JUMPIF                           R8 ; [+24]
       45 GETIMPORT                        R10 K5 [warn]
       47 LOADK                            R12 K6 ["Device Simulator apply failed for %*/%*: %*"]
       48 GETUPVAL                         R14 3
       49 MOVE                             R15 R6
       50 GETUPVAL                         R16 5
       51 GETTABLEKS                       R16 R16 K7 ["formatError"]
       53 MOVE                             R17 R9
       54 CALL                             R16 1 1
       55 NAMECALL                         R12 R12 K8 ["format"]
       57 CALL                             R12 4 1
       58 MOVE                             R11 R12
       59 CALL                             R10 1 0
       60 LOADB                            R1 1
       61 GETUPVAL                         R10 2
       62 GETUPVAL                         R12 3
       63 MOVE                             R13 R6
       64 MOVE                             R14 R7
       65 NAMECALL                         R10 R10 K9 ["_restageValue"]
       67 CALL                             R10 4 0
       68 JUMP                             ; [+37]
       69 GETUPVAL                         R10 6
       70 MOVE                             R11 R9
       71 CALL                             R10 1 1
       72 JUMPIFNOTEQKNIL                  R10 ; [+20]
       74 GETIMPORT                        R11 K5 [warn]
       76 LOADK                            R13 K10 ["Device Simulator apply for %*/%* returned an invalid result"]
       77 GETUPVAL                         R15 3
       78 MOVE                             R16 R6
       79 NAMECALL                         R13 R13 K8 ["format"]
       81 CALL                             R13 3 1
       82 MOVE                             R12 R13
       83 CALL                             R11 1 0
       84 LOADB                            R1 1
       85 GETUPVAL                         R11 2
       86 GETUPVAL                         R13 3
       87 MOVE                             R14 R6
       88 MOVE                             R15 R7
       89 NAMECALL                         R11 R11 K9 ["_restageValue"]
       91 CALL                             R11 4 0
       92 JUMP                             ; [+13]
       93 GETTABLEKS                       R11 R10 K11 ["Applied"]
       95 JUMPIF                           R11 ; [+3]
       96 GETTABLEKS                       R0 R10 K12 ["Generation"]
       98 JUMP                             ; [+9]
       99 GETUPVAL                         R11 2
      100 GETUPVAL                         R13 3
      101 GETTABLEKS                       R14 R10 K13 ["Values"]
      103 NAMECALL                         R11 R11 K14 ["_applyPatch"]
      105 CALL                             R11 3 0
      106 FORGLOOP                         R2 2 ; [-101]
      108 GETUPVAL                         R2 2
      109 GETTABLEKS                       R2 R2 K0 ["_destroyed"]
      111 JUMPIFNOT                        R2 ; [+1]
      112 RETURN                           R0 0
      113 GETUPVAL                         R4 2
      114 GETTABLEKS                       R4 R4 K1 ["_generations"]
      116 GETUPVAL                         R5 3
      117 GETTABLE                         R3 R4 R5
      118 GETUPVAL                         R4 4
      119 JUMPIFNOTEQ                      R3 R4 ; [+2]
      121 LOADB                            R2 0 +1
      122 LOADB                            R2 1
      123 JUMPIFNOTEQKNIL                  R0 ; [+9]
      125 JUMPIF                           R2 ; [+7]
      126 JUMPIF                           R1 ; [+6]
      127 GETUPVAL                         R3 2
      128 GETUPVAL                         R5 3
      129 NAMECALL                         R3 R3 K15 ["HasPendingChanges"]
      131 CALL                             R3 2 1
      132 JUMPIFNOT                        R3 ; [+18]
      133 GETUPVAL                         R3 2
      134 GETTABLEKS                       R3 R3 K16 ["_applyingValues"]
      136 GETUPVAL                         R4 3
      137 LOADNIL                          R5
      138 SETTABLE                         R5 R3 R4
      139 GETUPVAL                         R3 2
      140 GETTABLEKS                       R3 R3 K17 ["_awaitingPresentation"]
      142 GETUPVAL                         R4 3
      143 LOADNIL                          R5
      144 SETTABLE                         R5 R3 R4
      145 GETUPVAL                         R3 2
      146 GETUPVAL                         R5 3
      147 NAMECALL                         R3 R3 K18 ["_notify"]
      149 CALL                             R3 2 0
      150 JUMP                             ; [+36]
      151 GETUPVAL                         R3 2
      152 GETTABLEKS                       R3 R3 K17 ["_awaitingPresentation"]
      154 GETUPVAL                         R4 3
      155 LOADB                            R5 1
      156 SETTABLE                         R5 R3 R4
      157 GETUPVAL                         R3 2
      158 GETUPVAL                         R5 3
      159 NAMECALL                         R3 R3 K18 ["_notify"]
      161 CALL                             R3 2 0
      162 GETUPVAL                         R3 5
      163 GETTABLEKS                       R3 R3 K19 ["safeCall"]
      165 LOADK                            R5 K20 ["%* apply completion"]
      166 GETUPVAL                         R7 3
      167 NAMECALL                         R5 R5 K8 ["format"]
      169 CALL                             R5 2 1
      170 MOVE                             R4 R5
      171 GETUPVAL                         R5 2
      172 GETTABLEKS                       R5 R5 K21 ["_onApplyCompleted"]
      174 GETUPVAL                         R6 3
      175 CALL                             R3 3 1
      176 GETUPVAL                         R4 2
      177 GETTABLEKS                       R4 R4 K21 ["_onApplyCompleted"]
      179 JUMPIFEQKNIL                     R4 ; [+2]
      181 JUMPIF                           R3 ; [+5]
      182 GETUPVAL                         R4 2
      183 GETUPVAL                         R6 3
      184 NAMECALL                         R4 R4 K22 ["AcknowledgePresentation"]
      186 CALL                             R4 2 0
      187 JUMPIFEQKNIL                     R0 ; [+10]
      189 GETUPVAL                         R3 2
      190 GETTABLEKS                       R3 R3 K23 ["_onStaleGeneration"]
      192 JUMPIFNOT                        R3 ; [+5]
      193 GETUPVAL                         R3 2
      194 GETTABLEKS                       R3 R3 K23 ["_onStaleGeneration"]
      196 GETUPVAL                         R4 3
      197 CALL                             R3 1 0
      198 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["_destroyed"]
        8 JUMPIF                           R2 ; [+9]
        9 GETTABLEKS                       R3 R0 K2 ["_applyingValues"]
       11 GETTABLE                         R2 R3 R1
       12 JUMPIFEQKNIL                     R2 ; [+6]
       14 GETTABLEKS                       R3 R0 K3 ["_awaitingPresentation"]
       16 GETTABLE                         R2 R3 R1
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R3 R0 K4 ["_pending"]
       21 GETTABLE                         R2 R3 R1
       22 GETTABLEKS                       R4 R0 K5 ["_pendingOrder"]
       24 GETTABLE                         R3 R4 R1
       25 GETTABLEKS                       R5 R0 K6 ["_generations"]
       27 GETTABLE                         R4 R5 R1
       28 JUMPIFEQKNIL                     R2 ; [+5]
       30 JUMPIFEQKNIL                     R3 ; [+3]
       32 JUMPIFNOTEQKNIL                  R4 ; [+2]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R5 R0 K4 ["_pending"]
       37 LOADNIL                          R6
       38 SETTABLE                         R6 R5 R1
       39 GETTABLEKS                       R5 R0 K5 ["_pendingOrder"]
       41 LOADNIL                          R6
       42 SETTABLE                         R6 R5 R1
       43 GETTABLEKS                       R5 R0 K2 ["_applyingValues"]
       45 GETIMPORT                        R6 K9 [table.clone]
       47 MOVE                             R7 R2
       48 CALL                             R6 1 1
       49 SETTABLE                         R6 R5 R1
       50 GETTABLEKS                       R5 R0 K3 ["_awaitingPresentation"]
       52 LOADNIL                          R6
       53 SETTABLE                         R6 R5 R1
       54 MOVE                             R7 R1
       55 NAMECALL                         R5 R0 K10 ["_notify"]
       57 CALL                             R5 2 0
       58 GETTABLEKS                       R5 R0 K11 ["_spawn"]
       60 NEWCLOSURE                       R6 P0
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R4
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          UPVAL U2
       68 CALL                             R5 1 0
       69 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K1 ["_awaitingPresentation"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R0 K1 ["_awaitingPresentation"]
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R2 R1
       15 GETTABLEKS                       R2 R0 K2 ["_applyingValues"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R1
       19 MOVE                             R4 R1
       20 NAMECALL                         R2 R0 K3 ["_notify"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R5 R0 K1 ["_pending"]
        8 GETTABLE                         R4 R5 R1
        9 JUMPIFEQKNIL                     R4 ; [+8]
       11 GETTABLEKS                       R6 R0 K1 ["_pending"]
       13 GETTABLE                         R5 R6 R1
       14 GETTABLE                         R4 R5 R2
       15 JUMPIFEQKNIL                     R4 ; [+2]
       17 RETURN                           R0 0
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 MOVE                             R8 R3
       21 NAMECALL                         R4 R0 K2 ["_stageValue"]
       23 CALL                             R4 4 0
       24 RETURN                           R0 0

PROTO_27:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["_pending"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K2 ["_pendingOrder"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K3 ["_applyingValues"]
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K4 ["_awaitingPresentation"]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K5 ["_values"]
       23 NEWTABLE                         R1 0 0
       25 SETTABLEKS                       R1 R0 K6 ["_generations"]
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K7 ["_operationIds"]
       31 NEWTABLE                         R1 0 0
       33 SETTABLEKS                       R1 R0 K8 ["_deferred"]
       35 NEWTABLE                         R1 0 0
       37 SETTABLEKS                       R1 R0 K9 ["_numericPrecisions"]
       39 RETURN                           R0 0

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["controlAdapter"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["dispatch"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K9 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["Types"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K13 ["ControlType"]
       45 GETTABLEKS                       R6 R4 K14 ["ApplyMode"]
       47 NEWTABLE                         R7 32 0
       49 SETTABLEKS                       R7 R7 K15 ["__index"]
       51 DUPCLOSURE                       R8 K16 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 DUPCLOSURE                       R9 K17 [PROTO_1]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R9
       58 DUPCLOSURE                       R10 K18 [PROTO_2]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R10
       62 DUPCLOSURE                       R11 K19 [PROTO_3]
       63 DUPCLOSURE                       R12 K20 [PROTO_4]
       64 CAPTURE                          VAL R1
       65 DUPCLOSURE                       R13 K21 [PROTO_5]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R13 R7 K22 ["new"]
       70 DUPCLOSURE                       R13 K23 [PROTO_6]
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R13 R7 K24 ["GetValues"]
       74 DUPCLOSURE                       R13 K25 [PROTO_7]
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R13 R7 K26 ["IsDeferred"]
       78 DUPCLOSURE                       R13 K27 [PROTO_8]
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R13 R7 K28 ["HasPendingChanges"]
       82 DUPCLOSURE                       R13 K29 [PROTO_9]
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R13 R7 K30 ["HasPresentationOverlay"]
       86 DUPCLOSURE                       R13 K31 [PROTO_10]
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R13 R7 K32 ["GetStagedPresentationValues"]
       90 DUPCLOSURE                       R13 K33 [PROTO_11]
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R13 R7 K34 ["IsAwaitingPresentation"]
       94 DUPCLOSURE                       R13 K35 [PROTO_12]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R11
       97 SETTABLEKS                       R13 R7 K36 ["ReconcileValues"]
       99 DUPCLOSURE                       R13 K37 [PROTO_13]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R3
      105 SETTABLEKS                       R13 R7 K38 ["SetRegistry"]
      107 DUPCLOSURE                       R13 K39 [PROTO_16]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R12
      111 SETTABLEKS                       R13 R7 K40 ["ChangeControl"]
      113 DUPCLOSURE                       R13 K41 [PROTO_17]
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R11
      116 SETTABLEKS                       R13 R7 K42 ["_stageValue"]
      118 DUPCLOSURE                       R13 K43 [PROTO_18]
      119 SETTABLEKS                       R13 R7 K44 ["_setValue"]
      121 DUPCLOSURE                       R13 K45 [PROTO_19]
      122 SETTABLEKS                       R13 R7 K46 ["_applyPatch"]
      124 DUPCLOSURE                       R13 K47 [PROTO_20]
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R13 R7 K48 ["_notify"]
      128 DUPCLOSURE                       R13 K49 [PROTO_21]
      129 CAPTURE                          VAL R1
      130 SETTABLEKS                       R13 R7 K50 ["DiscardPending"]
      132 DUPCLOSURE                       R13 K51 [PROTO_24]
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R12
      136 SETTABLEKS                       R13 R7 K52 ["ApplyPending"]
      138 DUPCLOSURE                       R13 K53 [PROTO_25]
      139 CAPTURE                          VAL R1
      140 SETTABLEKS                       R13 R7 K54 ["AcknowledgePresentation"]
      142 DUPCLOSURE                       R13 K55 [PROTO_26]
      143 CAPTURE                          VAL R1
      144 SETTABLEKS                       R13 R7 K56 ["_restageValue"]
      146 DUPCLOSURE                       R13 K57 [PROTO_27]
      147 SETTABLEKS                       R13 R7 K58 ["Destroy"]
      149 RETURN                           R7 1
