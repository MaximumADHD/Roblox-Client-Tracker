PROTO_0:
        0 GETIMPORT                        R3 K1 [pairs]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 3
        4 FORGPREP_NEXT                    R3
        5 FASTCALL1                        TOSTRING R7 ; [+3]
        6 MOVE                             R9 R7
        7 GETIMPORT                        R8 K3 [tostring]
        9 CALL                             R8 1 1
       10 MOVE                             R11 R1
       11 NAMECALL                         R9 R8 K4 ["find"]
       13 CALL                             R9 2 1
       14 JUMPIFNOT                        R9 ; [+2]
       15 SETTABLE                         R2 R0 R6
       16 JUMP                             ; [+14]
       17 FASTCALL1                        TYPE R7 ; [+3]
       18 MOVE                             R10 R7
       19 GETIMPORT                        R9 K6 [type]
       21 CALL                             R9 1 1
       22 JUMPIFNOTEQKS                    R9 K7 ["table"] ; [+8]
       24 GETGLOBAL                        R9 K8 ["deepOverwrite"]
       26 MOVE                             R10 R7
       27 MOVE                             R11 R1
       28 MOVE                             R12 R2
       29 CALL                             R9 3 1
       30 SETTABLE                         R9 R0 R6
       31 FORGLOOP                         R3 2 ; [-27]
       33 RETURN                           R0 1

PROTO_1:
        0 GETGLOBAL                        R3 K0 ["deepOverwrite"]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 CALL                             R3 3 -1
        8 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Util"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["deepCopy"]
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 SETGLOBAL                        R3 K8 ["deepOverwrite"]
       17 DUPCLOSURE                       R3 K9 [PROTO_1]
       18 CAPTURE                          VAL R2
       19 RETURN                           R3 1
