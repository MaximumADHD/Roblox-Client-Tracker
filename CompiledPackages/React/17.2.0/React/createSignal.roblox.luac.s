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
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["function"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Can only subscribe to signals with a function."]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 DUPTABLE                         R1 K8 [{"callback", "disconnected"}]
       16 SETTABLEKS                       R0 R1 K6 ["callback"]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K7 ["disconnected"]
       21 GETUPVAL                         R2 0
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETUPVAL                         R3 1
       24 GETTABLE                         R2 R3 R0
       25 JUMPIF                           R2 ; [+2]
       26 GETUPVAL                         R2 2
       27 SETTABLE                         R1 R2 R0
       28 GETUPVAL                         R2 1
       29 SETTABLE                         R1 R2 R0
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U2
       35 RETURN                           R2 1

PROTO_2:
        0 PREPVARARGS                      0
        1 LOADB                            R0 1
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 FORGPREP                         R0
        7 GETTABLEKS                       R5 R4 K0 ["disconnected"]
        9 JUMPIF                           R5 ; [+6]
       10 GETUPVAL                         R6 2
       11 GETTABLE                         R5 R6 R3
       12 JUMPIF                           R5 ; [+3]
       13 MOVE                             R5 R3
       14 GETVARARGS                       R6 -1
       15 CALL                             R5 -1 0
       16 FORGLOOP                         R0 2 ; [-10]
       18 LOADB                            R0 0
       19 SETUPVAL                         R0 0
       20 GETIMPORT                        R0 K3 [table.clear]
       22 GETUPVAL                         R1 2
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

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
       13 CLOSEUPVALS                      R2
       14 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
