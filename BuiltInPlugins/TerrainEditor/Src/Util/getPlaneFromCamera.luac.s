PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CurrentCamera"]
        3 GETTABLEKS                       R0 R1 K1 ["CFrame"]
        5 GETIMPORT                        R1 K3 [CFrame.Angles]
        7 LOADK                            R2 K4 [1.5707963267949]
        8 LOADN                            R3 0
        9 LOADN                            R4 0
       10 CALL                             R1 3 1
       11 GETTABLEKS                       R3 R0 K5 ["Position"]
       13 GETTABLEKS                       R5 R0 K7 ["LookVector"]
       15 MULK                             R4 R5 K6 [64]
       16 ADD                              R2 R3 R4
       17 ADD                              R3 R1 R2
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
