PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["store"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 LOADB                            R2 0
        5 LOADK                            R3 K1 ["Error initializing StoreProvider. Expected a `store` prop to be a Rodux store."]
        6 RETURN                           R2 2
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["store"]
        2 SETTABLEKS                       R2 R0 K0 ["store"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K4 ["store"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K5 ["oneChild"]
       14 GETTABLEKS                       R6 R0 K6 ["props"]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K7 ["Children"]
       19 GETTABLE                         R5 R6 R7
       20 CALL                             R4 1 -1
       21 CALL                             R1 -1 -1
       22 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["Roact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R4 K3 [script]
       16 GETTABLEKS                       R3 R4 K4 ["Parent"]
       18 GETTABLEKS                       R2 R3 K6 ["StoreContext"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R2 R0 K7 ["Component"]
       23 LOADK                            R4 K8 ["StoreProvider"]
       24 NAMECALL                         R2 R2 K9 ["extend"]
       26 CALL                             R2 2 1
       27 DUPCLOSURE                       R3 K10 [PROTO_0]
       28 SETTABLEKS                       R3 R2 K11 ["validateProps"]
       30 DUPCLOSURE                       R3 K12 [PROTO_1]
       31 SETTABLEKS                       R3 R2 K13 ["init"]
       33 DUPCLOSURE                       R3 K14 [PROTO_2]
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R3 R2 K15 ["render"]
       38 RETURN                           R2 1
