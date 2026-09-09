PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETUPVAL                         R0 3
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetDeviceAndPersistAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["current"]
       10 JUMPIFNOT                        R0 ; [+3]
       11 GETUPVAL                         R2 3
       12 CALL                             R2 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 4
       15 LOADB                            R3 0
       16 CALL                             R2 1 0
       17 GETIMPORT                        R2 K4 [warn]
       19 LOADK                            R4 K5 ["[DeviceSimulatorToolbar] Failed to restore device '"]
       20 GETUPVAL                         R5 1
       21 LOADK                            R6 K6 ["': "]
       22 FASTCALL1                        TOSTRING R1 ; [+3]
       23 MOVE                             R8 R1
       24 GETIMPORT                        R7 K8 [tostring]
       26 CALL                             R7 1 1
       27 CONCAT                           R3 R4 R7
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 JUMPIF                           R1 ; [+4]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["current"]
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 2
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K0 ["current"]
       17 GETIMPORT                        R1 K3 [task.spawn]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 SETTABLEKS                       R0 R1 K0 ["current"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R1 3
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETIMPORT                        R1 K4 [Enum.StudioDataModelType.PlayServer]
       14 JUMPIFNOTEQ                      R0 R1 ; [+5]
       16 GETUPVAL                         R1 4
       17 LOADB                            R2 0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R1 K6 [Enum.StudioDataModelType.PlayClient]
       22 JUMPIFEQ                         R0 R1 ; [+5]
       24 GETIMPORT                        R1 K8 [Enum.StudioDataModelType.Edit]
       26 JUMPIFNOTEQ                      R0 R1 ; [+11]
       28 GETUPVAL                         R1 5
       29 GETTABLEKS                       R1 R1 K0 ["current"]
       31 JUMPIFNOT                        R1 ; [+3]
       32 GETUPVAL                         R1 6
       33 CALL                             R1 0 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 4
       36 LOADB                            R2 0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+3]
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 2
        6 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.Edit]
        8 SETTABLEKS                       R1 R0 K4 ["current"]
       10 GETUPVAL                         R0 3
       11 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.Edit]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentDataModelTypeAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+2]
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R2 3
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R2 K3 [warn]
       17 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to get playtest state: "]
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K6 [tostring]
       22 CALL                             R5 1 1
       23 CONCAT                           R3 R4 R5
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 NAMECALL                         R0 R0 K1 ["Disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 4
       15 NAMECALL                         R0 R0 K1 ["Disconnect"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 LOADB                            R0 0
        5 LOADB                            R1 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          REF R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 GETUPVAL                         R3 6
       15 GETTABLEKS                       R3 R3 K1 ["CurrentDataModelTypeChanged"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          REF R0
       19 CAPTURE                          VAL R2
       20 NAMECALL                         R3 R3 K2 ["Connect"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 6
       24 GETTABLEKS                       R4 R4 K3 ["PlaceSessionStarted"]
       26 NEWCLOSURE                       R6 P2
       27 CAPTURE                          REF R0
       28 CAPTURE                          UPVAL U7
       29 NAMECALL                         R4 R4 K2 ["Connect"]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 6
       33 GETTABLEKS                       R5 R5 K4 ["PlaceSessionEnded"]
       35 NEWCLOSURE                       R7 P3
       36 CAPTURE                          REF R0
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U2
       40 NAMECALL                         R5 R5 K2 ["Connect"]
       42 CALL                             R5 2 1
       43 GETIMPORT                        R6 K7 [task.spawn]
       45 NEWCLOSURE                       R7 P4
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          REF R0
       48 CAPTURE                          REF R1
       49 CAPTURE                          VAL R2
       50 CALL                             R6 1 0
       51 NEWCLOSURE                       R6 P5
       52 CAPTURE                          REF R0
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CLOSEUPVALS                      R0
       58 RETURN                           R6 1

PROTO_13:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 LOADB                            R1 0
        4 GETTABLEKS                       R2 R0 K0 ["Exists"]
        6 JUMPIFNOTEQKB                    R2 TRUE ; [+7]
        8 GETTABLEKS                       R2 R0 K1 ["Enabled"]
       10 JUMPIFEQKB                       R2 TRUE ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R1 R2 K2 ["current"]
       17 GETUPVAL                         R2 1
       18 JUMPIF                           R2 ; [+3]
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 LOADB                            R3 1
        7 NAMECALL                         R0 R0 K0 ["MultiBindToChangedAsync"]
        9 CALL                             R0 3 1
       10 GETTABLEN                        R1 R0 1
       11 JUMPIFNOT                        R1 ; [+11]
       12 GETUPVAL                         R4 2
       13 NAMECALL                         R2 R1 K1 ["Connect"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 3
       17 JUMPIFNOT                        R3 ; [+4]
       18 NAMECALL                         R3 R2 K2 ["Disconnect"]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 SETUPVAL                         R2 4
       23 GETUPVAL                         R3 0
       24 NEWTABLE                         R5 0 1
       26 GETUPVAL                         R6 1
       27 SETLIST                          R5 R6 1 [1]
       29 NAMECALL                         R3 R3 K3 ["GetAsync"]
       31 CALL                             R3 2 1
       32 GETTABLEN                        R2 R3 1
       33 GETUPVAL                         R3 3
       34 JUMPIF                           R3 ; [+22]
       35 LOADB                            R3 0
       36 JUMPIFEQKNIL                     R2 ; [+12]
       38 LOADB                            R3 0
       39 GETTABLEKS                       R4 R2 K4 ["Exists"]
       41 JUMPIFNOTEQKB                    R4 TRUE ; [+7]
       43 GETTABLEKS                       R4 R2 K5 ["Enabled"]
       45 JUMPIFEQKB                       R4 TRUE ; [+2]
       47 LOADB                            R3 0 +1
       48 LOADB                            R3 1
       49 GETUPVAL                         R4 5
       50 SETTABLEKS                       R3 R4 K6 ["current"]
       52 GETUPVAL                         R4 3
       53 JUMPIF                           R4 ; [+3]
       54 GETUPVAL                         R4 6
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 2
       11 JUMPIF                           R0 ; [+21]
       12 GETUPVAL                         R2 3
       13 JUMPIF                           R2 ; [+19]
       14 GETUPVAL                         R2 5
       15 LOADB                            R3 0
       16 SETTABLEKS                       R3 R2 K2 ["current"]
       18 GETUPVAL                         R2 3
       19 JUMPIF                           R2 ; [+3]
       20 GETUPVAL                         R2 6
       21 LOADB                            R3 0
       22 CALL                             R2 1 0
       23 GETIMPORT                        R2 K4 [warn]
       25 LOADK                            R4 K5 ["[DeviceSimulatorToolbar] Failed to synchronize server action state: "]
       26 FASTCALL1                        TOSTRING R1 ; [+3]
       27 MOVE                             R6 R1
       28 GETIMPORT                        R5 K7 [tostring]
       30 CALL                             R5 1 1
       31 CONCAT                           R3 R4 R5
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 LOADNIL                          R1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U2
        9 GETIMPORT                        R3 K2 [task.spawn]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R2
       15 CAPTURE                          REF R0
       16 CAPTURE                          REF R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CALL                             R3 1 0
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          REF R0
       22 CAPTURE                          REF R1
       23 CLOSEUPVALS                      R0
       24 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["DEFAULT_DEVICE_ID"]
        4 NAMECALL                         R0 R0 K1 ["SetDeviceAndPersistAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["current"]
       10 JUMPIF                           R0 ; [+13]
       11 GETUPVAL                         R2 3
       12 CALL                             R2 0 0
       13 GETIMPORT                        R2 K4 [warn]
       15 LOADK                            R4 K5 ["[DeviceSimulatorToolbar] Failed to clear device after showing Server: "]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K7 [tostring]
       20 CALL                             R5 1 1
       21 CONCAT                           R3 R4 R5
       22 CALL                             R2 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K2 ["current"]
       27 GETIMPORT                        R3 K11 [Enum.StudioDataModelType.PlayServer]
       29 JUMPIFNOTEQ                      R2 R3 ; [+5]
       31 GETUPVAL                         R2 5
       32 LOADB                            R3 0
       33 CALL                             R2 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 6
       36 CALL                             R2 0 0
       37 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["currentDevice"]
        6 GETUPVAL                         R1 2
        7 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.PlayServer]
        9 JUMPIFNOTEQ                      R1 R2 ; [+6]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K5 ["current"]
       14 JUMPIF                           R1 ; [+1]
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R2 R0 K6 ["deviceId"]
       20 SETTABLEKS                       R2 R1 K5 ["current"]
       22 GETUPVAL                         R1 4
       23 LOADB                            R2 1
       24 SETTABLEKS                       R2 R1 K5 ["current"]
       26 GETUPVAL                         R1 5
       27 LOADB                            R2 1
       28 CALL                             R1 1 0
       29 GETIMPORT                        R1 K9 [task.spawn]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U10
       39 CALL                             R1 1 0
       40 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["DEFAULT_DEVICE_ID"]
        4 NAMECALL                         R0 R0 K1 ["SetDeviceAndPersistAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["deviceId"]
        4 SETTABLEKS                       R1 R0 K1 ["current"]
        6 GETIMPORT                        R0 K3 [pcall]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CALL                             R0 1 2
       12 JUMPIF                           R0 ; [+13]
       13 GETUPVAL                         R2 4
       14 CALL                             R2 0 0
       15 GETIMPORT                        R2 K5 [warn]
       17 LOADK                            R4 K6 ["[DeviceSimulatorToolbar] Failed to clear device before showing Server: "]
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K8 [tostring]
       22 CALL                             R5 1 1
       23 CONCAT                           R3 R4 R5
       24 CALL                             R2 1 0
       25 RETURN                           R0 0
       26 GETIMPORT                        R2 K3 [pcall]
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CALL                             R2 1 2
       32 JUMPIF                           R2 ; [+12]
       33 GETIMPORT                        R4 K5 [warn]
       35 LOADK                            R6 K9 ["[DeviceSimulatorToolbar] Failed to show Server: "]
       36 FASTCALL1                        TOSTRING R3 ; [+3]
       37 MOVE                             R8 R3
       38 GETIMPORT                        R7 K8 [tostring]
       40 CALL                             R7 1 1
       41 CONCAT                           R5 R6 R7
       42 CALL                             R4 1 0
       43 GETUPVAL                         R4 7
       44 CALL                             R4 0 0
       45 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 GETIMPORT                        R1 K4 [Enum.StudioDataModelType.PlayClient]
       13 JUMPIFEQ                         R0 R1 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K5 ["currentDevice"]
       19 JUMPIF                           R0 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 4
       22 LOADB                            R2 1
       23 CALL                             R1 1 0
       24 GETIMPORT                        R1 K8 [task.spawn]
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 CAPTURE                          UPVAL U11
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+13]
        7 GETUPVAL                         R2 2
        8 LOADB                            R3 0
        9 CALL                             R2 1 0
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to return to Client: "]
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R6 R1
       15 GETIMPORT                        R5 K6 [tostring]
       17 CALL                             R5 1 1
       18 CONCAT                           R3 R4 R5
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["current"]
       11 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.PlayServer]
       13 JUMPIFEQ                         R1 R2 ; [+2]
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R0 ; [+3]
       17 GETUPVAL                         R1 3
       18 SETTABLEKS                       R0 R1 K0 ["current"]
       20 GETUPVAL                         R1 4
       21 LOADB                            R2 1
       22 CALL                             R1 1 0
       23 GETIMPORT                        R1 K7 [task.spawn]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U4
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETIMPORT                        R1 K4 [Enum.StudioDataModelType.PlayServer]
        5 JUMPIFNOTEQ                      R0 R1 ; [+5]
        7 GETUPVAL                         R0 1
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["current"]
       14 GETIMPORT                        R1 K6 [Enum.StudioDataModelType.PlayClient]
       16 JUMPIFNOTEQ                      R0 R1 ; [+3]
       18 GETUPVAL                         R0 2
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["actions"]
        2 GETTABLEKS                       R2 R0 K1 ["placeSessionBridge"]
        4 GETTABLEKS                       R3 R0 K2 ["simulatorService"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["getFFlagEnableDeviceSimulatorClientViewportOnly"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["useRef"]
       13 LOADB                            R6 1
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["useState"]
       18 GETIMPORT                        R7 K9 [Enum.StudioDataModelType.Edit]
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K4 ["useRef"]
       24 MOVE                             R9 R6
       25 CALL                             R8 1 1
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K5 ["useState"]
       29 LOADB                            R10 0
       30 CALL                             R9 1 2
       31 GETUPVAL                         R11 1
       32 GETTABLEKS                       R11 R11 K4 ["useRef"]
       34 MOVE                             R12 R9
       35 CALL                             R11 1 1
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R12 R12 K5 ["useState"]
       39 LOADB                            R13 0
       40 CALL                             R12 1 2
       41 GETUPVAL                         R14 1
       42 GETTABLEKS                       R14 R14 K4 ["useRef"]
       44 LOADB                            R15 0
       45 CALL                             R14 1 1
       46 GETUPVAL                         R15 1
       47 GETTABLEKS                       R15 R15 K4 ["useRef"]
       49 LOADNIL                          R16
       50 CALL                             R15 1 1
       51 GETUPVAL                         R16 1
       52 GETTABLEKS                       R16 R16 K4 ["useRef"]
       54 LOADB                            R17 0
       55 CALL                             R16 1 1
       56 GETUPVAL                         R17 1
       57 GETTABLEKS                       R17 R17 K4 ["useRef"]
       59 LOADB                            R18 0
       60 CALL                             R17 1 1
       61 GETUPVAL                         R18 1
       62 GETTABLEKS                       R18 R18 K10 ["useCallback"]
       64 NEWCLOSURE                       R19 P0
       65 CAPTURE                          VAL R14
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R13
       68 NEWTABLE                         R20 0 0
       70 CALL                             R18 2 1
       71 GETUPVAL                         R19 1
       72 GETTABLEKS                       R19 R19 K10 ["useCallback"]
       74 NEWCLOSURE                       R20 P1
       75 CAPTURE                          VAL R15
       76 CAPTURE                          VAL R16
       77 CAPTURE                          VAL R17
       78 CAPTURE                          VAL R18
       79 NEWTABLE                         R21 0 1
       81 MOVE                             R22 R18
       82 SETLIST                          R21 R22 1 [1]
       84 CALL                             R19 2 1
       85 GETUPVAL                         R20 1
       86 GETTABLEKS                       R20 R20 K10 ["useCallback"]
       88 NEWCLOSURE                       R21 P2
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R17
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R19
       94 CAPTURE                          VAL R18
       95 NEWTABLE                         R22 0 3
       97 MOVE                             R23 R19
       98 MOVE                             R24 R18
       99 MOVE                             R25 R3
      100 SETLIST                          R22 R23 3 [1]
      102 CALL                             R20 2 1
      103 GETUPVAL                         R21 1
      104 GETTABLEKS                       R21 R21 K11 ["useEffect"]
      106 NEWCLOSURE                       R22 P3
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R20
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R19
      115 NEWTABLE                         R23 0 4
      117 MOVE                             R24 R2
      118 MOVE                             R25 R19
      119 MOVE                             R26 R20
      120 MOVE                             R27 R18
      121 SETLIST                          R23 R24 4 [1]
      123 CALL                             R21 2 0
      124 GETUPVAL                         R21 1
      125 GETTABLEKS                       R21 R21 K11 ["useEffect"]
      127 NEWCLOSURE                       R22 P4
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R1
      132 CAPTURE                          UPVAL U2
      133 NEWTABLE                         R23 0 2
      135 MOVE                             R24 R1
      136 MOVE                             R25 R4
      137 SETLIST                          R23 R24 2 [1]
      139 CALL                             R21 2 0
      140 GETUPVAL                         R21 1
      141 GETTABLEKS                       R21 R21 K11 ["useEffect"]
      143 NEWCLOSURE                       R22 P5
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R3
      151 CAPTURE                          UPVAL U3
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R20
      155 NEWTABLE                         R23 0 7
      157 MOVE                             R24 R4
      158 MOVE                             R25 R6
      159 GETTABLEKS                       R26 R0 K12 ["currentDevice"]
      161 MOVE                             R27 R19
      162 MOVE                             R28 R20
      163 MOVE                             R29 R18
      164 MOVE                             R30 R3
      165 SETLIST                          R23 R24 7 [1]
      167 CALL                             R21 2 0
      168 GETUPVAL                         R21 1
      169 GETTABLEKS                       R21 R21 K10 ["useCallback"]
      171 NEWCLOSURE                       R22 P6
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R0
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R3
      179 CAPTURE                          UPVAL U3
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R1
      182 CAPTURE                          UPVAL U2
      183 CAPTURE                          VAL R20
      184 NEWTABLE                         R23 0 6
      186 MOVE                             R24 R1
      187 GETTABLEKS                       R25 R0 K12 ["currentDevice"]
      189 MOVE                             R26 R19
      190 MOVE                             R27 R20
      191 MOVE                             R28 R18
      192 MOVE                             R29 R3
      193 SETLIST                          R23 R24 6 [1]
      195 CALL                             R21 2 1
      196 GETUPVAL                         R22 1
      197 GETTABLEKS                       R22 R22 K10 ["useCallback"]
      199 NEWCLOSURE                       R23 P7
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R1
      206 CAPTURE                          UPVAL U2
      207 NEWTABLE                         R24 0 2
      209 MOVE                             R25 R1
      210 MOVE                             R26 R18
      211 SETLIST                          R24 R25 2 [1]
      213 CALL                             R22 2 1
      214 GETUPVAL                         R23 1
      215 GETTABLEKS                       R23 R23 K10 ["useCallback"]
      217 NEWCLOSURE                       R24 P8
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R22
      220 CAPTURE                          VAL R21
      221 NEWTABLE                         R25 0 2
      223 MOVE                             R26 R21
      224 MOVE                             R27 R22
      225 SETLIST                          R25 R26 2 [1]
      227 CALL                             R23 2 1
      228 DUPTABLE                         R24 K18 [{"isServerView", "isClientView", "serverButtonDisabled", "toggleServerView", "leaveServerView"}]
      229 GETIMPORT                        R26 K20 [Enum.StudioDataModelType.PlayServer]
      231 JUMPIFEQ                         R6 R26 ; [+2]
      233 LOADB                            R25 0 +1
      234 LOADB                            R25 1
      235 SETTABLEKS                       R25 R24 K13 ["isServerView"]
      237 GETIMPORT                        R26 K22 [Enum.StudioDataModelType.PlayClient]
      239 JUMPIFEQ                         R6 R26 ; [+2]
      241 LOADB                            R25 0 +1
      242 LOADB                            R25 1
      243 SETTABLEKS                       R25 R24 K14 ["isClientView"]
      245 NOT                              R25 R9
      246 JUMPIF                           R25 ; [+13]
      247 MOVE                             R25 R12
      248 JUMPIF                           R25 ; [+11]
      249 LOADB                            R25 0
      250 GETIMPORT                        R26 K20 [Enum.StudioDataModelType.PlayServer]
      252 JUMPIFEQ                         R6 R26 ; [+7]
      254 GETTABLEKS                       R26 R0 K12 ["currentDevice"]
      256 JUMPIFEQKNIL                     R26 ; [+2]
      258 LOADB                            R25 0 +1
      259 LOADB                            R25 1
      260 SETTABLEKS                       R25 R24 K15 ["serverButtonDisabled"]
      262 SETTABLEKS                       R23 R24 K16 ["toggleServerView"]
      264 SETTABLEKS                       R22 R24 K17 ["leaveServerView"]
      266 RETURN                           R24 1

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
       25 GETTABLEKS                       R4 R0 K11 ["Src"]
       27 GETTABLEKS                       R4 R4 K12 ["DeviceModel"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K21 [{["DataModel"] = "Standalone", ["PluginId"] = "RunTools", ["Category"] = "Actions", ["ItemId"] = "ToggleDM"}]
       31 DUPCLOSURE                       R5 K22 [PROTO_29]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
