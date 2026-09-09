PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Max"]
        2 GETTABLEKS                       R3 R0 K1 ["Min"]
        4 SUB                              R1 R2 R3
        5 GETTABLEKS                       R4 R1 K2 ["X"]
        7 GETTABLEKS                       R5 R1 K3 ["Y"]
        9 MUL                              R3 R4 R5
       10 GETTABLEKS                       R4 R1 K4 ["Z"]
       12 MUL                              R2 R3 R4
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 LOADNIL                          R0
        3 LOADN                            R1 1
        4 RETURN                           R0 2
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 ADD                              R1 R2 R3
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K0 ["Max"]
       11 GETTABLEKS                       R2 R2 K1 ["X"]
       13 FASTCALL2                        MATH_MIN R1 R2 ; [+3]
       15 GETIMPORT                        R0 K4 [math.min]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R3 4
       19 GETUPVAL                         R4 2
       20 ADD                              R2 R3 R4
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K0 ["Max"]
       24 GETTABLEKS                       R3 R3 K5 ["Y"]
       26 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       28 GETIMPORT                        R1 K4 [math.min]
       30 CALL                             R1 2 1
       31 GETUPVAL                         R4 5
       32 GETUPVAL                         R5 2
       33 ADD                              R3 R4 R5
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K0 ["Max"]
       37 GETTABLEKS                       R4 R4 K6 ["Z"]
       39 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       41 GETIMPORT                        R2 K4 [math.min]
       43 CALL                             R2 2 1
       44 GETIMPORT                        R3 K9 [Region3int16.new]
       46 GETIMPORT                        R4 K11 [Vector3int16.new]
       48 GETUPVAL                         R5 1
       49 GETUPVAL                         R6 4
       50 GETUPVAL                         R7 5
       51 CALL                             R4 3 1
       52 GETIMPORT                        R5 K11 [Vector3int16.new]
       54 MOVE                             R6 R0
       55 MOVE                             R7 R1
       56 MOVE                             R8 R2
       57 CALL                             R5 3 -1
       58 CALL                             R3 -1 1
       59 GETUPVAL                         R4 6
       60 GETTABLEKS                       R7 R3 K0 ["Max"]
       62 GETTABLEKS                       R8 R3 K12 ["Min"]
       64 SUB                              R6 R7 R8
       65 GETTABLEKS                       R8 R6 K1 ["X"]
       67 GETTABLEKS                       R9 R6 K5 ["Y"]
       69 MUL                              R7 R8 R9
       70 GETTABLEKS                       R8 R6 K6 ["Z"]
       72 MUL                              R5 R7 R8
       73 ADD                              R4 R4 R5
       74 SETUPVAL                         R4 6
       75 SETUPVAL                         R2 5
       76 GETUPVAL                         R4 5
       77 GETUPVAL                         R5 3
       78 GETTABLEKS                       R5 R5 K0 ["Max"]
       80 GETTABLEKS                       R5 R5 K6 ["Z"]
       82 JUMPIFNOTLE                      R5 R4 ; [+33]
       84 GETUPVAL                         R4 3
       85 GETTABLEKS                       R4 R4 K12 ["Min"]
       87 GETTABLEKS                       R4 R4 K6 ["Z"]
       89 SETUPVAL                         R4 5
       90 SETUPVAL                         R1 4
       91 GETUPVAL                         R4 4
       92 GETUPVAL                         R5 3
       93 GETTABLEKS                       R5 R5 K0 ["Max"]
       95 GETTABLEKS                       R5 R5 K5 ["Y"]
       97 JUMPIFNOTLE                      R5 R4 ; [+18]
       99 GETUPVAL                         R4 3
      100 GETTABLEKS                       R4 R4 K12 ["Min"]
      102 GETTABLEKS                       R4 R4 K5 ["Y"]
      104 SETUPVAL                         R4 4
      105 SETUPVAL                         R0 1
      106 GETUPVAL                         R4 1
      107 GETUPVAL                         R5 3
      108 GETTABLEKS                       R5 R5 K0 ["Max"]
      110 GETTABLEKS                       R5 R5 K1 ["X"]
      112 JUMPIFNOTLE                      R5 R4 ; [+3]
      114 LOADB                            R4 1
      115 SETUPVAL                         R4 0
      116 MOVE                             R4 R3
      117 GETUPVAL                         R6 6
      118 GETUPVAL                         R7 7
      119 DIV                              R5 R6 R7
      120 RETURN                           R4 2

PROTO_2:
        0 LOADB                            R3 0
        1 LOADN                            R4 0
        2 JUMPIFNOTLT                      R4 R1 ; [+6]
        4 MODK                             R4 R1 K0 [1]
        5 JUMPIFEQKN                       R4 K1 [0] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["Chunk size must be a positive integer."]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R0 K5 ["Min"]
       17 GETTABLEKS                       R2 R2 K6 ["X"]
       19 GETTABLEKS                       R3 R0 K5 ["Min"]
       21 GETTABLEKS                       R3 R3 K7 ["Y"]
       23 GETTABLEKS                       R4 R0 K5 ["Min"]
       25 GETTABLEKS                       R4 R4 K8 ["Z"]
       27 LOADN                            R5 0
       28 GETTABLEKS                       R8 R0 K9 ["Max"]
       30 GETTABLEKS                       R9 R0 K5 ["Min"]
       32 SUB                              R7 R8 R9
       33 GETTABLEKS                       R9 R7 K6 ["X"]
       35 GETTABLEKS                       R10 R7 K7 ["Y"]
       37 MUL                              R8 R9 R10
       38 GETTABLEKS                       R9 R7 K8 ["Z"]
       40 MUL                              R6 R8 R9
       41 JUMPIFEQKN                       R6 K1 [0] ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          REF R7
       47 CAPTURE                          REF R2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R0
       50 CAPTURE                          REF R3
       51 CAPTURE                          REF R4
       52 CAPTURE                          REF R5
       53 CAPTURE                          VAL R6
       54 DUPTABLE                         R9 K11 [{"next"}]
       55 SETTABLEKS                       R8 R9 K10 ["next"]
       57 CLOSEUPVALS                      R2
       58 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 DUPTABLE                         R2 K3 [{"new"}]
        4 SETTABLEKS                       R1 R2 K2 ["new"]
        6 RETURN                           R2 1
