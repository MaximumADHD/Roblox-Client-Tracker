PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["create"]
        3 DUPTABLE                         R1 K5 [{["isHost"] = True, ["isGuest"] = True, ["plugin"]}]
        4 GETIMPORT                        R2 K6 [plugin]
        6 SETTABLEKS                       R2 R1 K4 ["plugin"]
        8 CALL                             R0 1 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 0
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R1 0
       14 CALL                             R0 1 1
       15 SETUPVAL                         R0 2
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 2
       18 RETURN                           R0 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 RETURN                           R0 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K0 ["Destroy"]
       13 CALL                             R0 0 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["StudioNetworking"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Src"]
       20 GETTABLEKS                       R3 R3 K10 ["Guest"]
       22 GETTABLEKS                       R3 R3 K11 ["createGuestInterface"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Src"]
       29 GETTABLEKS                       R4 R4 K12 ["Types"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 4 0
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          REF R5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          REF R6
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R7 R4 K13 ["create"]
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          REF R5
       45 CAPTURE                          REF R6
       46 SETTABLEKS                       R7 R4 K14 ["get"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          REF R5
       50 CAPTURE                          REF R6
       51 SETTABLEKS                       R7 R4 K15 ["destroy"]
       53 CLOSEUPVALS                      R5
       54 RETURN                           R4 1
