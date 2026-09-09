PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+2]
        7 RETURN                           R0 1
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+40]
       15 GETTABLEKS                       R2 R0 K4 ["message"]
       17 FASTCALL1                        TYPEOF R2 ; [+2]
       18 GETIMPORT                        R1 K1 [typeof]
       20 CALL                             R1 1 1
       21 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+22]
       23 GETTABLEKS                       R1 R0 K5 ["code"]
       25 JUMPIFEQKNIL                     R1 ; [+15]
       27 LOADK                            R2 K6 ["code=%* %*"]
       28 GETTABLEKS                       R5 R0 K5 ["code"]
       30 FASTCALL1                        TOSTRING R5 ; [+2]
       31 GETIMPORT                        R4 K8 [tostring]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R0 K4 ["message"]
       36 NAMECALL                         R2 R2 K9 ["format"]
       38 CALL                             R2 3 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K4 ["message"]
       43 RETURN                           R1 1
       44 GETIMPORT                        R1 K11 [pcall]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K12 ["JSONEncode"]
       49 GETUPVAL                         R3 0
       50 MOVE                             R4 R0
       51 CALL                             R1 3 2
       52 JUMPIFNOT                        R1 ; [+1]
       53 RETURN                           R2 1
       54 FASTCALL1                        TOSTRING R0 ; [+3]
       55 MOVE                             R2 R0
       56 GETIMPORT                        R1 K8 [tostring]
       58 CALL                             R1 1 1
       59 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
