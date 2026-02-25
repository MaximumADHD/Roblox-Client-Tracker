PROTO_0:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R1 R2 K2 ["Workspace"]
        4 GETTABLEKS                       R0 R1 K3 ["CurrentCamera"]
        6 JUMPIF                           R0 ; [+2]
        7 LOADK                            R1 K4 [{0, 0, 0}]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R2 R0 K6 ["ViewportSize"]
       11 DIVK                             R1 R2 K5 [2]
       12 GETTABLEKS                       R4 R1 K7 ["X"]
       14 GETTABLEKS                       R5 R1 K8 ["Y"]
       16 LOADN                            R6 0
       17 NAMECALL                         R2 R0 K9 ["ViewportPointToRay"]
       19 CALL                             R2 4 1
       20 GETIMPORT                        R3 K12 [Ray.new]
       22 GETTABLEKS                       R4 R2 K13 ["Origin"]
       24 GETTABLEKS                       R6 R2 K15 ["Direction"]
       26 MULK                             R5 R6 K14 [2048]
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K17 [RaycastParams.new]
       30 CALL                             R4 0 1
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K18 ["BruteForceAllSlow"]
       34 GETIMPORT                        R6 K1 [game]
       36 GETTABLEKS                       R5 R6 K2 ["Workspace"]
       38 GETTABLEKS                       R7 R3 K13 ["Origin"]
       40 GETTABLEKS                       R8 R3 K15 ["Direction"]
       42 MOVE                             R9 R4
       43 NAMECALL                         R5 R5 K19 ["Raycast"]
       45 CALL                             R5 4 1
       46 JUMPIFNOT                        R5 ; [+3]
       47 GETTABLEKS                       R6 R5 K20 ["Position"]
       49 RETURN                           R6 1
       50 GETTABLEKS                       R8 R0 K21 ["CFrame"]
       52 GETTABLEKS                       R7 R8 K20 ["Position"]
       54 GETTABLEKS                       R9 R2 K15 ["Direction"]
       56 MULK                             R8 R9 K22 [64]
       57 ADD                              R6 R7 R8
       58 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
