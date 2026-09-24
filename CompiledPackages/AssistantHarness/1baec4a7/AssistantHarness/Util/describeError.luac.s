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
       13 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+39]
       15 GETTABLEKS                       R2 R0 K4 ["message"]
       17 FASTCALL1                        TYPEOF R2 ; [+2]
       18 GETIMPORT                        R1 K1 [typeof]
       20 CALL                             R1 1 1
       21 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+21]
       23 GETTABLEKS                       R1 R0 K5 ["code"]
       25 JUMPIFEQKNIL                     R1 ; [+14]
       27 LOADK                            R1 K6 ["code=%* %*"]
       28 GETTABLEKS                       R4 R0 K5 ["code"]
       30 FASTCALL1                        TOSTRING R4 ; [+2]
       31 GETIMPORT                        R3 K8 [tostring]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R0 K4 ["message"]
       36 NAMECALL                         R1 R1 K9 ["format"]
       38 CALL                             R1 3 1
       39 RETURN                           R1 1
       40 GETTABLEKS                       R1 R0 K4 ["message"]
       42 RETURN                           R1 1
       43 GETIMPORT                        R1 K11 [pcall]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K12 ["JSONEncode"]
       48 GETUPVAL                         R3 0
       49 MOVE                             R4 R0
       50 CALL                             R1 3 2
       51 JUMPIFNOT                        R1 ; [+1]
       52 RETURN                           R2 1
       53 FASTCALL1                        TOSTRING R0 ; [+3]
       54 MOVE                             R2 R0
       55 GETIMPORT                        R1 K8 [tostring]
       57 CALL                             R1 1 1
       58 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
