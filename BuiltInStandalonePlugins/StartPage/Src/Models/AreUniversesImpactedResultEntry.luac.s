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
       18 GETTABLEKS                       R2 R0 K5 ["UniverseId"]
       20 FASTCALL1                        TYPEOF R2 ; [+2]
       21 GETIMPORT                        R1 K1 [typeof]
       23 CALL                             R1 1 1
       24 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       26 LOADK                            R2 K7 ["\"UniverseId\" > Expected number, got %*"]
       27 GETTABLEKS                       R5 R0 K5 ["UniverseId"]
       29 FASTCALL1                        TYPEOF R5 ; [+2]
       30 GETIMPORT                        R4 K1 [typeof]
       32 CALL                             R4 1 1
       33 NAMECALL                         R2 R2 K4 ["format"]
       35 CALL                             R2 2 1
       36 MOVE                             R1 R2
       37 RETURN                           R1 1
       38 GETTABLEKS                       R2 R0 K8 ["IsImpacted"]
       40 FASTCALL1                        TYPEOF R2 ; [+2]
       41 GETIMPORT                        R1 K1 [typeof]
       43 CALL                             R1 1 1
       44 JUMPIFEQKS                       R1 K9 ["boolean"] ; [+13]
       46 LOADK                            R2 K10 ["\"IsImpacted\" > Expected boolean, got %*"]
       47 GETTABLEKS                       R5 R0 K8 ["IsImpacted"]
       49 FASTCALL1                        TYPEOF R5 ; [+2]
       50 GETIMPORT                        R4 K1 [typeof]
       52 CALL                             R4 1 1
       53 NAMECALL                         R2 R2 K4 ["format"]
       55 CALL                             R2 2 1
       56 MOVE                             R1 R2
       57 RETURN                           R1 1
       58 GETTABLEKS                       R2 R0 K11 ["IsAdmin"]
       60 FASTCALL1                        TYPEOF R2 ; [+2]
       61 GETIMPORT                        R1 K1 [typeof]
       63 CALL                             R1 1 1
       64 JUMPIFEQKS                       R1 K9 ["boolean"] ; [+13]
       66 LOADK                            R2 K12 ["\"IsAdmin\" > Expected boolean, got %*"]
       67 GETTABLEKS                       R5 R0 K11 ["IsAdmin"]
       69 FASTCALL1                        TYPEOF R5 ; [+2]
       70 GETIMPORT                        R4 K1 [typeof]
       72 CALL                             R4 1 1
       73 NAMECALL                         R2 R2 K4 ["format"]
       75 CALL                             R2 2 1
       76 MOVE                             R1 R2
       77 RETURN                           R1 1
       78 GETTABLEKS                       R2 R0 K13 ["HasError"]
       80 FASTCALL1                        TYPEOF R2 ; [+2]
       81 GETIMPORT                        R1 K1 [typeof]
       83 CALL                             R1 1 1
       84 JUMPIFEQKS                       R1 K9 ["boolean"] ; [+13]
       86 LOADK                            R2 K14 ["\"HasError\" > Expected boolean, got %*"]
       87 GETTABLEKS                       R5 R0 K13 ["HasError"]
       89 FASTCALL1                        TYPEOF R5 ; [+2]
       90 GETIMPORT                        R4 K1 [typeof]
       92 CALL                             R4 1 1
       93 NAMECALL                         R2 R2 K4 ["format"]
       95 CALL                             R2 2 1
       96 MOVE                             R1 R2
       97 RETURN                           R1 1
       98 LOADNIL                          R1
       99 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
