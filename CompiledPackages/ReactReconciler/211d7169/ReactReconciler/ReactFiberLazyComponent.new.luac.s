PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+27]
        7 JUMPIFNOT                        R0 ; [+25]
        8 GETTABLEKS                       R2 R0 K3 ["defaultProps"]
       10 JUMPIFNOT                        R2 ; [+22]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K4 ["assign"]
       14 NEWTABLE                         R3 0 0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R3 R0 K3 ["defaultProps"]
       20 GETIMPORT                        R4 K6 [pairs]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 3
       24 FORGPREP_NEXT                    R4
       25 GETTABLE                         R9 R2 R7
       26 JUMPIFNOTEQKNIL                  R9 ; [+3]
       28 GETTABLE                         R9 R3 R7
       29 SETTABLE                         R9 R2 R7
       30 FORGLOOP                         R4 2 ; [-6]
       32 RETURN                           R2 1
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 DUPTABLE                         R4 K9 [{"resolveDefaultProps"}]
       17 SETTABLEKS                       R3 R4 K8 ["resolveDefaultProps"]
       19 RETURN                           R4 1
