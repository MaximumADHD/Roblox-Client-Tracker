PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R3 R2 K0 ["ClickedSelectable"]
        2 JUMPIF                           R3 ; [+2]
        3 LOADK                            R3 K1 ["DragSelecting"]
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R2 K2 ["SelectionNowContainsSelectable"]
        7 JUMPIFNOT                        R3 ; [+4]
        8 LOADK                            R3 K3 ["FreeformSelectionDrag"]
        9 NEWTABLE                         R4 0 0
       11 RETURN                           R3 2
       12 LOADK                            R3 K1 ["DragSelecting"]
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
