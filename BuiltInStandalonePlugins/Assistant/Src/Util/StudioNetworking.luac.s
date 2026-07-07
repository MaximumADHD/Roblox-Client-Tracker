PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["plugin"]
        3 SETTABLEKS                       R2 R1 K0 ["plugin"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["new"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K2 ["_logger"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       15 NAMECALL                         R2 R2 K4 ["setEnabled"]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K1 ["new"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 SETUPVAL                         R2 3
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K5 ["get"]
       27 CALL                             R2 0 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Networking is not initialized. Call Networking.create first."]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["Implementations"]
       23 GETTABLEKS                       R3 R3 K11 ["StudioNetworking"]
       25 DUPTABLE                         R4 K14 [{["plugin"] = }]
       26 LOADNIL                          R5
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          REF R5
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R6 R4 K15 ["create"]
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          REF R5
       37 SETTABLEKS                       R6 R4 K16 ["get"]
       39 NEWCLOSURE                       R6 P2
       40 CAPTURE                          REF R5
       41 SETTABLEKS                       R6 R4 K17 ["Destroy"]
       43 CLOSEUPVALS                      R5
       44 RETURN                           R4 1
