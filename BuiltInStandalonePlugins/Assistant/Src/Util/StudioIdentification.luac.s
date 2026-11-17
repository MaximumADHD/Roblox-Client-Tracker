PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagMCPAssistantPlaceID"]
        3 JUMPIFNOT                        R0 ; [+22]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["PlaceId"]
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K2 ["MarketplaceService"]
        9 NAMECALL                         R1 R1 K3 ["GetService"]
       11 CALL                             R1 2 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K4 ["GetProductInfoAsync"]
       15 CALL                             R1 2 1
       16 GETTABLEKS                       R1 R1 K5 ["Name"]
       18 LOADK                            R2 K6 ["%* (placeId: %*)"]
       19 MOVE                             R4 R1
       20 MOVE                             R5 R0
       21 NAMECALL                         R2 R2 K7 ["format"]
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 RETURN                           R1 1
       26 GETUPVAL                         R0 1
       27 LOADK                            R2 K2 ["MarketplaceService"]
       28 NAMECALL                         R0 R0 K3 ["GetService"]
       30 CALL                             R0 2 1
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K1 ["PlaceId"]
       34 NAMECALL                         R0 R0 K4 ["GetProductInfoAsync"]
       36 CALL                             R0 2 1
       37 GETTABLEKS                       R0 R0 K5 ["Name"]
       39 RETURN                           R0 1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+2]
        8 MOVE                             R4 R3
        9 RETURN                           R4 1
       10 MOVE                             R4 R1
       11 RETURN                           R4 1

PROTO_2:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [game]
        3 GETTABLEKS                       R3 R3 K2 ["Name"]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R4 K4 [pcall]
       11 CALL                             R4 1 2
       12 JUMPIFNOT                        R4 ; [+2]
       13 MOVE                             R1 R5
       14 JUMP                             ; [+1]
       15 MOVE                             R1 R3
       16 GETUPVAL                         R2 2
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 NAMECALL                         R2 R2 K5 ["Fire"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R3
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R4 K1 [pcall]
        7 CALL                             R4 1 2
        8 JUMPIFNOT                        R4 ; [+2]
        9 MOVE                             R2 R5
       10 RETURN                           R2 1
       11 MOVE                             R2 R1
       12 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 GETIMPORT                        R3 K1 [game]
        4 SETUPVAL                         R3 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K2 ["event"]
        8 MOVE                             R5 R0
        9 LOADK                            R6 K3 ["StudioIdentification_NameUpdated"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["event"]
       14 MOVE                             R6 R0
       15 LOADK                            R7 K4 ["StudioIdentification_RequestName"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K5 ["invoke"]
       20 MOVE                             R7 R0
       21 LOADK                            R8 K6 ["StudioIdentification_GetName"]
       22 CALL                             R6 2 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K7 ["new"]
       26 CALL                             R7 0 1
       27 NEWCLOSURE                       R12 P0
       28 CAPTURE                          UPVAL U3
       29 NAMECALL                         R10 R4 K8 ["Connect"]
       31 CALL                             R10 2 -1
       32 NAMECALL                         R8 R7 K9 ["Add"]
       34 CALL                             R8 -1 0
       35 NAMECALL                         R8 R0 K10 ["GetIdentity"]
       37 CALL                             R8 1 1
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R9 R9 K11 ["Identity"]
       41 GETTABLEKS                       R9 R9 K12 ["Standalone"]
       43 JUMPIFEQ                         R8 R9 ; [+20]
       45 NEWCLOSURE                       R12 P1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R4
       49 NAMECALL                         R10 R5 K8 ["Connect"]
       51 CALL                             R10 2 -1
       52 NAMECALL                         R8 R7 K9 ["Add"]
       54 CALL                             R8 -1 0
       55 NEWCLOSURE                       R12 P2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          UPVAL U5
       58 NAMECALL                         R10 R6 K8 ["Connect"]
       60 CALL                             R10 2 -1
       61 NAMECALL                         R8 R7 K9 ["Add"]
       63 CALL                             R8 -1 0
       64 SETUPVAL                         R5 6
       65 SETUPVAL                         R6 7
       66 GETTABLEKS                       R8 R1 K13 ["Destroying"]
       68 NEWCLOSURE                       R10 P3
       69 CAPTURE                          VAL R7
       70 NAMECALL                         R8 R8 K14 ["Once"]
       72 CALL                             R8 2 0
       73 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+23]
        2 GETUPVAL                         R1 1
        3 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        5 LOADK                            R2 K0 ["StudioIdentification request event is not initialized."]
        6 GETIMPORT                        R0 K2 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 JUMPIF                           R0 ; [+14]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["Identity"]
       15 GETTABLEKS                       R2 R2 K4 ["Edit"]
       17 NAMECALL                         R0 R0 K5 ["Fire"]
       19 CALL                             R0 2 0
       20 GETIMPORT                        R0 K8 [task.wait]
       22 LOADN                            R1 1
       23 CALL                             R0 1 0
       24 JUMPBACK                         ; [-16]
       25 GETUPVAL                         R1 3
       26 FASTCALL2K                       ASSERT R1 K9 ; [+4]
       28 LOADK                            R2 K9 ["StudioIdentification get invoke is not initialized."]
       29 GETIMPORT                        R0 K2 [assert]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 3
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K3 ["Identity"]
       36 GETTABLEKS                       R2 R2 K4 ["Edit"]
       38 GETUPVAL                         R4 0
       39 ORK                              R3 R4 K10 [""]
       40 NAMECALL                         R0 R0 K11 ["InvokeAsync"]
       42 CALL                             R0 3 1
       43 SETUPVAL                         R0 0
       44 RETURN                           R0 1

PROTO_8:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["AssistantUI"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Bin"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["DMNetworking"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Src"]
       28 GETTABLEKS                       R6 R6 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R6 R4 K12 ["Remote"]
       33 NEWTABLE                         R7 4 0
       35 LOADNIL                          R8
       36 LOADNIL                          R9
       37 LOADNIL                          R10
       38 LOADNIL                          R11
       39 DUPCLOSURE                       R12 K13 [PROTO_1]
       40 CAPTURE                          VAL R5
       41 NEWCLOSURE                       R13 P1
       42 CAPTURE                          REF R9
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R3
       45 CAPTURE                          REF R8
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CAPTURE                          REF R10
       49 CAPTURE                          REF R11
       50 SETTABLEKS                       R13 R7 K14 ["initialize"]
       52 NEWCLOSURE                       R13 P2
       53 CAPTURE                          REF R8
       54 CAPTURE                          REF R10
       55 CAPTURE                          VAL R4
       56 CAPTURE                          REF R11
       57 SETTABLEKS                       R13 R7 K15 ["getNameAsync"]
       59 NEWCLOSURE                       R13 P3
       60 CAPTURE                          REF R8
       61 SETTABLEKS                       R13 R7 K16 ["clearCache"]
       63 CLOSEUPVALS                      R8
       64 RETURN                           R7 1
