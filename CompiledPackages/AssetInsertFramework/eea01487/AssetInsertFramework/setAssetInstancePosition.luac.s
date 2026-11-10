PROTO_0:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 CALL                             R3 2 0
       10 RETURN                           R0 0
       11 LOADK                            R5 K2 ["BasePart"]
       12 NAMECALL                         R3 R0 K1 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+27]
       16 JUMPIFNOT                        R2 ; [+26]
       17 GETIMPORT                        R3 K5 [Instance.new]
       19 LOADK                            R4 K0 ["Model"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R0 K6 ["Parent"]
       23 GETIMPORT                        R4 K8 [game]
       25 GETTABLEKS                       R4 R4 K9 ["Workspace"]
       27 SETTABLEKS                       R4 R3 K6 ["Parent"]
       29 MOVE                             R6 R1
       30 NAMECALL                         R4 R3 K10 ["MoveTo"]
       32 CALL                             R4 2 0
       33 LOADNIL                          R4
       34 SETTABLEKS                       R4 R0 K6 ["Parent"]
       36 LOADNIL                          R4
       37 SETTABLEKS                       R4 R3 K6 ["Parent"]
       39 NAMECALL                         R4 R3 K11 ["Destroy"]
       41 CALL                             R4 1 0
       42 RETURN                           R0 0
       43 LOADK                            R5 K12 ["PVInstance"]
       44 NAMECALL                         R3 R0 K1 ["IsA"]
       46 CALL                             R3 2 1
       47 JUMPIFNOT                        R3 ; [+7]
       48 GETIMPORT                        R5 K14 [CFrame.new]
       50 MOVE                             R6 R1
       51 CALL                             R5 1 -1
       52 NAMECALL                         R3 R0 K15 ["PivotTo"]
       54 CALL                             R3 -1 0
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["fastMoveTo"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
