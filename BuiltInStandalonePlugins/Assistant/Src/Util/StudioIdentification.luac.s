PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+22]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["PlaceId"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K1 ["MarketplaceService"]
        8 NAMECALL                         R1 R1 K2 ["GetService"]
       10 CALL                             R1 2 1
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K3 ["GetProductInfoAsync"]
       14 CALL                             R1 2 1
       15 GETTABLEKS                       R1 R1 K4 ["Name"]
       17 LOADK                            R2 K5 ["%* (placeId: %*)"]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R0
       20 NAMECALL                         R2 R2 K6 ["format"]
       22 CALL                             R2 3 1
       23 MOVE                             R1 R2
       24 RETURN                           R1 1
       25 GETUPVAL                         R0 1
       26 LOADK                            R2 K1 ["MarketplaceService"]
       27 NAMECALL                         R0 R0 K2 ["GetService"]
       29 CALL                             R0 2 1
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K0 ["PlaceId"]
       33 NAMECALL                         R0 R0 K3 ["GetProductInfoAsync"]
       35 CALL                             R0 2 1
       36 GETTABLEKS                       R0 R0 K4 ["Name"]
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
       16 LOADK                            R2 K5 ["Standalone"]
       17 MOVE                             R3 R0
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

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
       25 NAMECALL                         R5 R0 K7 ["OnHostEvent"]
       27 CALL                             R5 3 1
       28 SETUPVAL                         R5 3
       29 LOADK                            R7 K8 ["StudioIdentification_GetName"]
       30 NEWCLOSURE                       R8 P3
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R5 R0 K9 ["OnHostInvokeAsync"]
       35 CALL                             R5 3 1
       36 SETUPVAL                         R5 5
       37 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+17]
        2 GETUPVAL                         R1 1
        3 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        5 LOADK                            R2 K0 ["StudioIdentification request event is not initialized."]
        6 GETIMPORT                        R0 K2 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 JUMPIF                           R0 ; [+8]
       11 GETUPVAL                         R0 1
       12 LOADK                            R1 K3 ["Edit"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K6 [task.wait]
       16 LOADN                            R1 1
       17 CALL                             R0 1 0
       18 JUMPBACK                         ; [-10]
       19 GETUPVAL                         R1 2
       20 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       22 LOADK                            R2 K7 ["StudioIdentification get invoke is not initialized."]
       23 GETIMPORT                        R0 K2 [assert]
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 2
       27 LOADK                            R1 K3 ["Edit"]
       28 GETUPVAL                         R3 0
       29 ORK                              R2 R3 K8 [""]
       30 CALL                             R0 2 1
       31 SETUPVAL                         R0 0
       32 RETURN                           R0 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["StudioNetworking"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["FFlagMCPAssistantPlaceID"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 4 0
       27 LOADB                            R4 0
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 LOADNIL                          R8
       32 DUPCLOSURE                       R9 K11 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 NEWCLOSURE                       R10 P1
       35 CAPTURE                          REF R8
       36 CAPTURE                          REF R4
       37 CAPTURE                          REF R5
       38 CAPTURE                          REF R7
       39 CAPTURE                          VAL R2
       40 CAPTURE                          REF R6
       41 SETTABLEKS                       R10 R3 K12 ["initialize"]
       43 NEWCLOSURE                       R10 P2
       44 CAPTURE                          REF R5
       45 CAPTURE                          REF R7
       46 CAPTURE                          REF R6
       47 SETTABLEKS                       R10 R3 K13 ["getNameAsync"]
       49 NEWCLOSURE                       R10 P3
       50 CAPTURE                          REF R5
       51 SETTABLEKS                       R10 R3 K14 ["clearCache"]
       53 CLOSEUPVALS                      R4
       54 RETURN                           R3 1
