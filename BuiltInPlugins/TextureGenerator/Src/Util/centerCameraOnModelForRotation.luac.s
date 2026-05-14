PROTO_0:
        0 NAMECALL                         R4 R0 K0 ["GetExtentsSize"]
        2 CALL                             R4 1 1
        3 MOVE                             R6 R3
        4 JUMPIF                           R6 ; [+2]
        5 GETTABLEKS                       R6 R4 K1 ["Magnitude"]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K2 ["CAMERA_DISTANCE_SCALE"]
       10 MUL                              R5 R6 R7
       11 NAMECALL                         R6 R1 K3 ["ToEulerAnglesYXZ"]
       13 CALL                             R6 1 3
       14 GETIMPORT                        R9 K6 [CFrame.lookAt]
       16 FASTCALL                         VECTOR ; [+2]
       17 GETIMPORT                        R10 K9 [Vector3.new]
       19 CALL                             R10 0 1
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R12 R12 K10 ["INITIAL_FOCUS_DIRECTION"]
       23 MINUS                            R11 R12
       24 CALL                             R9 2 1
       25 GETIMPORT                        R11 K12 [CFrame.fromEulerAnglesYXZ]
       27 MINUS                            R12 R6
       28 MINUS                            R13 R7
       29 MINUS                            R14 R8
       30 CALL                             R11 3 1
       31 MUL                              R10 R11 R9
       32 GETTABLEKS                       R13 R10 K13 ["LookVector"]
       34 MINUS                            R12 R13
       35 MUL                              R11 R5 R12
       36 GETIMPORT                        R12 K14 [CFrame.new]
       38 MOVE                             R13 R2
       39 JUMPIF                           R13 ; [+4]
       40 FASTCALL                         VECTOR ; [+2]
       41 GETIMPORT                        R13 K9 [Vector3.new]
       43 CALL                             R13 0 1
       44 CALL                             R12 1 1
       45 GETIMPORT                        R14 K14 [CFrame.new]
       47 GETTABLEKS                       R16 R12 K15 ["Position"]
       49 ADD                              R15 R16 R11
       50 CALL                             R14 1 1
       51 MUL                              R13 R14 R10
       52 MOVE                             R14 R13
       53 MOVE                             R15 R12
       54 RETURN                           R14 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
