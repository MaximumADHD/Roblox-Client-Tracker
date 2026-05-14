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
       18 GETTABLEKS                       R1 R0 K5 ["data"]
       20 JUMPIFNOT                        R1 ; [+38]
       21 FASTCALL1                        TYPEOF R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K1 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFEQKS                       R2 K2 ["table"] ; [+12]
       28 LOADK                            R3 K6 ["\"data\" > Expected table, got %*"]
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
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K7 ["validate"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 1
       48 JUMPIFNOT                        R7 ; [+8]
       49 LOADK                            R9 K8 ["\"data\" > [%*] > %*"]
       50 MOVE                             R11 R5
       51 MOVE                             R12 R7
       52 NAMECALL                         R9 R9 K4 ["format"]
       54 CALL                             R9 3 1
       55 MOVE                             R8 R9
       56 RETURN                           R8 1
       57 FORGLOOP                         R2 2 ; [-15]
       59 GETTABLEKS                       R2 R0 K9 ["totalResults"]
       61 JUMPIFNOT                        R2 ; [+20]
       62 GETTABLEKS                       R3 R0 K9 ["totalResults"]
       64 FASTCALL1                        TYPEOF R3 ; [+2]
       65 GETIMPORT                        R2 K1 [typeof]
       67 CALL                             R2 1 1
       68 JUMPIFEQKS                       R2 K10 ["number"] ; [+13]
       70 LOADK                            R3 K11 ["\"totalResults\" > Expected number, got %*"]
       71 GETTABLEKS                       R6 R0 K9 ["totalResults"]
       73 FASTCALL1                        TYPEOF R6 ; [+2]
       74 GETIMPORT                        R5 K1 [typeof]
       76 CALL                             R5 1 1
       77 NAMECALL                         R3 R3 K4 ["format"]
       79 CALL                             R3 2 1
       80 MOVE                             R2 R3
       81 RETURN                           R2 1
       82 LOADNIL                          R2
       83 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Models"]
       13 GETTABLEKS                       R2 R2 K8 ["UniverseModel"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPTABLE                         R3 K11 [{"validate"}]
       19 SETTABLEKS                       R2 R3 K10 ["validate"]
       21 RETURN                           R3 1
