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
       17 GETTABLEKS                       R1 R0 K5 ["data"]
       19 JUMPIFNOT                        R1 ; [+36]
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K1 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFEQKS                       R2 K2 ["table"] ; [+11]
       27 LOADK                            R2 K6 ["\"data\" > Expected table, got %*"]
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
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K7 ["validate"]
       44 MOVE                             R8 R6
       45 CALL                             R7 1 1
       46 JUMPIFNOT                        R7 ; [+7]
       47 LOADK                            R8 K8 ["\"data\" > [%*] > %*"]
       48 MOVE                             R10 R5
       49 MOVE                             R11 R7
       50 NAMECALL                         R8 R8 K4 ["format"]
       52 CALL                             R8 3 1
       53 RETURN                           R8 1
       54 FORGLOOP                         R2 2 ; [-14]
       56 LOADNIL                          R2
       57 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Models"]
       13 GETTABLEKS                       R2 R2 K8 ["ThumbnailResponse"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPTABLE                         R3 K11 [{"validate"}]
       19 SETTABLEKS                       R2 R3 K10 ["validate"]
       21 RETURN                           R3 1
