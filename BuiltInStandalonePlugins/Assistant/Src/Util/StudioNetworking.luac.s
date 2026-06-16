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
       13 CALL                             R4 0 -1
       14 NAMECALL                         R2 R2 K3 ["setEnabled"]
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K1 ["new"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 SETUPVAL                         R2 3
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K4 ["get"]
       26 CALL                             R2 0 -1
       27 RETURN                           R2 -1

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
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Flags"]
       23 GETTABLEKS                       R3 R3 K10 ["Shared"]
       25 GETTABLEKS                       R3 R3 K11 ["FFlagDebugLogAssistantUI"]
       27 GETTABLEKS                       R4 R2 K12 ["Implementations"]
       29 GETTABLEKS                       R4 R4 K13 ["StudioNetworking"]
       31 DUPTABLE                         R5 K15 [{"plugin"}]
       32 LOADNIL                          R6
       33 SETTABLEKS                       R6 R5 K14 ["plugin"]
       35 LOADNIL                          R6
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          REF R6
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R7 R5 K16 ["create"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          REF R6
       46 SETTABLEKS                       R7 R5 K17 ["get"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          REF R6
       50 SETTABLEKS                       R7 R5 K18 ["Destroy"]
       52 CLOSEUPVALS                      R6
       53 RETURN                           R5 1
