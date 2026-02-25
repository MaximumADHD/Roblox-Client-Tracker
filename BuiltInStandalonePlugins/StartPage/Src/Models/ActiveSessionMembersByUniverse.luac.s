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
       18 GETTABLEKS                       R1 R0 K5 ["id"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["id"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       29 LOADK                            R2 K7 ["\"id\" > Expected number, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["id"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K8 ["activeUsers"]
       43 JUMPIFNOT                        R1 ; [+38]
       44 FASTCALL1                        TYPEOF R1 ; [+3]
       45 MOVE                             R3 R1
       46 GETIMPORT                        R2 K1 [typeof]
       48 CALL                             R2 1 1
       49 JUMPIFEQKS                       R2 K2 ["table"] ; [+12]
       51 LOADK                            R3 K9 ["\"activeUsers\" > Expected table, got %*"]
       52 FASTCALL1                        TYPEOF R1 ; [+3]
       53 MOVE                             R6 R1
       54 GETIMPORT                        R5 K1 [typeof]
       56 CALL                             R5 1 1
       57 NAMECALL                         R3 R3 K4 ["format"]
       59 CALL                             R3 2 1
       60 MOVE                             R2 R3
       61 RETURN                           R2 1
       62 MOVE                             R2 R1
       63 LOADNIL                          R3
       64 LOADNIL                          R4
       65 FORGPREP                         R2
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R7 R8 K10 ["validate"]
       69 MOVE                             R8 R6
       70 CALL                             R7 1 1
       71 JUMPIFNOT                        R7 ; [+8]
       72 LOADK                            R9 K11 ["\"activeUsers\" > [%*] > %*"]
       73 MOVE                             R11 R5
       74 MOVE                             R12 R7
       75 NAMECALL                         R9 R9 K4 ["format"]
       77 CALL                             R9 3 1
       78 MOVE                             R8 R9
       79 RETURN                           R8 1
       80 FORGLOOP                         R2 2 ; [-15]
       82 LOADNIL                          R2
       83 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Models"]
       13 GETTABLEKS                       R2 R3 K8 ["ActiveUserModel"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPTABLE                         R3 K11 [{"validate"}]
       19 SETTABLEKS                       R2 R3 K10 ["validate"]
       21 RETURN                           R3 1
