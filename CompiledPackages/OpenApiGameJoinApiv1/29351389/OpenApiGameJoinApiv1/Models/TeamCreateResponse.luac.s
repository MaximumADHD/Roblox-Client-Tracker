PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+11]
        7 LOADK                            R1 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K5 ["status"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["status"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
       28 LOADK                            R1 K7 ["\"status\" > Expected number, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["status"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K8 ["message"]
       41 JUMPIFNOT                        R1 ; [+19]
       42 GETTABLEKS                       R2 R0 K8 ["message"]
       44 FASTCALL1                        TYPEOF R2 ; [+2]
       45 GETIMPORT                        R1 K1 [typeof]
       47 CALL                             R1 1 1
       48 JUMPIFEQKS                       R1 K9 ["string"] ; [+12]
       50 LOADK                            R1 K10 ["\"message\" > Expected string, got %*"]
       51 GETTABLEKS                       R4 R0 K8 ["message"]
       53 FASTCALL1                        TYPEOF R4 ; [+2]
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 NAMECALL                         R1 R1 K4 ["format"]
       59 CALL                             R1 2 1
       60 RETURN                           R1 1
       61 LOADNIL                          R1
       62 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K3 [table.freeze]
        4 DUPTABLE                         R2 K5 [{"validate"}]
        5 SETTABLEKS                       R0 R2 K4 ["validate"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
