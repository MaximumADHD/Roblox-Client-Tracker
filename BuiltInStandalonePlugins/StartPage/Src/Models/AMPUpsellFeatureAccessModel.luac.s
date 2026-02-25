PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
        7 LOADK                            R2 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K1 [typeof]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K5 ["access"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["access"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["string"] ; [+13]
       29 LOADK                            R2 K7 ["\"displayText\" > Expected string, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["access"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K5 ["access"]
       43 JUMPIFEQKS                       R1 K8 ["Denied"] ; [+21]
       45 GETTABLEKS                       R1 R0 K5 ["access"]
       47 JUMPIFEQKS                       R1 K9 ["Granted"] ; [+17]
       49 GETTABLEKS                       R1 R0 K5 ["access"]
       51 JUMPIFEQKS                       R1 K10 ["Actionable"] ; [+13]
       53 GETTABLEKS                       R1 R0 K5 ["access"]
       55 JUMPIFEQKS                       R1 K11 ["Error"] ; [+9]
       57 LOADK                            R2 K12 ["\"displayText\" > Expected \"Denied\" | \"Granted\" | \"Actionable\" | \"Error\", got %*"]
       58 GETTABLEKS                       R4 R0 K5 ["access"]
       60 NAMECALL                         R2 R2 K4 ["format"]
       62 CALL                             R2 2 1
       63 MOVE                             R1 R2
       64 RETURN                           R1 1
       65 LOADNIL                          R1
       66 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
