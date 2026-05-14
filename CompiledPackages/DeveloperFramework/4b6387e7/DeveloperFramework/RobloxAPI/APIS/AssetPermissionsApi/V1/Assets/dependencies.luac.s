PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R0 R0 K0 ["get"]
        6 CALL                             R0 4 1
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["handleRetry"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K2 ["parseJson"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_2:
        0 JUMPIF                           R1 ; [+4]
        1 JUMPIF                           R2 ; [+3]
        2 JUMPIF                           R3 ; [+2]
        3 JUMPIF                           R4 ; [+1]
        4 JUMPIFNOT                        R5 ; [+12]
        5 DUPTABLE                         R6 K5 [{"versionNumber", "dependenciesDegree", "includeAccessStatus", "maxPageSize", "pageToken"}]
        6 SETTABLEKS                       R1 R6 K0 ["versionNumber"]
        8 SETTABLEKS                       R2 R6 K1 ["dependenciesDegree"]
       10 SETTABLEKS                       R3 R6 K2 ["includeAccessStatus"]
       12 SETTABLEKS                       R4 R6 K3 ["maxPageSize"]
       14 SETTABLEKS                       R5 R6 K4 ["pageToken"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R6
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K6 ["composeUrl"]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K7 ["APIS_URL"]
       24 LOADK                            R10 K8 ["asset-permissions-api/v1/assets/%*/dependencies"]
       25 MOVE                             R12 R0
       26 NAMECALL                         R10 R10 K9 ["format"]
       28 CALL                             R10 2 1
       29 MOVE                             R9 R10
       30 MOVE                             R10 R6
       31 CALL                             R7 3 1
       32 NEWTABLE                         R8 1 0
       34 LOADK                            R9 K10 ["application/json"]
       35 SETTABLEKS                       R9 R8 K11 ["Content-Type"]
       37 DUPTABLE                         R9 K14 [{"getUrl", "makeRequest"}]
       38 NEWCLOSURE                       R10 P0
       39 CAPTURE                          VAL R7
       40 SETTABLEKS                       R10 R9 K12 ["getUrl"]
       42 NEWCLOSURE                       R10 P1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R8
       46 SETTABLEKS                       R10 R9 K13 ["makeRequest"]
       48 RETURN                           R9 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
