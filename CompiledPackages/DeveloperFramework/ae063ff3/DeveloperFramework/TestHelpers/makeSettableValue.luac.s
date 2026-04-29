PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Fire"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["new"]
        4 CALL                             R2 0 1
        5 DUPTABLE                         R3 K4 [{"get", "set", "changed"}]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R4 R3 K1 ["get"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          REF R1
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R4 R3 K2 ["set"]
       15 SETTABLEKS                       R2 R3 K3 ["changed"]
       17 CLOSEUPVALS                      R1
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["Signal"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
