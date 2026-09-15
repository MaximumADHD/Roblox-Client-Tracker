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
       17 GETTABLEKS                       R1 R0 K5 ["universeIds"]
       19 JUMPIFNOT                        R1 ; [+44]
       20 GETTABLEKS                       R2 R0 K5 ["universeIds"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
       28 LOADK                            R1 K6 ["\"universeIds\" > Expected table, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["universeIds"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K5 ["universeIds"]
       41 LOADNIL                          R2
       42 LOADNIL                          R3
       43 FORGPREP                         R1
       44 FASTCALL1                        TYPEOF R5 ; [+3]
       45 MOVE                             R7 R5
       46 GETIMPORT                        R6 K1 [typeof]
       48 CALL                             R6 1 1
       49 JUMPIFEQKS                       R6 K7 ["number"] ; [+12]
       51 LOADK                            R6 K8 ["\"universeIds\"[%*] > Expected number, got %*"]
       52 MOVE                             R8 R4
       53 FASTCALL1                        TYPEOF R5 ; [+3]
       54 MOVE                             R10 R5
       55 GETIMPORT                        R9 K1 [typeof]
       57 CALL                             R9 1 1
       58 NAMECALL                         R6 R6 K4 ["format"]
       60 CALL                             R6 3 1
       61 RETURN                           R6 1
       62 FORGLOOP                         R1 2 ; [-19]
       64 GETTABLEKS                       R1 R0 K9 ["releaseTypes"]
       66 JUMPIFNOT                        R1 ; [+44]
       67 GETTABLEKS                       R2 R0 K9 ["releaseTypes"]
       69 FASTCALL1                        TYPEOF R2 ; [+2]
       70 GETIMPORT                        R1 K1 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
       75 LOADK                            R1 K10 ["\"releaseTypes\" > Expected table, got %*"]
       76 GETTABLEKS                       R4 R0 K9 ["releaseTypes"]
       78 FASTCALL1                        TYPEOF R4 ; [+2]
       79 GETIMPORT                        R3 K1 [typeof]
       81 CALL                             R3 1 1
       82 NAMECALL                         R1 R1 K4 ["format"]
       84 CALL                             R1 2 1
       85 RETURN                           R1 1
       86 GETTABLEKS                       R1 R0 K9 ["releaseTypes"]
       88 LOADNIL                          R2
       89 LOADNIL                          R3
       90 FORGPREP                         R1
       91 FASTCALL1                        TYPEOF R5 ; [+3]
       92 MOVE                             R7 R5
       93 GETIMPORT                        R6 K1 [typeof]
       95 CALL                             R6 1 1
       96 JUMPIFEQKS                       R6 K11 ["string"] ; [+12]
       98 LOADK                            R6 K12 ["\"releaseTypes\"[%*] > Expected string, got %*"]
       99 MOVE                             R8 R4
      100 FASTCALL1                        TYPEOF R5 ; [+3]
      101 MOVE                             R10 R5
      102 GETIMPORT                        R9 K1 [typeof]
      104 CALL                             R9 1 1
      105 NAMECALL                         R6 R6 K4 ["format"]
      107 CALL                             R6 3 1
      108 RETURN                           R6 1
      109 FORGLOOP                         R1 2 ; [-19]
      111 LOADNIL                          R1
      112 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
