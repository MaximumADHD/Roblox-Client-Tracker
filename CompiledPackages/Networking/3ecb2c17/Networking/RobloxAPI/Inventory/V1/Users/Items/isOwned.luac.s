PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["get"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["handleRetry"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 LOADN                            R5 0
        1 JUMPIFLT                         R5 R0 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        7 LOADK                            R5 K0 ["Expected userId to be a positive number."]
        8 GETIMPORT                        R3 K2 [assert]
       10 CALL                             R3 2 0
       11 LOADN                            R5 0
       12 JUMPIFLT                         R5 R2 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       18 LOADK                            R5 K3 ["Expected itemTargetId to be a positive number."]
       19 GETIMPORT                        R3 K2 [assert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["composeUrl"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K5 ["INVENTORY_URL"]
       28 GETIMPORT                        R5 K8 [string.format]
       30 LOADK                            R6 K9 ["v1/users/%d/items/%s/%d/is-owned"]
       31 MOVE                             R7 R0
       32 GETTABLEKS                       R8 R1 K10 ["Name"]
       34 MOVE                             R9 R2
       35 CALL                             R5 4 -1
       36 CALL                             R3 -1 1
       37 DUPTABLE                         R4 K13 [{"getUrl", "makeRequest"}]
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K11 ["getUrl"]
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R5 R4 K12 ["makeRequest"]
       47 RETURN                           R4 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
