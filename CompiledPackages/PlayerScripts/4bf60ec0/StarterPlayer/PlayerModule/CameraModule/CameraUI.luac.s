PROTO_0:
        0 JUMPIF                           R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 0
        8 JUMPIF                           R0 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["setCameraModeToastOpen"]
       12 LOADB                            R2 0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["SendNotification"]
        8 DUPTABLE                         R4 K9 [{["Title"] = "Camera Control Enabled", ["Text"] = "Right click to toggle", ["Duration"] = 3}]
        9 NAMECALL                         R1 R1 K10 ["SetCore"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StarterGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 LOADB                            R1 0
        8 NEWTABLE                         R2 2 0
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          REF R1
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R3 R2 K4 ["setCameraModeToastEnabled"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          REF R1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R3 R2 K5 ["setCameraModeToastOpen"]
       20 CLOSEUPVALS                      R1
       21 RETURN                           R2 1
