PROTO_0:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["hide"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 LOADB                            R4 0
        6 NAMECALL                         R2 R2 K1 ["setVisible"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["update"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 0
        5 LOADB                            R4 1
        6 NAMECALL                         R2 R2 K1 ["setVisible"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["updatePosition"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K1 ["show"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R2 R2 K0 ["updatePosition"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 LOADB                            R4 1
       14 NAMECALL                         R2 R2 K2 ["setVisible"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["update"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["update"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["setVisible"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["hide"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R4 0
       11 NAMECALL                         R2 R2 K0 ["setVisible"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 GETUPVAL                         R5 1
        3 NAMECALL                         R5 R5 K0 ["getRotation"]
        5 CALL                             R5 1 -1
        6 NAMECALL                         R2 R2 K1 ["update"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["updatePosition"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K1 ["show"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 1
        9 LOADB                            R4 1
       10 NAMECALL                         R2 R2 K2 ["setVisible"]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 2
       14 NAMECALL                         R2 R2 K3 ["update"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 2
       18 LOADB                            R4 1
       19 NAMECALL                         R2 R2 K2 ["setVisible"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["hide"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 LOADB                            R4 0
        6 NAMECALL                         R2 R2 K1 ["setVisible"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R4 0
       11 NAMECALL                         R2 R2 K1 ["setVisible"]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 3
       15 LOADB                            R4 1
       16 NAMECALL                         R2 R2 K2 ["setSuppressFilteredSelectionChanged"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["setSuppressFilteredSelectionChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["setVisible"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["hide"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 LOADB                            R3 0
       11 NAMECALL                         R1 R1 K0 ["setVisible"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 1
        2 NAMECALL                         R1 R1 K0 ["setVisible"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["show"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 LOADB                            R3 1
       11 NAMECALL                         R1 R1 K0 ["setVisible"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_14:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_15:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_16:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_17:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_18:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_19:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_20:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_21:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R4 K3 [script]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["FFlag"]
       11 CALL                             R1 1 1
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 NEWCLOSURE                       R11 P0
       22 CAPTURE                          REF R3
       23 CAPTURE                          REF R9
       24 SETTABLEKS                       R11 R0 K6 ["onMoveBegan"]
       26 NEWCLOSURE                       R11 P1
       27 CAPTURE                          REF R7
       28 SETTABLEKS                       R11 R0 K7 ["onMoveChanged"]
       30 NEWCLOSURE                       R11 P2
       31 CAPTURE                          REF R3
       32 CAPTURE                          REF R9
       33 SETTABLEKS                       R11 R0 K8 ["onMoveEnded"]
       35 DUPCLOSURE                       R11 K9 [PROTO_3]
       36 SETTABLEKS                       R11 R0 K10 ["onResizeBegan"]
       38 NEWCLOSURE                       R11 P4
       39 CAPTURE                          REF R7
       40 CAPTURE                          REF R9
       41 SETTABLEKS                       R11 R0 K11 ["onResizeChanged"]
       43 DUPCLOSURE                       R11 K12 [PROTO_5]
       44 SETTABLEKS                       R11 R0 K13 ["onResizeEnded"]
       46 NEWCLOSURE                       R11 P6
       47 CAPTURE                          REF R7
       48 CAPTURE                          REF R3
       49 CAPTURE                          REF R9
       50 SETTABLEKS                       R11 R0 K14 ["onRotateBegan"]
       52 NEWCLOSURE                       R11 P7
       53 CAPTURE                          REF R8
       54 CAPTURE                          REF R4
       55 SETTABLEKS                       R11 R0 K15 ["onRotateChanged"]
       57 NEWCLOSURE                       R11 P8
       58 CAPTURE                          REF R3
       59 CAPTURE                          REF R9
       60 CAPTURE                          REF R7
       61 SETTABLEKS                       R11 R0 K16 ["onRotateEnded"]
       63 NEWCLOSURE                       R11 P9
       64 CAPTURE                          REF R3
       65 CAPTURE                          REF R9
       66 CAPTURE                          REF R7
       67 CAPTURE                          REF R10
       68 SETTABLEKS                       R11 R0 K17 ["onRubberbandBegan"]
       70 NEWCLOSURE                       R11 P10
       71 CAPTURE                          REF R10
       72 SETTABLEKS                       R11 R0 K18 ["onRubberbandEnded"]
       74 NEWCLOSURE                       R11 P11
       75 CAPTURE                          REF R7
       76 CAPTURE                          REF R3
       77 CAPTURE                          REF R9
       78 SETTABLEKS                       R11 R0 K19 ["onTextEditorBegan"]
       80 NEWCLOSURE                       R11 P12
       81 CAPTURE                          REF R7
       82 CAPTURE                          REF R3
       83 CAPTURE                          REF R9
       84 SETTABLEKS                       R11 R0 K20 ["onTextEditorEnded"]
       86 NEWCLOSURE                       R11 P13
       87 CAPTURE                          REF R2
       88 SETTABLEKS                       R11 R0 K21 ["setMove"]
       90 NEWCLOSURE                       R11 P14
       91 CAPTURE                          REF R4
       92 SETTABLEKS                       R11 R0 K22 ["setRotate"]
       94 NEWCLOSURE                       R11 P15
       95 CAPTURE                          REF R3
       96 SETTABLEKS                       R11 R0 K23 ["setResize"]
       98 NEWCLOSURE                       R11 P16
       99 CAPTURE                          REF R5
      100 SETTABLEKS                       R11 R0 K24 ["setRubberband"]
      102 NEWCLOSURE                       R11 P17
      103 CAPTURE                          REF R6
      104 SETTABLEKS                       R11 R0 K25 ["setTextEditor"]
      106 NEWCLOSURE                       R11 P18
      107 CAPTURE                          REF R7
      108 SETTABLEKS                       R11 R0 K26 ["setDistanceLinesManager"]
      110 NEWCLOSURE                       R11 P19
      111 CAPTURE                          REF R8
      112 SETTABLEKS                       R11 R0 K27 ["setRotationBox"]
      114 NEWCLOSURE                       R11 P20
      115 CAPTURE                          REF R9
      116 SETTABLEKS                       R11 R0 K28 ["setSizeBox"]
      118 NEWCLOSURE                       R11 P21
      119 CAPTURE                          REF R10
      120 SETTABLEKS                       R11 R0 K29 ["setSelectionManager"]
      122 CLOSEUPVALS                      R2
      123 RETURN                           R0 1
