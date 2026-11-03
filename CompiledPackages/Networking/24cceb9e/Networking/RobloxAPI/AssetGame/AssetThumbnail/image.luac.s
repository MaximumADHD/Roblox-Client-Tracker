PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+10]
        7 GETIMPORT                        R2 K4 [error]
        9 GETIMPORT                        R3 K7 [string.format]
       11 LOADK                            R4 K8 ["Expected %s to be a number."]
       12 MOVE                             R5 R0
       13 CALL                             R3 2 1
       14 LOADN                            R4 1
       15 CALL                             R2 2 0
       16 GETUPVAL                         R3 0
       17 GETTABLE                         R2 R3 R0
       18 JUMPIFEQKNIL                     R2 ; [+10]
       20 GETIMPORT                        R2 K4 [error]
       22 GETIMPORT                        R3 K7 [string.format]
       24 LOADK                            R4 K9 ["Expected %s to be a valid ASSET_SIZE enum value."]
       25 MOVE                             R5 R0
       26 CALL                             R3 2 1
       27 LOADN                            R4 1
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 ORK                              R2 R2 K0 [100]
        1 ORK                              R1 R1 K0 [100]
        2 FASTCALL1                        TONUMBER R0 ; [+3]
        3 MOVE                             R6 R0
        4 GETIMPORT                        R5 K2 [tonumber]
        6 CALL                             R5 1 1
        7 LOADN                            R6 0
        8 JUMPIFLT                         R6 R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       14 LOADK                            R5 K3 ["Expected assetId to be a valid number"]
       15 GETIMPORT                        R3 K5 [assert]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 0
       19 LOADK                            R4 K6 ["width"]
       20 MOVE                             R5 R2
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 0
       23 LOADK                            R4 K7 ["height"]
       24 MOVE                             R5 R1
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K8 ["composeUrl"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K9 ["ASSET_GAME_URL"]
       32 LOADK                            R5 K10 ["asset-thumbnail/image"]
       33 DUPTABLE                         R6 K12 [{"assetId", "width", "height"}]
       34 SETTABLEKS                       R0 R6 K11 ["assetId"]
       36 SETTABLEKS                       R2 R6 K6 ["width"]
       38 SETTABLEKS                       R1 R6 K7 ["height"]
       40 CALL                             R3 3 1
       41 DUPTABLE                         R4 K14 [{"getUrl"}]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R5 R4 K13 ["getUrl"]
       46 RETURN                           R4 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADK                            R1 K0 ["50"]
        4 SETTABLEN                        R1 R0 50
        5 LOADK                            R1 K1 ["75"]
        6 SETTABLEN                        R1 R0 75
        7 LOADK                            R1 K2 ["100"]
        8 SETTABLEN                        R1 R0 100
        9 LOADK                            R1 K3 ["150"]
       10 SETTABLEN                        R1 R0 150
       11 LOADK                            R1 K4 ["250"]
       12 SETTABLEN                        R1 R0 250
       13 LOADN                            R1 420
       14 LOADK                            R2 K5 ["420"]
       15 SETTABLE                         R2 R0 R1
       16 DUPCLOSURE                       R1 K6 [PROTO_0]
       17 CAPTURE                          VAL R0
       18 DUPCLOSURE                       R2 K7 [PROTO_3]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
