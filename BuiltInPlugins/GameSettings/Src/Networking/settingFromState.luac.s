PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Changed"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFEQKNIL                     R2 ; [+5]
        5 GETTABLEKS                       R3 R0 K0 ["Changed"]
        7 GETTABLE                         R2 R3 R1
        8 RETURN                           R2 1
        9 GETTABLEKS                       R3 R0 K1 ["Current"]
       11 GETTABLE                         R2 R3 R1
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
