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
       17 GETTABLEKS                       R1 R0 K5 ["id"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["id"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
       28 LOADK                            R1 K7 ["\"id\" > Expected number, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["id"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K8 ["activeUsers"]
       41 JUMPIFNOT                        R1 ; [+36]
       42 FASTCALL1                        TYPEOF R1 ; [+3]
       43 MOVE                             R3 R1
       44 GETIMPORT                        R2 K1 [typeof]
       46 CALL                             R2 1 1
       47 JUMPIFEQKS                       R2 K2 ["table"] ; [+11]
       49 LOADK                            R2 K9 ["\"activeUsers\" > Expected table, got %*"]
       50 FASTCALL1                        TYPEOF R1 ; [+3]
       51 MOVE                             R5 R1
       52 GETIMPORT                        R4 K1 [typeof]
       54 CALL                             R4 1 1
       55 NAMECALL                         R2 R2 K4 ["format"]
       57 CALL                             R2 2 1
       58 RETURN                           R2 1
       59 MOVE                             R2 R1
       60 LOADNIL                          R3
       61 LOADNIL                          R4
       62 FORGPREP                         R2
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K10 ["validate"]
       66 MOVE                             R8 R6
       67 CALL                             R7 1 1
       68 JUMPIFNOT                        R7 ; [+7]
       69 LOADK                            R8 K11 ["\"activeUsers\" > [%*] > %*"]
       70 MOVE                             R10 R5
       71 MOVE                             R11 R7
       72 NAMECALL                         R8 R8 K4 ["format"]
       74 CALL                             R8 3 1
       75 RETURN                           R8 1
       76 FORGLOOP                         R2 2 ; [-14]
       78 LOADNIL                          R2
       79 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Models"]
       13 GETTABLEKS                       R2 R2 K8 ["ActiveUserModel"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPTABLE                         R3 K11 [{"validate"}]
       19 SETTABLEKS                       R2 R3 K10 ["validate"]
       21 RETURN                           R3 1
