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
       18 GETTABLEKS                       R1 R0 K5 ["universeIds"]
       20 JUMPIFNOT                        R1 ; [+46]
       21 GETTABLEKS                       R2 R0 K5 ["universeIds"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K2 ["table"] ; [+13]
       29 LOADK                            R2 K6 ["\"universeIds\" > Expected table, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["universeIds"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K5 ["universeIds"]
       43 LOADNIL                          R2
       44 LOADNIL                          R3
       45 FORGPREP                         R1
       46 FASTCALL1                        TYPEOF R5 ; [+3]
       47 MOVE                             R7 R5
       48 GETIMPORT                        R6 K1 [typeof]
       50 CALL                             R6 1 1
       51 JUMPIFEQKS                       R6 K7 ["number"] ; [+13]
       53 LOADK                            R7 K8 ["\"universeIds\"[%*] > Expected number, got %*"]
       54 MOVE                             R9 R4
       55 FASTCALL1                        TYPEOF R5 ; [+3]
       56 MOVE                             R11 R5
       57 GETIMPORT                        R10 K1 [typeof]
       59 CALL                             R10 1 1
       60 NAMECALL                         R7 R7 K4 ["format"]
       62 CALL                             R7 3 1
       63 MOVE                             R6 R7
       64 RETURN                           R6 1
       65 FORGLOOP                         R1 2 ; [-20]
       67 GETTABLEKS                       R1 R0 K9 ["releaseTypes"]
       69 JUMPIFNOT                        R1 ; [+46]
       70 GETTABLEKS                       R2 R0 K9 ["releaseTypes"]
       72 FASTCALL1                        TYPEOF R2 ; [+2]
       73 GETIMPORT                        R1 K1 [typeof]
       75 CALL                             R1 1 1
       76 JUMPIFEQKS                       R1 K2 ["table"] ; [+13]
       78 LOADK                            R2 K10 ["\"releaseTypes\" > Expected table, got %*"]
       79 GETTABLEKS                       R5 R0 K9 ["releaseTypes"]
       81 FASTCALL1                        TYPEOF R5 ; [+2]
       82 GETIMPORT                        R4 K1 [typeof]
       84 CALL                             R4 1 1
       85 NAMECALL                         R2 R2 K4 ["format"]
       87 CALL                             R2 2 1
       88 MOVE                             R1 R2
       89 RETURN                           R1 1
       90 GETTABLEKS                       R1 R0 K9 ["releaseTypes"]
       92 LOADNIL                          R2
       93 LOADNIL                          R3
       94 FORGPREP                         R1
       95 FASTCALL1                        TYPEOF R5 ; [+3]
       96 MOVE                             R7 R5
       97 GETIMPORT                        R6 K1 [typeof]
       99 CALL                             R6 1 1
      100 JUMPIFEQKS                       R6 K11 ["string"] ; [+13]
      102 LOADK                            R7 K12 ["\"releaseTypes\"[%*] > Expected string, got %*"]
      103 MOVE                             R9 R4
      104 FASTCALL1                        TYPEOF R5 ; [+3]
      105 MOVE                             R11 R5
      106 GETIMPORT                        R10 K1 [typeof]
      108 CALL                             R10 1 1
      109 NAMECALL                         R7 R7 K4 ["format"]
      111 CALL                             R7 3 1
      112 MOVE                             R6 R7
      113 RETURN                           R6 1
      114 FORGLOOP                         R1 2 ; [-20]
      116 LOADNIL                          R1
      117 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
