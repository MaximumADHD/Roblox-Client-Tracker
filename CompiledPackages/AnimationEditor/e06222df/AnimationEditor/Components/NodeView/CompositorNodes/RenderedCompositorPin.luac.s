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
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["absoluteSizeHook"]
        6 GETTABLEKS                       R2 R3 K1 ["observeAbsolutePosition"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["observeAbsolutePosition"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K0 ["absoluteSizeHook"]
       18 GETTABLEKS                       R4 R5 K2 ["observeAbsoluteSize"]
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
       99 GETTABLEKS                       R10 R1 K9 ["size"]
      101 GETTABLEKS                       R9 R10 K3 ["X"]
      103 DIV                              R8 R9 R7
      104 GETIMPORT                        R9 K12 [Vector2.new]
      106 GETTABLEKS                       R11 R6 K3 ["X"]
      108 GETTABLEKS                       R13 R1 K9 ["size"]
      110 GETTABLEKS                       R12 R13 K3 ["X"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createComputed"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K3 ["setFrame"]
        7 SETTABLEKS                       R1 R0 K1 ["setPositionerFrame"]
        9 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R5 0 4
       19 MOVE                             R6 R0
       20 GETTABLEKS                       R8 R1 K3 ["absoluteSizeHook"]
       22 GETTABLEKS                       R7 R8 K4 ["observeAbsolutePosition"]
       24 GETTABLEKS                       R8 R2 K4 ["observeAbsolutePosition"]
       26 GETTABLEKS                       R10 R1 K3 ["absoluteSizeHook"]
       28 GETTABLEKS                       R9 R10 K5 ["observeAbsoluteSize"]
       30 SETLIST                          R5 R6 4 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K2 ["useMemo"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getPinAnchorKey"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["pinSide"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["pinName"]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["pinSide"]
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+9]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["inputPinToConnectionMap"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K3 ["pinName"]
       15 GETTABLE                         R0 R1 R2
       16 RETURN                           R0 1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R0 R1 K0 ["pinSide"]
       20 JUMPIFNOTEQKS                    R0 K4 ["Output"] ; [+9]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K5 ["outputPinToConnectionMap"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K3 ["pinName"]
       28 GETTABLE                         R0 R1 R2
       29 RETURN                           R0 1
       30 LOADNIL                          R0
       31 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["pinSide"]
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+13]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K2 ["getPinAnchorKey"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["outputNodeId"]
       15 LOADK                            R2 K4 ["Output"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K5 ["outputNodePinId"]
       19 CALL                             R0 3 -1
       20 RETURN                           R0 -1
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R0 R1 K0 ["pinSide"]
       24 JUMPIFNOTEQKS                    R0 K4 ["Output"] ; [+13]
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R0 R1 K2 ["getPinAnchorKey"]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K6 ["inputNodeId"]
       32 LOADK                            R2 K1 ["Input"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K7 ["inputNodePinId"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeOffsetInNodeSpace"]
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
       28 DUPTABLE                         R3 K6 [{"pinDataType", "pinName", "pinOffset", "pinSide", "pinNodeId"}]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R4 R5 K1 ["pinDataType"]
       32 SETTABLEKS                       R4 R3 K1 ["pinDataType"]
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R4 R5 K2 ["pinName"]
       37 SETTABLEKS                       R4 R3 K2 ["pinName"]
       39 SETTABLEKS                       R1 R3 K3 ["pinOffset"]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R4 R5 K4 ["pinSide"]
       44 SETTABLEKS                       R4 R3 K4 ["pinSide"]
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R4 R5 K5 ["pinNodeId"]
       49 SETTABLEKS                       R4 R3 K5 ["pinNodeId"]
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R4 R5 K7 ["pushAnchor"]
       54 GETUPVAL                         R5 5
       55 MOVE                             R6 R3
       56 CALL                             R4 2 1
       57 GETUPVAL                         R5 2
       58 SETUPVAL                         R4 2
       59 JUMPIFNOT                        R5 ; [+2]
       60 MOVE                             R6 R5
       61 CALL                             R6 0 0
       62 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 CALL                             R0 1 1
        7 LOADNIL                          R1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          REF R1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["createEffect"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          REF R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CALL                             R3 1 1
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          VAL R3
       23 CAPTURE                          REF R1
       24 CLOSEUPVALS                      R1
       25 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeCurvePreviewInfo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["of"]
        5 LOADNIL                          R1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K1 ["observeCurvePreviewInfo"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["of"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 LOADNIL                          R1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K1 ["pinSide"]
       12 JUMPIFNOTEQKS                    R2 K2 ["Input"] ; [+8]
       14 GETTABLEKS                       R2 R0 K3 ["inputPinToConnectionMap"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K4 ["pinName"]
       19 GETTABLE                         R1 R2 R3
       20 JUMP                             ; [+18]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K1 ["pinSide"]
       24 JUMPIFNOTEQKS                    R2 K5 ["Output"] ; [+8]
       26 GETTABLEKS                       R2 R0 K6 ["outputPinToConnectionMap"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K4 ["pinName"]
       31 GETTABLE                         R1 R2 R3
       32 JUMP                             ; [+6]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R2 R3 K0 ["of"]
       36 LOADB                            R3 0
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1
       39 JUMPIF                           R1 ; [+6]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R2 R3 K0 ["of"]
       43 LOADB                            R3 0
       44 CALL                             R2 1 -1
       45 RETURN                           R2 -1
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K7 ["observeGraphNodeById"]
       49 GETTABLEKS                       R3 R1 K8 ["outputNodeId"]
       51 CALL                             R2 1 1
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R3 R4 K9 ["createComputed"]
       55 NEWCLOSURE                       R4 P0
       56 CAPTURE                          VAL R2
       57 CALL                             R3 1 -1
       58 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["switchMap"]
       10 MOVE                             R2 R0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U3
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+49]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["sourcePinSide"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["pinSide"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+20]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K2 ["sourcePinNodeId"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K3 ["pinNodeId"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+34]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K5 ["pinName"]
       24 JUMPIFNOTEQ                      R0 R1 ; [+26]
       26 LOADB                            R0 1
       27 RETURN                           R0 1
       28 JUMP                             ; [+22]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R0 R1 K6 ["targetPinNodeId"]
       32 JUMPIFNOT                        R0 ; [+18]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R0 R1 K6 ["targetPinNodeId"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R1 R2 K3 ["pinNodeId"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+11]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R0 R1 K7 ["targetPinName"]
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R1 R2 K5 ["pinName"]
       47 JUMPIFNOTEQ                      R0 R1 ; [+3]
       49 LOADB                            R0 1
       50 RETURN                           R0 1
       51 GETUPVAL                         R0 2
       52 JUMPIFNOT                        R0 ; [+20]
       53 LOADB                            R0 0
       54 GETUPVAL                         R2 2
       55 GETTABLEKS                       R1 R2 K7 ["targetPinName"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R2 R3 K5 ["pinName"]
       60 JUMPIFNOTEQ                      R1 R2 ; [+11]
       62 GETUPVAL                         R2 2
       63 GETTABLEKS                       R1 R2 K6 ["targetPinNodeId"]
       65 GETUPVAL                         R3 1
       66 GETTABLEKS                       R2 R3 K3 ["pinNodeId"]
       68 JUMPIFEQ                         R1 R2 ; [+2]
       70 LOADB                            R0 0 +1
       71 LOADB                            R0 1
       72 RETURN                           R0 1
       73 GETUPVAL                         R0 3
       74 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+25]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["Color"]
       10 GETTABLEKS                       R3 R4 K3 ["Extended"]
       12 GETTABLEKS                       R2 R3 K4 ["Green"]
       14 GETTABLEKS                       R1 R2 K5 ["Green_800"]
       16 GETTABLEKS                       R0 R1 K6 ["Color3"]
       18 RETURN                           R0 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K2 ["Color"]
       22 GETTABLEKS                       R2 R3 K7 ["Surface"]
       24 GETTABLEKS                       R1 R2 K8 ["Surface_100"]
       26 GETTABLEKS                       R0 R1 K6 ["Color3"]
       28 RETURN                           R0 1
       29 GETUPVAL                         R0 1
       30 JUMPIFNOT                        R0 ; [+26]
       31 GETUPVAL                         R0 3
       32 JUMPIFNOT                        R0 ; [+12]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K2 ["Color"]
       36 GETTABLEKS                       R3 R4 K3 ["Extended"]
       38 GETTABLEKS                       R2 R3 K9 ["Gray"]
       40 GETTABLEKS                       R1 R2 K10 ["Gray_800"]
       42 GETTABLEKS                       R0 R1 K6 ["Color3"]
       44 RETURN                           R0 1
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R4 R5 K2 ["Color"]
       48 GETTABLEKS                       R3 R4 K3 ["Extended"]
       50 GETTABLEKS                       R2 R3 K9 ["Gray"]
       52 GETTABLEKS                       R1 R2 K11 ["Gray_600"]
       54 GETTABLEKS                       R0 R1 K6 ["Color3"]
       56 RETURN                           R0 1
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R3 R4 K2 ["Color"]
       60 GETTABLEKS                       R2 R3 K7 ["Surface"]
       62 GETTABLEKS                       R1 R2 K8 ["Surface_100"]
       64 GETTABLEKS                       R0 R1 K6 ["Color3"]
       66 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+13]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["Color"]
        8 GETTABLEKS                       R3 R4 K3 ["Extended"]
       10 GETTABLEKS                       R2 R3 K4 ["Green"]
       12 GETTABLEKS                       R1 R2 K5 ["Green_800"]
       14 GETTABLEKS                       R0 R1 K6 ["Color3"]
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 2
       18 JUMPIFNOT                        R0 ; [+12]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K2 ["Color"]
       22 GETTABLEKS                       R3 R4 K3 ["Extended"]
       24 GETTABLEKS                       R2 R3 K7 ["Gray"]
       26 GETTABLEKS                       R1 R2 K8 ["Gray_800"]
       28 GETTABLEKS                       R0 R1 K6 ["Color3"]
       30 RETURN                           R0 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K2 ["Color"]
       34 GETTABLEKS                       R3 R4 K3 ["Extended"]
       36 GETTABLEKS                       R2 R3 K7 ["Gray"]
       38 GETTABLEKS                       R1 R2 K9 ["Gray_600"]
       40 GETTABLEKS                       R0 R1 K6 ["Color3"]
       42 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onStartDrag"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["pinNodeId"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["pinName"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["pinDataType"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K4 ["pinSide"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K5 ["pinValue"]
       18 CALL                             R1 5 0
       19 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K0 ["PinName"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["pinName"]
        9 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 0
       13 LOADK                            R2 K3 ["DisplayName"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K4 ["debugDisplayName"]
       17 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       19 CALL                             R0 3 0
       20 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["pinNodeId"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["Bad pinNodeId"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K4 ["useContext"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K5 ["Context"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K6 ["Hooks"]
       18 GETTABLEKS                       R2 R3 K7 ["useTokens"]
       20 CALL                             R2 0 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K4 ["useContext"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R4 R5 K5 ["Context"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R5 4
       29 GETTABLEKS                       R4 R5 K8 ["useSignalState"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K9 ["useMemo"]
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
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R6 R7 K9 ["useMemo"]
       57 NEWCLOSURE                       R7 P1
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R0
       60 NEWTABLE                         R8 0 3
       62 GETTABLEKS                       R9 R0 K0 ["pinNodeId"]
       64 GETTABLEKS                       R10 R0 K12 ["pinSide"]
       66 GETTABLEKS                       R11 R0 K13 ["pinName"]
       68 SETLIST                          R8 R9 3 [1]
       70 CALL                             R6 2 1
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R7 R8 K9 ["useMemo"]
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R0
       77 NEWTABLE                         R9 0 3
       79 MOVE                             R10 R4
       80 GETTABLEKS                       R11 R0 K12 ["pinSide"]
       82 GETTABLEKS                       R12 R0 K13 ["pinName"]
       84 SETLIST                          R9 R10 3 [1]
       86 CALL                             R7 2 1
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R8 R9 K9 ["useMemo"]
       90 NEWCLOSURE                       R9 P3
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U6
       94 NEWTABLE                         R10 0 3
       96 MOVE                             R11 R7
       97 GETTABLEKS                       R12 R0 K12 ["pinSide"]
       99 GETTABLEKS                       R13 R0 K13 ["pinName"]
      101 SETLIST                          R10 R11 3 [1]
      103 CALL                             R8 2 1
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R9 R10 K14 ["useEffect"]
      107 NEWCLOSURE                       R10 P4
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U7
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R6
      114 NEWTABLE                         R11 0 8
      116 GETTABLEKS                       R12 R0 K0 ["pinNodeId"]
      118 GETTABLEKS                       R13 R0 K15 ["pinDataType"]
      120 GETTABLEKS                       R14 R0 K13 ["pinName"]
      122 GETTABLEKS                       R15 R0 K12 ["pinSide"]
      124 MOVE                             R16 R6
      125 GETTABLEKS                       R17 R1 K10 ["observeGraphNodeById"]
      127 GETTABLEKS                       R18 R5 K16 ["observeOffsetInNodeSpace"]
      129 GETTABLEKS                       R19 R3 K17 ["pushAnchor"]
      131 SETLIST                          R11 R12 8 [1]
      133 CALL                             R9 2 0
      134 GETUPVAL                         R10 4
      135 GETTABLEKS                       R9 R10 K8 ["useSignalState"]
      137 GETUPVAL                         R11 0
      138 GETTABLEKS                       R10 R11 K9 ["useMemo"]
      140 NEWCLOSURE                       R11 P5
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R6
      143 NEWTABLE                         R12 0 2
      145 MOVE                             R13 R6
      146 GETTABLEKS                       R14 R3 K18 ["observeCurvePreviewInfo"]
      148 SETLIST                          R12 R13 2 [1]
      150 CALL                             R10 2 -1
      151 CALL                             R9 -1 1
      152 GETUPVAL                         R11 4
      153 GETTABLEKS                       R10 R11 K8 ["useSignalState"]
      155 GETUPVAL                         R12 0
      156 GETTABLEKS                       R11 R12 K9 ["useMemo"]
      158 NEWCLOSURE                       R12 P6
      159 CAPTURE                          VAL R8
      160 CAPTURE                          UPVAL U8
      161 CAPTURE                          VAL R3
      162 NEWTABLE                         R13 0 2
      164 MOVE                             R14 R8
      165 GETTABLEKS                       R15 R3 K18 ["observeCurvePreviewInfo"]
      167 SETLIST                          R13 R14 2 [1]
      169 CALL                             R11 2 -1
      170 CALL                             R10 -1 1
      171 GETUPVAL                         R12 4
      172 GETTABLEKS                       R11 R12 K8 ["useSignalState"]
      174 GETUPVAL                         R13 0
      175 GETTABLEKS                       R12 R13 K9 ["useMemo"]
      177 NEWCLOSURE                       R13 P7
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U8
      181 CAPTURE                          UPVAL U9
      182 NEWTABLE                         R14 0 3
      184 GETTABLEKS                       R15 R0 K0 ["pinNodeId"]
      186 GETTABLEKS                       R16 R0 K13 ["pinName"]
      188 GETTABLEKS                       R17 R1 K10 ["observeGraphNodeById"]
      190 SETLIST                          R14 R15 3 [1]
      192 CALL                             R12 2 -1
      193 CALL                             R11 -1 1
      194 GETUPVAL                         R13 4
      195 GETTABLEKS                       R12 R13 K8 ["useSignalState"]
      197 GETUPVAL                         R14 10
      198 GETTABLEKS                       R13 R14 K19 ["useObserveIsDisabled"]
      200 GETTABLEKS                       R14 R0 K0 ["pinNodeId"]
      202 CALL                             R13 1 -1
      203 CALL                             R12 -1 1
      204 GETUPVAL                         R14 0
      205 GETTABLEKS                       R13 R14 K9 ["useMemo"]
      207 NEWCLOSURE                       R14 P8
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R0
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R11
      212 NEWTABLE                         R15 0 6
      214 MOVE                             R16 R11
      215 MOVE                             R17 R9
      216 MOVE                             R18 R10
      217 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      219 GETTABLEKS                       R20 R0 K13 ["pinName"]
      221 GETTABLEKS                       R21 R0 K12 ["pinSide"]
      223 SETLIST                          R15 R16 6 [1]
      225 CALL                             R13 2 1
      226 GETUPVAL                         R15 0
      227 GETTABLEKS                       R14 R15 K9 ["useMemo"]
      229 NEWCLOSURE                       R15 P9
      230 CAPTURE                          VAL R0
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R12
      234 NEWTABLE                         R16 0 4
      236 MOVE                             R17 R13
      237 GETTABLEKS                       R18 R0 K15 ["pinDataType"]
      239 MOVE                             R19 R2
      240 MOVE                             R20 R12
      241 SETLIST                          R16 R17 4 [1]
      243 CALL                             R14 2 1
      244 GETUPVAL                         R16 0
      245 GETTABLEKS                       R15 R16 K9 ["useMemo"]
      247 NEWCLOSURE                       R16 P10
      248 CAPTURE                          VAL R0
      249 CAPTURE                          VAL R2
      250 CAPTURE                          VAL R12
      251 NEWTABLE                         R17 0 3
      253 GETTABLEKS                       R18 R0 K15 ["pinDataType"]
      255 MOVE                             R19 R2
      256 MOVE                             R20 R12
      257 SETLIST                          R17 R18 3 [1]
      259 CALL                             R15 2 1
      260 GETUPVAL                         R17 0
      261 GETTABLEKS                       R16 R17 K20 ["useCallback"]
      263 NEWCLOSURE                       R17 P11
      264 CAPTURE                          VAL R3
      265 CAPTURE                          VAL R0
      266 NEWTABLE                         R18 0 6
      268 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      270 GETTABLEKS                       R20 R0 K12 ["pinSide"]
      272 GETTABLEKS                       R21 R0 K15 ["pinDataType"]
      274 GETTABLEKS                       R22 R0 K13 ["pinName"]
      276 GETTABLEKS                       R23 R0 K21 ["pinValue"]
      278 GETTABLEKS                       R24 R3 K22 ["onStartDrag"]
      280 SETLIST                          R18 R19 6 [1]
      282 CALL                             R16 2 1
      283 GETUPVAL                         R18 0
      284 GETTABLEKS                       R17 R18 K23 ["useState"]
      286 LOADNIL                          R18
      287 CALL                             R17 1 2
      288 GETUPVAL                         R20 0
      289 GETTABLEKS                       R19 R20 K14 ["useEffect"]
      291 NEWCLOSURE                       R20 P12
      292 CAPTURE                          VAL R17
      293 CAPTURE                          VAL R0
      294 NEWTABLE                         R21 0 3
      296 MOVE                             R22 R17
      297 GETTABLEKS                       R23 R0 K13 ["pinName"]
      299 GETTABLEKS                       R24 R0 K24 ["debugDisplayName"]
      301 SETLIST                          R21 R22 3 [1]
      303 CALL                             R19 2 0
      304 GETUPVAL                         R20 0
      305 GETTABLEKS                       R19 R20 K25 ["createElement"]
      307 GETUPVAL                         R20 11
      308 DUPTABLE                         R21 K35 [{"Position", "positionerRef", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      309 GETTABLEKS                       R22 R0 K26 ["Position"]
      311 SETTABLEKS                       R22 R21 K26 ["Position"]
      313 GETTABLEKS                       R22 R5 K36 ["setPositionerFrame"]
      315 SETTABLEKS                       R22 R21 K27 ["positionerRef"]
      317 GETUPVAL                         R24 12
      318 GETTABLEKS                       R23 R24 K37 ["NODEVIEW_ZINDEX"]
      320 GETTABLEKS                       R22 R23 K38 ["Anchors"]
      322 SETTABLEKS                       R22 R21 K28 ["ZIndex"]
      324 SETTABLEKS                       R14 R21 K29 ["Color3"]
      326 SETTABLEKS                       R15 R21 K30 ["OutlineColor3"]
      328 LOADN                            R22 1
      329 SETTABLEKS                       R22 R21 K31 ["OutlineThickness"]
      331 SETTABLEKS                       R16 R21 K32 ["OnDragStart"]
      333 GETTABLEKS                       R22 R3 K39 ["onDragMoved"]
      335 SETTABLEKS                       R22 R21 K33 ["OnDragMoved"]
      337 GETTABLEKS                       R22 R3 K40 ["onDragEnded"]
      339 SETTABLEKS                       R22 R21 K34 ["OnDragEnded"]
      341 DUPTABLE                         R22 K42 [{"DebugMarker"}]
      342 GETUPVAL                         R24 0
      343 GETTABLEKS                       R23 R24 K25 ["createElement"]
      345 GETUPVAL                         R25 2
      346 GETTABLEKS                       R24 R25 K43 ["View"]
      348 DUPTABLE                         R25 K47 [{"tag", "testId", "ref"}]
      349 LOADK                            R26 K48 ["size-full"]
      350 SETTABLEKS                       R26 R25 K44 ["tag"]
      352 LOADK                            R26 K49 ["RenderedCompositorPin-DebugMarker"]
      353 SETTABLEKS                       R26 R25 K45 ["testId"]
      355 SETTABLEKS                       R18 R25 K46 ["ref"]
      357 CALL                             R23 2 1
      358 SETTABLEKS                       R23 R22 K41 ["DebugMarker"]
      360 CALL                             R19 3 -1
      361 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodes"]
       22 GETTABLEKS                       R3 R4 K11 ["CompositorNodeComponentContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K8 ["Components"]
       29 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       31 GETTABLEKS                       R4 R5 K12 ["CompositorPin"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R8 R0 K8 ["Components"]
       38 GETTABLEKS                       R7 R8 K9 ["NodeView"]
       40 GETTABLEKS                       R6 R7 K10 ["CompositorNodes"]
       42 GETTABLEKS                       R5 R6 K13 ["CompositorStateUtils"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R7 R0 K14 ["Util"]
       49 GETTABLEKS                       R6 R7 K15 ["Constants"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K16 ["Parent"]
       56 GETTABLEKS                       R7 R8 K17 ["Foundation"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       63 GETTABLEKS                       R8 R9 K18 ["NativeGraphContext"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Contexts"]
       70 GETTABLEKS                       R10 R11 K18 ["NativeGraphContext"]
       72 GETTABLEKS                       R9 R10 K19 ["NativeGraphUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K20 ["NodeViewTypes"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R12 R0 K16 ["Parent"]
       84 GETTABLEKS                       R11 R12 K21 ["React"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R15 R0 K14 ["Util"]
       91 GETTABLEKS                       R14 R15 K22 ["Signals"]
       93 GETTABLEKS                       R13 R14 K23 ["Experimental"]
       95 GETTABLEKS                       R12 R13 K24 ["SignalExperimentalUtils"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R14 R0 K16 ["Parent"]
      102 GETTABLEKS                       R13 R14 K22 ["Signals"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R16 R0 K14 ["Util"]
      109 GETTABLEKS                       R15 R16 K22 ["Signals"]
      111 GETTABLEKS                       R14 R15 K25 ["SignalsInstanceUtils"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R16 R0 K16 ["Parent"]
      118 GETTABLEKS                       R15 R16 K26 ["SignalsReact"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R17 R0 K27 ["Hooks"]
      125 GETTABLEKS                       R16 R17 K28 ["useAbsoluteSize"]
      127 CALL                             R15 1 1
      128 DUPCLOSURE                       R16 K29 [PROTO_0]
      129 DUPCLOSURE                       R17 K30 [PROTO_4]
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R11
      134 DUPCLOSURE                       R18 K31 [PROTO_23]
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R5
      148 GETTABLEKS                       R19 R10 K32 ["memo"]
      150 MOVE                             R20 R18
      151 CALL                             R19 1 -1
      152 RETURN                           R19 -1
