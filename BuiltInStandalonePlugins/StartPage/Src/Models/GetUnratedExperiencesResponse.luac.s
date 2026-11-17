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
       19 JUMPIFEQKNIL                     R1 ; [+42]
       21 FASTCALL1                        TYPEOF R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K1 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFEQKS                       R2 K2 ["table"] ; [+11]
       28 LOADK                            R2 K6 ["\"universeIds\" > Expected table or nil, got %*"]
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R5 R1
       31 GETIMPORT                        R4 K1 [typeof]
       33 CALL                             R4 1 1
       34 NAMECALL                         R2 R2 K4 ["format"]
       36 CALL                             R2 2 1
       37 RETURN                           R2 1
       38 MOVE                             R2 R1
       39 LOADNIL                          R3
       40 LOADNIL                          R4
       41 FORGPREP                         R2
       42 FASTCALL1                        TYPEOF R6 ; [+3]
       43 MOVE                             R8 R6
       44 GETIMPORT                        R7 K1 [typeof]
       46 CALL                             R7 1 1
       47 JUMPIFEQKS                       R7 K7 ["number"] ; [+12]
       49 LOADK                            R7 K8 ["\"universeIds\" > [%*] > Expected number, got %*"]
       50 MOVE                             R9 R5
       51 FASTCALL1                        TYPEOF R6 ; [+3]
       52 MOVE                             R11 R6
       53 GETIMPORT                        R10 K1 [typeof]
       55 CALL                             R10 1 1
       56 NAMECALL                         R7 R7 K4 ["format"]
       58 CALL                             R7 3 1
       59 RETURN                           R7 1
       60 FORGLOOP                         R2 2 ; [-19]
       62 LOADNIL                          R2
       63 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
