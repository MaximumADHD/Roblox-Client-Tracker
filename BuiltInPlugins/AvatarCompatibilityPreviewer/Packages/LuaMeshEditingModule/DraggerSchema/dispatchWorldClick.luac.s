PROTO_0:
        0 NAMECALL                         R3 R1 K0 ["doesAllowFreeformDrag"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+2]
        4 LOADK                            R3 K1 ["FreeformSelectionDrag"]
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R2 K2 ["ClickedItem"]
        8 JUMPIF                           R3 ; [+2]
        9 LOADK                            R3 K3 ["DragSelecting"]
       10 RETURN                           R3 1
       11 LOADK                            R3 K4 ["Ready"]
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
