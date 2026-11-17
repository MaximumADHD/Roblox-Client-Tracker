PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R3 R0 K0 ["rigModel"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 JUMPIFNOT                        R3 ; [+33]
        7 GETIMPORT                        R5 K3 [RaycastParams.new]
        9 CALL                             R5 0 1
       10 GETIMPORT                        R6 K7 [Enum.RaycastFilterType.Include]
       12 SETTABLEKS                       R6 R5 K8 ["FilterType"]
       14 NEWTABLE                         R6 0 1
       16 MOVE                             R7 R3
       17 SETLIST                          R6 R7 1 [1]
       19 SETTABLEKS                       R6 R5 K9 ["FilterDescendantsInstances"]
       21 LOADB                            R6 1
       22 SETTABLEKS                       R6 R5 K10 ["BruteForceAllSlow"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R8 R1 K11 ["Origin"]
       27 GETTABLEKS                       R9 R1 K12 ["Direction"]
       29 MOVE                             R10 R5
       30 NAMECALL                         R6 R6 K13 ["Raycast"]
       32 CALL                             R6 4 1
       33 JUMPIF                           R6 ; [+4]
       34 LOADNIL                          R7
       35 LOADNIL                          R8
       36 LOADNIL                          R9
       37 RETURN                           R7 3
       38 GETTABLEKS                       R4 R6 K14 ["Instance"]
       40 GETTABLEN                        R5 R2 1
       41 JUMPIFNOTEQKNIL                  R5 ; [+8]
       43 LOADNIL                          R5
       44 MOVE                             R6 R4
       45 JUMPIFNOT                        R4 ; [+2]
       46 LOADN                            R7 1
       47 RETURN                           R5 3
       48 LOADNIL                          R7
       49 RETURN                           R5 3
       50 GETTABLEN                        R5 R2 1
       51 LOADNIL                          R6
       52 LOADN                            R7 1
       53 RETURN                           R5 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
