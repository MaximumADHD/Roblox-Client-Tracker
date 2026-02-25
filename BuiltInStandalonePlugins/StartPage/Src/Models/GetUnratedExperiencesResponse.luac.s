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
       20 JUMPIFEQKNIL                     R1 ; [+44]
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K1 [typeof]
       26 CALL                             R2 1 1
       27 JUMPIFEQKS                       R2 K2 ["table"] ; [+12]
       29 LOADK                            R3 K6 ["\"universeIds\" > Expected table or nil, got %*"]
       30 FASTCALL1                        TYPEOF R1 ; [+3]
       31 MOVE                             R6 R1
       32 GETIMPORT                        R5 K1 [typeof]
       34 CALL                             R5 1 1
       35 NAMECALL                         R3 R3 K4 ["format"]
       37 CALL                             R3 2 1
       38 MOVE                             R2 R3
       39 RETURN                           R2 1
       40 MOVE                             R2 R1
       41 LOADNIL                          R3
       42 LOADNIL                          R4
       43 FORGPREP                         R2
       44 FASTCALL1                        TYPEOF R6 ; [+3]
       45 MOVE                             R8 R6
       46 GETIMPORT                        R7 K1 [typeof]
       48 CALL                             R7 1 1
       49 JUMPIFEQKS                       R7 K7 ["number"] ; [+13]
       51 LOADK                            R8 K8 ["\"universeIds\" > [%*] > Expected number, got %*"]
       52 MOVE                             R10 R5
       53 FASTCALL1                        TYPEOF R6 ; [+3]
       54 MOVE                             R12 R6
       55 GETIMPORT                        R11 K1 [typeof]
       57 CALL                             R11 1 1
       58 NAMECALL                         R8 R8 K4 ["format"]
       60 CALL                             R8 3 1
       61 MOVE                             R7 R8
       62 RETURN                           R7 1
       63 FORGLOOP                         R2 2 ; [-20]
       65 LOADNIL                          R2
       66 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
