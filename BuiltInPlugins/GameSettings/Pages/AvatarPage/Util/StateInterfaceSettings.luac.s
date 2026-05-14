PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K0 ["height"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["Height"]
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K0 ["width"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["Width"]
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K0 ["head"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["Head"]
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K0 ["bodyType"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["BodyType"]
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K0 ["proportion"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["Proportion"]
       13 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["StateSettings"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["StateSettings"]
        5 GETTABLEKS                       R1 R1 K1 ["scaleBoundaries"]
        7 GETTABLEKS                       R1 R1 K2 ["boundaries"]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R2 K6 ["ConstantScaleBoundaries"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 LOADNIL                          R3
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R4 R2 K7 ["getHeightBoundaries"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          REF R3
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R4 R2 K8 ["getWidthBoundaries"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          REF R3
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R2 K9 ["getHeadBoundaries"]
       32 NEWCLOSURE                       R4 P3
       33 CAPTURE                          REF R3
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R2 K10 ["getBodyTypeBoundaries"]
       37 NEWCLOSURE                       R4 P4
       38 CAPTURE                          REF R3
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R2 K11 ["getProportionBoundaries"]
       42 DUPCLOSURE                       R3 K12 [PROTO_5]
       43 CLOSEUPVALS                      R3
       44 RETURN                           R2 1
