PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+22]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["PlaceId"]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K1 ["MarketplaceService"]
        8 NAMECALL                         R2 R2 K2 ["GetService"]
       10 CALL                             R2 2 1
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K3 ["GetProductInfoAsync"]
       14 CALL                             R2 2 1
       15 GETTABLEKS                       R1 R2 K4 ["Name"]
       17 LOADK                            R2 K5 ["%* (placeId: %*)"]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R0
       20 NAMECALL                         R2 R2 K6 ["format"]
       22 CALL                             R2 3 1
       23 MOVE                             R1 R2
       24 RETURN                           R1 1
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K1 ["MarketplaceService"]
       27 NAMECALL                         R1 R1 K2 ["GetService"]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K0 ["PlaceId"]
       33 NAMECALL                         R1 R1 K3 ["GetProductInfoAsync"]
       35 CALL                             R1 2 1
       36 GETTABLEKS                       R0 R1 K4 ["Name"]
       38 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+2]
        7 MOVE                             R4 R3
        8 RETURN                           R4 1
        9 MOVE                             R4 R1
       10 RETURN                           R4 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K1 [game]
        3 GETTABLEKS                       R2 R3 K2 ["Name"]
        5 GETIMPORT                        R3 K4 [pcall]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 2
       11 JUMPIFNOT                        R3 ; [+2]
       12 MOVE                             R0 R4
       13 JUMP                             ; [+1]
       14 MOVE                             R0 R2
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R3 3
       17 CALL                             R3 0 1
       18 JUMPIFNOT                        R3 ; [+2]
       19 LOADK                            R2 K5 ["Standalone"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R2
       22 MOVE                             R3 R0
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 ORK                              R4 R1 K0 [""]
        2 GETIMPORT                        R5 K2 [pcall]
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R3
        7 CALL                             R5 1 2
        8 JUMPIFNOT                        R5 ; [+2]
        9 MOVE                             R2 R6
       10 RETURN                           R2 1
       11 MOVE                             R2 R4
       12 RETURN                           R2 1

PROTO_6:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 GETIMPORT                        R3 K1 [game]
        4 SETUPVAL                         R3 0
        5 NAMECALL                         R4 R0 K2 ["IsHost"]
        7 CALL                             R4 1 1
        8 SETUPVAL                         R4 1
        9 LOADK                            R6 K3 ["StudioIdentification_NameUpdated"]
       10 DUPCLOSURE                       R7 K4 [PROTO_2]
       11 NAMECALL                         R4 R0 K5 ["OnGuestEvent"]
       13 CALL                             R4 3 1
       14 LOADK                            R7 K3 ["StudioIdentification_NameUpdated"]
       15 NEWCLOSURE                       R8 P1
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R5 R0 K5 ["OnGuestEvent"]
       19 CALL                             R5 3 0
       20 LOADK                            R7 K6 ["StudioIdentification_RequestName"]
       21 NEWCLOSURE                       R8 P2
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U5
       26 NAMECALL                         R5 R0 K7 ["OnHostEvent"]
       28 CALL                             R5 3 1
       29 SETUPVAL                         R5 3
       30 LOADK                            R7 K8 ["StudioIdentification_GetName"]
       31 NEWCLOSURE                       R8 P3
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U4
       34 NAMECALL                         R5 R0 K9 ["OnHostInvokeAsync"]
       36 CALL                             R5 3 1
       37 SETUPVAL                         R5 6
       38 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+22]
        2 GETUPVAL                         R1 1
        3 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        5 LOADK                            R2 K0 ["StudioIdentification request event is not initialized."]
        6 GETIMPORT                        R0 K2 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 JUMPIF                           R0 ; [+13]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+2]
       15 LOADK                            R1 K3 ["Edit"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 CALL                             R0 1 0
       19 GETIMPORT                        R0 K6 [task.wait]
       21 LOADN                            R1 1
       22 CALL                             R0 1 0
       23 JUMPBACK                         ; [-15]
       24 GETUPVAL                         R1 3
       25 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       27 LOADK                            R2 K7 ["StudioIdentification get invoke is not initialized."]
       28 GETIMPORT                        R0 K2 [assert]
       30 CALL                             R0 2 0
       31 GETUPVAL                         R0 3
       32 GETUPVAL                         R2 2
       33 CALL                             R2 0 1
       34 JUMPIFNOT                        R2 ; [+2]
       35 LOADK                            R1 K3 ["Edit"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R1
       38 GETUPVAL                         R3 0
       39 ORK                              R2 R3 K8 [""]
       40 CALL                             R0 2 1
       41 SETUPVAL                         R0 0
       42 RETURN                           R0 1

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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["StudioNetworking"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Flags"]
       29 GETTABLEKS                       R4 R5 K12 ["FFlagMCPAssistantPlaceID"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R6 R1 K11 ["Flags"]
       34 GETTABLEKS                       R5 R6 K13 ["Shared"]
       36 GETTABLEKS                       R4 R5 K14 ["FFlagAssistantDMNetworkIdentity"]
       38 NEWTABLE                         R5 4 0
       40 LOADB                            R6 0
       41 LOADNIL                          R7
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 LOADNIL                          R10
       45 DUPCLOSURE                       R11 K15 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 NEWCLOSURE                       R12 P1
       48 CAPTURE                          REF R10
       49 CAPTURE                          REF R6
       50 CAPTURE                          REF R7
       51 CAPTURE                          REF R9
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          REF R8
       55 SETTABLEKS                       R12 R5 K16 ["initialize"]
       57 NEWCLOSURE                       R12 P2
       58 CAPTURE                          REF R7
       59 CAPTURE                          REF R9
       60 CAPTURE                          VAL R4
       61 CAPTURE                          REF R8
       62 SETTABLEKS                       R12 R5 K17 ["getNameAsync"]
       64 NEWCLOSURE                       R12 P3
       65 CAPTURE                          REF R7
       66 SETTABLEKS                       R12 R5 K18 ["clearCache"]
       68 CLOSEUPVALS                      R6
       69 RETURN                           R5 1
