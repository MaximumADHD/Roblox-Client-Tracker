PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["MarketplaceService"]
        2 NAMECALL                         R1 R1 K1 ["GetService"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["PlaceId"]
        8 NAMECALL                         R1 R1 K3 ["GetProductInfoAsync"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R0 R1 K4 ["Name"]
       13 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R2 ; [+2]
        6 MOVE                             R4 R3
        7 RETURN                           R4 1
        8 MOVE                             R4 R1
        9 RETURN                           R4 1

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
        8 CAPTURE                          VAL R1
        9 CALL                             R3 1 2
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R0 R4
       12 JUMP                             ; [+1]
       13 MOVE                             R0 R2
       14 GETUPVAL                         R1 1
       15 LOADNIL                          R2
       16 MOVE                             R3 R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 ORK                              R4 R1 K0 [""]
        2 GETIMPORT                        R5 K2 [pcall]
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          VAL R3
        6 CALL                             R5 1 2
        7 JUMPIFNOT                        R5 ; [+2]
        8 MOVE                             R2 R6
        9 RETURN                           R2 1
       10 MOVE                             R2 R4
       11 RETURN                           R2 1

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
       23 CAPTURE                          VAL R4
       24 NAMECALL                         R5 R0 K7 ["OnHostEvent"]
       26 CALL                             R5 3 1
       27 SETUPVAL                         R5 3
       28 LOADK                            R7 K8 ["StudioIdentification_GetName"]
       29 NEWCLOSURE                       R8 P3
       30 CAPTURE                          VAL R3
       31 NAMECALL                         R5 R0 K9 ["OnHostInvokeAsync"]
       33 CALL                             R5 3 1
       34 SETUPVAL                         R5 4
       35 RETURN                           R0 0

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
       12 LOADNIL                          R1
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K5 [task.wait]
       16 LOADN                            R1 1
       17 CALL                             R0 1 0
       18 JUMPBACK                         ; [-10]
       19 GETUPVAL                         R1 2
       20 FASTCALL2K                       ASSERT R1 K6 ; [+4]
       22 LOADK                            R2 K6 ["StudioIdentification get invoke is not initialized."]
       23 GETIMPORT                        R0 K2 [assert]
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 2
       27 LOADNIL                          R1
       28 GETUPVAL                         R3 0
       29 ORK                              R2 R3 K7 [""]
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
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["StudioNetworking"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 LOADB                            R3 0
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 DUPCLOSURE                       R8 K9 [PROTO_1]
       24 NEWCLOSURE                       R9 P1
       25 CAPTURE                          REF R7
       26 CAPTURE                          REF R3
       27 CAPTURE                          REF R4
       28 CAPTURE                          REF R6
       29 CAPTURE                          REF R5
       30 SETTABLEKS                       R9 R2 K10 ["initialize"]
       32 NEWCLOSURE                       R9 P2
       33 CAPTURE                          REF R4
       34 CAPTURE                          REF R6
       35 CAPTURE                          REF R5
       36 SETTABLEKS                       R9 R2 K11 ["getNameAsync"]
       38 NEWCLOSURE                       R9 P3
       39 CAPTURE                          REF R4
       40 SETTABLEKS                       R9 R2 K12 ["clearCache"]
       42 CLOSEUPVALS                      R3
       43 RETURN                           R2 1
