PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StudioDeviceEmulator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 NAMECALL                         R3 R2 K2 ["GetCurrentlyEmulatedDeviceAsync"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R3 K3 ["deviceName"]
       14 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R5 R1 K0 ["Name"]
        2 NAMECALL                         R3 R0 K1 ["GetSimulatorDynamicStateAsync"]
        4 CALL                             R3 2 1
        5 JUMPIFEQKNIL                     R3 ; [+6]
        7 GETTABLEKS                       R4 R1 K0 ["Name"]
        9 GETTABLEKS                       R5 R3 K2 ["Label"]
       11 SETTABLE                         R5 R2 R4
       12 GETTABLEKS                       R5 R1 K0 ["Name"]
       14 GETTABLE                         R4 R2 R5
       15 JUMPIF                           R4 ; [+4]
       16 GETTABLEKS                       R4 R1 K3 ["Config"]
       18 GETTABLEKS                       R4 R4 K4 ["InitialLabel"]
       20 FASTCALL1                        TYPE R4 ; [+3]
       21 MOVE                             R6 R4
       22 GETIMPORT                        R5 K6 [type]
       24 CALL                             R5 1 1
       25 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+3]
       27 JUMPIFNOTEQKS                    R4 K8 [""] ; [+3]
       29 LOADNIL                          R5
       30 RETURN                           R5 1
       31 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetRegisteredSimulatorsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 NEWTABLE                         R4 0 0
        2 NEWCLOSURE                       R7 P0
        3 CAPTURE                          VAL R0
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R6 K1 [pcall]
        7 CALL                             R6 1 2
        8 JUMPIF                           R6 ; [+2]
        9 LOADNIL                          R5
       10 JUMP                             ; [+5]
       11 NAMECALL                         R8 R7 K2 ["GetCurrentlyEmulatedDeviceAsync"]
       13 CALL                             R8 1 1
       14 GETTABLEKS                       R5 R8 K3 ["deviceName"]
       16 JUMPIFEQKNIL                     R5 ; [+10]
       18 JUMPIFEQKS                       R5 K4 [""] ; [+8]
       20 FASTCALL2                        TABLE_INSERT R4 R5 ; [+5]
       22 MOVE                             R7 R4
       23 MOVE                             R8 R5
       24 GETIMPORT                        R6 K7 [table.insert]
       26 CALL                             R6 2 0
       27 JUMPIFNOT                        R1 ; [+30]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          VAL R1
       30 FASTPCALL                        pcall 1 ; [+2]
       31 GETIMPORT                        R6 K1 [pcall]
       33 CALL                             R6 1 2
       34 JUMPIFNOT                        R6 ; [+23]
       35 MOVE                             R8 R7
       36 LOADNIL                          R9
       37 LOADNIL                          R10
       38 FORGPREP                         R8
       39 GETUPVAL                         R14 0
       40 MOVE                             R15 R1
       41 MOVE                             R16 R12
       42 MOVE                             R17 R3
       43 FASTPCALL                        pcall 4 ; [+2]
       44 GETIMPORT                        R13 K1 [pcall]
       46 CALL                             R13 4 2
       47 JUMPIFNOT                        R13 ; [+8]
       48 JUMPIFNOT                        R14 ; [+7]
       49 FASTCALL2                        TABLE_INSERT R4 R14 ; [+5]
       51 MOVE                             R16 R4
       52 MOVE                             R17 R14
       53 GETIMPORT                        R15 K7 [table.insert]
       55 CALL                             R15 2 0
       56 FORGLOOP                         R8 2 ; [-18]
       58 LENGTH                           R7 R4
       59 JUMPIFNOTEQKN                    R7 K8 [0] ; [+7]
       61 LOADK                            R8 K9 ["StudioModes"]
       62 LOADK                            R9 K10 ["SimulationSummaryCurrentDevice"]
       63 NAMECALL                         R6 R2 K11 ["getText"]
       65 CALL                             R6 3 1
       66 JUMP                             ; [+5]
       67 GETIMPORT                        R6 K13 [table.concat]
       69 MOVE                             R7 R4
       70 LOADK                            R8 K14 [" · "]
       71 CALL                             R6 2 1
       72 LOADK                            R9 K9 ["StudioModes"]
       73 LOADK                            R10 K15 ["SimulationSummary"]
       74 DUPTABLE                         R11 K17 [{"summary"}]
       75 SETTABLEKS                       R6 R11 K16 ["summary"]
       77 NAMECALL                         R7 R2 K11 ["getText"]
       79 CALL                             R7 4 -1
       80 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 DUPCLOSURE                       R2 K2 [PROTO_4]
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1
