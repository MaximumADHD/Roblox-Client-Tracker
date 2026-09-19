PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["forwardRef"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R0
        6 DUPTABLE                         R6 K2 [{"ForwardRef"}]
        7 SETTABLEKS                       R1 R6 K1 ["ForwardRef"]
        9 CALL                             R4 2 -1
       10 CALL                             R2 -1 -1
       11 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Ref"]
        3 GETTABLE                         R1 R0 R2
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 NEWTABLE                         R4 0 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K0 ["Ref"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R1 R2 K1 ["ForwardRef"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["createElement"]
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R2
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K2 ["Parent"]
       18 GETTABLEKS                       R3 R3 K6 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K7 ["omit"]
       23 GETTABLEKS                       R4 R2 K8 ["join"]
       25 GETIMPORT                        R5 K10 [pcall]
       27 DUPCLOSURE                       R6 K11 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 CALL                             R5 1 2
       30 DUPCLOSURE                       R7 K12 [PROTO_3]
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 RETURN                           R7 1
