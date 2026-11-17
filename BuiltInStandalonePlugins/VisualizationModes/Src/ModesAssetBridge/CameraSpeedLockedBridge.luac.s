PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CameraSpeedLockedUpdated"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["LockCameraSpeed"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["CameraSpeedLockedUpdated"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R0 R1 K2 ["LockCameraSpeed"]
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CameraSpeedLockedUpdated"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["LockCameraSpeed"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 LOADK                            R7 K1 ["RequestCameraSpeedLockedUpdate"]
        5 NEWCLOSURE                       R8 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 NAMECALL                         R5 R0 K2 ["OnInvoke"]
       10 CALL                             R5 3 -1
       11 NAMECALL                         R3 R2 K3 ["add"]
       13 CALL                             R3 -1 0
       14 LOADK                            R7 K4 ["SetCameraSpeedLocked"]
       15 NEWCLOSURE                       R8 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R5 R0 K2 ["OnInvoke"]
       20 CALL                             R5 3 -1
       21 NAMECALL                         R3 R2 K3 ["add"]
       23 CALL                             R3 -1 0
       24 LOADK                            R7 K5 ["LockCameraSpeed"]
       25 NAMECALL                         R5 R1 K6 ["GetPropertyChangedSignal"]
       27 CALL                             R5 2 1
       28 NEWCLOSURE                       R7 P2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 NAMECALL                         R5 R5 K7 ["Connect"]
       33 CALL                             R5 2 -1
       34 NAMECALL                         R3 R2 K3 ["add"]
       36 CALL                             R3 -1 0
       37 RETURN                           R2 1

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
       16 NEWTABLE                         R2 1 0
       18 DUPCLOSURE                       R3 K9 [PROTO_3]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K10 ["new"]
       22 RETURN                           R2 1
