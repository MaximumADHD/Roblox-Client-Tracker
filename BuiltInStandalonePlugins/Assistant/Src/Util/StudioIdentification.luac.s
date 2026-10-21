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
        8 JUMPIFNOT                        R5 ; [+83]
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
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K7 ["event"]
       32 MOVE                             R7 R1
       33 LOADK                            R8 K9 ["StudioIdentification_RequestName"]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K10 ["invoke"]
       38 MOVE                             R8 R1
       39 LOADK                            R9 K11 ["StudioIdentification_GetName"]
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K12 ["new"]
       44 CALL                             R8 0 1
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          UPVAL U4
       47 NAMECALL                         R11 R5 K13 ["Connect"]
       49 CALL                             R11 2 -1
       50 NAMECALL                         R9 R8 K14 ["Add"]
       52 CALL                             R9 -1 0
       53 NAMECALL                         R9 R1 K15 ["GetIdentity"]
       55 CALL                             R9 1 1
       56 GETUPVAL                         R10 5
       57 GETTABLEKS                       R10 R10 K16 ["Identity"]
       59 GETTABLEKS                       R10 R10 K17 ["Standalone"]
       61 JUMPIFEQ                         R9 R10 ; [+20]
       63 NEWCLOSURE                       R13 P1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R5
       67 NAMECALL                         R11 R6 K13 ["Connect"]
       69 CALL                             R11 2 -1
       70 NAMECALL                         R9 R8 K14 ["Add"]
       72 CALL                             R9 -1 0
       73 NEWCLOSURE                       R13 P2
       74 CAPTURE                          VAL R4
       75 CAPTURE                          UPVAL U1
       76 NAMECALL                         R11 R7 K13 ["Connect"]
       78 CALL                             R11 2 -1
       79 NAMECALL                         R9 R8 K14 ["Add"]
       81 CALL                             R9 -1 0
       82 SETUPVAL                         R6 6
       83 SETUPVAL                         R7 7
       84 GETTABLEKS                       R9 R2 K18 ["Destroying"]
       86 NEWCLOSURE                       R11 P3
       87 CAPTURE                          VAL R8
       88 NAMECALL                         R9 R9 K19 ["Once"]
       90 CALL                             R9 2 0
       91 RETURN                           R0 0
       92 FASTCALL2K                       ASSERT R0 K20 ; [+5]
       94 MOVE                             R6 R0
       95 LOADK                            R7 K20 ["StudioIdentification requires networking"]
       96 GETIMPORT                        R5 K5 [assert]
       98 CALL                             R5 2 0
       99 NAMECALL                         R5 R0 K21 ["IsHost"]
      101 CALL                             R5 1 1
      102 SETUPVAL                         R5 8
      103 LOADK                            R7 K8 ["StudioIdentification_NameUpdated"]
      104 DUPCLOSURE                       R8 K22 [PROTO_6]
      105 NAMECALL                         R5 R0 K23 ["OnGuestEvent"]
      107 CALL                             R5 3 1
      108 LOADK                            R8 K8 ["StudioIdentification_NameUpdated"]
      109 NEWCLOSURE                       R9 P5
      110 CAPTURE                          UPVAL U4
      111 NAMECALL                         R6 R0 K23 ["OnGuestEvent"]
      113 CALL                             R6 3 0
      114 LOADK                            R8 K9 ["StudioIdentification_RequestName"]
      115 NEWCLOSURE                       R9 P6
      116 CAPTURE                          VAL R4
      117 CAPTURE                          UPVAL U1
      118 CAPTURE                          VAL R5
      119 CAPTURE                          UPVAL U10
      120 NAMECALL                         R6 R0 K24 ["OnHostEvent"]
      122 CALL                             R6 3 1
      123 SETUPVAL                         R6 9
      124 LOADK                            R8 K11 ["StudioIdentification_GetName"]
      125 NEWCLOSURE                       R9 P7
      126 CAPTURE                          VAL R4
      127 CAPTURE                          UPVAL U1
      128 NAMECALL                         R6 R0 K25 ["OnHostInvokeAsync"]
      130 CALL                             R6 3 1
      131 SETUPVAL                         R6 11
      132 RETURN                           R0 0

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
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Src"]
       35 GETTABLEKS                       R7 R7 K12 ["Util"]
       37 GETTABLEKS                       R7 R7 K13 ["StudioNetworkingOLD"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R2 K14 ["Utils"]
       42 GETTABLEKS                       R7 R7 K15 ["DataModelType"]
       44 GETTABLEKS                       R8 R4 K16 ["Remote"]
       46 NEWTABLE                         R9 4 0
       48 LOADB                            R10 0
       49 LOADNIL                          R11
       50 LOADNIL                          R12
       51 LOADNIL                          R13
       52 LOADNIL                          R14
       53 LOADNIL                          R15
       54 LOADNIL                          R16
       55 DUPCLOSURE                       R17 K17 [PROTO_1]
       56 CAPTURE                          VAL R5
       57 NEWCLOSURE                       R18 P1
       58 CAPTURE                          REF R14
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R3
       62 CAPTURE                          REF R11
       63 CAPTURE                          VAL R4
       64 CAPTURE                          REF R15
       65 CAPTURE                          REF R16
       66 CAPTURE                          REF R10
       67 CAPTURE                          REF R13
       68 CAPTURE                          VAL R7
       69 CAPTURE                          REF R12
       70 SETTABLEKS                       R18 R9 K18 ["initialize"]
       72 NEWCLOSURE                       R18 P2
       73 CAPTURE                          VAL R5
       74 CAPTURE                          REF R11
       75 CAPTURE                          REF R15
       76 CAPTURE                          VAL R4
       77 CAPTURE                          REF R16
       78 CAPTURE                          REF R13
       79 CAPTURE                          VAL R7
       80 CAPTURE                          REF R12
       81 SETTABLEKS                       R18 R9 K19 ["getNameAsync"]
       83 NEWCLOSURE                       R18 P3
       84 CAPTURE                          REF R11
       85 SETTABLEKS                       R18 R9 K20 ["clearCache"]
       87 CLOSEUPVALS                      R10
       88 RETURN                           R9 1
