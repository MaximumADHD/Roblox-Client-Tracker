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
       18 GETTABLEKS                       R1 R0 K5 ["Results"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["Results"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K2 ["table"] ; [+13]
       29 LOADK                            R2 K6 ["\"Results\" > Expected table, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["Results"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K5 ["Results"]
       43 JUMPIFNOT                        R1 ; [+21]
       44 GETTABLEKS                       R1 R0 K5 ["Results"]
       46 LOADNIL                          R2
       47 LOADNIL                          R3
       48 FORGPREP                         R1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K7 ["validate"]
       52 MOVE                             R7 R5
       53 CALL                             R6 1 1
       54 JUMPIFNOT                        R6 ; [+8]
       55 LOADK                            R8 K8 ["\"Results\" > [%*] > %*"]
       56 MOVE                             R10 R4
       57 MOVE                             R11 R6
       58 NAMECALL                         R8 R8 K4 ["format"]
       60 CALL                             R8 3 1
       61 MOVE                             R7 R8
       62 RETURN                           R7 1
       63 FORGLOOP                         R1 2 ; [-15]
       65 LOADNIL                          R1
       66 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Models"]
       13 GETTABLEKS                       R2 R2 K8 ["AreUniversesImpactedResultEntry"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPTABLE                         R3 K11 [{"validate"}]
       19 SETTABLEKS                       R2 R3 K10 ["validate"]
       21 RETURN                           R3 1
