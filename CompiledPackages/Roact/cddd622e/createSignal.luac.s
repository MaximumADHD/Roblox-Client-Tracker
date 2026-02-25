PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["disconnected"]
        3 NOT                              R1 R2
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["Listeners can only be disconnected once."]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 LOADB                            R1 1
       12 SETTABLEKS                       R1 R0 K0 ["disconnected"]
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R1 2
       16 LOADNIL                          R2
       17 SETTABLE                         R2 R0 R1
       18 GETUPVAL                         R0 3
       19 GETUPVAL                         R1 2
       20 LOADNIL                          R2
       21 SETTABLE                         R2 R0 R1
       22 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Can only subscribe to signals with a function."]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 DUPTABLE                         R2 K8 [{"callback", "disconnected"}]
       16 SETTABLEKS                       R1 R2 K6 ["callback"]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K7 ["disconnected"]
       21 GETUPVAL                         R3 0
       22 JUMPIFNOT                        R3 ; [+5]
       23 GETUPVAL                         R4 1
       24 GETTABLE                         R3 R4 R1
       25 JUMPIF                           R3 ; [+2]
       26 GETUPVAL                         R3 2
       27 SETTABLE                         R2 R3 R1
       28 GETUPVAL                         R3 1
       29 SETTABLE                         R2 R3 R1
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U2
       35 RETURN                           R3 1

PROTO_2:
        0 PREPVARARGS                      1
        1 LOADB                            R1 1
        2 SETUPVAL                         R1 0
        3 GETIMPORT                        R1 K1 [pairs]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 3
        7 FORGPREP_NEXT                    R1
        8 GETTABLEKS                       R6 R5 K2 ["disconnected"]
       10 JUMPIF                           R6 ; [+6]
       11 GETUPVAL                         R7 2
       12 GETTABLE                         R6 R7 R4
       13 JUMPIF                           R6 ; [+3]
       14 MOVE                             R6 R4
       15 GETVARARGS                       R7 -1
       16 CALL                             R6 -1 0
       17 FORGLOOP                         R1 2 ; [-10]
       19 LOADB                            R1 0
       20 SETUPVAL                         R1 0
       21 GETIMPORT                        R1 K1 [pairs]
       23 GETUPVAL                         R2 2
       24 CALL                             R1 1 3
       25 FORGPREP_NEXT                    R1
       26 GETUPVAL                         R6 2
       27 LOADNIL                          R7
       28 SETTABLE                         R7 R6 R4
       29 FORGLOOP                         R1 2 ; [-4]
       31 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 LOADB                            R2 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 DUPTABLE                         R5 K2 [{"subscribe", "fire"}]
       14 SETTABLEKS                       R3 R5 K0 ["subscribe"]
       16 SETTABLEKS                       R4 R5 K1 ["fire"]
       18 CLOSEUPVALS                      R2
       19 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
