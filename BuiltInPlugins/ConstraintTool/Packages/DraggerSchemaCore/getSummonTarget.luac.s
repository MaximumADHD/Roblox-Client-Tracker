PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getViewportSize"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R5 R1 K1 ["Position"]
        5 NAMECALL                         R3 R0 K2 ["worldToViewportPoint"]
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R4 R3 K3 ["X"]
       10 GETTABLEKS                       R5 R3 K4 ["Y"]
       12 LOADB                            R6 0
       13 LOADN                            R7 0
       14 JUMPIFNOTLE                      R7 R4 ; [+16]
       16 LOADB                            R6 0
       17 GETTABLEKS                       R7 R2 K3 ["X"]
       19 JUMPIFNOTLE                      R4 R7 ; [+11]
       21 LOADB                            R6 0
       22 LOADN                            R7 0
       23 JUMPIFNOTLE                      R7 R5 ; [+7]
       25 GETTABLEKS                       R7 R2 K4 ["Y"]
       27 JUMPIFLE                         R5 R7 ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R5 R2 K0 ["Position"]
        2 NAMECALL                         R3 R0 K1 ["getHandleScale"]
        4 CALL                             R3 2 1
        5 LOADN                            R6 3
        6 MUL                              R5 R6 R3
        7 NAMECALL                         R6 R0 K2 ["getSummonMarginFactor"]
        9 CALL                             R6 1 1
       10 MUL                              R4 R5 R6
       11 GETTABLEKS                       R6 R1 K3 ["Unit"]
       13 GETTABLEKS                       R8 R2 K0 ["Position"]
       15 NAMECALL                         R6 R6 K4 ["Distance"]
       17 CALL                             R6 2 1
       18 JUMPIFLT                         R6 R4 ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 1
        6 JUMPIFNOT                        R2 ; [+77]
        7 NAMECALL                         R4 R0 K0 ["getViewportSize"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R7 R2 K1 ["Position"]
       12 NAMECALL                         R5 R0 K2 ["worldToViewportPoint"]
       14 CALL                             R5 2 1
       15 GETTABLEKS                       R6 R5 K3 ["X"]
       17 GETTABLEKS                       R7 R5 K4 ["Y"]
       19 LOADB                            R3 0
       20 LOADN                            R8 0
       21 JUMPIFNOTLE                      R8 R6 ; [+16]
       23 LOADB                            R3 0
       24 GETTABLEKS                       R8 R4 K3 ["X"]
       26 JUMPIFNOTLE                      R6 R8 ; [+11]
       28 LOADB                            R3 0
       29 LOADN                            R8 0
       30 JUMPIFNOTLE                      R8 R7 ; [+7]
       32 GETTABLEKS                       R8 R4 K4 ["Y"]
       34 JUMPIFLE                         R7 R8 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 JUMPIFNOT                        R3 ; [+24]
       39 GETTABLEKS                       R6 R2 K1 ["Position"]
       41 NAMECALL                         R4 R0 K5 ["getHandleScale"]
       43 CALL                             R4 2 1
       44 LOADN                            R7 3
       45 MUL                              R6 R7 R4
       46 NAMECALL                         R7 R0 K6 ["getSummonMarginFactor"]
       48 CALL                             R7 1 1
       49 MUL                              R5 R6 R7
       50 GETTABLEKS                       R6 R1 K7 ["Unit"]
       52 GETTABLEKS                       R8 R2 K1 ["Position"]
       54 NAMECALL                         R6 R6 K8 ["Distance"]
       56 CALL                             R6 2 1
       57 JUMPIFLT                         R6 R5 ; [+2]
       59 LOADB                            R3 0 +1
       60 LOADB                            R3 1
       61 JUMPIFNOT                        R3 ; [+1]
       62 RETURN                           R2 1
       63 GETIMPORT                        R3 K10 [workspace]
       65 GETTABLEKS                       R5 R1 K11 ["Origin"]
       67 GETTABLEKS                       R6 R1 K12 ["Direction"]
       69 GETUPVAL                         R7 1
       70 NAMECALL                         R3 R3 K13 ["Raycast"]
       72 CALL                             R3 4 1
       73 JUMPIFNOT                        R3 ; [+10]
       74 GETTABLEKS                       R7 R3 K14 ["Instance"]
       76 GETTABLEKS                       R6 R7 K15 ["CFrame"]
       78 GETTABLEKS                       R5 R6 K16 ["Rotation"]
       80 GETTABLEKS                       R6 R3 K1 ["Position"]
       82 ADD                              R4 R5 R6
       83 RETURN                           R4 1
       84 LOADNIL                          R3
       85 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K3 ["DraggerFramework"]
        9 GETIMPORT                        R3 K5 [require]
       11 GETTABLEKS                       R5 R2 K6 ["Utility"]
       13 GETTABLEKS                       R4 R5 K7 ["getEdgeHotspot"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K5 [require]
       18 GETTABLEKS                       R6 R2 K6 ["Utility"]
       20 GETTABLEKS                       R5 R6 K8 ["CursorGroupName"]
       22 CALL                             R4 1 1
       23 DUPCLOSURE                       R5 K9 [PROTO_0]
       24 DUPCLOSURE                       R6 K10 [PROTO_1]
       25 GETIMPORT                        R7 K13 [RaycastParams.new]
       27 CALL                             R7 0 1
       28 LOADB                            R8 1
       29 SETTABLEKS                       R8 R7 K14 ["BruteForceAllSlow"]
       31 SETTABLEKS                       R4 R7 K15 ["CollisionGroup"]
       33 DUPCLOSURE                       R8 K16 [PROTO_2]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R7
       36 RETURN                           R8 1
