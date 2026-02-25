PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["StudioService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R1 K4 ["GetClassIcon"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+22]
        3 DUPTABLE                         R1 K3 [{"Image", "ImageRectSize", "ImageRectOffset"}]
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R0
        7 CONCAT                           R2 R3 R4
        8 SETTABLEKS                       R2 R1 K0 ["Image"]
       10 GETIMPORT                        R2 K7 [Vector2.new]
       12 LOADN                            R3 24
       13 LOADN                            R4 24
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K1 ["ImageRectSize"]
       17 GETIMPORT                        R2 K7 [Vector2.new]
       19 LOADN                            R3 0
       20 LOADN                            R4 0
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K2 ["ImageRectOffset"]
       24 RETURN                           R1 1
       25 GETIMPORT                        R1 K9 [pcall]
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 CALL                             R1 1 2
       31 JUMPIFNOT                        R1 ; [+1]
       32 RETURN                           R2 1
       33 GETUPVAL                         R3 1
       34 LOADK                            R4 K10 ["Folder"]
       35 CALL                             R3 1 -1
       36 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K8 [{"Branch", "Consumer", "Fragment", "Functional", "Portal", "Provider", "Pure", "Stateful"}]
        2 LOADK                            R1 K9 [5923556358]
        3 SETTABLEKS                       R1 R0 K0 ["Branch"]
        5 LOADK                            R1 K10 [5923556689]
        6 SETTABLEKS                       R1 R0 K1 ["Consumer"]
        8 LOADK                            R1 K11 [5923557006]
        9 SETTABLEKS                       R1 R0 K2 ["Fragment"]
       11 LOADK                            R1 K12 [5923557211]
       12 SETTABLEKS                       R1 R0 K3 ["Functional"]
       14 LOADK                            R1 K13 [5923557429]
       15 SETTABLEKS                       R1 R0 K4 ["Portal"]
       17 LOADK                            R1 K14 [5923557657]
       18 SETTABLEKS                       R1 R0 K5 ["Provider"]
       20 LOADK                            R1 K15 [5923557814]
       21 SETTABLEKS                       R1 R0 K6 ["Pure"]
       23 LOADK                            R1 K16 [5923557987]
       24 SETTABLEKS                       R1 R0 K7 ["Stateful"]
       26 DUPCLOSURE                       R1 K17 [PROTO_0]
       27 DUPCLOSURE                       R2 K18 [PROTO_2]
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 RETURN                           R2 1
