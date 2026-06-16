PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+16]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+9]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 2
       17 GETUPVAL                         R5 0
       18 GETTABLE                         R4 R5 R1
       19 MOVE                             R5 R0
       20 CALL                             R3 2 1
       21 SETTABLE                         R3 R2 R1
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 3
       24 JUMPIFNOTEQ                      R0 R2 ; [+5]
       26 GETUPVAL                         R2 1
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R2 R1
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 1
       31 SETTABLE                         R0 R2 R1
       32 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R3 2 0
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["None"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Types"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["forEach"]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K8 [PROTO_1]
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R1
       24 RETURN                           R4 1
