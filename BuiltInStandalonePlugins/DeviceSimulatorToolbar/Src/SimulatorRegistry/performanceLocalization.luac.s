PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R4 K1 [pcall]
        7 CALL                             R4 1 2
        8 JUMPIFNOT                        R4 ; [+17]
        9 FASTCALL1                        TYPE R5 ; [+3]
       10 MOVE                             R7 R5
       11 GETIMPORT                        R6 K3 [type]
       13 CALL                             R6 1 1
       14 JUMPIFNOTEQKS                    R6 K4 ["string"] ; [+11]
       16 JUMPIFEQKS                       R5 K5 [""] ; [+9]
       18 LOADK                            R6 K6 ["Studio.DeviceSimulatorToolbar.%*.%*"]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R2
       21 NAMECALL                         R6 R6 K7 ["format"]
       23 CALL                             R6 3 1
       24 JUMPIFNOTEQ                      R5 R6 ; [+2]
       26 RETURN                           R3 1
       27 RETURN                           R5 1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R2
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 NEWCLOSURE                       R11 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R8
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R10 K1 [pcall]
       13 CALL                             R10 1 2
       14 JUMPIFNOT                        R10 ; [+17]
       15 FASTCALL1                        TYPE R11 ; [+3]
       16 MOVE                             R13 R11
       17 GETIMPORT                        R12 K3 [type]
       19 CALL                             R12 1 1
       20 JUMPIFNOTEQKS                    R12 K4 ["string"] ; [+11]
       22 JUMPIFEQKS                       R11 K5 [""] ; [+9]
       24 LOADK                            R12 K6 ["Studio.DeviceSimulatorToolbar.%*.%*"]
       25 MOVE                             R14 R1
       26 MOVE                             R15 R8
       27 NAMECALL                         R12 R12 K7 ["format"]
       29 CALL                             R12 3 1
       30 JUMPIFNOTEQ                      R11 R12 ; [+3]
       32 MOVE                             R9 R7
       33 JUMP                             ; [+1]
       34 MOVE                             R9 R11
       35 SETTABLE                         R9 R3 R7
       36 FORGLOOP                         R4 2 ; [-31]
       38 RETURN                           R3 1

PROTO_3:
        0 JUMPIFEQKS                       R1 K0 ["Performance"] ; [+2]
        2 RETURN                           R1 1
        3 LOADK                            R5 K0 ["Performance"]
        4 LOADK                            R6 K1 ["Name"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R5
        8 CAPTURE                          VAL R6
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R3 K3 [pcall]
       12 CALL                             R3 1 2
       13 JUMPIFNOT                        R3 ; [+11]
       14 FASTCALL1                        TYPE R4 ; [+3]
       15 MOVE                             R6 R4
       16 GETIMPORT                        R5 K5 [type]
       18 CALL                             R5 1 1
       19 JUMPIFNOTEQKS                    R5 K6 ["string"] ; [+5]
       21 JUMPIFEQKS                       R4 K7 [""] ; [+3]
       23 JUMPIFNOTEQKS                    R4 K8 ["Studio.DeviceSimulatorToolbar.Performance.Name"] ; [+3]
       25 MOVE                             R2 R1
       26 RETURN                           R2 1
       27 MOVE                             R2 R4
       28 RETURN                           R2 1

PROTO_4:
        0 JUMPIFEQKS                       R1 K0 ["Performance"] ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 LOADK                            R4 K1 ["PerformanceMode"]
        7 GETUPVAL                         R5 1
        8 CALL                             R2 3 1
        9 NEWTABLE                         R3 4 0
       11 SETTABLEKS                       R2 R3 K2 ["graphics-mode"]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R0
       15 LOADK                            R6 K3 ["PerformanceQuality"]
       16 GETUPVAL                         R7 2
       17 CALL                             R4 3 1
       18 SETTABLEKS                       R4 R3 K4 ["graphics-quality"]
       20 SETTABLEKS                       R2 R3 K5 ["memory-mode"]
       22 GETUPVAL                         R4 0
       23 MOVE                             R5 R0
       24 LOADK                            R6 K6 ["PerformanceBackground"]
       25 GETUPVAL                         R7 3
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K7 ["memory-load"]
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 ["SelectedDevice"]
        4 SETTABLEKS                       R1 R0 K1 ["Selected device"]
        6 LOADK                            R1 K2 ["Manual"]
        7 SETTABLEKS                       R1 R0 K2 ["Manual"]
        9 LOADK                            R1 K3 ["NotSimulated"]
       10 SETTABLEKS                       R1 R0 K4 ["Not simulated"]
       12 NEWTABLE                         R1 4 0
       14 LOADK                            R2 K5 ["Low"]
       15 SETTABLEKS                       R2 R1 K5 ["Low"]
       17 LOADK                            R2 K6 ["Mid"]
       18 SETTABLEKS                       R2 R1 K6 ["Mid"]
       20 LOADK                            R2 K7 ["High"]
       21 SETTABLEKS                       R2 R1 K7 ["High"]
       23 NEWTABLE                         R2 1 0
       25 LOADK                            R3 K8 ["Automatic"]
       26 SETTABLEKS                       R3 R2 K8 ["Automatic"]
       28 DUPTABLE                         R3 K11 [{["SIMULATOR_NAME"] = "Performance"}]
       29 DUPCLOSURE                       R4 K12 [PROTO_1]
       30 DUPCLOSURE                       R5 K13 [PROTO_2]
       31 DUPCLOSURE                       R6 K14 [PROTO_3]
       32 SETTABLEKS                       R6 R3 K15 ["getSimulatorDisplayName"]
       34 DUPCLOSURE                       R6 K16 [PROTO_4]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R6 R3 K17 ["getDropdownDisplayTextByValue"]
       41 RETURN                           R3 1
