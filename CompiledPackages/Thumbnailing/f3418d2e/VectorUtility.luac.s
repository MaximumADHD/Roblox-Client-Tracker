PROTO_0:
        0 GETIMPORT                        R3 K2 [CFrame.fromEulerAnglesXYZ]
        2 FASTCALL1                        MATH_RAD R0 ; [+3]
        3 MOVE                             R5 R0
        4 GETIMPORT                        R4 K5 [math.rad]
        6 CALL                             R4 1 1
        7 FASTCALL1                        MATH_RAD R1 ; [+3]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R5 K5 [math.rad]
       11 CALL                             R5 1 1
       12 LOADN                            R6 0
       13 CALL                             R3 3 1
       14 GETTABLEKS                       R5 R3 K6 ["LookVector"]
       16 MUL                              R4 R5 R2
       17 RETURN                           R4 1

PROTO_1:
        0 LOADK                            R4 K0 ["/"]
        1 NAMECALL                         R2 R0 K1 ["split"]
        3 CALL                             R2 2 -1
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R1 K3 [unpack]
        7 CALL                             R1 -1 3
        8 FASTCALL1                        TONUMBER R1 ; [+3]
        9 MOVE                             R5 R1
       10 GETIMPORT                        R4 K5 [tonumber]
       12 CALL                             R4 1 1
       13 FASTCALL1                        TONUMBER R2 ; [+3]
       14 MOVE                             R6 R2
       15 GETIMPORT                        R5 K5 [tonumber]
       17 CALL                             R5 1 1
       18 FASTCALL1                        TONUMBER R3 ; [+3]
       19 MOVE                             R7 R3
       20 GETIMPORT                        R6 K5 [tonumber]
       22 CALL                             R6 1 1
       23 JUMPIFNOT                        R4 ; [+10]
       24 JUMPIFNOT                        R5 ; [+9]
       25 JUMPIFNOT                        R6 ; [+8]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K6 ["Vector3FromXYRotPlusDistance"]
       29 MOVE                             R8 R4
       30 MOVE                             R9 R5
       31 MOVE                             R10 R6
       32 CALL                             R7 3 -1
       33 RETURN                           R7 -1
       34 LOADK                            R7 K7 [{0, 0, 0}]
       35 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["Vector3FromXYRotPlusDistance"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["Vector3FromJson"]
       10 RETURN                           R0 1
