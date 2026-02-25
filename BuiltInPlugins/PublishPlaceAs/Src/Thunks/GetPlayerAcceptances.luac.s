PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETIMPORT                        R5 K1 [next]
        4 GETTABLEKS                       R6 R0 K2 ["responseBody"]
        6 CALL                             R5 1 1
        7 JUMPIFEQKNIL                     R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K3 ["dispatch"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Failed to get Player user agreements acceptances."]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["APIS"]
        3 GETTABLEKS                       R3 R4 K1 ["UserAgreements"]
        5 GETTABLEKS                       R2 R3 K2 ["V1"]
        7 GETTABLEKS                       R1 R2 K3 ["agreementsResolution"]
        9 LOADK                            R2 K4 ["App"]
       10 CALL                             R1 1 1
       11 NAMECALL                         R1 R1 K5 ["makeRequest"]
       13 CALL                             R1 1 1
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 DUPCLOSURE                       R4 K6 [PROTO_1]
       18 NAMECALL                         R1 R1 K7 ["andThen"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["SetPlayerAcceptance"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_3]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
