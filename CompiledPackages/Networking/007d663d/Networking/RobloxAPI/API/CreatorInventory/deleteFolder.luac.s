PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+2]
        5 GETUPVAL                         R3 3
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 NAMECALL                         R0 R0 K0 ["delete"]
       10 CALL                             R0 3 1
       11 GETUPVAL                         R1 0
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K1 ["handleRetry"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K2 ["parseJson"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["APIS_URL"]
        6 LOADK                            R5 K2 ["creator-inventory-api/v1/%*"]
        7 MOVE                             R7 R0
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 CALL                             R2 2 1
       13 DUPTABLE                         R3 K6 [{"getUrl", "makeRequest"}]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R4 R3 K4 ["getUrl"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R4 R3 K5 ["makeRequest"]
       25 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Networking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["CreatorInventory"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagCreatorInventorySessionIdEcho"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_3]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
