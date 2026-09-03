PROTO_0:
        0 GETIMPORT                        R3 K1 [pcall]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 2
        4 JUMPIFNOT                        R3 ; [+11]
        5 FASTCALL1                        TYPE R4 ; [+3]
        6 MOVE                             R6 R4
        7 GETIMPORT                        R5 K3 [type]
        9 CALL                             R5 1 1
       10 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+5]
       12 JUMPIFEQKS                       R4 K5 [""] ; [+3]
       14 JUMPIFNOTEQ                      R4 R1 ; [+2]
       16 RETURN                           R2 1
       17 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DeviceSimulator"]
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R0 R0 K1 ["getProjectText"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 LOADK                            R7 K0 ["Studio.DeviceSimulator.%*.%*"]
        5 MOVE                             R9 R1
        6 MOVE                             R10 R2
        7 NAMECALL                         R7 R7 K1 ["format"]
        9 CALL                             R7 3 1
       10 MOVE                             R6 R7
       11 GETIMPORT                        R7 K3 [pcall]
       13 MOVE                             R8 R5
       14 CALL                             R7 1 2
       15 JUMPIFNOT                        R7 ; [+11]
       16 FASTCALL1                        TYPE R8 ; [+3]
       17 MOVE                             R10 R8
       18 GETIMPORT                        R9 K5 [type]
       20 CALL                             R9 1 1
       21 JUMPIFNOTEQKS                    R9 K6 ["string"] ; [+5]
       23 JUMPIFEQKS                       R8 K7 [""] ; [+3]
       25 JUMPIFNOTEQ                      R8 R6 ; [+3]
       27 MOVE                             R4 R3
       28 RETURN                           R4 1
       29 MOVE                             R4 R8
       30 RETURN                           R4 1

PROTO_3:
        0 JUMPIFEQKS                       R1 K0 ["Network"] ; [+2]
        2 RETURN                           R1 1
        3 LOADK                            R4 K0 ["Network"]
        4 LOADK                            R5 K1 ["Name"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R5
        9 GETIMPORT                        R4 K3 [pcall]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 2
       13 JUMPIFNOT                        R4 ; [+11]
       14 FASTCALL1                        TYPE R5 ; [+3]
       15 MOVE                             R7 R5
       16 GETIMPORT                        R6 K5 [type]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKS                    R6 K6 ["string"] ; [+5]
       21 JUMPIFEQKS                       R5 K7 [""] ; [+3]
       23 JUMPIFNOTEQKS                    R5 K8 ["Studio.DeviceSimulator.Network.Name"] ; [+3]
       25 MOVE                             R2 R1
       26 RETURN                           R2 1
       27 MOVE                             R2 R5
       28 RETURN                           R2 1

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
       10 LOADK                            R10 K1 ["NetworkPreset"]
       11 NEWCLOSURE                       R9 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R10
       14 CAPTURE                          VAL R7
       15 LOADK                            R11 K2 ["Studio.DeviceSimulator.NetworkPreset.%*"]
       16 MOVE                             R13 R7
       17 NAMECALL                         R11 R11 K3 ["format"]
       19 CALL                             R11 2 1
       20 MOVE                             R10 R11
       21 GETIMPORT                        R11 K5 [pcall]
       23 MOVE                             R12 R9
       24 CALL                             R11 1 2
       25 JUMPIFNOT                        R11 ; [+11]
       26 FASTCALL1                        TYPE R12 ; [+3]
       27 MOVE                             R14 R12
       28 GETIMPORT                        R13 K7 [type]
       30 CALL                             R13 1 1
       31 JUMPIFNOTEQKS                    R13 K8 ["string"] ; [+5]
       33 JUMPIFEQKS                       R12 K9 [""] ; [+3]
       35 JUMPIFNOTEQ                      R12 R10 ; [+3]
       37 MOVE                             R8 R6
       38 JUMP                             ; [+1]
       39 MOVE                             R8 R12
       40 SETTABLE                         R8 R2 R6
       41 FORGLOOP                         R3 2 ; [-32]
       43 NEWCLOSURE                       R4 P1
       44 CAPTURE                          VAL R0
       45 GETIMPORT                        R5 K5 [pcall]
       47 MOVE                             R6 R4
       48 CALL                             R5 1 2
       49 JUMPIFNOT                        R5 ; [+11]
       50 FASTCALL1                        TYPE R6 ; [+3]
       51 MOVE                             R8 R6
       52 GETIMPORT                        R7 K7 [type]
       54 CALL                             R7 1 1
       55 JUMPIFNOTEQKS                    R7 K8 ["string"] ; [+5]
       57 JUMPIFEQKS                       R6 K9 [""] ; [+3]
       59 JUMPIFNOTEQKS                    R6 K10 ["Studio.DeviceSimulatorToolbar.SimulatorPreset.Custom"] ; [+3]
       61 LOADK                            R3 K11 ["Custom"]
       62 JUMP                             ; [+1]
       63 MOVE                             R3 R6
       64 SETTABLEKS                       R3 R2 K11 ["Custom"]
       66 NEWTABLE                         R3 1 0
       68 SETTABLEKS                       R2 R3 K12 ["preset"]
       70 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADK                            R1 K0 ["IdealFiber"]
        4 SETTABLEKS                       R1 R0 K1 ["Ideal Fiber"]
        6 LOADK                            R1 K2 ["WiredBroadband"]
        7 SETTABLEKS                       R1 R0 K3 ["Wired Broadband"]
        9 LOADK                            R1 K4 ["HomeWifi"]
       10 SETTABLEKS                       R1 R0 K5 ["Home Wi-Fi"]
       12 LOADK                            R1 K6 ["StandardMobile"]
       13 SETTABLEKS                       R1 R0 K7 ["Standard Mobile (4G/LTE)"]
       15 LOADK                            R1 K8 ["BadConnection"]
       16 SETTABLEKS                       R1 R0 K9 ["Bad Connection (3G)"]
       18 NEWTABLE                         R1 2 0
       20 DUPCLOSURE                       R2 K10 [PROTO_0]
       21 DUPCLOSURE                       R3 K11 [PROTO_2]
       22 DUPCLOSURE                       R4 K12 [PROTO_3]
       23 SETTABLEKS                       R4 R1 K13 ["getSimulatorDisplayName"]
       25 DUPCLOSURE                       R4 K14 [PROTO_5]
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R4 R1 K15 ["getDropdownDisplayTextByValue"]
       29 RETURN                           R1 1
