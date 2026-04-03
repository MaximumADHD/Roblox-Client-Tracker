PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 NEWTABLE                         R2 0 0
       13 MOVE                             R3 R1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 LOADB                            R8 1
       18 SETTABLE                         R8 R2 R7
       19 FORGLOOP                         R3 2 ; [-3]
       21 MOVE                             R3 R1
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETTABLE                         R8 R0 R7
       26 JUMPIFEQKNIL                     R8 ; [+8]
       28 GETTABLE                         R9 R0 R7
       29 FASTCALL1                        TYPEOF R9 ; [+2]
       30 GETIMPORT                        R8 K1 [typeof]
       32 CALL                             R8 1 1
       33 JUMPIFEQKS                       R8 K3 ["number"] ; [+3]
       35 LOADB                            R8 0
       36 RETURN                           R8 1
       37 FORGLOOP                         R3 2 ; [-13]
       39 MOVE                             R3 R0
       40 LOADNIL                          R4
       41 LOADNIL                          R5
       42 FORGPREP                         R3
       43 GETTABLE                         R8 R2 R6
       44 JUMPIF                           R8 ; [+2]
       45 LOADB                            R8 0
       46 RETURN                           R8 1
       47 FORGLOOP                         R3 2 ; [-5]
       49 LOADB                            R3 1
       50 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
