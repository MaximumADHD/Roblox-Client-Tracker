PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["SelectionNowContainsSelectable"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADK                            R3 K1 ["Ready"]
        4 RETURN                           R3 1
        5 LOADK                            R3 K2 ["DragSelecting"]
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
