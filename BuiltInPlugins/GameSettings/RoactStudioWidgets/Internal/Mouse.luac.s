PROTO_0:
        0 JUMPIFNOT                        R0 ; [+8]
        1 JUMPIFNOT                        R1 ; [+4]
        2 LOADK                            R3 K0 ["rbxasset://SystemCursors/"]
        3 MOVE                             R4 R1
        4 CONCAT                           R2 R3 R4
        5 JUMPIF                           R2 ; [+1]
        6 LOADK                            R2 K1 ["rbxasset://SystemCursors/PointingHand"]
        7 SETTABLEKS                       R2 R0 K2 ["Icon"]
        9 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LOADK                            R1 K0 ["rbxasset://SystemCursors/Arrow"]
        2 SETTABLEKS                       R1 R0 K1 ["Icon"]
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["onEnter"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["onLeave"]
        9 RETURN                           R0 1
