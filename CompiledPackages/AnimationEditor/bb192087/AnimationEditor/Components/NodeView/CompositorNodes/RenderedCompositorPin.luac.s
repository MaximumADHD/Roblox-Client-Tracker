PROTO_0:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 FASTCALL1                        MATH_ABS R3 ; [+2]
        4 GETIMPORT                        R2 K3 [math.abs]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKN                    R2 K4 [0] ; [+11]
        9 GETTABLEKS                       R3 R0 K5 ["Y"]
       11 FASTCALL1                        MATH_ABS R3 ; [+2]
       12 GETIMPORT                        R2 K3 [math.abs]
       14 CALL                             R2 1 1
       15 JUMPIFEQKN                       R2 K4 [0] ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["absoluteSizeHook"]
        6 GETTABLEKS                       R2 R2 K1 ["observeAbsolutePosition"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["observeAbsolutePosition"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K0 ["absoluteSizeHook"]
       18 GETTABLEKS                       R4 R4 K2 ["observeAbsoluteSize"]
       20 MOVE                             R5 R0
       21 CALL                             R4 1 1
       22 JUMPIFEQKNIL                     R1 ; [+67]
       24 JUMPIFEQKNIL                     R2 ; [+65]
       26 LOADB                            R5 0
       27 GETTABLEKS                       R7 R2 K3 ["X"]
       29 FASTCALL1                        MATH_ABS R7 ; [+2]
       30 GETIMPORT                        R6 K6 [math.abs]
       32 CALL                             R6 1 1
       33 JUMPIFNOTEQKN                    R6 K7 [0] ; [+11]
       35 GETTABLEKS                       R7 R2 K8 ["Y"]
       37 FASTCALL1                        MATH_ABS R7 ; [+2]
       38 GETIMPORT                        R6 K6 [math.abs]
       40 CALL                             R6 1 1
       41 JUMPIFEQKN                       R6 K7 [0] ; [+2]
       43 LOADB                            R5 0 +1
       44 LOADB                            R5 1
       45 JUMPIF                           R5 ; [+44]
       46 JUMPIFEQKNIL                     R3 ; [+43]
       48 LOADB                            R5 0
       49 GETTABLEKS                       R7 R3 K3 ["X"]
       51 FASTCALL1                        MATH_ABS R7 ; [+2]
       52 GETIMPORT                        R6 K6 [math.abs]
       54 CALL                             R6 1 1
       55 JUMPIFNOTEQKN                    R6 K7 [0] ; [+11]
       57 GETTABLEKS                       R7 R3 K8 ["Y"]
       59 FASTCALL1                        MATH_ABS R7 ; [+2]
       60 GETIMPORT                        R6 K6 [math.abs]
       62 CALL                             R6 1 1
       63 JUMPIFEQKN                       R6 K7 [0] ; [+2]
       65 LOADB                            R5 0 +1
       66 LOADB                            R5 1
       67 JUMPIF                           R5 ; [+22]
       68 JUMPIFEQKNIL                     R4 ; [+21]
       70 LOADB                            R5 0
       71 GETTABLEKS                       R7 R4 K3 ["X"]
       73 FASTCALL1                        MATH_ABS R7 ; [+2]
       74 GETIMPORT                        R6 K6 [math.abs]
       76 CALL                             R6 1 1
       77 JUMPIFNOTEQKN                    R6 K7 [0] ; [+11]
       79 GETTABLEKS                       R7 R4 K8 ["Y"]
       81 FASTCALL1                        MATH_ABS R7 ; [+2]
       82 GETIMPORT                        R6 K6 [math.abs]
       84 CALL                             R6 1 1
       85 JUMPIFEQKN                       R6 K7 [0] ; [+2]
       87 LOADB                            R5 0 +1
       88 LOADB                            R5 1
       89 JUMPIFNOT                        R5 ; [+2]
       90 LOADNIL                          R5
       91 RETURN                           R5 1
       92 SUB                              R5 R3 R2
       93 DIV                              R6 R5 R4
       94 GETTABLEKS                       R8 R4 K3 ["X"]
       96 GETTABLEKS                       R9 R4 K8 ["Y"]
       98 DIV                              R7 R8 R9
       99 GETTABLEKS                       R9 R1 K9 ["size"]
      101 GETTABLEKS                       R9 R9 K3 ["X"]
      103 DIV                              R8 R9 R7
      104 GETIMPORT                        R9 K12 [Vector2.new]
      106 GETTABLEKS                       R11 R6 K3 ["X"]
      108 GETTABLEKS                       R12 R1 K9 ["size"]
      110 GETTABLEKS                       R12 R12 K3 ["X"]
      112 MUL                              R10 R11 R12
      113 GETTABLEKS                       R13 R6 K8 ["Y"]
      115 MINUS                            R12 R13
      116 MUL                              R11 R12 R8
      117 CALL                             R9 2 1
      118 GETIMPORT                        R10 K12 [Vector2.new]
      120 GETTABLEKS                       R12 R9 K3 ["X"]
      122 FASTCALL1                        MATH_ROUND R12 ; [+2]
      123 GETIMPORT                        R11 K14 [math.round]
      125 CALL                             R11 1 1
      126 GETTABLEKS                       R13 R9 K8 ["Y"]
      128 FASTCALL1                        MATH_ROUND R13 ; [+2]
      129 GETIMPORT                        R12 K14 [math.round]
      131 CALL                             R12 1 1
      132 CALL                             R10 2 1
      133 LOADB                            R11 0
      134 GETTABLEKS                       R13 R10 K3 ["X"]
      136 FASTCALL1                        MATH_ABS R13 ; [+2]
      137 GETIMPORT                        R12 K6 [math.abs]
      139 CALL                             R12 1 1
      140 JUMPIFNOTEQKN                    R12 K7 [0] ; [+11]
      142 GETTABLEKS                       R13 R10 K8 ["Y"]
      144 FASTCALL1                        MATH_ABS R13 ; [+2]
      145 GETIMPORT                        R12 K6 [math.abs]
      147 CALL                             R12 1 1
      148 JUMPIFEQKN                       R12 K7 [0] ; [+2]
      150 LOADB                            R11 0 +1
      151 LOADB                            R11 1
      152 JUMPIFNOT                        R11 ; [+2]
      153 LOADNIL                          R11
      154 RETURN                           R11 1
      155 RETURN                           R10 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"observeOffsetInNodeSpace", "setPositionerFrame"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeOffsetInNodeSpace"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["setFrame"]
        7 SETTABLEKS                       R1 R0 K1 ["setPositionerFrame"]
        9 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R5 0 4
       19 MOVE                             R6 R0
       20 GETTABLEKS                       R7 R1 K3 ["absoluteSizeHook"]
       22 GETTABLEKS                       R7 R7 K4 ["observeAbsolutePosition"]
       24 GETTABLEKS                       R8 R2 K4 ["observeAbsolutePosition"]
       26 GETTABLEKS                       R9 R1 K3 ["absoluteSizeHook"]
       28 GETTABLEKS                       R9 R9 K5 ["observeAbsoluteSize"]
       30 SETLIST                          R5 R6 4 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R6 0 2
       41 MOVE                             R7 R3
       42 GETTABLEKS                       R8 R2 K6 ["setFrame"]
       44 SETLIST                          R6 R7 2 [1]
       46 CALL                             R4 2 -1
       47 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["pinNodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+25]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["pinDataType"]
        6 JUMPIFNOTEQKS                    R1 K1 ["Parameter"] ; [+5]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["pinDynamicIndex"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K3 ["getPinAnchorKey"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["pinNodeId"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K5 ["pinSide"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K6 ["pinName"]
       25 MOVE                             R5 R0
       26 CALL                             R1 4 -1
       27 RETURN                           R1 -1
       28 GETUPVAL                         R0 2
       29 GETTABLEKS                       R0 R0 K3 ["getPinAnchorKey"]
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K4 ["pinNodeId"]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K5 ["pinSide"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K6 ["pinName"]
       40 CALL                             R0 3 -1
       41 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["pinSide"]
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+43]
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+31]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K2 ["pinDynamicIndex"]
       15 JUMPIFEQKNIL                     R0 ; [+27]
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K3 ["pinDataType"]
       20 JUMPIFNOTEQKS                    R0 K4 ["Parameter"] ; [+22]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K5 ["inputPinIds"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K2 ["pinDynamicIndex"]
       28 GETTABLE                         R0 R1 R2
       29 MOVE                             R1 R0
       30 JUMPIFNOT                        R1 ; [+7]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K6 ["inputLabelPinToConnectionMap"]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K7 ["pinName"]
       37 GETTABLE                         R1 R2 R3
       38 JUMPIFNOT                        R1 ; [+2]
       39 GETTABLE                         R2 R1 R0
       40 RETURN                           R2 1
       41 LOADNIL                          R2
       42 RETURN                           R2 1
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K8 ["inputPinToConnectionMap"]
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R2 R2 K7 ["pinName"]
       49 GETTABLE                         R0 R1 R2
       50 RETURN                           R0 1
       51 GETUPVAL                         R0 1
       52 GETTABLEKS                       R0 R0 K0 ["pinSide"]
       54 JUMPIFNOTEQKS                    R0 K9 ["Output"] ; [+9]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K10 ["outputPinToConnectionMap"]
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R2 R2 K7 ["pinName"]
       62 GETTABLE                         R0 R1 R2
       63 RETURN                           R0 1
       64 LOADNIL                          R0
       65 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["pinSide"]
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+13]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K2 ["getPinAnchorKey"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["outputNodeId"]
       15 LOADK                            R2 K4 ["Output"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["outputNodePinId"]
       19 CALL                             R0 3 -1
       20 RETURN                           R0 -1
       21 GETUPVAL                         R0 1
       22 GETTABLEKS                       R0 R0 K0 ["pinSide"]
       24 JUMPIFNOTEQKS                    R0 K4 ["Output"] ; [+13]
       26 GETUPVAL                         R0 2
       27 GETTABLEKS                       R0 R0 K2 ["getPinAnchorKey"]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K6 ["inputNodeId"]
       32 LOADK                            R2 K1 ["Input"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K7 ["inputNodePinId"]
       36 CALL                             R0 3 -1
       37 RETURN                           R0 -1
       38 LOADNIL                          R0
       39 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETUPVAL                         R0 0
        2 JUMPIFNOT                        R1 ; [+2]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeOffsetInNodeSpace"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+9]
       10 GETUPVAL                         R3 2
       11 LOADNIL                          R4
       12 SETUPVAL                         R4 2
       13 JUMPIFNOT                        R3 ; [+2]
       14 MOVE                             R4 R3
       15 CALL                             R4 0 0
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+9]
       20 GETUPVAL                         R3 2
       21 LOADNIL                          R4
       22 SETUPVAL                         R4 2
       23 JUMPIFNOT                        R3 ; [+2]
       24 MOVE                             R4 R3
       25 CALL                             R4 0 0
       26 LOADNIL                          R3
       27 RETURN                           R3 1
       28 DUPTABLE                         R3 K7 [{"pinDataType", "pinName", "pinOffset", "pinSide", "pinNodeId", "pinDynamicIndex"}]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K1 ["pinDataType"]
       32 SETTABLEKS                       R4 R3 K1 ["pinDataType"]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K2 ["pinName"]
       37 SETTABLEKS                       R4 R3 K2 ["pinName"]
       39 SETTABLEKS                       R1 R3 K3 ["pinOffset"]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K4 ["pinSide"]
       44 SETTABLEKS                       R4 R3 K4 ["pinSide"]
       46 GETUPVAL                         R4 3
       47 GETTABLEKS                       R4 R4 K5 ["pinNodeId"]
       49 SETTABLEKS                       R4 R3 K5 ["pinNodeId"]
       51 GETUPVAL                         R5 4
       52 CALL                             R5 0 1
       53 JUMPIFNOT                        R5 ; [+4]
       54 GETUPVAL                         R4 3
       55 GETTABLEKS                       R4 R4 K6 ["pinDynamicIndex"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R4
       59 SETTABLEKS                       R4 R3 K6 ["pinDynamicIndex"]
       61 GETUPVAL                         R4 5
       62 GETTABLEKS                       R4 R4 K8 ["pushAnchor"]
       64 GETUPVAL                         R5 6
       65 MOVE                             R6 R3
       66 CALL                             R4 2 1
       67 GETUPVAL                         R5 2
       68 SETUPVAL                         R4 2
       69 JUMPIFNOT                        R5 ; [+2]
       70 MOVE                             R6 R5
       71 CALL                             R6 0 0
       72 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R1 R0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["pinNodeId"]
        6 CALL                             R0 1 1
        7 LOADNIL                          R1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          REF R1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["createEffect"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          REF R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CALL                             R3 1 1
       22 NEWCLOSURE                       R4 P2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          REF R1
       25 CLOSEUPVALS                      R1
       26 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeCurvePreviewInfo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["of"]
        5 LOADNIL                          R1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["observeCurvePreviewInfo"]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_16:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 LOADNIL                          R1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["pinSide"]
       12 JUMPIFNOTEQKS                    R2 K2 ["Input"] ; [+40]
       14 GETUPVAL                         R2 2
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+29]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K3 ["pinDynamicIndex"]
       20 JUMPIFEQKNIL                     R2 ; [+25]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K4 ["pinDataType"]
       25 JUMPIFNOTEQKS                    R2 K5 ["Parameter"] ; [+20]
       27 GETTABLEKS                       R3 R0 K6 ["inputPinIds"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K3 ["pinDynamicIndex"]
       32 GETTABLE                         R2 R3 R4
       33 MOVE                             R3 R2
       34 JUMPIFNOT                        R3 ; [+6]
       35 GETTABLEKS                       R4 R0 K7 ["inputLabelPinToConnectionMap"]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K8 ["pinName"]
       40 GETTABLE                         R3 R4 R5
       41 JUMPIFNOT                        R3 ; [+2]
       42 GETTABLE                         R1 R3 R2
       43 JUMP                             ; [+27]
       44 LOADNIL                          R1
       45 JUMP                             ; [+25]
       46 GETTABLEKS                       R2 R0 K9 ["inputPinToConnectionMap"]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K8 ["pinName"]
       51 GETTABLE                         R1 R2 R3
       52 JUMP                             ; [+18]
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K1 ["pinSide"]
       56 JUMPIFNOTEQKS                    R2 K10 ["Output"] ; [+8]
       58 GETTABLEKS                       R2 R0 K11 ["outputPinToConnectionMap"]
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R3 R3 K8 ["pinName"]
       63 GETTABLE                         R1 R2 R3
       64 JUMP                             ; [+6]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K0 ["of"]
       68 LOADB                            R3 0
       69 CALL                             R2 1 -1
       70 RETURN                           R2 -1
       71 JUMPIF                           R1 ; [+6]
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R2 R2 K0 ["of"]
       75 LOADB                            R3 0
       76 CALL                             R2 1 -1
       77 RETURN                           R2 -1
       78 GETUPVAL                         R2 3
       79 GETTABLEKS                       R2 R2 K12 ["observeGraphNodeById"]
       81 GETTABLEKS                       R3 R1 K13 ["outputNodeId"]
       83 CALL                             R2 1 1
       84 GETUPVAL                         R3 4
       85 GETTABLEKS                       R3 R3 K14 ["createComputed"]
       87 NEWCLOSURE                       R4 P0
       88 CAPTURE                          VAL R2
       89 CALL                             R3 1 -1
       90 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["pinNodeId"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["switchMap"]
       10 MOVE                             R2 R0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U4
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+49]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["sourcePinSide"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["pinSide"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+20]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["sourcePinNodeId"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K3 ["pinNodeId"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+34]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K4 ["sourcePinName"]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K5 ["pinName"]
       24 JUMPIFNOTEQ                      R0 R1 ; [+26]
       26 LOADB                            R0 1
       27 RETURN                           R0 1
       28 JUMP                             ; [+22]
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K6 ["targetPinNodeId"]
       32 JUMPIFNOT                        R0 ; [+18]
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K6 ["targetPinNodeId"]
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K3 ["pinNodeId"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+11]
       41 GETUPVAL                         R0 0
       42 GETTABLEKS                       R0 R0 K7 ["targetPinName"]
       44 GETUPVAL                         R1 1
       45 GETTABLEKS                       R1 R1 K5 ["pinName"]
       47 JUMPIFNOTEQ                      R0 R1 ; [+3]
       49 LOADB                            R0 1
       50 RETURN                           R0 1
       51 GETUPVAL                         R0 2
       52 JUMPIFNOT                        R0 ; [+20]
       53 LOADB                            R0 0
       54 GETUPVAL                         R1 2
       55 GETTABLEKS                       R1 R1 K7 ["targetPinName"]
       57 GETUPVAL                         R2 1
       58 GETTABLEKS                       R2 R2 K5 ["pinName"]
       60 JUMPIFNOTEQ                      R1 R2 ; [+11]
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K6 ["targetPinNodeId"]
       65 GETUPVAL                         R2 1
       66 GETTABLEKS                       R2 R2 K3 ["pinNodeId"]
       68 JUMPIFEQ                         R1 R2 ; [+2]
       70 LOADB                            R0 0 +1
       71 LOADB                            R0 1
       72 RETURN                           R0 1
       73 GETUPVAL                         R0 3
       74 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+25]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["Color"]
       10 GETTABLEKS                       R0 R0 K3 ["Extended"]
       12 GETTABLEKS                       R0 R0 K4 ["Green"]
       14 GETTABLEKS                       R0 R0 K5 ["Green_800"]
       16 GETTABLEKS                       R0 R0 K6 ["Color3"]
       18 RETURN                           R0 1
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K2 ["Color"]
       22 GETTABLEKS                       R0 R0 K7 ["Surface"]
       24 GETTABLEKS                       R0 R0 K8 ["Surface_100"]
       26 GETTABLEKS                       R0 R0 K6 ["Color3"]
       28 RETURN                           R0 1
       29 GETUPVAL                         R0 1
       30 JUMPIFNOT                        R0 ; [+26]
       31 GETUPVAL                         R0 3
       32 JUMPIFNOT                        R0 ; [+12]
       33 GETUPVAL                         R0 2
       34 GETTABLEKS                       R0 R0 K2 ["Color"]
       36 GETTABLEKS                       R0 R0 K3 ["Extended"]
       38 GETTABLEKS                       R0 R0 K9 ["Gray"]
       40 GETTABLEKS                       R0 R0 K10 ["Gray_800"]
       42 GETTABLEKS                       R0 R0 K6 ["Color3"]
       44 RETURN                           R0 1
       45 GETUPVAL                         R0 2
       46 GETTABLEKS                       R0 R0 K2 ["Color"]
       48 GETTABLEKS                       R0 R0 K3 ["Extended"]
       50 GETTABLEKS                       R0 R0 K9 ["Gray"]
       52 GETTABLEKS                       R0 R0 K11 ["Gray_600"]
       54 GETTABLEKS                       R0 R0 K6 ["Color3"]
       56 RETURN                           R0 1
       57 GETUPVAL                         R0 2
       58 GETTABLEKS                       R0 R0 K2 ["Color"]
       60 GETTABLEKS                       R0 R0 K7 ["Surface"]
       62 GETTABLEKS                       R0 R0 K8 ["Surface_100"]
       64 GETTABLEKS                       R0 R0 K6 ["Color3"]
       66 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+13]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["Color"]
        8 GETTABLEKS                       R0 R0 K3 ["Extended"]
       10 GETTABLEKS                       R0 R0 K4 ["Green"]
       12 GETTABLEKS                       R0 R0 K5 ["Green_800"]
       14 GETTABLEKS                       R0 R0 K6 ["Color3"]
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 2
       18 JUMPIFNOT                        R0 ; [+12]
       19 GETUPVAL                         R0 1
       20 GETTABLEKS                       R0 R0 K2 ["Color"]
       22 GETTABLEKS                       R0 R0 K3 ["Extended"]
       24 GETTABLEKS                       R0 R0 K7 ["Gray"]
       26 GETTABLEKS                       R0 R0 K8 ["Gray_800"]
       28 GETTABLEKS                       R0 R0 K6 ["Color3"]
       30 RETURN                           R0 1
       31 GETUPVAL                         R0 1
       32 GETTABLEKS                       R0 R0 K2 ["Color"]
       34 GETTABLEKS                       R0 R0 K3 ["Extended"]
       36 GETTABLEKS                       R0 R0 K7 ["Gray"]
       38 GETTABLEKS                       R0 R0 K9 ["Gray_600"]
       40 GETTABLEKS                       R0 R0 K6 ["Color3"]
       42 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onStartDrag"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["pinNodeId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["pinName"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["pinDataType"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["pinSide"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["pinValue"]
       18 GETUPVAL                         R8 2
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+4]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K6 ["pinDynamicIndex"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R7
       26 CALL                             R1 6 0
       27 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K0 ["PinName"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["pinName"]
        9 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 0
       13 LOADK                            R2 K3 ["DisplayName"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["debugDisplayName"]
       17 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       19 CALL                             R0 3 0
       20 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["pinNodeId"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["Bad pinNodeId"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K4 ["useContext"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K5 ["Context"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K6 ["Hooks"]
       18 GETTABLEKS                       R2 R2 K7 ["useTokens"]
       20 CALL                             R2 0 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["useContext"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K5 ["Context"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R4 R4 K8 ["useSignalState"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R7 0 2
       39 GETTABLEKS                       R8 R1 K10 ["observeGraphNodeById"]
       41 GETTABLEKS                       R9 R0 K0 ["pinNodeId"]
       43 SETLIST                          R7 R8 2 [1]
       45 CALL                             R5 2 -1
       46 CALL                             R4 -1 1
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R6 R1 K11 ["observeNodeRenderInfoById"]
       50 GETTABLEKS                       R7 R0 K0 ["pinNodeId"]
       52 CALL                             R6 1 -1
       53 CALL                             R5 -1 1
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       57 NEWCLOSURE                       R7 P1
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U7
       61 NEWTABLE                         R8 0 5
       63 GETTABLEKS                       R9 R0 K0 ["pinNodeId"]
       65 GETTABLEKS                       R10 R0 K12 ["pinSide"]
       67 GETTABLEKS                       R11 R0 K13 ["pinName"]
       69 GETTABLEKS                       R12 R0 K14 ["pinDynamicIndex"]
       71 GETTABLEKS                       R13 R0 K15 ["pinDataType"]
       73 SETLIST                          R8 R9 5 [1]
       75 CALL                             R6 2 1
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       79 NEWCLOSURE                       R8 P2
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U6
       83 NEWTABLE                         R9 0 5
       85 MOVE                             R10 R4
       86 GETTABLEKS                       R11 R0 K12 ["pinSide"]
       88 GETTABLEKS                       R12 R0 K13 ["pinName"]
       90 GETTABLEKS                       R13 R0 K14 ["pinDynamicIndex"]
       92 GETTABLEKS                       R14 R0 K15 ["pinDataType"]
       94 SETLIST                          R9 R10 5 [1]
       96 CALL                             R7 2 1
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R8 R8 K9 ["useMemo"]
      100 NEWCLOSURE                       R9 P3
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U7
      104 NEWTABLE                         R10 0 3
      106 MOVE                             R11 R7
      107 GETTABLEKS                       R12 R0 K12 ["pinSide"]
      109 GETTABLEKS                       R13 R0 K13 ["pinName"]
      111 SETLIST                          R10 R11 3 [1]
      113 CALL                             R8 2 1
      114 GETUPVAL                         R9 0
      115 GETTABLEKS                       R9 R9 K16 ["useEffect"]
      117 NEWCLOSURE                       R10 P4
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U8
      121 CAPTURE                          VAL R5
      122 CAPTURE                          UPVAL U6
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R6
      125 NEWTABLE                         R11 0 8
      127 GETTABLEKS                       R12 R0 K0 ["pinNodeId"]
      129 GETTABLEKS                       R13 R0 K15 ["pinDataType"]
      131 GETTABLEKS                       R14 R0 K13 ["pinName"]
      133 GETTABLEKS                       R15 R0 K12 ["pinSide"]
      135 MOVE                             R16 R6
      136 GETTABLEKS                       R17 R1 K10 ["observeGraphNodeById"]
      138 GETTABLEKS                       R18 R5 K17 ["observeOffsetInNodeSpace"]
      140 GETTABLEKS                       R19 R3 K18 ["pushAnchor"]
      142 SETLIST                          R11 R12 8 [1]
      144 CALL                             R9 2 0
      145 GETUPVAL                         R9 4
      146 GETTABLEKS                       R9 R9 K8 ["useSignalState"]
      148 GETUPVAL                         R10 0
      149 GETTABLEKS                       R10 R10 K9 ["useMemo"]
      151 NEWCLOSURE                       R11 P5
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R6
      154 NEWTABLE                         R12 0 2
      156 MOVE                             R13 R6
      157 GETTABLEKS                       R14 R3 K19 ["observeCurvePreviewInfo"]
      159 SETLIST                          R12 R13 2 [1]
      161 CALL                             R10 2 -1
      162 CALL                             R9 -1 1
      163 GETUPVAL                         R10 4
      164 GETTABLEKS                       R10 R10 K8 ["useSignalState"]
      166 GETUPVAL                         R11 0
      167 GETTABLEKS                       R11 R11 K9 ["useMemo"]
      169 NEWCLOSURE                       R12 P6
      170 CAPTURE                          VAL R8
      171 CAPTURE                          UPVAL U9
      172 CAPTURE                          VAL R3
      173 NEWTABLE                         R13 0 2
      175 MOVE                             R14 R8
      176 GETTABLEKS                       R15 R3 K19 ["observeCurvePreviewInfo"]
      178 SETLIST                          R13 R14 2 [1]
      180 CALL                             R11 2 -1
      181 CALL                             R10 -1 1
      182 GETUPVAL                         R11 4
      183 GETTABLEKS                       R11 R11 K8 ["useSignalState"]
      185 GETUPVAL                         R12 0
      186 GETTABLEKS                       R12 R12 K9 ["useMemo"]
      188 NEWCLOSURE                       R13 P7
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R0
      191 CAPTURE                          UPVAL U9
      192 CAPTURE                          UPVAL U6
      193 CAPTURE                          UPVAL U10
      194 NEWTABLE                         R14 0 5
      196 GETTABLEKS                       R15 R0 K0 ["pinNodeId"]
      198 GETTABLEKS                       R16 R0 K13 ["pinName"]
      200 GETTABLEKS                       R17 R0 K14 ["pinDynamicIndex"]
      202 GETTABLEKS                       R18 R0 K15 ["pinDataType"]
      204 GETTABLEKS                       R19 R1 K10 ["observeGraphNodeById"]
      206 SETLIST                          R14 R15 5 [1]
      208 CALL                             R12 2 -1
      209 CALL                             R11 -1 1
      210 GETUPVAL                         R12 4
      211 GETTABLEKS                       R12 R12 K8 ["useSignalState"]
      213 GETUPVAL                         R13 11
      214 GETTABLEKS                       R13 R13 K20 ["useObserveIsDisabled"]
      216 GETTABLEKS                       R14 R0 K0 ["pinNodeId"]
      218 CALL                             R13 1 -1
      219 CALL                             R12 -1 1
      220 GETUPVAL                         R13 0
      221 GETTABLEKS                       R13 R13 K9 ["useMemo"]
      223 NEWCLOSURE                       R14 P8
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R0
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R11
      228 NEWTABLE                         R15 0 6
      230 MOVE                             R16 R11
      231 MOVE                             R17 R9
      232 MOVE                             R18 R10
      233 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      235 GETTABLEKS                       R20 R0 K13 ["pinName"]
      237 GETTABLEKS                       R21 R0 K12 ["pinSide"]
      239 SETLIST                          R15 R16 6 [1]
      241 CALL                             R13 2 1
      242 GETUPVAL                         R14 0
      243 GETTABLEKS                       R14 R14 K9 ["useMemo"]
      245 NEWCLOSURE                       R15 P9
      246 CAPTURE                          VAL R0
      247 CAPTURE                          VAL R13
      248 CAPTURE                          VAL R2
      249 CAPTURE                          VAL R12
      250 NEWTABLE                         R16 0 4
      252 MOVE                             R17 R13
      253 GETTABLEKS                       R18 R0 K15 ["pinDataType"]
      255 MOVE                             R19 R2
      256 MOVE                             R20 R12
      257 SETLIST                          R16 R17 4 [1]
      259 CALL                             R14 2 1
      260 GETUPVAL                         R15 0
      261 GETTABLEKS                       R15 R15 K9 ["useMemo"]
      263 NEWCLOSURE                       R16 P10
      264 CAPTURE                          VAL R0
      265 CAPTURE                          VAL R2
      266 CAPTURE                          VAL R12
      267 NEWTABLE                         R17 0 3
      269 GETTABLEKS                       R18 R0 K15 ["pinDataType"]
      271 MOVE                             R19 R2
      272 MOVE                             R20 R12
      273 SETLIST                          R17 R18 3 [1]
      275 CALL                             R15 2 1
      276 GETUPVAL                         R16 0
      277 GETTABLEKS                       R16 R16 K21 ["useCallback"]
      279 NEWCLOSURE                       R17 P11
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R0
      282 CAPTURE                          UPVAL U6
      283 NEWTABLE                         R18 0 7
      285 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      287 GETTABLEKS                       R20 R0 K12 ["pinSide"]
      289 GETTABLEKS                       R21 R0 K15 ["pinDataType"]
      291 GETTABLEKS                       R22 R0 K13 ["pinName"]
      293 GETTABLEKS                       R23 R0 K22 ["pinValue"]
      295 GETTABLEKS                       R24 R0 K14 ["pinDynamicIndex"]
      297 GETTABLEKS                       R25 R3 K23 ["onStartDrag"]
      299 SETLIST                          R18 R19 7 [1]
      301 CALL                             R16 2 1
      302 GETUPVAL                         R17 0
      303 GETTABLEKS                       R17 R17 K24 ["useState"]
      305 LOADNIL                          R18
      306 CALL                             R17 1 2
      307 GETUPVAL                         R19 0
      308 GETTABLEKS                       R19 R19 K16 ["useEffect"]
      310 NEWCLOSURE                       R20 P12
      311 CAPTURE                          VAL R17
      312 CAPTURE                          VAL R0
      313 NEWTABLE                         R21 0 3
      315 MOVE                             R22 R17
      316 GETTABLEKS                       R23 R0 K13 ["pinName"]
      318 GETTABLEKS                       R24 R0 K25 ["debugDisplayName"]
      320 SETLIST                          R21 R22 3 [1]
      322 CALL                             R19 2 0
      323 GETUPVAL                         R19 0
      324 GETTABLEKS                       R19 R19 K26 ["createElement"]
      326 GETUPVAL                         R20 12
      327 DUPTABLE                         R21 K36 [{"Position", "positionerRef", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      328 GETTABLEKS                       R22 R0 K27 ["Position"]
      330 SETTABLEKS                       R22 R21 K27 ["Position"]
      332 GETTABLEKS                       R22 R5 K37 ["setPositionerFrame"]
      334 SETTABLEKS                       R22 R21 K28 ["positionerRef"]
      336 GETUPVAL                         R22 13
      337 GETTABLEKS                       R22 R22 K38 ["NODEVIEW_ZINDEX"]
      339 GETTABLEKS                       R22 R22 K39 ["Anchors"]
      341 SETTABLEKS                       R22 R21 K29 ["ZIndex"]
      343 SETTABLEKS                       R14 R21 K30 ["Color3"]
      345 SETTABLEKS                       R15 R21 K31 ["OutlineColor3"]
      347 LOADN                            R22 1
      348 SETTABLEKS                       R22 R21 K32 ["OutlineThickness"]
      350 SETTABLEKS                       R16 R21 K33 ["OnDragStart"]
      352 GETTABLEKS                       R22 R3 K40 ["onDragMoved"]
      354 SETTABLEKS                       R22 R21 K34 ["OnDragMoved"]
      356 GETTABLEKS                       R22 R3 K41 ["onDragEnded"]
      358 SETTABLEKS                       R22 R21 K35 ["OnDragEnded"]
      360 DUPTABLE                         R22 K43 [{"DebugMarker"}]
      361 GETUPVAL                         R23 0
      362 GETTABLEKS                       R23 R23 K26 ["createElement"]
      364 GETUPVAL                         R24 2
      365 GETTABLEKS                       R24 R24 K44 ["View"]
      367 DUPTABLE                         R25 K48 [{"tag", "testId", "ref"}]
      368 LOADK                            R26 K49 ["size-full"]
      369 SETTABLEKS                       R26 R25 K45 ["tag"]
      371 LOADK                            R26 K50 ["RenderedCompositorPin-DebugMarker"]
      372 SETTABLEKS                       R26 R25 K46 ["testId"]
      374 SETTABLEKS                       R18 R25 K47 ["ref"]
      376 CALL                             R23 2 1
      377 SETTABLEKS                       R23 R22 K42 ["DebugMarker"]
      379 CALL                             R19 3 -1
      380 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R3 K10 ["CompositorNodes"]
       22 GETTABLEKS                       R3 R3 K11 ["CompositorNodeComponentContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Components"]
       29 GETTABLEKS                       R4 R4 K9 ["NodeView"]
       31 GETTABLEKS                       R4 R4 K12 ["CompositorPin"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Components"]
       38 GETTABLEKS                       R5 R5 K9 ["NodeView"]
       40 GETTABLEKS                       R5 R5 K10 ["CompositorNodes"]
       42 GETTABLEKS                       R5 R5 K13 ["CompositorStateUtils"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K14 ["Util"]
       49 GETTABLEKS                       R6 R6 K15 ["Constants"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K16 ["Parent"]
       56 GETTABLEKS                       R7 R7 K17 ["Foundation"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       63 GETTABLEKS                       R8 R8 K18 ["NativeGraphContext"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       70 GETTABLEKS                       R9 R9 K18 ["NativeGraphContext"]
       72 GETTABLEKS                       R9 R9 K19 ["NativeGraphUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K20 ["NodeViewTypes"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K16 ["Parent"]
       84 GETTABLEKS                       R11 R11 K21 ["React"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K14 ["Util"]
       91 GETTABLEKS                       R12 R12 K22 ["Signals"]
       93 GETTABLEKS                       R12 R12 K23 ["Experimental"]
       95 GETTABLEKS                       R12 R12 K24 ["SignalExperimentalUtils"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K16 ["Parent"]
      102 GETTABLEKS                       R13 R13 K22 ["Signals"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K14 ["Util"]
      109 GETTABLEKS                       R14 R14 K22 ["Signals"]
      111 GETTABLEKS                       R14 R14 K25 ["SignalsInstanceUtils"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K16 ["Parent"]
      118 GETTABLEKS                       R15 R15 K26 ["SignalsReact"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K27 ["Hooks"]
      125 GETTABLEKS                       R16 R16 K28 ["useAbsoluteSize"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R17 R0 K29 ["Flags"]
      132 GETTABLEKS                       R17 R17 K30 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      134 CALL                             R16 1 1
      135 DUPCLOSURE                       R17 K31 [PROTO_0]
      136 DUPCLOSURE                       R18 K32 [PROTO_4]
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R11
      141 DUPCLOSURE                       R19 K33 [PROTO_23]
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R5
      156 GETTABLEKS                       R20 R10 K34 ["memo"]
      158 MOVE                             R21 R19
      159 CALL                             R20 1 -1
      160 RETURN                           R20 -1
