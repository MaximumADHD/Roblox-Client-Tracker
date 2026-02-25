PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Attachment0"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R3 R2 K1 ["Parent"]
        5 JUMPIFNOTEQ                      R3 R1 ; [+8]
        7 GETTABLEKS                       R4 R0 K2 ["Attachment1"]
        9 MOVE                             R5 R4
       10 JUMPIFNOT                        R5 ; [+2]
       11 GETTABLEKS                       R5 R4 K1 ["Parent"]
       13 RETURN                           R5 1
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R0 K2 ["Attachment1"]
       17 MOVE                             R4 R3
       18 JUMPIFNOT                        R4 ; [+2]
       19 GETTABLEKS                       R4 R3 K1 ["Parent"]
       21 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Part0"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+4]
        4 GETTABLEKS                       R3 R0 K1 ["Part1"]
        6 RETURN                           R3 1
        7 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Part0"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+4]
        4 GETTABLEKS                       R3 R0 K1 ["Part1"]
        6 RETURN                           R3 1
        7 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Part0"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+4]
        4 GETTABLEKS                       R3 R0 K1 ["Part1"]
        6 RETURN                           R3 1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getConstraintCounterpart"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["getJointInstanceCounterpart"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["getWeldConstraintCounterpart"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["getNoCollisionConstraintCounterpart"]
       15 RETURN                           R0 1
