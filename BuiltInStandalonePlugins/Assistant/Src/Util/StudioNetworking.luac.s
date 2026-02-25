PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["plugin"]
        3 SETTABLEKS                       R2 R1 K0 ["plugin"]
        5 GETTABLEKS                       R1 R0 K1 ["isHost"]
        7 GETTABLEKS                       R2 R0 K2 ["isGuest"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+20]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K3 ["new"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K4 ["_logger"]
       18 GETUPVAL                         R4 2
       19 CALL                             R4 0 -1
       20 NAMECALL                         R2 R2 K5 ["setEnabled"]
       22 CALL                             R2 -1 0
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R2 R3 K3 ["new"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 1
       28 SETUPVAL                         R2 3
       29 JUMP                             ; [+18]
       30 GETUPVAL                         R2 5
       31 GETTABLEKS                       R1 R2 K3 ["new"]
       33 MOVE                             R2 R0
       34 CALL                             R1 1 1
       35 GETTABLEKS                       R2 R1 K4 ["_logger"]
       37 GETUPVAL                         R4 2
       38 CALL                             R4 0 -1
       39 NAMECALL                         R2 R2 K5 ["setEnabled"]
       41 CALL                             R2 -1 0
       42 GETUPVAL                         R3 4
       43 GETTABLEKS                       R2 R3 K3 ["new"]
       45 MOVE                             R3 R1
       46 CALL                             R2 1 1
       47 SETUPVAL                         R2 3
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K6 ["get"]
       51 CALL                             R1 0 -1
       52 RETURN                           R1 -1

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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R5 R1 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["Shared"]
       25 GETTABLEKS                       R3 R4 K11 ["FFlagDebugLogAssistantUI"]
       27 GETTABLEKS                       R5 R2 K12 ["Implementations"]
       29 GETTABLEKS                       R4 R5 K13 ["CallbackNetworking"]
       31 GETTABLEKS                       R6 R2 K12 ["Implementations"]
       33 GETTABLEKS                       R5 R6 K14 ["StudioNetworking"]
       35 DUPTABLE                         R6 K16 [{"plugin"}]
       36 LOADNIL                          R7
       37 SETTABLEKS                       R7 R6 K15 ["plugin"]
       39 LOADNIL                          R7
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          REF R7
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R8 R6 K17 ["create"]
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          REF R7
       51 SETTABLEKS                       R8 R6 K18 ["get"]
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          REF R7
       55 SETTABLEKS                       R8 R6 K19 ["Destroy"]
       57 CLOSEUPVALS                      R7
       58 RETURN                           R6 1
