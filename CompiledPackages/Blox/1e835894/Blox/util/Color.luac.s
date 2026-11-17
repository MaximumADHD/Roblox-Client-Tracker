PROTO_0:
        0 GETIMPORT                        R4 K2 [Color3.new]
        2 LOADN                            R5 1
        3 LOADN                            R6 1
        4 LOADN                            R7 1
        5 CALL                             R4 3 1
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R0 K3 ["Lerp"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R4 K2 [Color3.new]
        2 LOADN                            R5 0
        3 LOADN                            R6 0
        4 LOADN                            R7 0
        5 CALL                             R4 3 1
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R0 K3 ["Lerp"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["ToHSV"]
        2 CALL                             R2 1 3
        3 DIVK                             R8 R1 K2 [360]
        4 ADD                              R7 R2 R8
        5 MODK                             R6 R7 K1 [1]
        6 LOADN                            R7 0
        7 LOADN                            R8 1
        8 FASTCALL                         MATH_CLAMP ; [+2]
        9 GETIMPORT                        R5 K5 [math.clamp]
       11 CALL                             R5 3 1
       12 GETIMPORT                        R6 K8 [Color3.fromHSV]
       14 MOVE                             R7 R5
       15 MOVE                             R8 R3
       16 MOVE                             R9 R4
       17 CALL                             R6 3 -1
       18 RETURN                           R6 -1

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["ToHSV"]
        2 CALL                             R2 1 3
        3 MUL                              R5 R3 R1
        4 ADD                              R3 R3 R5
        5 GETIMPORT                        R5 K3 [Color3.fromHSV]
        7 MOVE                             R6 R2
        8 LOADN                            R9 0
        9 LOADN                            R10 1
       10 FASTCALL3                        MATH_CLAMP R3 R9 R10
       12 MOVE                             R8 R3
       13 GETIMPORT                        R7 K6 [math.clamp]
       15 CALL                             R7 3 1
       16 MOVE                             R8 R4
       17 CALL                             R5 3 -1
       18 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["lighten"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["darken"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["hueRotate"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["saturate"]
       15 RETURN                           R0 1
