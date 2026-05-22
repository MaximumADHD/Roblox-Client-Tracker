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
        1 GETTABLEKS                       R0 R0 K0 ["nodePayloadDispatcher"]
        3 GETTABLEKS                       R0 R0 K1 ["observe"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["pinNodeId"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+23]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["pinDataType"]
        6 JUMPIFNOTEQKS                    R1 K1 ["Parameter"] ; [+5]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["pinDynamicIndex"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R0
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["pinNodeId"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["pinSide"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K5 ["pinName"]
       23 MOVE                             R5 R0
       24 CALL                             R1 4 -1
       25 RETURN                           R1 -1
       26 GETUPVAL                         R0 2
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K3 ["pinNodeId"]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K4 ["pinSide"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K5 ["pinName"]
       36 CALL                             R0 3 -1
       37 RETURN                           R0 -1

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
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+11]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["outputNodeId"]
       13 LOADK                            R2 K3 ["Output"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["outputNodePinId"]
       17 CALL                             R0 3 -1
       18 RETURN                           R0 -1
       19 GETUPVAL                         R0 1
       20 GETTABLEKS                       R0 R0 K0 ["pinSide"]
       22 JUMPIFNOTEQKS                    R0 K3 ["Output"] ; [+11]
       24 GETUPVAL                         R0 2
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K5 ["inputNodeId"]
       28 LOADK                            R2 K1 ["Input"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K6 ["inputNodePinId"]
       32 CALL                             R0 3 -1
       33 RETURN                           R0 -1
       34 LOADNIL                          R0
       35 RETURN                           R0 1

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
        1 GETTABLEKS                       R0 R0 K0 ["nodePayloadDispatcher"]
        3 GETTABLEKS                       R0 R0 K1 ["observe"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["pinNodeId"]
        8 CALL                             R0 1 1
        9 LOADNIL                          R1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          REF R1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K3 ["createEffect"]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          REF R1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CALL                             R3 1 1
       24 NEWCLOSURE                       R4 P2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          REF R1
       27 CLOSEUPVALS                      R1
       28 RETURN                           R4 1

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
       79 GETTABLEKS                       R2 R2 K12 ["nodePayloadDispatcher"]
       81 GETTABLEKS                       R2 R2 K13 ["observe"]
       83 GETTABLEKS                       R3 R1 K14 ["outputNodeId"]
       85 CALL                             R2 1 1
       86 GETUPVAL                         R3 4
       87 GETTABLEKS                       R3 R3 K15 ["createComputed"]
       89 NEWCLOSURE                       R4 P0
       90 CAPTURE                          VAL R2
       91 CALL                             R3 1 -1
       92 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["nodePayloadDispatcher"]
        3 GETTABLEKS                       R0 R0 K1 ["observe"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["pinNodeId"]
        8 CALL                             R0 1 1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K3 ["switchMap"]
       12 MOVE                             R2 R0
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U4
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeIsDisabledByNodeId"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["observeIsDisabledByNodeId"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["pinNodeId"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["of"]
       15 LOADB                            R1 0
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
       39 GETTABLEKS                       R8 R1 K10 ["nodePayloadDispatcher"]
       41 GETTABLEKS                       R8 R8 K11 ["observe"]
       43 GETTABLEKS                       R9 R0 K0 ["pinNodeId"]
       45 SETLIST                          R7 R8 2 [1]
       47 CALL                             R5 2 -1
       48 CALL                             R4 -1 1
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R6 R1 K12 ["nodeRenderInfoDispatcher"]
       52 GETTABLEKS                       R6 R6 K11 ["observe"]
       54 GETTABLEKS                       R7 R0 K0 ["pinNodeId"]
       56 CALL                             R6 1 -1
       57 CALL                             R5 -1 1
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       61 NEWCLOSURE                       R7 P1
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U7
       65 NEWTABLE                         R8 0 5
       67 GETTABLEKS                       R9 R0 K0 ["pinNodeId"]
       69 GETTABLEKS                       R10 R0 K13 ["pinSide"]
       71 GETTABLEKS                       R11 R0 K14 ["pinName"]
       73 GETTABLEKS                       R12 R0 K15 ["pinDynamicIndex"]
       75 GETTABLEKS                       R13 R0 K16 ["pinDataType"]
       77 SETLIST                          R8 R9 5 [1]
       79 CALL                             R6 2 1
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       83 NEWCLOSURE                       R8 P2
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U6
       87 NEWTABLE                         R9 0 5
       89 MOVE                             R10 R4
       90 GETTABLEKS                       R11 R0 K13 ["pinSide"]
       92 GETTABLEKS                       R12 R0 K14 ["pinName"]
       94 GETTABLEKS                       R13 R0 K15 ["pinDynamicIndex"]
       96 GETTABLEKS                       R14 R0 K16 ["pinDataType"]
       98 SETLIST                          R9 R10 5 [1]
      100 CALL                             R7 2 1
      101 GETUPVAL                         R8 0
      102 GETTABLEKS                       R8 R8 K9 ["useMemo"]
      104 NEWCLOSURE                       R9 P3
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U7
      108 NEWTABLE                         R10 0 3
      110 MOVE                             R11 R7
      111 GETTABLEKS                       R12 R0 K13 ["pinSide"]
      113 GETTABLEKS                       R13 R0 K14 ["pinName"]
      115 SETLIST                          R10 R11 3 [1]
      117 CALL                             R8 2 1
      118 GETUPVAL                         R9 0
      119 GETTABLEKS                       R9 R9 K17 ["useEffect"]
      121 NEWCLOSURE                       R10 P4
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          VAL R5
      126 CAPTURE                          UPVAL U6
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R6
      129 NEWTABLE                         R11 0 8
      131 GETTABLEKS                       R12 R0 K0 ["pinNodeId"]
      133 GETTABLEKS                       R13 R0 K16 ["pinDataType"]
      135 GETTABLEKS                       R14 R0 K14 ["pinName"]
      137 GETTABLEKS                       R15 R0 K13 ["pinSide"]
      139 MOVE                             R16 R6
      140 GETTABLEKS                       R17 R1 K10 ["nodePayloadDispatcher"]
      142 GETTABLEKS                       R17 R17 K11 ["observe"]
      144 GETTABLEKS                       R18 R5 K18 ["observeOffsetInNodeSpace"]
      146 GETTABLEKS                       R19 R3 K19 ["pushAnchor"]
      148 SETLIST                          R11 R12 8 [1]
      150 CALL                             R9 2 0
      151 GETUPVAL                         R9 4
      152 GETTABLEKS                       R9 R9 K8 ["useSignalState"]
      154 GETUPVAL                         R10 0
      155 GETTABLEKS                       R10 R10 K9 ["useMemo"]
      157 NEWCLOSURE                       R11 P5
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R6
      160 NEWTABLE                         R12 0 2
      162 MOVE                             R13 R6
      163 GETTABLEKS                       R14 R3 K20 ["observeCurvePreviewInfo"]
      165 SETLIST                          R12 R13 2 [1]
      167 CALL                             R10 2 -1
      168 CALL                             R9 -1 1
      169 GETUPVAL                         R10 4
      170 GETTABLEKS                       R10 R10 K8 ["useSignalState"]
      172 GETUPVAL                         R11 0
      173 GETTABLEKS                       R11 R11 K9 ["useMemo"]
      175 NEWCLOSURE                       R12 P6
      176 CAPTURE                          VAL R8
      177 CAPTURE                          UPVAL U9
      178 CAPTURE                          VAL R3
      179 NEWTABLE                         R13 0 2
      181 MOVE                             R14 R8
      182 GETTABLEKS                       R15 R3 K20 ["observeCurvePreviewInfo"]
      184 SETLIST                          R13 R14 2 [1]
      186 CALL                             R11 2 -1
      187 CALL                             R10 -1 1
      188 GETUPVAL                         R11 4
      189 GETTABLEKS                       R11 R11 K8 ["useSignalState"]
      191 GETUPVAL                         R12 0
      192 GETTABLEKS                       R12 R12 K9 ["useMemo"]
      194 NEWCLOSURE                       R13 P7
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R0
      197 CAPTURE                          UPVAL U9
      198 CAPTURE                          UPVAL U6
      199 CAPTURE                          UPVAL U10
      200 NEWTABLE                         R14 0 5
      202 GETTABLEKS                       R15 R0 K0 ["pinNodeId"]
      204 GETTABLEKS                       R16 R0 K14 ["pinName"]
      206 GETTABLEKS                       R17 R0 K15 ["pinDynamicIndex"]
      208 GETTABLEKS                       R18 R0 K16 ["pinDataType"]
      210 GETTABLEKS                       R19 R1 K10 ["nodePayloadDispatcher"]
      212 GETTABLEKS                       R19 R19 K11 ["observe"]
      214 SETLIST                          R14 R15 5 [1]
      216 CALL                             R12 2 -1
      217 CALL                             R11 -1 1
      218 GETUPVAL                         R12 4
      219 GETTABLEKS                       R12 R12 K8 ["useSignalState"]
      221 GETUPVAL                         R13 0
      222 GETTABLEKS                       R13 R13 K9 ["useMemo"]
      224 NEWCLOSURE                       R14 P8
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R0
      227 CAPTURE                          UPVAL U9
      228 NEWTABLE                         R15 0 2
      230 GETTABLEKS                       R16 R1 K21 ["observeIsDisabledByNodeId"]
      232 GETTABLEKS                       R17 R0 K0 ["pinNodeId"]
      234 SETLIST                          R15 R16 2 [1]
      236 CALL                             R13 2 -1
      237 CALL                             R12 -1 1
      238 GETUPVAL                         R13 0
      239 GETTABLEKS                       R13 R13 K9 ["useMemo"]
      241 NEWCLOSURE                       R14 P9
      242 CAPTURE                          VAL R9
      243 CAPTURE                          VAL R0
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R11
      246 NEWTABLE                         R15 0 6
      248 MOVE                             R16 R11
      249 MOVE                             R17 R9
      250 MOVE                             R18 R10
      251 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      253 GETTABLEKS                       R20 R0 K14 ["pinName"]
      255 GETTABLEKS                       R21 R0 K13 ["pinSide"]
      257 SETLIST                          R15 R16 6 [1]
      259 CALL                             R13 2 1
      260 GETUPVAL                         R14 0
      261 GETTABLEKS                       R14 R14 K9 ["useMemo"]
      263 NEWCLOSURE                       R15 P10
      264 CAPTURE                          VAL R0
      265 CAPTURE                          VAL R13
      266 CAPTURE                          VAL R2
      267 CAPTURE                          VAL R12
      268 NEWTABLE                         R16 0 4
      270 MOVE                             R17 R13
      271 GETTABLEKS                       R18 R0 K16 ["pinDataType"]
      273 MOVE                             R19 R2
      274 MOVE                             R20 R12
      275 SETLIST                          R16 R17 4 [1]
      277 CALL                             R14 2 1
      278 GETUPVAL                         R15 0
      279 GETTABLEKS                       R15 R15 K9 ["useMemo"]
      281 NEWCLOSURE                       R16 P11
      282 CAPTURE                          VAL R0
      283 CAPTURE                          VAL R2
      284 CAPTURE                          VAL R12
      285 NEWTABLE                         R17 0 3
      287 GETTABLEKS                       R18 R0 K16 ["pinDataType"]
      289 MOVE                             R19 R2
      290 MOVE                             R20 R12
      291 SETLIST                          R17 R18 3 [1]
      293 CALL                             R15 2 1
      294 GETUPVAL                         R16 0
      295 GETTABLEKS                       R16 R16 K22 ["useCallback"]
      297 NEWCLOSURE                       R17 P12
      298 CAPTURE                          VAL R3
      299 CAPTURE                          VAL R0
      300 CAPTURE                          UPVAL U6
      301 NEWTABLE                         R18 0 7
      303 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      305 GETTABLEKS                       R20 R0 K13 ["pinSide"]
      307 GETTABLEKS                       R21 R0 K16 ["pinDataType"]
      309 GETTABLEKS                       R22 R0 K14 ["pinName"]
      311 GETTABLEKS                       R23 R0 K23 ["pinValue"]
      313 GETTABLEKS                       R24 R0 K15 ["pinDynamicIndex"]
      315 GETTABLEKS                       R25 R3 K24 ["onStartDrag"]
      317 SETLIST                          R18 R19 7 [1]
      319 CALL                             R16 2 1
      320 GETUPVAL                         R17 0
      321 GETTABLEKS                       R17 R17 K25 ["useState"]
      323 LOADNIL                          R18
      324 CALL                             R17 1 2
      325 GETUPVAL                         R19 0
      326 GETTABLEKS                       R19 R19 K17 ["useEffect"]
      328 NEWCLOSURE                       R20 P13
      329 CAPTURE                          VAL R17
      330 CAPTURE                          VAL R0
      331 NEWTABLE                         R21 0 3
      333 MOVE                             R22 R17
      334 GETTABLEKS                       R23 R0 K14 ["pinName"]
      336 GETTABLEKS                       R24 R0 K26 ["debugDisplayName"]
      338 SETLIST                          R21 R22 3 [1]
      340 CALL                             R19 2 0
      341 GETUPVAL                         R19 0
      342 GETTABLEKS                       R19 R19 K27 ["createElement"]
      344 GETUPVAL                         R20 11
      345 DUPTABLE                         R21 K37 [{"Position", "positionerRef", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      346 GETTABLEKS                       R22 R0 K28 ["Position"]
      348 SETTABLEKS                       R22 R21 K28 ["Position"]
      350 GETTABLEKS                       R22 R5 K38 ["setPositionerFrame"]
      352 SETTABLEKS                       R22 R21 K29 ["positionerRef"]
      354 GETUPVAL                         R22 12
      355 GETTABLEKS                       R22 R22 K39 ["NODEVIEW_ZINDEX"]
      357 GETTABLEKS                       R22 R22 K40 ["Anchors"]
      359 SETTABLEKS                       R22 R21 K30 ["ZIndex"]
      361 SETTABLEKS                       R14 R21 K31 ["Color3"]
      363 SETTABLEKS                       R15 R21 K32 ["OutlineColor3"]
      365 LOADN                            R22 1
      366 SETTABLEKS                       R22 R21 K33 ["OutlineThickness"]
      368 SETTABLEKS                       R16 R21 K34 ["OnDragStart"]
      370 GETTABLEKS                       R22 R3 K41 ["onDragMoved"]
      372 SETTABLEKS                       R22 R21 K35 ["OnDragMoved"]
      374 GETTABLEKS                       R22 R3 K42 ["onDragEnded"]
      376 SETTABLEKS                       R22 R21 K36 ["OnDragEnded"]
      378 DUPTABLE                         R22 K44 [{"DebugMarker"}]
      379 GETUPVAL                         R23 0
      380 GETTABLEKS                       R23 R23 K27 ["createElement"]
      382 GETUPVAL                         R24 2
      383 GETTABLEKS                       R24 R24 K45 ["View"]
      385 DUPTABLE                         R25 K49 [{"tag", "testId", "ref"}]
      386 LOADK                            R26 K50 ["size-full"]
      387 SETTABLEKS                       R26 R25 K46 ["tag"]
      389 LOADK                            R26 K51 ["RenderedCompositorPin-DebugMarker"]
      390 SETTABLEKS                       R26 R25 K47 ["testId"]
      392 SETTABLEKS                       R18 R25 K48 ["ref"]
      394 CALL                             R23 2 1
      395 SETTABLEKS                       R23 R22 K43 ["DebugMarker"]
      397 CALL                             R19 3 -1
      398 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CompositorNode"]
       20 GETTABLEKS                       R3 R3 K9 ["CompositorNodeComponentContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K10 ["CompositorPin"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Constants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["GraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["NodeViewTypes"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Parent"]
       58 GETTABLEKS                       R9 R9 K16 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K17 ["Util"]
       65 GETTABLEKS                       R10 R10 K18 ["Signals"]
       67 GETTABLEKS                       R10 R10 K19 ["Experimental"]
       69 GETTABLEKS                       R10 R10 K20 ["SignalExperimentalUtils"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K12 ["Parent"]
       76 GETTABLEKS                       R11 R11 K18 ["Signals"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K12 ["Parent"]
       83 GETTABLEKS                       R12 R12 K21 ["SignalsReact"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K17 ["Util"]
       90 GETTABLEKS                       R13 R13 K18 ["Signals"]
       92 GETTABLEKS                       R13 R13 K22 ["SignalsUtils"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K17 ["Util"]
       99 GETTABLEKS                       R14 R14 K23 ["getPinAnchorKey"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K25 ["useAbsoluteSize"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K26 ["Flags"]
      113 GETTABLEKS                       R16 R16 K27 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      115 CALL                             R15 1 1
      116 DUPCLOSURE                       R16 K28 [PROTO_0]
      117 DUPCLOSURE                       R17 K29 [PROTO_4]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R9
      122 DUPCLOSURE                       R18 K30 [PROTO_24]
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R4
      136 GETTABLEKS                       R19 R8 K31 ["memo"]
      138 MOVE                             R20 R18
      139 CALL                             R19 1 -1
      140 RETURN                           R19 -1
