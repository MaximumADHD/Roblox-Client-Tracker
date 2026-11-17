PROTO_0:
        0 DUPTABLE                         R1 K1 [{"deviceName"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["deviceName"]
        4 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"GetCurrentlyEmulatedDeviceAsync"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R1 K0 ["GetCurrentlyEmulatedDeviceAsync"]
        5 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K2 [{"Name", "Config"}]
        7 GETTABLEKS                       R10 R6 K3 ["name"]
        9 SETTABLEKS                       R10 R9 K0 ["Name"]
       11 DUPTABLE                         R10 K5 [{"InitialLabel"}]
       12 GETTABLEKS                       R11 R6 K6 ["initialLabel"]
       14 SETTABLEKS                       R11 R10 K4 ["InitialLabel"]
       16 SETTABLEKS                       R10 R9 K1 ["Config"]
       18 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       20 MOVE                             R8 R1
       21 GETIMPORT                        R7 K9 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-19]
       26 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["failing"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETIMPORT                        R2 K2 [error]
        6 LOADK                            R3 K3 ["%* failed"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 2 1
       11 CALL                             R2 1 0
       12 GETTABLEKS                       R3 R0 K5 ["states"]
       14 GETTABLE                         R2 R3 R1
       15 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R1 K4 [{"states", "failing", "GetRegisteredSimulatorsAsync", "GetSimulatorDynamicStateAsync"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["states"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["failing"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K2 ["GetRegisteredSimulatorsAsync"]
       13 DUPCLOSURE                       R2 K5 [PROTO_3]
       14 SETTABLEKS                       R2 R1 K3 ["GetSimulatorDynamicStateAsync"]
       16 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOTEQKNIL                  R2 ; [+9]
        4 GETIMPORT                        R3 K1 [error]
        6 LOADK                            R4 K2 ["No test plugin component %*"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 CALL                             R3 1 0
       12 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"GetPluginComponent"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R1 K0 ["GetPluginComponent"]
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["createEmulator"]
        6 DUPCLOSURE                       R1 K2 [PROTO_4]
        7 SETTABLEKS                       R1 R0 K3 ["createRegistry"]
        9 DUPCLOSURE                       R1 K4 [PROTO_6]
       10 SETTABLEKS                       R1 R0 K5 ["createPlugin"]
       12 RETURN                           R0 1
