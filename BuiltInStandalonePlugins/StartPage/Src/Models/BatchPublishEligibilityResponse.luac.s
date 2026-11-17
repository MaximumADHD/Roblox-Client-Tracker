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
       17 GETTABLEKS                       R1 R0 K5 ["universeEligibilities"]
       19 JUMPIFNOT                        R1 ; [+87]
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K1 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFEQKS                       R2 K2 ["table"] ; [+11]
       27 LOADK                            R2 K6 ["\"universeEligibilities\" > Expected table, got %*"]
       28 FASTCALL1                        TYPEOF R1 ; [+3]
       29 MOVE                             R5 R1
       30 GETIMPORT                        R4 K1 [typeof]
       32 CALL                             R4 1 1
       33 NAMECALL                         R2 R2 K4 ["format"]
       35 CALL                             R2 2 1
       36 RETURN                           R2 1
       37 MOVE                             R2 R1
       38 LOADNIL                          R3
       39 LOADNIL                          R4
       40 FORGPREP                         R2
       41 FASTCALL1                        TYPEOF R6 ; [+3]
       42 MOVE                             R8 R6
       43 GETIMPORT                        R7 K1 [typeof]
       45 CALL                             R7 1 1
       46 JUMPIFEQKS                       R7 K2 ["table"] ; [+12]
       48 LOADK                            R7 K7 ["\"universeEligibilities\" > \"%*\" > Expected table, got %*"]
       49 MOVE                             R9 R5
       50 FASTCALL1                        TYPEOF R6 ; [+3]
       51 MOVE                             R11 R6
       52 GETIMPORT                        R10 K1 [typeof]
       54 CALL                             R10 1 1
       55 NAMECALL                         R7 R7 K4 ["format"]
       57 CALL                             R7 3 1
       58 RETURN                           R7 1
       59 GETTABLEKS                       R7 R6 K8 ["selectStatus"]
       61 JUMPIFNOT                        R7 ; [+20]
       62 GETTABLEKS                       R8 R6 K8 ["selectStatus"]
       64 FASTCALL1                        TYPEOF R8 ; [+2]
       65 GETIMPORT                        R7 K1 [typeof]
       67 CALL                             R7 1 1
       68 JUMPIFEQKS                       R7 K9 ["string"] ; [+13]
       70 LOADK                            R7 K10 ["\"universeEligibilities\" > \"%*\" > \"selectStatus\" > Expected string, got %*"]
       71 MOVE                             R9 R5
       72 GETTABLEKS                       R11 R6 K8 ["selectStatus"]
       74 FASTCALL1                        TYPEOF R11 ; [+2]
       75 GETIMPORT                        R10 K1 [typeof]
       77 CALL                             R10 1 1
       78 NAMECALL                         R7 R7 K4 ["format"]
       80 CALL                             R7 3 1
       81 RETURN                           R7 1
       82 GETTABLEKS                       R7 R6 K11 ["reasons"]
       84 JUMPIFNOT                        R7 ; [+20]
       85 GETTABLEKS                       R8 R6 K11 ["reasons"]
       87 FASTCALL1                        TYPEOF R8 ; [+2]
       88 GETIMPORT                        R7 K1 [typeof]
       90 CALL                             R7 1 1
       91 JUMPIFEQKS                       R7 K2 ["table"] ; [+13]
       93 LOADK                            R7 K12 ["\"universeEligibilities\" > \"%*\" > \"reasons\" > Expected table, got %*"]
       94 MOVE                             R9 R5
       95 GETTABLEKS                       R11 R6 K11 ["reasons"]
       97 FASTCALL1                        TYPEOF R11 ; [+2]
       98 GETIMPORT                        R10 K1 [typeof]
      100 CALL                             R10 1 1
      101 NAMECALL                         R7 R7 K4 ["format"]
      103 CALL                             R7 3 1
      104 RETURN                           R7 1
      105 FORGLOOP                         R2 2 ; [-65]
      107 LOADNIL                          R2
      108 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
