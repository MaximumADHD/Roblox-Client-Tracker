PROTO_0:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+23]
        8 GETTABLEKS                       R2 R0 K3 ["message"]
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETTABLEKS                       R2 R0 K4 ["stack"]
       13 JUMPIFNOT                        R2 ; [+11]
       14 GETTABLEKS                       R2 R0 K3 ["message"]
       16 LOADK                            R3 K5 ["\n"]
       17 GETTABLEKS                       R5 R0 K4 ["stack"]
       19 FASTCALL1                        TOSTRING R5 ; [+2]
       20 GETIMPORT                        R4 K7 [tostring]
       22 CALL                             R4 1 1
       23 CONCAT                           R1 R2 R4
       24 RETURN                           R1 1
       25 GETUPVAL                         R2 0
       26 MOVE                             R3 R0
       27 CALL                             R2 1 1
       28 MOVE                             R1 R2
       29 RETURN                           R1 1
       30 GETUPVAL                         R2 0
       31 MOVE                             R3 R0
       32 CALL                             R2 1 1
       33 MOVE                             R1 R2
       34 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["util"]
       14 GETTABLEKS                       R2 R2 K7 ["inspect"]
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
