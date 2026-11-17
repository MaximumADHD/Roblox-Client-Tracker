PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["default"] ; [+7]
        2 LOADK                            R5 K1 ["RecordTabView"]
        3 LOADK                            R6 K2 ["ComputerEmulationDeviceOrientation"]
        4 NAMECALL                         R3 R2 K3 ["getText"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1
        8 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["default"] ; [+7]
        2 LOADK                            R4 K1 ["RecordTabView"]
        3 LOADK                            R5 K2 ["ComputerEmulationDeviceName"]
        4 NAMECALL                         R2 R1 K3 ["getText"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1
        8 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%d x %d %s"]
        3 GETTABLEKS                       R5 R0 K4 ["X"]
        5 FASTCALL1                        MATH_ROUND R5 ; [+2]
        6 GETIMPORT                        R4 K7 [math.round]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R6 R0 K8 ["Y"]
       11 FASTCALL1                        MATH_ROUND R6 ; [+2]
       12 GETIMPORT                        R5 K7 [math.round]
       14 CALL                             R5 1 1
       15 MOVE                             R6 R1
       16 CALL                             R2 4 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["formatDeviceOrientation"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["formatDeviceName"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["format2dResolution"]
       12 RETURN                           R0 1
