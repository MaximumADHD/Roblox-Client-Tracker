PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["findDefaultPreset"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 JUMPIFNOTEQKNIL                  R1 ; [+3]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 DUPTABLE                         R2 K4 [{"controlId", "value"}]
       21 GETTABLEKS                       R3 R0 K2 ["controlId"]
       23 SETTABLEKS                       R3 R2 K2 ["controlId"]
       25 GETTABLEKS                       R3 R1 K5 ["Name"]
       27 SETTABLEKS                       R3 R2 K3 ["value"]
       29 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADB                            R1 0
        8 JUMPIFEQKNIL                     R0 ; [+9]
       10 GETTABLEKS                       R2 R0 K1 ["control"]
       12 GETTABLEKS                       R2 R2 K2 ["AllowUserSavedPresets"]
       14 JUMPIFEQKB                       R2 TRUE ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+3]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R1 1
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K1 ["find"]
       17 GETTABLEKS                       R7 R5 K2 ["Config"]
       19 GETTABLEKS                       R7 R7 K3 ["Controls"]
       21 CALL                             R6 1 1
       22 JUMPIFEQKNIL                     R6 ; [+4]
       24 GETTABLEKS                       R7 R5 K4 ["Name"]
       26 SETTABLE                         R6 R0 R7
       27 FORGLOOP                         R1 2 ; [-14]
       29 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["get"]
       13 CALL                             R1 0 -1
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 JUMPIFEQKNIL                     R2 ; [+33]
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R2 K1 ["HasPendingChanges"]
       13 CALL                             R3 2 1
       14 MOVE                             R6 R0
       15 NAMECALL                         R4 R2 K2 ["HasPresentationOverlay"]
       17 CALL                             R4 2 1
       18 JUMPIF                           R3 ; [+1]
       19 JUMPIFNOT                        R4 ; [+4]
       20 DUPTABLE                         R5 K4 [{"hasPendingChanges"}]
       21 SETTABLEKS                       R3 R5 K3 ["hasPendingChanges"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 GETUPVAL                         R6 2
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R5
       29 CALL                             R6 1 0
       30 GETUPVAL                         R6 3
       31 JUMPIFEQKNIL                     R6 ; [+10]
       33 GETUPVAL                         R6 3
       34 MOVE                             R8 R0
       35 MOVE                             R11 R0
       36 NAMECALL                         R9 R2 K5 ["GetStagedPresentationValues"]
       38 CALL                             R9 2 -1
       39 NAMECALL                         R6 R6 K6 ["SetStagedValues"]
       41 CALL                             R6 -1 0
       42 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["RefreshRegistry"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["RefreshDynamicState"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["SetRegistry"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 JUMPIFEQKNIL                     R3 ; [+12]
        5 GETTABLEKS                       R4 R1 K1 ["Values"]
        7 JUMPIFEQKNIL                     R4 ; [+8]
        9 JUMPIF                           R2 ; [+6]
       10 MOVE                             R6 R0
       11 GETTABLEKS                       R7 R1 K1 ["Values"]
       13 NAMECALL                         R4 R3 K2 ["ReconcileValues"]
       15 CALL                             R4 3 0
       16 GETUPVAL                         R4 1
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CALL                             R4 1 0
       21 JUMPIFEQKNIL                     R3 ; [+11]
       23 MOVE                             R6 R0
       24 NAMECALL                         R4 R3 K3 ["IsAwaitingPresentation"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+5]
       28 JUMPIF                           R2 ; [+4]
       29 MOVE                             R6 R0
       30 NAMECALL                         R4 R3 K4 ["AcknowledgePresentation"]
       32 CALL                             R4 2 0
       33 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K1 ["current"]
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+3]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 LOADNIL                          R0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K1 ["new"]
       16 GETUPVAL                         R2 1
       17 DUPTABLE                         R3 K5 [{"onValuesChanged", "onStaleGeneration", "onApplyCompleted"}]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          REF R0
       23 SETTABLEKS                       R4 R3 K2 ["onValuesChanged"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          REF R0
       27 SETTABLEKS                       R4 R3 K3 ["onStaleGeneration"]
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          REF R0
       31 SETTABLEKS                       R4 R3 K4 ["onApplyCompleted"]
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 4
       35 SETTABLEKS                       R1 R2 K6 ["current"]
       37 GETUPVAL                         R2 6
       38 GETTABLEKS                       R2 R2 K1 ["new"]
       40 GETUPVAL                         R3 1
       41 DUPTABLE                         R4 K9 [{"onRegistryChanged", "onDynamicStateChanged"}]
       42 NEWCLOSURE                       R5 P3
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R5 R4 K7 ["onRegistryChanged"]
       47 NEWCLOSURE                       R5 P4
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U8
       50 SETTABLEKS                       R5 R4 K8 ["onDynamicStateChanged"]
       52 CALL                             R2 2 1
       53 MOVE                             R0 R2
       54 NEWCLOSURE                       R2 P5
       55 CAPTURE                          REF R0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U4
       58 CLOSEUPVALS                      R0
       59 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["current"]
        9 JUMPIFEQKNIL                     R4 ; [+8]
       11 MOVE                             R7 R0
       12 MOVE                             R8 R1
       13 MOVE                             R9 R2
       14 MOVE                             R10 R3
       15 NAMECALL                         R5 R4 K2 ["ChangeControl"]
       17 CALL                             R5 5 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 JUMPIFEQKNIL                     R1 ; [+5]
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R1 K2 ["DiscardPending"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 1
        8 GETTABLE                         R2 R3 R0
        9 JUMPIFNOTEQKNIL                  R2 ; [+3]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K1 ["stageBuiltIn"]
       16 MOVE                             R4 R2
       17 MOVE                             R5 R1
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CALL                             R3 4 -1
       25 RETURN                           R3 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 1
        8 GETTABLE                         R2 R3 R0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["find"]
       12 GETUPVAL                         R4 3
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 CALL                             R3 3 1
       16 JUMPIFEQKNIL                     R2 ; [+29]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K2 ["isOptionName"]
       21 MOVE                             R5 R2
       22 MOVE                             R6 R1
       23 CALL                             R4 2 1
       24 JUMPIF                           R4 ; [+21]
       25 JUMPIFEQKNIL                     R3 ; [+20]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       30 CALL                             R5 0 1
       31 JUMPIF                           R5 ; [+2]
       32 LOADB                            R4 0
       33 JUMP                             ; [+11]
       34 LOADB                            R4 0
       35 JUMPIFEQKNIL                     R2 ; [+9]
       37 GETTABLEKS                       R5 R2 K3 ["control"]
       39 GETTABLEKS                       R5 R5 K4 ["AllowUserSavedPresets"]
       41 JUMPIFEQKB                       R5 TRUE ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 JUMPIF                           R4 ; [+2]
       46 LOADB                            R4 0
       47 RETURN                           R4 1
       48 GETUPVAL                         R4 4
       49 GETTABLEKS                       R4 R4 K5 ["stageSaved"]
       51 MOVE                             R5 R2
       52 MOVE                             R6 R1
       53 GETTABLEKS                       R7 R3 K6 ["values"]
       55 NEWCLOSURE                       R8 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R0
       58 NEWCLOSURE                       R9 P1
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R0
       61 CALL                             R4 5 -1
       62 RETURN                           R4 -1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R0
        8 JUMPIFEQKNIL                     R3 ; [+4]
       10 GETTABLEKS                       R4 R3 K1 ["controlId"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R4
       14 JUMPIFNOTEQ                      R1 R4 ; [+25]
       16 FASTCALL1                        TYPE R2 ; [+3]
       17 MOVE                             R6 R2
       18 GETIMPORT                        R5 K3 [type]
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+18]
       23 GETUPVAL                         R5 2
       24 MOVE                             R6 R0
       25 MOVE                             R7 R2
       26 CALL                             R5 2 1
       27 JUMPIF                           R5 ; [+5]
       28 GETUPVAL                         R5 3
       29 MOVE                             R6 R0
       30 MOVE                             R7 R2
       31 CALL                             R5 2 1
       32 JUMPIFNOT                        R5 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 4
       35 MOVE                             R6 R0
       36 MOVE                             R7 R1
       37 GETUPVAL                         R8 5
       38 CALL                             R5 3 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R5 4
       41 MOVE                             R6 R0
       42 MOVE                             R7 R1
       43 MOVE                             R8 R2
       44 CALL                             R5 3 0
       45 LOADB                            R5 0
       46 JUMPIFEQKNIL                     R3 ; [+8]
       48 GETTABLEKS                       R7 R3 K5 ["bundledControlIdSet"]
       50 GETTABLE                         R6 R7 R1
       51 JUMPIFEQKB                       R6 TRUE ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 GETUPVAL                         R6 6
       56 GETTABLEKS                       R6 R6 K6 ["current"]
       58 JUMPIFEQKNIL                     R6 ; [+14]
       60 MOVE                             R9 R0
       61 NAMECALL                         R7 R6 K7 ["IsDeferred"]
       63 CALL                             R7 2 1
       64 JUMPIFNOT                        R7 ; [+8]
       65 JUMPIFEQKNIL                     R4 ; [+7]
       67 JUMPIFNOT                        R5 ; [+5]
       68 GETUPVAL                         R7 4
       69 MOVE                             R8 R0
       70 MOVE                             R9 R4
       71 GETUPVAL                         R10 5
       72 CALL                             R7 3 0
       73 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 JUMPIFEQKNIL                     R1 ; [+5]
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R1 K2 ["ApplyPending"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R3 R0
        8 GETUPVAL                         R4 2
        9 GETTABLE                         R3 R4 R0
       10 GETUPVAL                         R4 3
       11 JUMPIFEQKNIL                     R4 ; [+39]
       13 JUMPIFEQKNIL                     R2 ; [+37]
       15 JUMPIFEQKNIL                     R3 ; [+35]
       17 JUMPIFEQKS                       R1 K1 [""] ; [+33]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K2 ["isReservedName"]
       22 MOVE                             R5 R1
       23 CALL                             R4 1 1
       24 JUMPIF                           R4 ; [+26]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K3 ["isOptionName"]
       28 MOVE                             R5 R2
       29 MOVE                             R6 R1
       30 CALL                             R4 2 1
       31 JUMPIF                           R4 ; [+19]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       35 CALL                             R5 0 1
       36 JUMPIF                           R5 ; [+2]
       37 LOADB                            R4 0
       38 JUMP                             ; [+11]
       39 LOADB                            R4 0
       40 JUMPIFEQKNIL                     R2 ; [+9]
       42 GETTABLEKS                       R5 R2 K4 ["control"]
       44 GETTABLEKS                       R5 R5 K5 ["AllowUserSavedPresets"]
       46 JUMPIFEQKB                       R5 TRUE ; [+2]
       48 LOADB                            R4 0 +1
       49 LOADB                            R4 1
       50 JUMPIF                           R4 ; [+1]
       51 RETURN                           R0 0
       52 GETUPVAL                         R4 4
       53 GETTABLEKS                       R4 R4 K6 ["capture"]
       55 MOVE                             R5 R2
       56 MOVE                             R6 R3
       57 CALL                             R4 2 1
       58 JUMPIFNOTEQKNIL                  R4 ; [+2]
       60 RETURN                           R0 0
       61 GETUPVAL                         R5 5
       62 GETTABLEKS                       R5 R5 K7 ["upsert"]
       64 GETUPVAL                         R6 6
       65 MOVE                             R7 R0
       66 MOVE                             R8 R1
       67 MOVE                             R9 R4
       68 CALL                             R5 4 1
       69 GETUPVAL                         R6 3
       70 GETTABLEKS                       R6 R6 K8 ["set"]
       72 MOVE                             R7 R5
       73 CALL                             R6 1 0
       74 GETUPVAL                         R6 7
       75 MOVE                             R7 R5
       76 CALL                             R6 1 0
       77 GETUPVAL                         R6 8
       78 MOVE                             R7 R0
       79 GETTABLEKS                       R8 R2 K9 ["controlId"]
       81 MOVE                             R9 R1
       82 LOADB                            R10 1
       83 CALL                             R6 4 0
       84 GETUPVAL                         R6 9
       85 MOVE                             R7 R0
       86 CALL                             R6 1 0
       87 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLE                         R1 R2 R0
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 GETUPVAL                         R4 3
       12 GETTABLE                         R3 R4 R0
       13 JUMPIFEQKNIL                     R1 ; [+4]
       15 GETTABLEKS                       R4 R1 K1 ["controlId"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 JUMPIFEQKNIL                     R4 ; [+5]
       21 JUMPIFEQKNIL                     R3 ; [+3]
       23 GETTABLE                         R5 R3 R4
       24 JUMP                             ; [+1]
       25 LOADNIL                          R5
       26 JUMPIFEQKNIL                     R1 ; [+23]
       28 FASTCALL1                        TYPE R5 ; [+3]
       29 MOVE                             R8 R5
       30 GETIMPORT                        R7 K3 [type]
       32 CALL                             R7 1 1
       33 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+16]
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K5 ["isOptionName"]
       38 MOVE                             R8 R1
       39 MOVE                             R9 R5
       40 CALL                             R7 2 1
       41 JUMPIF                           R7 ; [+8]
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K6 ["find"]
       45 GETUPVAL                         R7 6
       46 MOVE                             R8 R0
       47 MOVE                             R9 R5
       48 CALL                             R6 3 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R6
       51 GETUPVAL                         R7 7
       52 JUMPIFEQKNIL                     R7 ; [+24]
       54 JUMPIFEQKNIL                     R6 ; [+22]
       56 JUMPIFEQKNIL                     R4 ; [+20]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       61 CALL                             R8 0 1
       62 JUMPIF                           R8 ; [+2]
       63 LOADB                            R7 0
       64 JUMP                             ; [+11]
       65 LOADB                            R7 0
       66 JUMPIFEQKNIL                     R1 ; [+9]
       68 GETTABLEKS                       R8 R1 K7 ["control"]
       70 GETTABLEKS                       R8 R8 K8 ["AllowUserSavedPresets"]
       72 JUMPIFEQKB                       R8 TRUE ; [+2]
       74 LOADB                            R7 0 +1
       75 LOADB                            R7 1
       76 JUMPIF                           R7 ; [+1]
       77 RETURN                           R0 0
       78 GETUPVAL                         R7 5
       79 GETTABLEKS                       R7 R7 K9 ["remove"]
       81 GETUPVAL                         R8 6
       82 MOVE                             R9 R0
       83 GETTABLEKS                       R10 R6 K10 ["name"]
       85 CALL                             R7 3 1
       86 GETUPVAL                         R8 7
       87 GETTABLEKS                       R8 R8 K11 ["set"]
       89 MOVE                             R9 R7
       90 CALL                             R8 1 0
       91 GETUPVAL                         R8 8
       92 MOVE                             R9 R7
       93 CALL                             R8 1 0
       94 JUMPIFEQKNIL                     R2 ; [+19]
       96 GETTABLEKS                       R9 R2 K12 ["value"]
       98 FASTCALL1                        TYPE R9 ; [+2]
       99 GETIMPORT                        R8 K3 [type]
      101 CALL                             R8 1 1
      102 JUMPIFNOTEQKS                    R8 K4 ["string"] ; [+11]
      104 GETUPVAL                         R8 9
      105 MOVE                             R9 R0
      106 GETTABLEKS                       R10 R2 K12 ["value"]
      108 CALL                             R8 2 1
      109 JUMPIFNOT                        R8 ; [+4]
      110 GETUPVAL                         R8 10
      111 MOVE                             R9 R0
      112 CALL                             R8 1 0
      113 RETURN                           R0 0
      114 GETUPVAL                         R8 11
      115 MOVE                             R9 R0
      116 CALL                             R8 1 0
      117 JUMPIFEQKNIL                     R2 ; [+9]
      119 GETUPVAL                         R8 12
      120 MOVE                             R9 R0
      121 GETTABLEKS                       R10 R2 K1 ["controlId"]
      123 GETTABLEKS                       R11 R2 K12 ["value"]
      125 CALL                             R8 3 0
      126 JUMP                             ; [+5]
      127 GETUPVAL                         R8 12
      128 MOVE                             R9 R0
      129 MOVE                             R10 R4
      130 GETUPVAL                         R11 13
      131 CALL                             R8 3 0
      132 GETUPVAL                         R8 10
      133 MOVE                             R9 R0
      134 CALL                             R8 1 0
      135 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+3]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R1 1
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K1 ["Name"]
       16 GETUPVAL                         R8 2
       17 GETTABLE                         R7 R8 R6
       18 JUMPIF                           R7 ; [+2]
       19 NEWTABLE                         R7 0 0
       21 GETUPVAL                         R9 3
       22 GETTABLE                         R8 R9 R6
       23 GETUPVAL                         R9 4
       24 MOVE                             R10 R8
       25 CALL                             R9 1 1
       26 JUMPIFEQKNIL                     R8 ; [+4]
       28 GETTABLEKS                       R10 R8 K2 ["controlId"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R10
       32 JUMPIFEQKNIL                     R10 ; [+3]
       34 GETTABLE                         R11 R7 R10
       35 JUMP                             ; [+1]
       36 LOADNIL                          R11
       37 GETUPVAL                         R13 5
       38 GETTABLE                         R12 R13 R6
       39 LOADB                            R13 0
       40 GETUPVAL                         R14 6
       41 JUMPIFEQKNIL                     R14 ; [+19]
       43 GETUPVAL                         R14 0
       44 GETTABLEKS                       R14 R14 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       46 CALL                             R14 0 1
       47 JUMPIF                           R14 ; [+2]
       48 LOADB                            R13 0
       49 JUMP                             ; [+11]
       50 LOADB                            R13 0
       51 JUMPIFEQKNIL                     R8 ; [+9]
       53 GETTABLEKS                       R14 R8 K3 ["control"]
       55 GETTABLEKS                       R14 R14 K4 ["AllowUserSavedPresets"]
       57 JUMPIFEQKB                       R14 TRUE ; [+2]
       59 LOADB                            R13 0 +1
       60 LOADB                            R13 1
       61 NEWTABLE                         R14 0 0
       63 JUMPIFNOT                        R13 ; [+25]
       64 JUMPIFEQKNIL                     R8 ; [+24]
       66 GETUPVAL                         R15 7
       67 GETTABLEKS                       R15 R15 K5 ["names"]
       69 GETUPVAL                         R16 8
       70 MOVE                             R17 R6
       71 CALL                             R15 2 3
       72 FORGPREP                         R15
       73 GETUPVAL                         R20 9
       74 GETTABLEKS                       R20 R20 K6 ["isOptionName"]
       76 MOVE                             R21 R8
       77 MOVE                             R22 R19
       78 CALL                             R20 2 1
       79 JUMPIF                           R20 ; [+7]
       80 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
       82 MOVE                             R21 R14
       83 MOVE                             R22 R19
       84 GETIMPORT                        R20 K9 [table.insert]
       86 CALL                             R20 2 0
       87 FORGLOOP                         R15 2 ; [-15]
       89 JUMPIFNOT                        R13 ; [+24]
       90 JUMPIFEQKNIL                     R8 ; [+23]
       92 FASTCALL1                        TYPE R11 ; [+3]
       93 MOVE                             R17 R11
       94 GETIMPORT                        R16 K11 [type]
       96 CALL                             R16 1 1
       97 JUMPIFNOTEQKS                    R16 K12 ["string"] ; [+16]
       99 GETUPVAL                         R16 9
      100 GETTABLEKS                       R16 R16 K6 ["isOptionName"]
      102 MOVE                             R17 R8
      103 MOVE                             R18 R11
      104 CALL                             R16 2 1
      105 JUMPIF                           R16 ; [+8]
      106 GETUPVAL                         R15 7
      107 GETTABLEKS                       R15 R15 K13 ["find"]
      109 GETUPVAL                         R16 8
      110 MOVE                             R17 R6
      111 MOVE                             R18 R11
      112 CALL                             R15 3 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R15
      115 DUPTABLE                         R16 K24 [{"values", "dynamicState", "hasPendingChanges", "isNotAtDefault", "presetControlId", "savedPresetNames", "reservedPresetNames", "canSave", "allowsUserSavedPresets", "activeSavedPreset"}]
      116 SETTABLEKS                       R7 R16 K14 ["values"]
      118 GETUPVAL                         R18 10
      119 GETTABLE                         R17 R18 R6
      120 SETTABLEKS                       R17 R16 K15 ["dynamicState"]
      122 LOADB                            R17 0
      123 JUMPIFEQKNIL                     R12 ; [+3]
      125 GETTABLEKS                       R17 R12 K16 ["hasPendingChanges"]
      127 SETTABLEKS                       R17 R16 K16 ["hasPendingChanges"]
      129 LOADB                            R17 0
      130 JUMPIFEQKNIL                     R9 ; [+15]
      132 LOADB                            R17 1
      133 GETUPVAL                         R19 2
      134 GETTABLE                         R18 R19 R6
      135 JUMPIFEQKNIL                     R18 ; [+10]
      137 GETTABLEKS                       R19 R9 K2 ["controlId"]
      139 GETTABLE                         R18 R7 R19
      140 GETTABLEKS                       R19 R9 K25 ["value"]
      142 JUMPIFNOTEQ                      R18 R19 ; [+2]
      144 LOADB                            R17 0 +1
      145 LOADB                            R17 1
      146 SETTABLEKS                       R17 R16 K17 ["isNotAtDefault"]
      148 SETTABLEKS                       R10 R16 K18 ["presetControlId"]
      150 SETTABLEKS                       R14 R16 K19 ["savedPresetNames"]
      152 JUMPIFEQKNIL                     R8 ; [+9]
      154 GETIMPORT                        R17 K27 [table.clone]
      156 GETTABLEKS                       R18 R8 K3 ["control"]
      158 GETTABLEKS                       R18 R18 K28 ["Options"]
      160 CALL                             R17 1 1
      161 JUMP                             ; [+2]
      162 NEWTABLE                         R17 0 0
      164 SETTABLEKS                       R17 R16 K20 ["reservedPresetNames"]
      166 MOVE                             R17 R13
      167 JUMPIFNOT                        R17 ; [+8]
      168 LOADB                            R17 0
      169 GETUPVAL                         R18 11
      170 JUMPIFNOTEQ                      R11 R18 ; [+5]
      172 JUMPIFEQKNIL                     R15 ; [+2]
      174 LOADB                            R17 0 +1
      175 LOADB                            R17 1
      176 SETTABLEKS                       R17 R16 K21 ["canSave"]
      178 SETTABLEKS                       R13 R16 K22 ["allowsUserSavedPresets"]
      180 JUMPIFEQKNIL                     R15 ; [+4]
      182 GETTABLEKS                       R17 R15 K29 ["name"]
      184 JUMP                             ; [+1]
      185 LOADNIL                          R17
      186 SETTABLEKS                       R17 R16 K23 ["activeSavedPreset"]
      188 SETTABLE                         R16 R0 R6
      189 FORGLOOP                         R1 2 ; [-176]
      191 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R2 R3 R0
        9 CALL                             R1 1 1
       10 JUMPIFEQKNIL                     R1 ; [+26]
       12 GETTABLEKS                       R3 R1 K1 ["value"]
       14 FASTCALL1                        TYPE R3 ; [+2]
       15 GETIMPORT                        R2 K3 [type]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+8]
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R0
       22 GETTABLEKS                       R4 R1 K1 ["value"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 4
       28 MOVE                             R3 R0
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 5
       31 MOVE                             R3 R0
       32 GETTABLEKS                       R4 R1 K5 ["controlId"]
       34 GETTABLEKS                       R5 R1 K1 ["value"]
       36 CALL                             R2 3 0
       37 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 NEWTABLE                         R3 0 0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 NEWTABLE                         R5 0 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K0 ["useState"]
       15 NEWTABLE                         R7 0 0
       17 CALL                             R6 1 2
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K0 ["useState"]
       21 NEWTABLE                         R9 0 0
       23 CALL                             R8 1 2
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K0 ["useState"]
       27 NEWTABLE                         R11 0 0
       29 CALL                             R10 1 2
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K1 ["useRef"]
       33 LOADNIL                          R13
       34 CALL                             R12 1 1
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R13 R13 K2 ["useMemo"]
       38 NEWCLOSURE                       R14 P0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U2
       42 NEWTABLE                         R15 0 1
       44 MOVE                             R16 R2
       45 SETLIST                          R15 R16 1 [1]
       47 CALL                             R13 2 1
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R14 R14 K3 ["useEffect"]
       51 NEWCLOSURE                       R15 P1
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R11
       55 NEWTABLE                         R16 0 1
       57 MOVE                             R17 R1
       58 SETLIST                          R16 R17 1 [1]
       60 CALL                             R14 2 0
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R14 R14 K3 ["useEffect"]
       64 NEWCLOSURE                       R15 P2
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R9
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R7
       74 NEWTABLE                         R16 0 1
       76 MOVE                             R17 R0
       77 SETLIST                          R16 R17 1 [1]
       79 CALL                             R14 2 0
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R14 R14 K4 ["useCallback"]
       83 NEWCLOSURE                       R15 P3
       84 CAPTURE                          UPVAL U1
       85 CAPTURE                          VAL R12
       86 NEWTABLE                         R16 0 0
       88 CALL                             R14 2 1
       89 GETUPVAL                         R15 0
       90 GETTABLEKS                       R15 R15 K4 ["useCallback"]
       92 NEWCLOSURE                       R16 P4
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          VAL R12
       95 NEWTABLE                         R17 0 0
       97 CALL                             R15 2 1
       98 GETUPVAL                         R16 0
       99 GETTABLEKS                       R16 R16 K4 ["useCallback"]
      101 NEWCLOSURE                       R17 P5
      102 CAPTURE                          UPVAL U1
      103 CAPTURE                          VAL R13
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R14
      107 NEWTABLE                         R18 0 3
      109 MOVE                             R19 R13
      110 MOVE                             R20 R15
      111 MOVE                             R21 R14
      112 SETLIST                          R18 R19 3 [1]
      114 CALL                             R16 2 1
      115 GETUPVAL                         R17 0
      116 GETTABLEKS                       R17 R17 K4 ["useCallback"]
      118 NEWCLOSURE                       R18 P6
      119 CAPTURE                          UPVAL U1
      120 CAPTURE                          VAL R13
      121 CAPTURE                          UPVAL U5
      122 CAPTURE                          VAL R10
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R14
      126 NEWTABLE                         R19 0 4
      128 MOVE                             R20 R10
      129 MOVE                             R21 R13
      130 MOVE                             R22 R15
      131 MOVE                             R23 R14
      132 SETLIST                          R19 R20 4 [1]
      134 CALL                             R17 2 1
      135 GETUPVAL                         R18 0
      136 GETTABLEKS                       R18 R18 K4 ["useCallback"]
      138 NEWCLOSURE                       R19 P7
      139 CAPTURE                          UPVAL U1
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R14
      144 CAPTURE                          UPVAL U6
      145 CAPTURE                          VAL R12
      146 NEWTABLE                         R20 0 4
      148 MOVE                             R21 R13
      149 MOVE                             R22 R16
      150 MOVE                             R23 R17
      151 MOVE                             R24 R14
      152 SETLIST                          R20 R21 4 [1]
      154 CALL                             R18 2 1
      155 GETUPVAL                         R19 0
      156 GETTABLEKS                       R19 R19 K4 ["useCallback"]
      158 NEWCLOSURE                       R20 P8
      159 CAPTURE                          UPVAL U1
      160 CAPTURE                          VAL R12
      161 NEWTABLE                         R21 0 0
      163 CALL                             R19 2 1
      164 GETUPVAL                         R20 0
      165 GETTABLEKS                       R20 R20 K4 ["useCallback"]
      167 NEWCLOSURE                       R21 P9
      168 CAPTURE                          UPVAL U1
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R1
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          UPVAL U5
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R19
      178 NEWTABLE                         R22 0 6
      180 MOVE                             R23 R13
      181 MOVE                             R24 R1
      182 MOVE                             R25 R10
      183 MOVE                             R26 R4
      184 MOVE                             R27 R14
      185 MOVE                             R28 R19
      186 SETLIST                          R22 R23 6 [1]
      188 CALL                             R20 2 1
      189 GETUPVAL                         R21 0
      190 GETTABLEKS                       R21 R21 K4 ["useCallback"]
      192 NEWCLOSURE                       R22 P10
      193 CAPTURE                          UPVAL U1
      194 CAPTURE                          VAL R13
      195 CAPTURE                          UPVAL U7
      196 CAPTURE                          VAL R4
      197 CAPTURE                          UPVAL U2
      198 CAPTURE                          UPVAL U5
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R14
      206 CAPTURE                          UPVAL U6
      207 NEWTABLE                         R23 0 8
      209 MOVE                             R24 R13
      210 MOVE                             R25 R1
      211 MOVE                             R26 R10
      212 MOVE                             R27 R4
      213 MOVE                             R28 R16
      214 MOVE                             R29 R19
      215 MOVE                             R30 R15
      216 MOVE                             R31 R14
      217 SETLIST                          R23 R24 8 [1]
      219 CALL                             R21 2 1
      220 GETUPVAL                         R22 0
      221 GETTABLEKS                       R22 R22 K2 ["useMemo"]
      223 NEWCLOSURE                       R23 P11
      224 CAPTURE                          UPVAL U1
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R13
      228 CAPTURE                          UPVAL U7
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R1
      231 CAPTURE                          UPVAL U5
      232 CAPTURE                          VAL R10
      233 CAPTURE                          UPVAL U2
      234 CAPTURE                          VAL R6
      235 CAPTURE                          UPVAL U6
      236 NEWTABLE                         R24 0 7
      238 MOVE                             R25 R2
      239 MOVE                             R26 R4
      240 MOVE                             R27 R6
      241 MOVE                             R28 R8
      242 MOVE                             R29 R10
      243 MOVE                             R30 R1
      244 MOVE                             R31 R13
      245 SETLIST                          R24 R25 7 [1]
      247 CALL                             R22 2 1
      248 GETUPVAL                         R23 0
      249 GETTABLEKS                       R23 R23 K4 ["useCallback"]
      251 NEWCLOSURE                       R24 P12
      252 CAPTURE                          UPVAL U1
      253 CAPTURE                          UPVAL U7
      254 CAPTURE                          VAL R13
      255 CAPTURE                          VAL R16
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R14
      258 NEWTABLE                         R25 0 4
      260 MOVE                             R26 R13
      261 MOVE                             R27 R16
      262 MOVE                             R28 R15
      263 MOVE                             R29 R14
      264 SETLIST                          R25 R26 4 [1]
      266 CALL                             R23 2 1
      267 DUPTABLE                         R24 K13 [{"simulators", "viewModelsByName", "changeControl", "applyPending", "discardPending", "resetToDefault", "savePreset", "deleteSavedPreset"}]
      268 SETTABLEKS                       R2 R24 K5 ["simulators"]
      270 SETTABLEKS                       R22 R24 K6 ["viewModelsByName"]
      272 SETTABLEKS                       R18 R24 K7 ["changeControl"]
      274 SETTABLEKS                       R19 R24 K8 ["applyPending"]
      276 SETTABLEKS                       R15 R24 K9 ["discardPending"]
      278 SETTABLEKS                       R23 R24 K10 ["resetToDefault"]
      280 SETTABLEKS                       R20 R24 K11 ["savePreset"]
      282 SETTABLEKS                       R21 R24 K12 ["deleteSavedPreset"]
      284 RETURN                           R24 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["DynamicStateTicker"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K11 ["Parent"]
       38 GETTABLEKS                       R5 R5 K13 ["presetSchema"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K11 ["Parent"]
       47 GETTABLEKS                       R6 R6 K14 ["savedPresets"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K11 ["Parent"]
       56 GETTABLEKS                       R7 R7 K15 ["SimulatorRuntime"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETIMPORT                        R8 K1 [script]
       63 GETTABLEKS                       R8 R8 K11 ["Parent"]
       65 GETTABLEKS                       R8 R8 K16 ["Types"]
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R8 R4 K17 ["CUSTOM_PRESET_NAME"]
       70 DUPCLOSURE                       R9 K18 [PROTO_0]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 DUPCLOSURE                       R10 K19 [PROTO_1]
       74 CAPTURE                          VAL R2
       75 DUPCLOSURE                       R11 K20 [PROTO_3]
       76 DUPCLOSURE                       R12 K21 [PROTO_27]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 RETURN                           R12 1
