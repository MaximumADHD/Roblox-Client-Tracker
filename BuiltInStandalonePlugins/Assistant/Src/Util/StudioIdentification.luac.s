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
        1 GETIMPORT                        R2 K1 [game]
        3 GETTABLEKS                       R2 R2 K2 ["Name"]
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
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K5 ["Types"]
       19 GETTABLEKS                       R2 R2 K6 ["Standalone"]
       21 MOVE                             R3 R0
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

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
        1 JUMPIF                           R0 ; [+21]
        2 GETUPVAL                         R1 1
        3 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        5 LOADK                            R2 K0 ["StudioIdentification request event is not initialized."]
        6 GETIMPORT                        R0 K2 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 JUMPIF                           R0 ; [+12]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["Types"]
       15 GETTABLEKS                       R1 R1 K4 ["Edit"]
       17 CALL                             R0 1 0
       18 GETIMPORT                        R0 K7 [task.wait]
       20 LOADN                            R1 1
       21 CALL                             R0 1 0
       22 JUMPBACK                         ; [-14]
       23 GETUPVAL                         R1 3
       24 FASTCALL2K                       ASSERT R1 K8 ; [+4]
       26 LOADK                            R2 K8 ["StudioIdentification get invoke is not initialized."]
       27 GETIMPORT                        R0 K2 [assert]
       29 CALL                             R0 2 0
       30 GETUPVAL                         R0 3
       31 GETUPVAL                         R1 2
       32 GETTABLEKS                       R1 R1 K3 ["Types"]
       34 GETTABLEKS                       R1 R1 K4 ["Edit"]
       36 GETUPVAL                         R3 0
       37 ORK                              R2 R3 K9 [""]
       38 CALL                             R0 2 1
       39 SETUPVAL                         R0 0
       40 RETURN                           R0 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["StudioNetworking"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["Utils"]
       32 GETTABLEKS                       R4 R4 K13 ["DataModelType"]
       34 NEWTABLE                         R5 4 0
       36 LOADB                            R6 0
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 LOADNIL                          R10
       41 DUPCLOSURE                       R11 K14 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 NEWCLOSURE                       R12 P1
       44 CAPTURE                          REF R10
       45 CAPTURE                          REF R6
       46 CAPTURE                          REF R7
       47 CAPTURE                          REF R9
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          REF R8
       51 SETTABLEKS                       R12 R5 K15 ["initialize"]
       53 NEWCLOSURE                       R12 P2
       54 CAPTURE                          REF R7
       55 CAPTURE                          REF R9
       56 CAPTURE                          VAL R4
       57 CAPTURE                          REF R8
       58 SETTABLEKS                       R12 R5 K16 ["getNameAsync"]
       60 NEWCLOSURE                       R12 P3
       61 CAPTURE                          REF R7
       62 SETTABLEKS                       R12 R5 K17 ["clearCache"]
       64 CLOSEUPVALS                      R6
       65 RETURN                           R5 1
