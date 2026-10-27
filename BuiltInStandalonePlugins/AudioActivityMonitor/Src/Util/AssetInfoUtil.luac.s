PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetProductInfoAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+4]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K2 ["Name"]
       10 JUMPIF                           R2 ; [+5]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 3
       14 SETTABLE                         R4 R2 R3
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R4 R1 K2 ["Name"]
       20 SETTABLE                         R4 R2 R3
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 LOADK                            R4 K0 ["rbxassetid://(%d+)$"]
        6 NAMECALL                         R2 R0 K1 ["match"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+2]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 FASTCALL1                        TONUMBER R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K3 [tonumber]
       16 CALL                             R3 1 1
       17 JUMPIF                           R3 ; [+2]
       18 LOADB                            R4 0
       19 RETURN                           R4 1
       20 GETUPVAL                         R4 0
       21 LOADK                            R7 K4 ["Cell"]
       22 LOADK                            R8 K5 ["Loading"]
       23 NAMECALL                         R5 R1 K6 ["getText"]
       25 CALL                             R5 3 1
       26 SETTABLE                         R5 R4 R0
       27 GETIMPORT                        R4 K9 [task.spawn]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R0
       34 CALL                             R4 1 0
       35 LOADB                            R4 1
       36 RETURN                           R4 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R4 1
        9 GETTABLE                         R3 R4 R0
       10 OR                               R2 R3 R0
       11 RETURN                           R2 1
       12 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+6]
        2 GETIMPORT                        R1 K1 [game]
        4 LOADK                            R3 K2 ["MarketplaceService"]
        5 NAMECALL                         R1 R1 K3 ["GetService"]
        7 CALL                             R1 2 1
        8 SETUPVAL                         R1 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["MarketplaceService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 4 0
       22 NEWTABLE                         R4 0 0
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          REF R4
       26 CAPTURE                          REF R2
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R5
       29 CAPTURE                          REF R4
       30 SETTABLEKS                       R6 R3 K12 ["getAssetName"]
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          REF R4
       34 SETTABLEKS                       R6 R3 K13 ["clearCache"]
       36 NEWCLOSURE                       R6 P3
       37 CAPTURE                          REF R2
       38 SETTABLEKS                       R6 R3 K14 ["_setMarketplaceServiceForTesting"]
       40 CLOSEUPVALS                      R2
       41 RETURN                           R3 1
