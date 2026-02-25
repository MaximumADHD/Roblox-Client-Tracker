PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
        7 JUMPIFEQKNIL                     R2 ; [+10]
        9 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
       11 GETTABLEKS                       R5 R1 K2 ["SelectedObject"]
       13 GETTABLEKS                       R4 R5 K3 ["Closed"]
       15 NOT                              R3 R4
       16 SETTABLEKS                       R3 R2 K3 ["Closed"]
       18 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
