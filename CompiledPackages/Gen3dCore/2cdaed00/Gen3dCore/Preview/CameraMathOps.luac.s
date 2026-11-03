PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["Inverse"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["GetComponents"]
        5 CALL                             R1 1 12
        6 NEWTABLE                         R13 0 16
        8 MOVE                             R14 R4
        9 MOVE                             R15 R5
       10 MOVE                             R16 R6
       11 MOVE                             R17 R1
       12 MOVE                             R18 R7
       13 MOVE                             R19 R8
       14 MOVE                             R20 R9
       15 MOVE                             R21 R2
       16 MOVE                             R22 R10
       17 MOVE                             R23 R11
       18 MOVE                             R24 R12
       19 MOVE                             R25 R3
       20 LOADN                            R26 0
       21 LOADN                            R27 0
       22 LOADN                            R28 0
       23 LOADN                            R29 1
       24 SETLIST                          R13 R14 16 [1]
       26 RETURN                           R13 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["cframeToExtrinsic"]
        3 GETIMPORT                        R4 K3 [CFrame.lookAt]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 ORK                              R7 R2 K4 [{0, 1, 0}]
        8 CALL                             R4 3 -1
        9 CALL                             R3 -1 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["cframeToExtrinsic"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K3 [table.create]
        7 LOADN                            R4 16
        8 LOADN                            R5 0
        9 CALL                             R3 2 1
       10 LOADN                            R6 0
       11 LOADN                            R4 3
       12 LOADN                            R5 1
       13 FORNPREP                         R4
       14 LOADN                            R9 0
       15 LOADN                            R7 3
       16 LOADN                            R8 1
       17 FORNPREP                         R7
       18 LOADN                            R10 0
       19 LOADN                            R13 0
       20 LOADN                            R11 3
       21 LOADN                            R12 1
       22 FORNPREP                         R11
       23 MULK                             R18 R6 K5 [4]
       24 ADD                              R17 R18 R13
       25 ADDK                             R16 R17 K4 [1]
       26 GETTABLE                         R15 R0 R16
       27 MULK                             R19 R13 K5 [4]
       28 ADD                              R18 R19 R9
       29 ADDK                             R17 R18 K4 [1]
       30 GETTABLE                         R16 R2 R17
       31 MUL                              R14 R15 R16
       32 ADD                              R10 R10 R14
       33 FORNLOOP                         R11
       34 MULK                             R13 R6 K5 [4]
       35 ADD                              R12 R13 R9
       36 ADDK                             R11 R12 K4 [1]
       37 SETTABLE                         R10 R3 R11
       38 FORNLOOP                         R7
       39 FORNLOOP                         R4
       40 RETURN                           R3 1

PROTO_3:
        0 FASTCALL1                        MATH_RAD R0 ; [+3]
        1 MOVE                             R10 R0
        2 GETIMPORT                        R9 K3 [math.rad]
        4 CALL                             R9 1 1
        5 DIVK                             R8 R9 K0 [2]
        6 FASTCALL1                        MATH_TAN R8 ; [+2]
        7 GETIMPORT                        R7 K5 [math.tan]
        9 CALL                             R7 1 1
       10 MULK                             R6 R7 K0 [2]
       11 DIV                              R5 R2 R6
       12 DIVK                             R7 R1 K0 [2]
       13 ORK                              R9 R3 K6 [0]
       14 MUL                              R8 R9 R2
       15 SUB                              R6 R7 R8
       16 DIVK                             R8 R2 K0 [2]
       17 ORK                              R10 R4 K6 [0]
       18 MUL                              R9 R10 R2
       19 ADD                              R7 R8 R9
       20 NEWTABLE                         R8 0 9
       22 MOVE                             R9 R5
       23 LOADN                            R10 0
       24 MOVE                             R11 R6
       25 LOADN                            R12 0
       26 MOVE                             R13 R5
       27 MOVE                             R14 R7
       28 LOADN                            R15 0
       29 LOADN                            R16 0
       30 LOADN                            R17 1
       31 SETLIST                          R8 R9 9 [1]
       33 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["cframeToExtrinsic"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["lookAtExtrinsic"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["transformExtrinsic"]
       14 DUPCLOSURE                       R1 K6 [PROTO_3]
       15 SETTABLEKS                       R1 R0 K7 ["fieldOfViewToIntrinsic"]
       17 RETURN                           R0 1
