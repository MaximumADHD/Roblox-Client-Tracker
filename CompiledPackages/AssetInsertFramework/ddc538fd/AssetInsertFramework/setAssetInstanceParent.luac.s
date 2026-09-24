PROTO_0:
        0 LOADK                            R4 K0 ["Sky"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+5]
        5 LOADK                            R4 K2 ["Atmosphere"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 0
       11 SETTABLEKS                       R2 R0 K3 ["Parent"]
       13 RETURN                           R0 0
       14 LOADK                            R4 K4 ["MaterialVariant"]
       15 NAMECALL                         R2 R0 K1 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+4]
       19 GETUPVAL                         R2 1
       20 SETTABLEKS                       R2 R0 K3 ["Parent"]
       22 RETURN                           R0 0
       23 JUMPIFNOT                        R1 ; [+3]
       24 SETTABLEKS                       R1 R0 K3 ["Parent"]
       26 RETURN                           R0 0
       27 GETIMPORT                        R2 K6 [game]
       29 GETTABLEKS                       R2 R2 K7 ["Workspace"]
       31 SETTABLEKS                       R2 R0 K3 ["Parent"]
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Lighting"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MaterialService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
