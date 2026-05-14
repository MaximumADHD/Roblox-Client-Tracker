PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 LOADK                            R1 K0 ["rbxasset://SystemCursors/Arrow"]
        3 FASTCALL1                        ASSERT R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 1 0
        8 NAMECALL                         R2 R0 K3 ["get"]
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 SETTABLEKS                       R1 R2 K4 ["Icon"]
       14 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["updateMouse"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setCursor"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 SETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["updateMouse"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADNIL                          R1
        4 LOADB                            R2 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R1
        7 SETTABLEKS                       R3 R0 K0 ["updateMouse"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          REF R1
       11 CAPTURE                          REF R2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R3 R0 K1 ["setCursor"]
       15 DUPCLOSURE                       R3 K2 [PROTO_2]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R3 R0 K3 ["resetCursor"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          REF R2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R3 R0 K4 ["setLocked"]
       24 CLOSEUPVALS                      R1
       25 RETURN                           R0 1
