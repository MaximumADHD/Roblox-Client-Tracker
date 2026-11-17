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
       17 GETTABLEKS                       R2 R0 K5 ["UniverseId"]
       19 FASTCALL1                        TYPEOF R2 ; [+2]
       20 GETIMPORT                        R1 K1 [typeof]
       22 CALL                             R1 1 1
       23 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
       25 LOADK                            R1 K7 ["\"UniverseId\" > Expected number, got %*"]
       26 GETTABLEKS                       R4 R0 K5 ["UniverseId"]
       28 FASTCALL1                        TYPEOF R4 ; [+2]
       29 GETIMPORT                        R3 K1 [typeof]
       31 CALL                             R3 1 1
       32 NAMECALL                         R1 R1 K4 ["format"]
       34 CALL                             R1 2 1
       35 RETURN                           R1 1
       36 GETTABLEKS                       R2 R0 K8 ["IsImpacted"]
       38 FASTCALL1                        TYPEOF R2 ; [+2]
       39 GETIMPORT                        R1 K1 [typeof]
       41 CALL                             R1 1 1
       42 JUMPIFEQKS                       R1 K9 ["boolean"] ; [+12]
       44 LOADK                            R1 K10 ["\"IsImpacted\" > Expected boolean, got %*"]
       45 GETTABLEKS                       R4 R0 K8 ["IsImpacted"]
       47 FASTCALL1                        TYPEOF R4 ; [+2]
       48 GETIMPORT                        R3 K1 [typeof]
       50 CALL                             R3 1 1
       51 NAMECALL                         R1 R1 K4 ["format"]
       53 CALL                             R1 2 1
       54 RETURN                           R1 1
       55 GETTABLEKS                       R2 R0 K11 ["IsAdmin"]
       57 FASTCALL1                        TYPEOF R2 ; [+2]
       58 GETIMPORT                        R1 K1 [typeof]
       60 CALL                             R1 1 1
       61 JUMPIFEQKS                       R1 K9 ["boolean"] ; [+12]
       63 LOADK                            R1 K12 ["\"IsAdmin\" > Expected boolean, got %*"]
       64 GETTABLEKS                       R4 R0 K11 ["IsAdmin"]
       66 FASTCALL1                        TYPEOF R4 ; [+2]
       67 GETIMPORT                        R3 K1 [typeof]
       69 CALL                             R3 1 1
       70 NAMECALL                         R1 R1 K4 ["format"]
       72 CALL                             R1 2 1
       73 RETURN                           R1 1
       74 GETTABLEKS                       R2 R0 K13 ["HasError"]
       76 FASTCALL1                        TYPEOF R2 ; [+2]
       77 GETIMPORT                        R1 K1 [typeof]
       79 CALL                             R1 1 1
       80 JUMPIFEQKS                       R1 K9 ["boolean"] ; [+12]
       82 LOADK                            R1 K14 ["\"HasError\" > Expected boolean, got %*"]
       83 GETTABLEKS                       R4 R0 K13 ["HasError"]
       85 FASTCALL1                        TYPEOF R4 ; [+2]
       86 GETIMPORT                        R3 K1 [typeof]
       88 CALL                             R3 1 1
       89 NAMECALL                         R1 R1 K4 ["format"]
       91 CALL                             R1 2 1
       92 RETURN                           R1 1
       93 LOADNIL                          R1
       94 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
