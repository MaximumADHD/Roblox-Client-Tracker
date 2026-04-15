PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 SETTABLE                         R8 R3 R7
        8 FORGLOOP                         R4 2 ; [-2]
       10 SETTABLE                         R2 R3 R1
       11 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 JUMPIFEQ                         R6 R1 ; [+2]
        9 SETTABLE                         R7 R2 R6
       10 FORGLOOP                         R3 2 ; [-4]
       12 RETURN                           R2 1

PROTO_2:
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
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R2 2
       16 NEWTABLE                         R3 0 0
       18 GETIMPORT                        R4 K5 [pairs]
       20 MOVE                             R5 R1
       21 CALL                             R4 1 3
       22 FORGPREP_NEXT                    R4
       23 JUMPIFEQ                         R7 R2 ; [+2]
       25 SETTABLE                         R8 R3 R7
       26 FORGLOOP                         R4 2 ; [-4]
       28 MOVE                             R0 R3
       29 SETUPVAL                         R0 1
       30 RETURN                           R0 0

PROTO_3:
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
       15 DUPTABLE                         R2 K7 [{"callback"}]
       16 SETTABLEKS                       R1 R2 K6 ["callback"]
       18 GETUPVAL                         R4 0
       19 NEWTABLE                         R5 0 0
       21 GETIMPORT                        R6 K9 [pairs]
       23 MOVE                             R7 R4
       24 CALL                             R6 1 3
       25 FORGPREP_NEXT                    R6
       26 SETTABLE                         R10 R5 R9
       27 FORGLOOP                         R6 2 ; [-2]
       29 SETTABLE                         R2 R5 R1
       30 MOVE                             R3 R5
       31 SETUPVAL                         R3 0
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R1
       36 RETURN                           R3 1

PROTO_4:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K1 [pairs]
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 GETTABLEKS                       R6 R5 K2 ["disconnected"]
        8 JUMPIF                           R6 ; [+3]
        9 MOVE                             R6 R4
       10 GETVARARGS                       R7 -1
       11 CALL                             R6 -1 0
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          REF R0
        6 DUPTABLE                         R3 K2 [{"subscribe", "fire"}]
        7 SETTABLEKS                       R1 R3 K0 ["subscribe"]
        9 SETTABLEKS                       R2 R3 K1 ["fire"]
       11 CLOSEUPVALS                      R0
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_5]
        4 RETURN                           R2 1
