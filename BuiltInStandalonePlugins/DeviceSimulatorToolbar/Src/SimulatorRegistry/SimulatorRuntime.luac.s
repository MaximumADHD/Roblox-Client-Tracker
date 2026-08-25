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

PROTO_3:
        0 NEWTABLE                         R3 8 0
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
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K10 ["_values"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K11 ["_generations"]
       34 NEWTABLE                         R3 0 0
       36 SETTABLEKS                       R3 R2 K12 ["_operationIds"]
       38 LOADB                            R3 0
       39 SETTABLEKS                       R3 R2 K13 ["_destroyed"]
       41 RETURN                           R2 1

PROTO_4:
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
       24 GETTABLEKS                       R12 R10 K6 ["ControlId"]
       26 GETTABLE                         R11 R4 R12
       27 GETTABLEKS                       R12 R10 K7 ["Value"]
       29 JUMPIFEQ                         R11 R12 ; [+7]
       31 GETTABLEKS                       R11 R10 K6 ["ControlId"]
       33 GETTABLEKS                       R12 R10 K7 ["Value"]
       35 SETTABLE                         R12 R4 R11
       36 LOADB                            R5 1
       37 FORGLOOP                         R6 2 ; [-14]
       39 JUMPIFNOT                        R5 ; [+7]
       40 GETTABLEKS                       R6 R0 K2 ["_values"]
       42 SETTABLE                         R4 R6 R1
       43 MOVE                             R8 R1
       44 NAMECALL                         R6 R0 K8 ["_notify"]
       46 CALL                             R6 2 0
       47 RETURN                           R0 0

PROTO_5:
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
       18 MOVE                             R6 R1
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLEKS                       R11 R10 K2 ["Name"]
       24 GETTABLEKS                       R12 R10 K3 ["Generation"]
       26 SETTABLE                         R12 R3 R11
       27 LOADB                            R12 0
       28 GETTABLEKS                       R14 R0 K4 ["_generations"]
       30 GETTABLE                         R13 R14 R11
       31 GETTABLEKS                       R14 R10 K3 ["Generation"]
       33 JUMPIFNOTEQ                      R13 R14 ; [+4]
       35 GETTABLEKS                       R13 R0 K5 ["_values"]
       37 GETTABLE                         R12 R13 R11
       38 JUMPIFNOT                        R12 ; [+7]
       39 SETTABLE                         R12 R2 R11
       40 GETTABLEKS                       R15 R0 K7 ["_operationIds"]
       42 GETTABLE                         R14 R15 R11
       43 ORK                              R13 R14 K6 [0]
       44 SETTABLE                         R13 R4 R11
       45 JUMP                             ; [+34]
       46 NEWTABLE                         R13 0 0
       48 GETTABLEKS                       R14 R10 K8 ["Config"]
       50 JUMPIFEQKNIL                     R14 ; [+19]
       52 GETTABLEKS                       R15 R10 K8 ["Config"]
       54 GETTABLEKS                       R15 R15 K9 ["Controls"]
       56 FASTCALL1                        TYPE R15 ; [+2]
       57 GETIMPORT                        R14 K11 [type]
       59 CALL                             R14 1 1
       60 JUMPIFNOTEQKS                    R14 K12 ["table"] ; [+9]
       62 GETUPVAL                         R14 1
       63 GETTABLEKS                       R15 R10 K8 ["Config"]
       65 GETTABLEKS                       R15 R15 K9 ["Controls"]
       67 LOADNIL                          R16
       68 MOVE                             R17 R13
       69 CALL                             R14 3 0
       70 SETTABLE                         R13 R2 R11
       71 LOADN                            R14 0
       72 SETTABLE                         R14 R4 R11
       73 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       75 MOVE                             R15 R5
       76 MOVE                             R16 R11
       77 GETIMPORT                        R14 K14 [table.insert]
       79 CALL                             R14 2 0
       80 FORGLOOP                         R6 2 ; [-59]
       82 NEWTABLE                         R6 0 0
       84 GETTABLEKS                       R7 R0 K5 ["_values"]
       86 LOADNIL                          R8
       87 LOADNIL                          R9
       88 FORGPREP                         R7
       89 GETTABLE                         R12 R2 R10
       90 JUMPIFNOTEQKNIL                  R12 ; [+8]
       92 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       94 MOVE                             R13 R6
       95 MOVE                             R14 R10
       96 GETIMPORT                        R12 K14 [table.insert]
       98 CALL                             R12 2 0
       99 FORGLOOP                         R7 1 ; [-11]
      101 SETTABLEKS                       R2 R0 K5 ["_values"]
      103 SETTABLEKS                       R3 R0 K4 ["_generations"]
      105 SETTABLEKS                       R4 R0 K7 ["_operationIds"]
      107 MOVE                             R7 R5
      108 LOADNIL                          R8
      109 LOADNIL                          R9
      110 FORGPREP                         R7
      111 MOVE                             R14 R11
      112 NAMECALL                         R12 R0 K15 ["_notify"]
      114 CALL                             R12 2 0
      115 FORGLOOP                         R7 2 ; [-5]
      117 MOVE                             R7 R6
      118 LOADNIL                          R8
      119 LOADNIL                          R9
      120 FORGPREP                         R7
      121 GETUPVAL                         R12 2
      122 GETTABLEKS                       R12 R12 K16 ["safeCall"]
      124 LOADK                            R14 K17 ["%* values listener"]
      125 MOVE                             R16 R11
      126 NAMECALL                         R14 R14 K18 ["format"]
      128 CALL                             R14 2 1
      129 MOVE                             R13 R14
      130 GETTABLEKS                       R14 R0 K19 ["_onValuesChanged"]
      132 MOVE                             R15 R11
      133 LOADNIL                          R16
      134 CALL                             R12 4 0
      135 FORGLOOP                         R7 2 ; [-15]
      137 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_service"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 NAMECALL                         R0 R0 K1 ["NotifyControlChangedAsync"]
        9 CALL                             R0 5 -1
       10 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R4 R0 K1 ["_destroyed"]
        8 JUMPIFNOT                        R4 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R5 R0 K2 ["_generations"]
       12 GETTABLE                         R4 R5 R1
       13 GETTABLEKS                       R6 R0 K3 ["_values"]
       15 GETTABLE                         R5 R6 R1
       16 JUMPIFEQKNIL                     R4 ; [+3]
       18 JUMPIFNOTEQKNIL                  R5 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLE                         R6 R5 R2
       22 GETTABLEKS                       R10 R0 K6 ["_operationIds"]
       24 GETTABLE                         R9 R10 R1
       25 ORK                              R8 R9 K5 [0]
       26 ADDK                             R7 R8 K4 [1]
       27 GETTABLEKS                       R8 R0 K6 ["_operationIds"]
       29 SETTABLE                         R7 R8 R1
       30 MOVE                             R10 R1
       31 MOVE                             R11 R2
       32 MOVE                             R12 R3
       33 NAMECALL                         R8 R0 K7 ["_setValue"]
       35 CALL                             R8 4 0
       36 GETTABLEKS                       R8 R0 K8 ["_spawn"]
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R7
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R6
       47 CAPTURE                          UPVAL U2
       48 CALL                             R8 1 0
       49 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_values"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["safeCall"]
        9 LOADK                            R5 K2 ["%* values listener"]
       10 MOVE                             R7 R1
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 GETTABLEKS                       R5 R0 K4 ["_onValuesChanged"]
       17 MOVE                             R6 R1
       18 MOVE                             R7 R2
       19 CALL                             R3 4 0
       20 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["_values"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K2 ["_generations"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K3 ["_operationIds"]
       15 RETURN                           R0 0

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
       45 NEWTABLE                         R6 16 0
       47 SETTABLEKS                       R6 R6 K14 ["__index"]
       49 DUPCLOSURE                       R7 K15 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R8 K16 [PROTO_1]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R8
       56 DUPCLOSURE                       R9 K17 [PROTO_2]
       57 CAPTURE                          VAL R1
       58 DUPCLOSURE                       R10 K18 [PROTO_3]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R10 R6 K19 ["new"]
       63 DUPCLOSURE                       R10 K20 [PROTO_4]
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R10 R6 K21 ["ReconcileValues"]
       67 DUPCLOSURE                       R10 K22 [PROTO_5]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R10 R6 K23 ["SetRegistry"]
       73 DUPCLOSURE                       R10 K24 [PROTO_8]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R9
       77 SETTABLEKS                       R10 R6 K25 ["ChangeControl"]
       79 DUPCLOSURE                       R10 K26 [PROTO_9]
       80 SETTABLEKS                       R10 R6 K27 ["_setValue"]
       82 DUPCLOSURE                       R10 K28 [PROTO_10]
       83 SETTABLEKS                       R10 R6 K29 ["_applyPatch"]
       85 DUPCLOSURE                       R10 K30 [PROTO_11]
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R10 R6 K31 ["_notify"]
       89 DUPCLOSURE                       R10 K32 [PROTO_12]
       90 SETTABLEKS                       R10 R6 K33 ["Destroy"]
       92 RETURN                           R6 1
