PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R5 3
        4 NAMECALL                         R3 R3 K0 ["JSONEncode"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 4
        8 NAMECALL                         R0 R0 K1 ["post"]
       10 CALL                             R0 4 1
       11 GETUPVAL                         R1 0
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K2 ["handleRetry"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K3 ["parseJson"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["composeUrl"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["APIS_URL"]
        6 LOADK                            R7 K2 ["creator-inventory-api/v1/%*/%*/creator-inventory-items:move"]
        7 MOVE                             R9 R1
        8 MOVE                             R10 R0
        9 NAMECALL                         R7 R7 K3 ["format"]
       11 CALL                             R7 3 1
       12 MOVE                             R6 R7
       13 CALL                             R4 2 1
       14 NEWTABLE                         R5 1 0
       16 LOADK                            R6 K4 ["application/json"]
       17 SETTABLEKS                       R6 R5 K5 ["Content-Type"]
       19 GETUPVAL                         R6 1
       20 CALL                             R6 0 1
       21 JUMPIFNOT                        R6 ; [+8]
       22 JUMPIFNOT                        R3 ; [+7]
       23 MOVE                             R6 R3
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 SETTABLE                         R10 R5 R9
       28 FORGLOOP                         R6 2 ; [-2]
       30 DUPTABLE                         R6 K8 [{"getUrl", "makeRequest"}]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R7 R6 K6 ["getUrl"]
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R7 R6 K7 ["makeRequest"]
       43 RETURN                           R6 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Networking"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Flags"]
       24 GETTABLEKS                       R4 R4 K13 ["CreatorInventory"]
       26 GETTABLEKS                       R4 R4 K14 ["getFFlagCreatorInventorySessionIdEcho"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K15 [PROTO_3]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 RETURN                           R4 1
