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
       17 GETTABLEKS                       R1 R0 K5 ["access"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["access"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K6 ["string"] ; [+12]
       28 LOADK                            R1 K7 ["\"displayText\" > Expected string, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["access"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K5 ["access"]
       41 JUMPIFEQKS                       R1 K8 ["Denied"] ; [+20]
       43 GETTABLEKS                       R1 R0 K5 ["access"]
       45 JUMPIFEQKS                       R1 K9 ["Granted"] ; [+16]
       47 GETTABLEKS                       R1 R0 K5 ["access"]
       49 JUMPIFEQKS                       R1 K10 ["Actionable"] ; [+12]
       51 GETTABLEKS                       R1 R0 K5 ["access"]
       53 JUMPIFEQKS                       R1 K11 ["Error"] ; [+8]
       55 LOADK                            R1 K12 ["\"displayText\" > Expected \"Denied\" | \"Granted\" | \"Actionable\" | \"Error\", got %*"]
       56 GETTABLEKS                       R3 R0 K5 ["access"]
       58 NAMECALL                         R1 R1 K4 ["format"]
       60 CALL                             R1 2 1
       61 RETURN                           R1 1
       62 LOADNIL                          R1
       63 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
