PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R2 R0 K1 ["AbsolutePosition"]
        4 GETUPVAL                         R3 0
        5 NAMECALL                         R3 R3 K2 ["getSize"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R8 R2 K3 ["X"]
       10 GETTABLEKS                       R9 R1 K3 ["X"]
       12 ADD                              R7 R8 R9
       13 GETTABLEKS                       R9 R3 K3 ["X"]
       15 GETTABLEKS                       R8 R9 K4 ["Offset"]
       17 SUB                              R6 R7 R8
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K3 ["X"]
       21 SUB                              R5 R6 R7
       22 GETTABLEKS                       R7 R2 K3 ["X"]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K3 ["X"]
       27 ADD                              R6 R7 R8
       28 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       30 GETIMPORT                        R4 K7 [math.max]
       32 CALL                             R4 2 1
       33 GETTABLEKS                       R7 R2 K8 ["Y"]
       35 GETTABLEKS                       R8 R1 K8 ["Y"]
       37 ADD                              R6 R7 R8
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R7 R8 K8 ["Y"]
       41 ADD                              R5 R6 R7
       42 GETIMPORT                        R6 K11 [UDim2.new]
       44 LOADN                            R7 0
       45 MOVE                             R8 R4
       46 LOADN                            R9 0
       47 MOVE                             R10 R5
       48 CALL                             R6 4 -1
       49 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["AbsoluteSize"]
        6 LOADK                            R2 K1 ["%d x %d"]
        7 GETTABLEKS                       R4 R1 K2 ["X"]
        9 GETTABLEKS                       R5 R1 K3 ["Y"]
       11 NAMECALL                         R2 R2 K4 ["format"]
       13 CALL                             R2 3 1
       14 GETUPVAL                         R3 1
       15 MOVE                             R5 R2
       16 NAMECALL                         R3 R3 K5 ["setText"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 2
       20 NAMECALL                         R3 R3 K6 ["updatePosition"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K0 ["setVisible"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getFilteredSelection"]
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K1 [1] ; [+13]
        7 GETTABLEN                        R2 R1 1
        8 SETUPVAL                         R2 1
        9 GETUPVAL                         R2 2
       10 NAMECALL                         R2 R2 K2 ["update"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 LOADB                            R4 1
       15 NAMECALL                         R2 R2 K3 ["setVisible"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 2
       20 LOADB                            R4 0
       21 NAMECALL                         R2 R2 K3 ["setVisible"]
       23 CALL                             R2 2 0
       24 LOADNIL                          R2
       25 SETUPVAL                         R2 1
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 2
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K0 ["setPosition"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 SETUPVAL                         R1 0
        5 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["Destroy"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 1
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R4 K3 [script]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["SelectionManager"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K1 [require]
       14 GETIMPORT                        R5 K3 [script]
       16 GETTABLEKS                       R4 R5 K4 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["ValueBox"]
       20 CALL                             R2 1 1
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 GETIMPORT                        R5 K9 [Vector2.new]
       25 LOADN                            R6 2
       26 LOADN                            R7 6
       27 CALL                             R5 2 1
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          REF R4
       30 CAPTURE                          VAL R5
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          REF R3
       33 CAPTURE                          REF R4
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R7 R0 K10 ["update"]
       37 NEWCLOSURE                       R7 P2
       38 CAPTURE                          REF R3
       39 CAPTURE                          REF R4
       40 SETTABLEKS                       R7 R0 K11 ["setVisible"]
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          REF R3
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R7 R0 K12 ["onSelectionChanged"]
       48 NEWCLOSURE                       R7 P4
       49 CAPTURE                          REF R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          REF R4
       52 SETTABLEKS                       R7 R0 K13 ["updatePosition"]
       54 NEWCLOSURE                       R7 P5
       55 CAPTURE                          REF R4
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R7 R0 K14 ["On"]
       59 NEWCLOSURE                       R7 P6
       60 CAPTURE                          REF R3
       61 CAPTURE                          REF R4
       62 SETTABLEKS                       R7 R0 K15 ["Off"]
       64 CLOSEUPVALS                      R3
       65 RETURN                           R0 1
