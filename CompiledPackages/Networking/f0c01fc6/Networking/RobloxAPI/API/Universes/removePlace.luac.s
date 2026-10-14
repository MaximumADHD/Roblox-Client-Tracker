PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 [""]
        3 NAMECALL                         R0 R0 K1 ["post"]
        5 CALL                             R0 3 1
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K2 ["parseJson"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["APIS_URL"]
        6 LOADK                            R4 K2 ["universes/v1/universes/%*/places/%*/remove-place"]
        7 MOVE                             R6 R0
        8 MOVE                             R7 R1
        9 NAMECALL                         R4 R4 K3 ["format"]
       11 CALL                             R4 3 1
       12 CALL                             R2 2 1
       13 DUPTABLE                         R3 K6 [{"getUrl", "makeRequest"}]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R4 R3 K4 ["getUrl"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R4 R3 K5 ["makeRequest"]
       23 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
