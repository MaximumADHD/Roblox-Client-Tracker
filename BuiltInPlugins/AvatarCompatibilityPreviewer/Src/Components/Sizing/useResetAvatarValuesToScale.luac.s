PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Avatar"]
        3 GETTABLEKS                       R0 R1 K1 ["WorldModel"]
        5 LOADK                            R2 K2 ["Humanoid"]
        6 NAMECALL                         R0 R0 K3 ["FindFirstChildOfClass"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 16
        6 SETTABLEKS                       R1 R0 K1 ["WalkSpeed"]
        8 GETUPVAL                         R0 1
        9 LOADN                            R1 50
       10 SETTABLEKS                       R1 R0 K2 ["JumpPower"]
       12 GETUPVAL                         R0 1
       13 LOADK                            R1 K3 [7.2]
       14 SETTABLEKS                       R1 R0 K4 ["JumpHeight"]
       16 GETUPVAL                         R0 1
       17 LOADN                            R1 100
       18 SETTABLEKS                       R1 R0 K5 ["NameDisplayDistance"]
       20 GETUPVAL                         R0 1
       21 LOADN                            R1 100
       22 SETTABLEKS                       R1 R0 K6 ["HealthDisplayDistance"]
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 1
       26 LOADN                            R2 16
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K7 ["Avatar"]
       30 GETTABLEKS                       R3 R4 K8 ["WorldModelScale"]
       32 MUL                              R1 R2 R3
       33 SETTABLEKS                       R1 R0 K1 ["WalkSpeed"]
       35 GETUPVAL                         R0 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K7 ["Avatar"]
       39 GETTABLEKS                       R3 R4 K8 ["WorldModelScale"]
       41 FASTCALL1                        MATH_SQRT R3 ; [+2]
       42 GETIMPORT                        R2 K12 [math.sqrt]
       44 CALL                             R2 1 1
       45 MULK                             R1 R2 K9 [50]
       46 SETTABLEKS                       R1 R0 K2 ["JumpPower"]
       48 GETUPVAL                         R0 1
       49 LOADK                            R2 K3 [7.2]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R4 R5 K7 ["Avatar"]
       53 GETTABLEKS                       R3 R4 K8 ["WorldModelScale"]
       55 MUL                              R1 R2 R3
       56 SETTABLEKS                       R1 R0 K4 ["JumpHeight"]
       58 GETUPVAL                         R0 1
       59 LOADN                            R2 100
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R4 R5 K7 ["Avatar"]
       63 GETTABLEKS                       R3 R4 K8 ["WorldModelScale"]
       65 MUL                              R1 R2 R3
       66 SETTABLEKS                       R1 R0 K5 ["NameDisplayDistance"]
       68 GETUPVAL                         R0 1
       69 LOADN                            R2 100
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K7 ["Avatar"]
       73 GETTABLEKS                       R3 R4 K8 ["WorldModelScale"]
       75 MUL                              R1 R2 R3
       76 SETTABLEKS                       R1 R0 K6 ["HealthDisplayDistance"]
       78 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R5 R0 K1 ["Avatar"]
        9 GETTABLEKS                       R4 R5 K2 ["WorldModel"]
       11 GETTABLEKS                       R6 R0 K1 ["Avatar"]
       13 GETTABLEKS                       R5 R6 K3 ["LatestWorldModelHash"]
       15 SETLIST                          R3 R4 2 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K4 ["useEffect"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R4 0 5
       26 GETTABLEKS                       R5 R0 K5 ["Enabled"]
       28 GETTABLEKS                       R7 R0 K1 ["Avatar"]
       30 GETTABLEKS                       R6 R7 K2 ["WorldModel"]
       32 GETTABLEKS                       R8 R0 K1 ["Avatar"]
       34 GETTABLEKS                       R7 R8 K3 ["LatestWorldModelHash"]
       36 GETTABLEKS                       R9 R0 K1 ["Avatar"]
       38 GETTABLEKS                       R8 R9 K6 ["WorldModelScale"]
       40 MOVE                             R9 R1
       41 SETLIST                          R4 R5 5 [1]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_2]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
