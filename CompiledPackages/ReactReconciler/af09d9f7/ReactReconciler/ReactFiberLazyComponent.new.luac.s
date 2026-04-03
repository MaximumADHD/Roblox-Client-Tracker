PROTO_0:
        0 JUMPIFNOT                        R0 ; [+28]
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+22]
        8 GETTABLEKS                       R2 R0 K3 ["defaultProps"]
       10 JUMPIFNOT                        R2 ; [+18]
       11 GETIMPORT                        R2 K5 [table.clone]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R0 K3 ["defaultProps"]
       17 MOVE                             R4 R3
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETTABLE                         R9 R2 R7
       22 JUMPIFNOTEQKNIL                  R9 ; [+3]
       24 GETTABLE                         R9 R3 R7
       25 SETTABLE                         R9 R2 R7
       26 FORGLOOP                         R4 2 ; [-6]
       28 RETURN                           R2 1
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"resolveDefaultProps"}]
        3 SETTABLEKS                       R0 R1 K1 ["resolveDefaultProps"]
        5 RETURN                           R1 1
