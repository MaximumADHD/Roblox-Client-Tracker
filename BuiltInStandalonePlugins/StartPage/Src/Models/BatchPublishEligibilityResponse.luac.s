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
       18 GETTABLEKS                       R1 R0 K5 ["universeEligibilities"]
       20 JUMPIFNOT                        R1 ; [+91]
       21 FASTCALL1                        TYPEOF R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K1 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFEQKS                       R2 K2 ["table"] ; [+12]
       28 LOADK                            R3 K6 ["\"universeEligibilities\" > Expected table, got %*"]
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R6 R1
       31 GETIMPORT                        R5 K1 [typeof]
       33 CALL                             R5 1 1
       34 NAMECALL                         R3 R3 K4 ["format"]
       36 CALL                             R3 2 1
       37 MOVE                             R2 R3
       38 RETURN                           R2 1
       39 MOVE                             R2 R1
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 FORGPREP                         R2
       43 FASTCALL1                        TYPEOF R6 ; [+3]
       44 MOVE                             R8 R6
       45 GETIMPORT                        R7 K1 [typeof]
       47 CALL                             R7 1 1
       48 JUMPIFEQKS                       R7 K2 ["table"] ; [+13]
       50 LOADK                            R8 K7 ["\"universeEligibilities\" > \"%*\" > Expected table, got %*"]
       51 MOVE                             R10 R5
       52 FASTCALL1                        TYPEOF R6 ; [+3]
       53 MOVE                             R12 R6
       54 GETIMPORT                        R11 K1 [typeof]
       56 CALL                             R11 1 1
       57 NAMECALL                         R8 R8 K4 ["format"]
       59 CALL                             R8 3 1
       60 MOVE                             R7 R8
       61 RETURN                           R7 1
       62 GETTABLEKS                       R7 R6 K8 ["selectStatus"]
       64 JUMPIFNOT                        R7 ; [+21]
       65 GETTABLEKS                       R8 R6 K8 ["selectStatus"]
       67 FASTCALL1                        TYPEOF R8 ; [+2]
       68 GETIMPORT                        R7 K1 [typeof]
       70 CALL                             R7 1 1
       71 JUMPIFEQKS                       R7 K9 ["string"] ; [+14]
       73 LOADK                            R8 K10 ["\"universeEligibilities\" > \"%*\" > \"selectStatus\" > Expected string, got %*"]
       74 MOVE                             R10 R5
       75 GETTABLEKS                       R12 R6 K8 ["selectStatus"]
       77 FASTCALL1                        TYPEOF R12 ; [+2]
       78 GETIMPORT                        R11 K1 [typeof]
       80 CALL                             R11 1 1
       81 NAMECALL                         R8 R8 K4 ["format"]
       83 CALL                             R8 3 1
       84 MOVE                             R7 R8
       85 RETURN                           R7 1
       86 GETTABLEKS                       R7 R6 K11 ["reasons"]
       88 JUMPIFNOT                        R7 ; [+21]
       89 GETTABLEKS                       R8 R6 K11 ["reasons"]
       91 FASTCALL1                        TYPEOF R8 ; [+2]
       92 GETIMPORT                        R7 K1 [typeof]
       94 CALL                             R7 1 1
       95 JUMPIFEQKS                       R7 K2 ["table"] ; [+14]
       97 LOADK                            R8 K12 ["\"universeEligibilities\" > \"%*\" > \"reasons\" > Expected table, got %*"]
       98 MOVE                             R10 R5
       99 GETTABLEKS                       R12 R6 K11 ["reasons"]
      101 FASTCALL1                        TYPEOF R12 ; [+2]
      102 GETIMPORT                        R11 K1 [typeof]
      104 CALL                             R11 1 1
      105 NAMECALL                         R8 R8 K4 ["format"]
      107 CALL                             R8 3 1
      108 MOVE                             R7 R8
      109 RETURN                           R7 1
      110 FORGLOOP                         R2 2 ; [-68]
      112 LOADNIL                          R2
      113 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
