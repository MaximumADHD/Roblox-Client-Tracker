PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R3 R0 K0 ["LookVector"]
        3 GETTABLEKS                       R3 R3 K1 ["Y"]
        5 FASTCALL1                        MATH_ABS R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.abs]
        8 CALL                             R2 1 1
        9 LOADK                            R3 K5 [0.9]
       10 JUMPIFNOTLT                      R3 R2 ; [+4]
       12 GETTABLEKS                       R1 R0 K6 ["UpVector"]
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R1 R0 K0 ["LookVector"]
       17 GETTABLEKS                       R3 R1 K7 ["X"]
       19 LOADN                            R4 0
       20 GETTABLEKS                       R5 R1 K8 ["Z"]
       22 FASTCALL                         VECTOR ; [+2]
       23 GETIMPORT                        R2 K11 [Vector3.new]
       25 CALL                             R2 3 1
       26 GETTABLEKS                       R1 R2 K12 ["Unit"]
       28 GETIMPORT                        R2 K15 [CFrame.lookAt]
       30 GETTABLEKS                       R3 R0 K16 ["Position"]
       32 GETTABLEKS                       R5 R0 K16 ["Position"]
       34 ADD                              R4 R5 R1
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["CalculateTargetCFrame"]
        6 RETURN                           R0 1
