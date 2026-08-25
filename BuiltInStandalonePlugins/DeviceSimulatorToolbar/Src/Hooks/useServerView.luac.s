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
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U1
        6 GETIMPORT                        R3 K2 [task.spawn]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R2
       12 CAPTURE                          REF R0
       13 CAPTURE                          REF R1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CALL                             R3 1 0
       17 NEWCLOSURE                       R3 P2
       18 CAPTURE                          REF R0
       19 CAPTURE                          REF R1
       20 CLOSEUPVALS                      R0
       21 RETURN                           R3 1

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
        1 GETTABLEKS                       R0 R0 K0 ["currentDevice"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.PlayServer]
        6 JUMPIFNOTEQ                      R1 R2 ; [+6]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K5 ["current"]
       11 JUMPIF                           R1 ; [+1]
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R2 R0 K6 ["deviceId"]
       17 SETTABLEKS                       R2 R1 K5 ["current"]
       19 GETUPVAL                         R1 3
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R1 K5 ["current"]
       23 GETUPVAL                         R1 4
       24 LOADB                            R2 1
       25 CALL                             R1 1 0
       26 GETIMPORT                        R1 K9 [task.spawn]
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U9
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

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
        7 GETTABLEKS                       R4 R4 K3 ["useRef"]
        9 LOADB                            R5 1
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["useState"]
       14 GETIMPORT                        R6 K8 [Enum.StudioDataModelType.Edit]
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K3 ["useRef"]
       20 MOVE                             R8 R5
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["useState"]
       25 LOADB                            R9 0
       26 CALL                             R8 1 2
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K3 ["useRef"]
       30 MOVE                             R11 R8
       31 CALL                             R10 1 1
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K4 ["useState"]
       35 LOADB                            R12 0
       36 CALL                             R11 1 2
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R13 R13 K3 ["useRef"]
       40 LOADB                            R14 0
       41 CALL                             R13 1 1
       42 GETUPVAL                         R14 0
       43 GETTABLEKS                       R14 R14 K3 ["useRef"]
       45 LOADNIL                          R15
       46 CALL                             R14 1 1
       47 GETUPVAL                         R15 0
       48 GETTABLEKS                       R15 R15 K3 ["useRef"]
       50 LOADB                            R16 0
       51 CALL                             R15 1 1
       52 GETUPVAL                         R16 0
       53 GETTABLEKS                       R16 R16 K3 ["useRef"]
       55 LOADB                            R17 0
       56 CALL                             R16 1 1
       57 GETUPVAL                         R17 0
       58 GETTABLEKS                       R17 R17 K9 ["useCallback"]
       60 NEWCLOSURE                       R18 P0
       61 CAPTURE                          VAL R13
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R12
       64 NEWTABLE                         R19 0 0
       66 CALL                             R17 2 1
       67 GETUPVAL                         R18 0
       68 GETTABLEKS                       R18 R18 K9 ["useCallback"]
       70 NEWCLOSURE                       R19 P1
       71 CAPTURE                          VAL R14
       72 CAPTURE                          VAL R15
       73 CAPTURE                          VAL R16
       74 CAPTURE                          VAL R17
       75 NEWTABLE                         R20 0 1
       77 MOVE                             R21 R17
       78 SETLIST                          R20 R21 1 [1]
       80 CALL                             R18 2 1
       81 GETUPVAL                         R19 0
       82 GETTABLEKS                       R19 R19 K9 ["useCallback"]
       84 NEWCLOSURE                       R20 P2
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R18
       90 CAPTURE                          VAL R17
       91 NEWTABLE                         R21 0 3
       93 MOVE                             R22 R18
       94 MOVE                             R23 R17
       95 MOVE                             R24 R3
       96 SETLIST                          R21 R22 3 [1]
       98 CALL                             R19 2 1
       99 GETUPVAL                         R20 0
      100 GETTABLEKS                       R20 R20 K10 ["useEffect"]
      102 NEWCLOSURE                       R21 P3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R18
      111 NEWTABLE                         R22 0 4
      113 MOVE                             R23 R2
      114 MOVE                             R24 R18
      115 MOVE                             R25 R19
      116 MOVE                             R26 R17
      117 SETLIST                          R22 R23 4 [1]
      119 CALL                             R20 2 0
      120 GETUPVAL                         R20 0
      121 GETTABLEKS                       R20 R20 K10 ["useEffect"]
      123 NEWCLOSURE                       R21 P4
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R1
      127 CAPTURE                          UPVAL U1
      128 NEWTABLE                         R22 0 1
      130 MOVE                             R23 R1
      131 SETLIST                          R22 R23 1 [1]
      133 CALL                             R20 2 0
      134 GETUPVAL                         R20 0
      135 GETTABLEKS                       R20 R20 K10 ["useEffect"]
      137 NEWCLOSURE                       R21 P5
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R3
      144 CAPTURE                          UPVAL U2
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R19
      148 NEWTABLE                         R22 0 6
      150 MOVE                             R23 R5
      151 GETTABLEKS                       R24 R0 K11 ["currentDevice"]
      153 MOVE                             R25 R18
      154 MOVE                             R26 R19
      155 MOVE                             R27 R17
      156 MOVE                             R28 R3
      157 SETLIST                          R22 R23 6 [1]
      159 CALL                             R20 2 0
      160 GETUPVAL                         R20 0
      161 GETTABLEKS                       R20 R20 K9 ["useCallback"]
      163 NEWCLOSURE                       R21 P6
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R3
      171 CAPTURE                          UPVAL U2
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R1
      174 CAPTURE                          UPVAL U1
      175 CAPTURE                          VAL R19
      176 NEWTABLE                         R22 0 6
      178 MOVE                             R23 R1
      179 GETTABLEKS                       R24 R0 K11 ["currentDevice"]
      181 MOVE                             R25 R18
      182 MOVE                             R26 R19
      183 MOVE                             R27 R17
      184 MOVE                             R28 R3
      185 SETLIST                          R22 R23 6 [1]
      187 CALL                             R20 2 1
      188 GETUPVAL                         R21 0
      189 GETTABLEKS                       R21 R21 K9 ["useCallback"]
      191 NEWCLOSURE                       R22 P7
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R1
      198 CAPTURE                          UPVAL U1
      199 NEWTABLE                         R23 0 2
      201 MOVE                             R24 R1
      202 MOVE                             R25 R17
      203 SETLIST                          R23 R24 2 [1]
      205 CALL                             R21 2 1
      206 GETUPVAL                         R22 0
      207 GETTABLEKS                       R22 R22 K9 ["useCallback"]
      209 NEWCLOSURE                       R23 P8
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R20
      213 NEWTABLE                         R24 0 2
      215 MOVE                             R25 R20
      216 MOVE                             R26 R21
      217 SETLIST                          R24 R25 2 [1]
      219 CALL                             R22 2 1
      220 DUPTABLE                         R23 K17 [{"isServerView", "isClientView", "serverButtonDisabled", "toggleServerView", "leaveServerView"}]
      221 GETIMPORT                        R25 K19 [Enum.StudioDataModelType.PlayServer]
      223 JUMPIFEQ                         R5 R25 ; [+2]
      225 LOADB                            R24 0 +1
      226 LOADB                            R24 1
      227 SETTABLEKS                       R24 R23 K12 ["isServerView"]
      229 GETIMPORT                        R25 K21 [Enum.StudioDataModelType.PlayClient]
      231 JUMPIFEQ                         R5 R25 ; [+2]
      233 LOADB                            R24 0 +1
      234 LOADB                            R24 1
      235 SETTABLEKS                       R24 R23 K13 ["isClientView"]
      237 NOT                              R24 R8
      238 JUMPIF                           R24 ; [+13]
      239 MOVE                             R24 R11
      240 JUMPIF                           R24 ; [+11]
      241 LOADB                            R24 0
      242 GETIMPORT                        R25 K19 [Enum.StudioDataModelType.PlayServer]
      244 JUMPIFEQ                         R5 R25 ; [+7]
      246 GETTABLEKS                       R25 R0 K11 ["currentDevice"]
      248 JUMPIFEQKNIL                     R25 ; [+2]
      250 LOADB                            R24 0 +1
      251 LOADB                            R24 1
      252 SETTABLEKS                       R24 R23 K14 ["serverButtonDisabled"]
      254 SETTABLEKS                       R22 R23 K15 ["toggleServerView"]
      256 SETTABLEKS                       R21 R23 K16 ["leaveServerView"]
      258 RETURN                           R23 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["DeviceModel"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K18 [{["DataModel"] = "Standalone", ["PluginId"] = "RunTools", ["Category"] = "Actions", ["ItemId"] = "ToggleDM"}]
       22 DUPCLOSURE                       R4 K19 [PROTO_29]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
