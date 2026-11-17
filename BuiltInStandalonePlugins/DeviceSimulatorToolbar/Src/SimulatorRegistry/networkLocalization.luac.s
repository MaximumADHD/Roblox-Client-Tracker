PROTO_0:
        0 MOVE                             R4 R0
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R3 K1 [pcall]
        4 CALL                             R3 1 2
        5 JUMPIFNOT                        R3 ; [+11]
        6 FASTCALL1                        TYPE R4 ; [+3]
        7 MOVE                             R6 R4
        8 GETIMPORT                        R5 K3 [type]
       10 CALL                             R5 1 1
       11 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+5]
       13 JUMPIFEQKS                       R4 K5 [""] ; [+3]
       15 JUMPIFNOTEQ                      R4 R1 ; [+2]
       17 RETURN                           R2 1
       18 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["getProjectText"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getFFlagDeviceSimulatorNetworkSettingsLocalization"]
        3 CALL                             R5 0 1
        4 JUMPIFNOT                        R5 ; [+2]
        5 LOADK                            R4 K1 ["NetworkSettings"]
        6 JUMP                             ; [+1]
        7 LOADK                            R4 K2 ["DeviceSimulator"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 LOADK                            R7 K3 ["Studio.%*.%*.%*"]
       14 MOVE                             R9 R4
       15 MOVE                             R10 R1
       16 MOVE                             R11 R2
       17 NAMECALL                         R7 R7 K4 ["format"]
       19 CALL                             R7 4 1
       20 MOVE                             R9 R6
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R8 K6 [pcall]
       24 CALL                             R8 1 2
       25 JUMPIFNOT                        R8 ; [+11]
       26 FASTCALL1                        TYPE R9 ; [+3]
       27 MOVE                             R11 R9
       28 GETIMPORT                        R10 K8 [type]
       30 CALL                             R10 1 1
       31 JUMPIFNOTEQKS                    R10 K9 ["string"] ; [+5]
       33 JUMPIFEQKS                       R9 K10 [""] ; [+3]
       35 JUMPIFNOTEQ                      R9 R7 ; [+3]
       37 MOVE                             R5 R3
       38 RETURN                           R5 1
       39 MOVE                             R5 R9
       40 RETURN                           R5 1

PROTO_3:
        0 JUMPIFEQKS                       R1 K0 ["Network"] ; [+2]
        2 RETURN                           R1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["getFFlagDeviceSimulatorNetworkSettingsLocalization"]
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 LOADK                            R3 K2 ["NetworkSettings"]
        9 JUMP                             ; [+1]
       10 LOADK                            R3 K3 ["DeviceSimulator"]
       11 LOADK                            R5 K0 ["Network"]
       12 LOADK                            R6 K4 ["Name"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R6
       18 LOADK                            R5 K5 ["Studio.%*.Network.Name"]
       19 MOVE                             R7 R3
       20 NAMECALL                         R5 R5 K6 ["format"]
       22 CALL                             R5 2 1
       23 MOVE                             R7 R4
       24 FASTPCALL                        pcall 1 ; [+2]
       25 GETIMPORT                        R6 K8 [pcall]
       27 CALL                             R6 1 2
       28 JUMPIFNOT                        R6 ; [+11]
       29 FASTCALL1                        TYPE R7 ; [+3]
       30 MOVE                             R9 R7
       31 GETIMPORT                        R8 K10 [type]
       33 CALL                             R8 1 1
       34 JUMPIFNOTEQKS                    R8 K11 ["string"] ; [+5]
       36 JUMPIFEQKS                       R7 K12 [""] ; [+3]
       38 JUMPIFNOTEQ                      R7 R5 ; [+3]
       40 MOVE                             R2 R1
       41 RETURN                           R2 1
       42 MOVE                             R2 R7
       43 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SimulatorPreset"]
        2 LOADK                            R3 K1 ["Custom"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 JUMPIFEQKS                       R1 K0 ["Network"] ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETUPVAL                         R10 1
       11 GETTABLEKS                       R10 R10 K1 ["getFFlagDeviceSimulatorNetworkSettingsLocalization"]
       13 CALL                             R10 0 1
       14 JUMPIFNOT                        R10 ; [+2]
       15 LOADK                            R9 K2 ["NetworkSettings"]
       16 JUMP                             ; [+1]
       17 LOADK                            R9 K3 ["DeviceSimulator"]
       18 LOADK                            R11 K4 ["NetworkPreset"]
       19 NEWCLOSURE                       R10 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R9
       22 CAPTURE                          VAL R11
       23 CAPTURE                          VAL R7
       24 LOADK                            R11 K5 ["Studio.%*.NetworkPreset.%*"]
       25 MOVE                             R13 R9
       26 MOVE                             R14 R7
       27 NAMECALL                         R11 R11 K6 ["format"]
       29 CALL                             R11 3 1
       30 MOVE                             R13 R10
       31 FASTPCALL                        pcall 1 ; [+2]
       32 GETIMPORT                        R12 K8 [pcall]
       34 CALL                             R12 1 2
       35 JUMPIFNOT                        R12 ; [+11]
       36 FASTCALL1                        TYPE R13 ; [+3]
       37 MOVE                             R15 R13
       38 GETIMPORT                        R14 K10 [type]
       40 CALL                             R14 1 1
       41 JUMPIFNOTEQKS                    R14 K11 ["string"] ; [+5]
       43 JUMPIFEQKS                       R13 K12 [""] ; [+3]
       45 JUMPIFNOTEQ                      R13 R11 ; [+3]
       47 MOVE                             R8 R6
       48 JUMP                             ; [+1]
       49 MOVE                             R8 R13
       50 SETTABLE                         R8 R2 R6
       51 FORGLOOP                         R3 2 ; [-42]
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          VAL R0
       55 MOVE                             R6 R4
       56 FASTPCALL                        pcall 1 ; [+2]
       57 GETIMPORT                        R5 K8 [pcall]
       59 CALL                             R5 1 2
       60 JUMPIFNOT                        R5 ; [+11]
       61 FASTCALL1                        TYPE R6 ; [+3]
       62 MOVE                             R8 R6
       63 GETIMPORT                        R7 K10 [type]
       65 CALL                             R7 1 1
       66 JUMPIFNOTEQKS                    R7 K11 ["string"] ; [+5]
       68 JUMPIFEQKS                       R6 K12 [""] ; [+3]
       70 JUMPIFNOTEQKS                    R6 K13 ["Studio.DeviceSimulatorToolbar.SimulatorPreset.Custom"] ; [+3]
       72 LOADK                            R3 K14 ["Custom"]
       73 JUMP                             ; [+1]
       74 MOVE                             R3 R6
       75 SETTABLEKS                       R3 R2 K14 ["Custom"]
       77 NEWTABLE                         R3 1 0
       79 SETTABLEKS                       R2 R3 K15 ["preset"]
       81 RETURN                           R3 1

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
       16 NEWTABLE                         R2 8 0
       18 LOADK                            R3 K9 ["CurrentDevice"]
       19 SETTABLEKS                       R3 R2 K10 ["Current Device"]
       21 LOADK                            R3 K11 ["IdealFiber"]
       22 SETTABLEKS                       R3 R2 K12 ["Ideal Fiber"]
       24 LOADK                            R3 K13 ["WiredBroadband"]
       25 SETTABLEKS                       R3 R2 K14 ["Wired Broadband"]
       27 LOADK                            R3 K15 ["HomeWifi"]
       28 SETTABLEKS                       R3 R2 K16 ["Home Wi-Fi"]
       30 LOADK                            R3 K17 ["StandardMobile"]
       31 SETTABLEKS                       R3 R2 K18 ["Standard Mobile (4G/LTE)"]
       33 LOADK                            R3 K19 ["BadConnection"]
       34 SETTABLEKS                       R3 R2 K20 ["Bad Connection (3G)"]
       36 NEWTABLE                         R3 2 0
       38 DUPCLOSURE                       R4 K21 [PROTO_0]
       39 DUPCLOSURE                       R5 K22 [PROTO_2]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R6 K23 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R6 R3 K24 ["getSimulatorDisplayName"]
       45 DUPCLOSURE                       R6 K25 [PROTO_5]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R6 R3 K26 ["getDropdownDisplayTextByValue"]
       50 RETURN                           R3 1
