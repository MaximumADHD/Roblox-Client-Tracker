PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K1 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+5]
       12 MOVE                             R2 R1
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K1 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+3]
       23 SETTABLEKS                       R0 R1 K4 ["current"]
       25 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["getForwardedRef"]
        2 GETTABLEKS                       R2 R0 K1 ["setLocalRef"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_1]
       15 RETURN                           R3 1
