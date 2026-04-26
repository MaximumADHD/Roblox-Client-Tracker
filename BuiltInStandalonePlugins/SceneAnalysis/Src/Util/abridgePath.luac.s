PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K4 [string.split]
       10 MOVE                             R2 R0
       11 LOADK                            R3 K5 ["."]
       12 CALL                             R1 2 1
       13 LENGTH                           R2 R1
       14 LOADB                            R3 1
       15 SUBK                             R5 R2 K6 [1]
       16 GETTABLE                         R4 R1 R5
       17 JUMPIFEQKS                       R4 K7 ["Humanoid"] ; [+7]
       19 SUBK                             R5 R2 K6 [1]
       20 GETTABLE                         R4 R1 R5
       21 JUMPIFEQKS                       R4 K8 ["AnimationController"] ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 LOADN                            R4 3
       26 JUMPIFNOTLE                      R4 R2 ; [+14]
       28 GETTABLE                         R4 R1 R2
       29 JUMPIFNOTEQKS                    R4 K9 ["Animator"] ; [+11]
       31 JUMPIFNOT                        R3 ; [+9]
       32 SUBK                             R10 R2 K10 [2]
       33 GETTABLE                         R5 R1 R10
       34 LOADK                            R6 K5 ["."]
       35 SUBK                             R10 R2 K6 [1]
       36 GETTABLE                         R7 R1 R10
       37 LOADK                            R8 K5 ["."]
       38 GETTABLE                         R9 R1 R2
       39 CONCAT                           R4 R5 R9
       40 RETURN                           R4 1
       41 JUMPIFNOTEQKN                    R2 K10 [2] ; [+11]
       43 GETTABLE                         R4 R1 R2
       44 JUMPIFNOTEQKS                    R4 K9 ["Animator"] ; [+8]
       46 JUMPIFNOT                        R3 ; [+6]
       47 SUBK                             R8 R2 K6 [1]
       48 GETTABLE                         R5 R1 R8
       49 LOADK                            R6 K5 ["."]
       50 GETTABLE                         R7 R1 R2
       51 CONCAT                           R4 R5 R7
       52 RETURN                           R4 1
       53 LOADN                            R4 1
       54 JUMPIFNOTLT                      R4 R2 ; [+3]
       56 GETTABLE                         R4 R1 R2
       57 RETURN                           R4 1
       58 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
