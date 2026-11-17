PROTO_0:
        0 NEWTABLE                         R1 0 4
        2 GETTABLEKS                       R2 R0 K0 ["Min"]
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 GETTABLEKS                       R3 R0 K2 ["Max"]
        8 GETTABLEKS                       R3 R3 K1 ["X"]
       10 GETTABLEKS                       R4 R0 K0 ["Min"]
       12 GETTABLEKS                       R4 R4 K3 ["Y"]
       14 GETTABLEKS                       R5 R0 K2 ["Max"]
       16 GETTABLEKS                       R5 R5 K3 ["Y"]
       18 SETLIST                          R1 R2 4 [1]
       20 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Rect.new]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R0 R3
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R3 R0 R4
        6 GETUPVAL                         R5 2
        7 GETTABLE                         R4 R0 R5
        8 GETUPVAL                         R6 3
        9 GETTABLE                         R5 R0 R6
       10 CALL                             R1 4 -1
       11 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_3:
        0 NEWTABLE                         R2 0 4
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R0 R4
        4 GETTABLEKS                       R5 R1 K0 ["X"]
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R0 R7
        8 SUB                              R4 R5 R6
        9 GETUPVAL                         R6 2
       10 GETTABLE                         R5 R0 R6
       11 GETTABLEKS                       R7 R1 K1 ["Y"]
       13 GETUPVAL                         R9 3
       14 GETTABLE                         R8 R0 R9
       15 SUB                              R6 R7 R8
       16 SETLIST                          R2 R3 4 [1]
       18 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R2 0 4
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R0 R4
        4 GETTABLEKS                       R5 R1 K0 ["X"]
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R0 R7
        8 SUB                              R4 R5 R6
        9 GETUPVAL                         R6 2
       10 GETTABLE                         R5 R0 R6
       11 GETTABLEKS                       R7 R1 K1 ["Y"]
       13 GETUPVAL                         R9 3
       14 GETTABLE                         R8 R0 R9
       15 SUB                              R6 R7 R8
       16 SETLIST                          R2 R3 4 [1]
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Orientation"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Types"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 8 0
       34 GETTABLEKS                       R5 R1 K11 ["Left"]
       36 GETTABLEKS                       R5 R5 K12 ["rawValue"]
       38 CALL                             R5 0 1
       39 GETTABLEKS                       R6 R1 K13 ["Right"]
       41 GETTABLEKS                       R6 R6 K12 ["rawValue"]
       43 CALL                             R6 0 1
       44 GETTABLEKS                       R7 R1 K14 ["Top"]
       46 GETTABLEKS                       R7 R7 K12 ["rawValue"]
       48 CALL                             R7 0 1
       49 GETTABLEKS                       R8 R1 K15 ["Bottom"]
       51 GETTABLEKS                       R8 R8 K12 ["rawValue"]
       53 CALL                             R8 0 1
       54 DUPCLOSURE                       R9 K16 [PROTO_0]
       55 SETTABLEKS                       R9 R4 K17 ["getSliceRectFromSliceCenter"]
       57 DUPCLOSURE                       R9 K18 [PROTO_1]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R8
       62 SETTABLEKS                       R9 R4 K19 ["getSliceCenterFromSliceRect"]
       64 DUPCLOSURE                       R9 K20 [PROTO_2]
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R9 R4 K21 ["copySliceRect"]
       68 DUPCLOSURE                       R9 K22 [PROTO_3]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 SETTABLEKS                       R9 R4 K23 ["getOffsetsFromSliceRect"]
       75 DUPCLOSURE                       R9 K24 [PROTO_4]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 SETTABLEKS                       R9 R4 K25 ["getSliceRectFromOffsets"]
       82 RETURN                           R4 1
