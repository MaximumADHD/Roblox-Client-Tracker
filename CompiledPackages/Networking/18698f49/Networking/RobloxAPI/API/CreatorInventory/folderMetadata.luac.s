PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETUPVAL                         R3 3
        5 GETUPVAL                         R5 0
        6 NAMECALL                         R3 R3 K0 ["JSONEncode"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 4
       10 NAMECALL                         R0 R0 K1 ["patch"]
       12 CALL                             R0 4 1
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R0 R0 K2 ["get"]
       18 CALL                             R0 2 1
       19 GETUPVAL                         R1 1
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K3 ["handleRetry"]
       23 CALL                             R1 2 1
       24 GETUPVAL                         R2 1
       25 MOVE                             R4 R1
       26 NAMECALL                         R2 R2 K4 ["parseJson"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["composeUrl"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["APIS_URL"]
        6 LOADK                            R6 K2 ["creator-inventory-api/v1/%*"]
        7 MOVE                             R8 R0
        8 NAMECALL                         R6 R6 K3 ["format"]
       10 CALL                             R6 2 1
       11 MOVE                             R5 R6
       12 CALL                             R3 2 1
       13 NEWTABLE                         R4 1 0
       15 LOADK                            R5 K4 ["application/json"]
       16 SETTABLEKS                       R5 R4 K5 ["Content-Type"]
       18 GETUPVAL                         R5 1
       19 CALL                             R5 0 1
       20 JUMPIFNOT                        R5 ; [+8]
       21 JUMPIFNOT                        R2 ; [+7]
       22 MOVE                             R5 R2
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 SETTABLE                         R9 R4 R8
       27 FORGLOOP                         R5 2 ; [-2]
       29 DUPTABLE                         R5 K8 [{"getUrl", "makeRequest"}]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R6 R5 K6 ["getUrl"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R6 R5 K7 ["makeRequest"]
       42 RETURN                           R5 1

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
       15 GETTABLEKS                       R3 R1 K10 ["Flags"]
       17 GETTABLEKS                       R3 R3 K11 ["CreatorInventory"]
       19 GETTABLEKS                       R3 R3 K12 ["getFFlagCreatorInventorySessionIdEcho"]
       21 CALL                             R2 1 1
       22 DUPCLOSURE                       R3 K13 [PROTO_3]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R0
       25 RETURN                           R3 1
