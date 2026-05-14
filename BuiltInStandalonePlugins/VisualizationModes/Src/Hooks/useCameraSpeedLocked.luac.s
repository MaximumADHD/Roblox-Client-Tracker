PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 LOADK                            R5 K1 ["CameraSpeedLockedUpdated"]
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R3 R3 K2 ["OnInvoke"]
       10 CALL                             R3 3 -1
       11 NAMECALL                         R1 R0 K3 ["giveTask"]
       13 CALL                             R1 -1 0
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RequestCameraSpeedLockedUpdate"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["SetCameraSpeedLocked"]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R0 R0 K1 ["Invoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R2
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R5 0 0
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R5 0 1
       34 MOVE                             R6 R1
       35 SETLIST                          R5 R6 1 [1]
       37 CALL                             R3 2 0
       38 ORK                              R3 R1 K2 [False]
       39 MOVE                             R4 R2
       40 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Maid"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_5]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 RETURN                           R4 1
