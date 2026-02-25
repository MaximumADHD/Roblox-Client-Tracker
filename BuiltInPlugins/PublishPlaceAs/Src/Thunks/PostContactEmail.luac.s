PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R3 255
        1 GETTABLEKS                       R6 R0 K0 ["APIS"]
        3 GETTABLEKS                       R5 R6 K1 ["StudioModeration"]
        5 GETTABLEKS                       R4 R5 K2 ["contacts"]
        7 MOVE                             R5 R2
        8 MOVE                             R6 R1
        9 CALL                             R4 2 1
       10 NAMECALL                         R4 R4 K3 ["makeRequest"]
       12 CALL                             R4 1 1
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          REF R3
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          REF R3
       17 NAMECALL                         R4 R4 K4 ["andThen"]
       19 CALL                             R4 3 1
       20 NAMECALL                         R4 R4 K5 ["await"]
       22 CALL                             R4 1 0
       23 CLOSEUPVALS                      R3
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
