PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["ClickedSelectable"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+12]
        4 GETTABLEKS                       R3 R2 K1 ["ClickedItem"]
        6 JUMPIFNOTEQKNIL                  R3 ; [+8]
        8 MOVE                             R3 R0
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETTABLEKS                       R3 R0 K2 ["onClickAway"]
       12 JUMPIFNOT                        R3 ; [+2]
       13 MOVE                             R4 R3
       14 CALL                             R4 0 0
       15 LOADK                            R3 K3 ["Ready"]
       16 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
