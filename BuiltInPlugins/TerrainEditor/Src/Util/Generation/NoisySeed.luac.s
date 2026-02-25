PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["X"]
        2 GETTABLEKS                       R2 R0 K1 ["Y"]
        4 GETTABLEKS                       R3 R0 K2 ["Z"]
        6 ADD                              R9 R1 R2
        7 ADD                              R8 R9 R3
        8 ADDK                             R7 R8 K3 [7]
        9 GETUPVAL                         R8 0
       10 ADD                              R6 R7 R8
       11 GETUPVAL                         R9 0
       12 SUB                              R8 R9 R1
       13 ADDK                             R9 R3 K3 [7]
       14 MUL                              R7 R8 R9
       15 ADD                              R5 R6 R7
       16 SUBRK                            R7 R3 K2 ["Z"]
       17 GETUPVAL                         R9 0
       18 ADD                              R8 R9 R3
       19 MUL                              R6 R7 R8
       20 ADD                              R4 R5 R6
       21 GETUPVAL                         R9 1
       22 LENGTH                           R8 R9
       23 FASTCALL2                        MATH_FMOD R4 R8 ; [+4]
       25 MOVE                             R7 R4
       26 GETIMPORT                        R6 K6 [math.fmod]
       28 CALL                             R6 2 1
       29 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       30 GETIMPORT                        R5 K8 [math.floor]
       32 CALL                             R5 1 1
       33 LOADN                            R6 0
       34 JUMPIFNOTLT                      R4 R6 ; [+14]
       36 GETUPVAL                         R10 1
       37 LENGTH                           R9 R10
       38 ADD                              R8 R5 R9
       39 SUBK                             R7 R8 K9 [1]
       40 LOADN                            R8 0
       41 GETUPVAL                         R11 1
       42 LENGTH                           R10 R11
       43 SUBK                             R9 R10 K9 [1]
       44 FASTCALL                         MATH_CLAMP ; [+2]
       45 GETIMPORT                        R6 K11 [math.clamp]
       47 CALL                             R6 3 1
       48 MOVE                             R5 R6
       49 GETUPVAL                         R7 1
       50 ADDK                             R8 R5 K9 [1]
       51 GETTABLE                         R6 R7 R8
       52 RETURN                           R6 1

PROTO_1:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K2 [math.randomseed]
        3 LOADK                            R3 K3 [6180339]
        4 CALL                             R2 1 0
        5 NEWTABLE                         R1 0 0
        7 LOADN                            R4 1
        8 LOADN                            R2 231
        9 LOADN                            R3 1
       10 FORNPREP                         R2
       11 MOVE                             R6 R1
       12 GETIMPORT                        R7 K5 [math.random]
       14 CALL                             R7 0 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R5 K8 [table.insert]
       18 CALL                             R5 -1 0
       19 FORNLOOP                         R2
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          REF R1
       23 CLOSEUPVALS                      R1
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
