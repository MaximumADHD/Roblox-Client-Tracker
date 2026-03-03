PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["get"]
        5 CALL                             R1 0 -1
        6 RETURN                           R1 -1
        7 GETTABLEKS                       R1 R0 K1 ["isHost"]
        9 GETTABLEKS                       R2 R0 K2 ["isGuest"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+12]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K3 ["new"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R2 R3 K3 ["new"]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 -1
       21 CALL                             R1 -1 1
       22 SETUPVAL                         R1 0
       23 JUMP                             ; [+10]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R1 R2 K3 ["new"]
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R2 R3 K3 ["new"]
       30 MOVE                             R3 R0
       31 CALL                             R2 1 -1
       32 CALL                             R1 -1 1
       33 SETUPVAL                         R1 0
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R1 R2 K0 ["get"]
       37 CALL                             R1 0 -1
       38 RETURN                           R1 -1

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
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Implementations"]
       16 GETTABLEKS                       R2 R3 K9 ["CallbackNetworking"]
       18 GETTABLEKS                       R4 R1 K8 ["Implementations"]
       20 GETTABLEKS                       R3 R4 K10 ["StudioNetworking"]
       22 NEWTABLE                         R4 4 0
       24 LOADNIL                          R5
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          REF R5
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R6 R4 K11 ["create"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          REF R5
       35 SETTABLEKS                       R6 R4 K12 ["get"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          REF R5
       39 SETTABLEKS                       R6 R4 K13 ["Destroy"]
       41 CLOSEUPVALS                      R5
       42 RETURN                           R4 1
