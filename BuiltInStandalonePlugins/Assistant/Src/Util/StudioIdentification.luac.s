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
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [game]
        3 GETTABLEKS                       R3 R3 K2 ["Name"]
        5 GETIMPORT                        R4 K4 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R2
       10 CALL                             R4 1 2
       11 JUMPIFNOT                        R4 ; [+2]
       12 MOVE                             R1 R5
       13 JUMP                             ; [+1]
       14 MOVE                             R1 R3
       15 GETUPVAL                         R2 2
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K5 ["Fire"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R4 K1 [pcall]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R3
        6 CALL                             R4 1 2
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R5
        9 RETURN                           R2 1
       10 MOVE                             R2 R1
       11 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+2]
        2 GETIMPORT                        R4 K1 [game]
        4 SETUPVAL                         R4 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R5 ; [+88]
        9 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       11 MOVE                             R6 R1
       12 LOADK                            R7 K3 ["StudioIdentification requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       13 GETIMPORT                        R5 K5 [assert]
       15 CALL                             R5 2 0
       16 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       18 MOVE                             R6 R2
       19 LOADK                            R7 K6 ["StudioIdentification requires the environment when FFlagAssistantUseNewDMNetworking is on"]
       20 GETIMPORT                        R5 K5 [assert]
       22 CALL                             R5 2 0
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K7 ["event"]
       26 MOVE                             R6 R1
       27 LOADK                            R7 K8 ["StudioIdentification_NameUpdated"]
       28 CALL                             R5 2 1
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          UPVAL U3
       31 NAMECALL                         R6 R5 K9 ["Connect"]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K7 ["event"]
       37 MOVE                             R8 R1
       38 LOADK                            R9 K10 ["StudioIdentification_RequestName"]
       39 CALL                             R7 2 1
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R8 R8 K11 ["invoke"]
       43 MOVE                             R9 R1
       44 LOADK                            R10 K12 ["StudioIdentification_GetName"]
       45 CALL                             R8 2 1
       46 GETUPVAL                         R9 4
       47 GETTABLEKS                       R9 R9 K13 ["Utils"]
       49 GETTABLEKS                       R9 R9 K14 ["Bin"]
       51 GETTABLEKS                       R9 R9 K15 ["new"]
       53 CALL                             R9 0 1
       54 MOVE                             R12 R6
       55 NAMECALL                         R10 R9 K16 ["Add"]
       57 CALL                             R10 2 0
       58 NAMECALL                         R10 R1 K17 ["GetIdentity"]
       60 CALL                             R10 1 1
       61 GETUPVAL                         R11 5
       62 GETTABLEKS                       R11 R11 K18 ["Identity"]
       64 GETTABLEKS                       R11 R11 K19 ["Standalone"]
       66 JUMPIFEQ                         R10 R11 ; [+20]
       68 NEWCLOSURE                       R14 P1
       69 CAPTURE                          VAL R4
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R5
       72 NAMECALL                         R12 R7 K9 ["Connect"]
       74 CALL                             R12 2 -1
       75 NAMECALL                         R10 R9 K16 ["Add"]
       77 CALL                             R10 -1 0
       78 NEWCLOSURE                       R14 P2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          UPVAL U1
       81 NAMECALL                         R12 R8 K9 ["Connect"]
       83 CALL                             R12 2 -1
       84 NAMECALL                         R10 R9 K16 ["Add"]
       86 CALL                             R10 -1 0
       87 SETUPVAL                         R7 6
       88 SETUPVAL                         R8 7
       89 GETTABLEKS                       R10 R2 K20 ["Destroying"]
       91 NEWCLOSURE                       R12 P3
       92 CAPTURE                          VAL R9
       93 NAMECALL                         R10 R10 K21 ["Once"]
       95 CALL                             R10 2 0
       96 RETURN                           R0 0
       97 FASTCALL2K                       ASSERT R0 K22 ; [+5]
       99 MOVE                             R6 R0
      100 LOADK                            R7 K22 ["StudioIdentification requires networking"]
      101 GETIMPORT                        R5 K5 [assert]
      103 CALL                             R5 2 0
      104 NAMECALL                         R5 R0 K23 ["IsHost"]
      106 CALL                             R5 1 1
      107 SETUPVAL                         R5 8
      108 LOADK                            R7 K8 ["StudioIdentification_NameUpdated"]
      109 DUPCLOSURE                       R8 K24 [PROTO_6]
      110 NAMECALL                         R5 R0 K25 ["OnGuestEvent"]
      112 CALL                             R5 3 1
      113 LOADK                            R8 K8 ["StudioIdentification_NameUpdated"]
      114 NEWCLOSURE                       R9 P5
      115 CAPTURE                          UPVAL U3
      116 NAMECALL                         R6 R0 K25 ["OnGuestEvent"]
      118 CALL                             R6 3 0
      119 LOADK                            R8 K10 ["StudioIdentification_RequestName"]
      120 NEWCLOSURE                       R9 P6
      121 CAPTURE                          VAL R4
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          VAL R5
      124 CAPTURE                          UPVAL U10
      125 NAMECALL                         R6 R0 K26 ["OnHostEvent"]
      127 CALL                             R6 3 1
      128 SETUPVAL                         R6 9
      129 LOADK                            R8 K12 ["StudioIdentification_GetName"]
      130 NEWCLOSURE                       R9 P7
      131 CAPTURE                          VAL R4
      132 CAPTURE                          UPVAL U1
      133 NAMECALL                         R6 R0 K27 ["OnHostInvokeAsync"]
      135 CALL                             R6 3 1
      136 SETUPVAL                         R6 11
      137 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+45]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+23]
        6 GETUPVAL                         R1 2
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["StudioIdentification request event is not initialized."]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 JUMPIF                           R0 ; [+14]
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K4 ["Identity"]
       19 GETTABLEKS                       R2 R2 K5 ["Edit"]
       21 NAMECALL                         R0 R0 K6 ["Fire"]
       23 CALL                             R0 2 0
       24 GETIMPORT                        R0 K9 [task.wait]
       26 LOADN                            R1 1
       27 CALL                             R0 1 0
       28 JUMPBACK                         ; [-16]
       29 GETUPVAL                         R1 4
       30 FASTCALL2K                       ASSERT R1 K10 ; [+4]
       32 LOADK                            R2 K10 ["StudioIdentification get invoke is not initialized."]
       33 GETIMPORT                        R0 K3 [assert]
       35 CALL                             R0 2 0
       36 GETUPVAL                         R0 4
       37 GETUPVAL                         R2 3
       38 GETTABLEKS                       R2 R2 K4 ["Identity"]
       40 GETTABLEKS                       R2 R2 K5 ["Edit"]
       42 GETUPVAL                         R4 1
       43 ORK                              R3 R4 K11 [""]
       44 NAMECALL                         R0 R0 K12 ["InvokeAsync"]
       46 CALL                             R0 3 1
       47 SETUPVAL                         R0 1
       48 RETURN                           R0 1
       49 GETUPVAL                         R0 1
       50 JUMPIF                           R0 ; [+21]
       51 GETUPVAL                         R1 5
       52 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       54 LOADK                            R2 K1 ["StudioIdentification request event is not initialized."]
       55 GETIMPORT                        R0 K3 [assert]
       57 CALL                             R0 2 0
       58 GETUPVAL                         R0 1
       59 JUMPIF                           R0 ; [+12]
       60 GETUPVAL                         R0 5
       61 GETUPVAL                         R1 6
       62 GETTABLEKS                       R1 R1 K13 ["Types"]
       64 GETTABLEKS                       R1 R1 K5 ["Edit"]
       66 CALL                             R0 1 0
       67 GETIMPORT                        R0 K9 [task.wait]
       69 LOADN                            R1 1
       70 CALL                             R0 1 0
       71 JUMPBACK                         ; [-14]
       72 GETUPVAL                         R1 7
       73 FASTCALL2K                       ASSERT R1 K10 ; [+4]
       75 LOADK                            R2 K10 ["StudioIdentification get invoke is not initialized."]
       76 GETIMPORT                        R0 K3 [assert]
       78 CALL                             R0 2 0
       79 GETUPVAL                         R0 7
       80 GETUPVAL                         R1 6
       81 GETTABLEKS                       R1 R1 K13 ["Types"]
       83 GETTABLEKS                       R1 R1 K5 ["Edit"]
       85 GETUPVAL                         R3 1
       86 ORK                              R2 R3 K11 [""]
       87 CALL                             R0 2 1
       88 SETUPVAL                         R0 1
       89 RETURN                           R0 1

PROTO_12:
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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["StudioNetworkingOLD"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Utils"]
       39 GETTABLEKS                       R5 R5 K14 ["DataModelType"]
       41 GETTABLEKS                       R6 R2 K15 ["Remote"]
       43 NEWTABLE                         R7 4 0
       45 LOADB                            R8 0
       46 LOADNIL                          R9
       47 LOADNIL                          R10
       48 LOADNIL                          R11
       49 LOADNIL                          R12
       50 LOADNIL                          R13
       51 LOADNIL                          R14
       52 DUPCLOSURE                       R15 K16 [PROTO_1]
       53 CAPTURE                          VAL R4
       54 NEWCLOSURE                       R16 P1
       55 CAPTURE                          REF R12
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 CAPTURE                          REF R9
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          REF R13
       62 CAPTURE                          REF R14
       63 CAPTURE                          REF R8
       64 CAPTURE                          REF R11
       65 CAPTURE                          VAL R5
       66 CAPTURE                          REF R10
       67 SETTABLEKS                       R16 R7 K17 ["initialize"]
       69 NEWCLOSURE                       R16 P2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          REF R9
       72 CAPTURE                          REF R13
       73 CAPTURE                          VAL R2
       74 CAPTURE                          REF R14
       75 CAPTURE                          REF R11
       76 CAPTURE                          VAL R5
       77 CAPTURE                          REF R10
       78 SETTABLEKS                       R16 R7 K18 ["getNameAsync"]
       80 NEWCLOSURE                       R16 P3
       81 CAPTURE                          REF R9
       82 SETTABLEKS                       R16 R7 K19 ["clearCache"]
       84 CLOSEUPVALS                      R8
       85 RETURN                           R7 1
