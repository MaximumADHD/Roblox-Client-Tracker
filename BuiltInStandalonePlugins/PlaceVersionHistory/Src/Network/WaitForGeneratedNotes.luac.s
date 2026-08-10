PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETIMPORT                        R0 K3 [task.cancel]
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["detail"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFEQKS                       R1 K1 ["PlaceVersionHistoryPlugin"] ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K3 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+12]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K5 [type]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+6]
       19 GETTABLEKS                       R3 R2 K7 ["operationId"]
       21 GETUPVAL                         R4 1
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 2
       26 JUMPIFNOT                        R3 ; [+6]
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R3 R3 K8 ["Disconnect"]
       30 CALL                             R3 1 0
       31 LOADNIL                          R3
       32 SETUPVAL                         R3 2
       33 GETUPVAL                         R3 3
       34 JUMPIFNOT                        R3 ; [+6]
       35 GETIMPORT                        R3 K11 [task.cancel]
       37 GETUPVAL                         R4 3
       38 CALL                             R3 1 0
       39 LOADNIL                          R3
       40 SETUPVAL                         R3 3
       41 GETUPVAL                         R3 4
       42 CALL                             R3 0 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETIMPORT                        R0 K3 [task.cancel]
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R0 2
       17 LOADK                            R2 K4 ["WaitForGeneratedNotes: timed out waiting for operation %*"]
       18 GETUPVAL                         R4 3
       19 NAMECALL                         R2 R2 K5 ["format"]
       21 CALL                             R2 2 1
       22 MOVE                             R1 R2
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          REF R3
        4 CAPTURE                          REF R4
        5 MOVE                             R6 R2
        6 MOVE                             R7 R5
        7 CALL                             R6 1 0
        8 GETUPVAL                         R6 0
        9 NEWCLOSURE                       R8 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          REF R3
       13 CAPTURE                          REF R4
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R6 R6 K0 ["Connect"]
       17 CALL                             R6 2 1
       18 MOVE                             R3 R6
       19 GETIMPORT                        R6 K3 [task.delay]
       21 GETUPVAL                         R7 3
       22 NEWCLOSURE                       R8 P2
       23 CAPTURE                          REF R3
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U2
       27 CALL                             R6 2 1
       28 MOVE                             R4 R6
       29 CLOSEUPVALS                      R3
       30 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["RobloxEventReceived"]
        5 MOVE                             R4 R2
        6 JUMPIF                           R4 ; [+3]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["FIntPVHGenerateNotesTimeoutSeconds"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["new"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R4
       18 CALL                             R5 1 -1
       19 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["flags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K12 [game]
       25 LOADK                            R5 K13 ["NotificationService"]
       26 NAMECALL                         R3 R3 K14 ["GetService"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K12 [game]
       31 LOADK                            R6 K15 ["HttpService"]
       32 NAMECALL                         R4 R4 K14 ["GetService"]
       34 CALL                             R4 2 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K16 ["Src"]
       39 GETTABLEKS                       R6 R6 K17 ["Types"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K18 [PROTO_5]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 RETURN                           R6 1
