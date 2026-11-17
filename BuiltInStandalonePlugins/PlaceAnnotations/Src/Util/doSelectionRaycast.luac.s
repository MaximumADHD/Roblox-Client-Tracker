PROTO_0:
        0 GETIMPORT                        R1 K2 [RaycastParams.new]
        2 CALL                             R1 0 1
        3 LOADK                            R2 K3 ["StudioSelectable"]
        4 SETTABLEKS                       R2 R1 K4 ["CollisionGroup"]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K5 ["BruteForceAllSlow"]
        9 GETIMPORT                        R2 K7 [workspace]
       11 GETTABLEKS                       R4 R0 K8 ["Origin"]
       13 GETTABLEKS                       R4 R4 K9 ["Position"]
       15 GETTABLEKS                       R6 R0 K11 ["UnitRay"]
       17 GETTABLEKS                       R6 R6 K12 ["Direction"]
       19 MULK                             R5 R6 K10 [1000]
       20 MOVE                             R6 R1
       21 NAMECALL                         R2 R2 K13 ["Raycast"]
       23 CALL                             R2 4 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
