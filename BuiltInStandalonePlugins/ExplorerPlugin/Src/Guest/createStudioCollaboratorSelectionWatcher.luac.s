PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 JUMPIFNOTEQKNIL                  R1 ; [+21]
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K0 ["GetCollaboratorsList"]
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K1 ["UserId"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K1 ["UserId"]
       15 JUMPIFNOTEQ                      R7 R8 ; [+7]
       17 GETTABLEKS                       R1 R6 K2 ["CollaboratorColor3"]
       19 GETUPVAL                         R7 0
       20 GETUPVAL                         R8 1
       21 SETTABLE                         R1 R7 R8
       22 JUMP                             ; [+2]
       23 FORGLOOP                         R2 2 ; [-14]
       25 JUMPIFNOTEQKNIL                  R1 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       31 LOADK                            R4 K3 ["Couldn't find color of player who edited cloud selection"]
       32 GETIMPORT                        R2 K5 [assert]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R2 3
       36 MOVE                             R3 R1
       37 MOVE                             R4 R0
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["CloudEditSelectionChanged"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R1 R1 K1 ["Connect"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 NEWTABLE                         R4 0 0
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsEdit"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+2]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 RETURN                           R1 1
        7 NEWTABLE                         R1 0 0
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 GETUPVAL                         R3 2
       14 NAMECALL                         R3 R3 K2 ["GetPlayers"]
       16 CALL                             R3 1 3
       17 FORGPREP                         R3
       18 GETTABLEKS                       R8 R7 K3 ["CloudEditSelectionChanged"]
       20 NEWCLOSURE                       R10 P2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R7
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R8 R8 K4 ["Connect"]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R3 2 ; [-11]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K5 ["PlayerAdded"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K4 ["Connect"]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K6 ["PlayerRemoving"]
       40 NEWCLOSURE                       R6 P3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R4 R4 K4 ["Connect"]
       45 CALL                             R4 2 1
       46 NEWCLOSURE                       R5 P4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollaboratorsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 DUPCLOSURE                       R3 K6 [PROTO_5]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
