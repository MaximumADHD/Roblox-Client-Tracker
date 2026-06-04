PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [type]
       11 CALL                             R2 1 1
       12 JUMPIFEQKS                       R2 K2 ["table"] ; [+6]
       14 JUMPIFEQ                         R0 R1 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETUPVAL                         R7 0
       24 GETTABLE                         R8 R1 R5
       25 MOVE                             R9 R6
       26 CALL                             R7 2 1
       27 JUMPIF                           R7 ; [+2]
       28 LOADB                            R7 0
       29 RETURN                           R7 1
       30 FORGLOOP                         R2 2 ; [-8]
       32 MOVE                             R2 R1
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 GETUPVAL                         R7 0
       37 GETTABLE                         R8 R0 R5
       38 MOVE                             R9 R6
       39 CALL                             R7 2 1
       40 JUMPIF                           R7 ; [+2]
       41 LOADB                            R7 0
       42 RETURN                           R7 1
       43 FORGLOOP                         R2 2 ; [-8]
       45 LOADB                            R2 1
       46 RETURN                           R2 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADB                            R0 1
        6 RETURN                           R0 1
        7 LOADK                            R1 K0 ["#"]
        8 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        9 GETIMPORT                        R0 K2 [select]
       11 GETVARARGS                       R2 -1
       12 CALL                             R0 -1 1
       13 LOADN                            R2 1
       14 FASTCALL1                        SELECT_VARARG R2 ; [+3]
       15 GETIMPORT                        R1 K2 [select]
       17 GETVARARGS                       R3 -1
       18 CALL                             R1 -1 1
       19 LOADN                            R4 2
       20 MOVE                             R2 R0
       21 LOADN                            R3 1
       22 FORNPREP                         R2
       23 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       24 GETIMPORT                        R5 K2 [select]
       26 MOVE                             R6 R4
       27 GETVARARGS                       R7 -1
       28 CALL                             R5 -1 1
       29 GETUPVAL                         R6 1
       30 MOVE                             R7 R1
       31 MOVE                             R8 R5
       32 CALL                             R6 2 1
       33 JUMPIF                           R6 ; [+2]
       34 LOADB                            R6 0
       35 RETURN                           R6 1
       36 FORNLOOP                         R2
       37 LOADB                            R2 1
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["equalObjects"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 DUPCLOSURE                       R2 K7 [PROTO_1]
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1
