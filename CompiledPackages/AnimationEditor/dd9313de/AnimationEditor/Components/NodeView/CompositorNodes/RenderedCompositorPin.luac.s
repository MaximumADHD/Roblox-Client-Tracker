PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["properties"]
        4 GETTABLEKS                       R1 R2 K1 ["observeVector2"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["AbsolutePosition"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K3 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["properties"]
        4 GETTABLEKS                       R1 R2 K1 ["observeVector2"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["AbsoluteSize"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K3 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_3]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R0 K4 [{"observeAbsolutePosition", "observeAbsoluteSize", "observeFrame", "setFrame"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeAbsolutePosition"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeAbsoluteSize"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeFrame"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setFrame"]
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R2 0 0
        7 CALL                             R0 2 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K0 ["useMemo"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 NEWTABLE                         R5 0 0
       27 CALL                             R3 2 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K0 ["useMemo"]
       31 NEWCLOSURE                       R5 P3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R6 0 4
       38 MOVE                             R7 R2
       39 MOVE                             R8 R2
       40 MOVE                             R9 R0
       41 MOVE                             R10 R1
       42 SETLIST                          R6 R7 4 [1]
       44 CALL                             R4 2 -1
       45 RETURN                           R4 -1

PROTO_7:
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

PROTO_8:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 MOVE                             R1 R0
        4 JUMPIFNOT                        R1 ; [+19]
        5 LOADK                            R4 K0 ["CompositorNode"]
        6 NAMECALL                         R2 R1 K1 ["HasTag"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+11]
       10 LOADK                            R5 K2 ["GuiObject"]
       11 NAMECALL                         R3 R1 K3 ["IsA"]
       13 CALL                             R3 2 1
       14 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       16 LOADK                            R4 K4 ["Object tagged with CompositorNode is not GuiObject"]
       17 GETIMPORT                        R2 K6 [assert]
       19 CALL                             R2 2 0
       20 RETURN                           R1 1
       21 GETTABLEKS                       R1 R1 K7 ["Parent"]
       23 JUMPBACK                         ; [-20]
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setFrame"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeFrame"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETTABLEKS                       R2 R1 K1 ["AncestryChanged"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 NAMECALL                         R2 R2 K2 ["Connect"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 3
       16 JUMPIFNOT                        R3 ; [+4]
       17 GETUPVAL                         R3 3
       18 NAMECALL                         R3 R3 K3 ["Disconnect"]
       20 CALL                             R3 1 0
       21 SETUPVAL                         R2 3
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K4 ["setFrame"]
       25 GETUPVAL                         R3 2
       26 MOVE                             R4 R1
       27 CALL                             R3 1 -1
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setFrame"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["observeFrame"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 -1
       10 CALL                             R0 -1 0
       11 LOADNIL                          R0
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          REF R0
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K2 ["createEffect"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          REF R0
       22 CALL                             R2 1 1
       23 NEWCLOSURE                       R3 P2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          REF R0
       26 CLOSEUPVALS                      R0
       27 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["observeAbsolutePosition"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["observeAbsolutePosition"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K1 ["observeAbsoluteSize"]
       16 MOVE                             R5 R0
       17 CALL                             R4 1 1
       18 JUMPIFEQKNIL                     R1 ; [+67]
       20 JUMPIFEQKNIL                     R2 ; [+65]
       22 LOADB                            R5 0
       23 GETTABLEKS                       R7 R2 K2 ["X"]
       25 FASTCALL1                        MATH_ABS R7 ; [+2]
       26 GETIMPORT                        R6 K5 [math.abs]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKN                    R6 K6 [0] ; [+11]
       31 GETTABLEKS                       R7 R2 K7 ["Y"]
       33 FASTCALL1                        MATH_ABS R7 ; [+2]
       34 GETIMPORT                        R6 K5 [math.abs]
       36 CALL                             R6 1 1
       37 JUMPIFEQKN                       R6 K6 [0] ; [+2]
       39 LOADB                            R5 0 +1
       40 LOADB                            R5 1
       41 JUMPIF                           R5 ; [+44]
       42 JUMPIFEQKNIL                     R3 ; [+43]
       44 LOADB                            R5 0
       45 GETTABLEKS                       R7 R3 K2 ["X"]
       47 FASTCALL1                        MATH_ABS R7 ; [+2]
       48 GETIMPORT                        R6 K5 [math.abs]
       50 CALL                             R6 1 1
       51 JUMPIFNOTEQKN                    R6 K6 [0] ; [+11]
       53 GETTABLEKS                       R7 R3 K7 ["Y"]
       55 FASTCALL1                        MATH_ABS R7 ; [+2]
       56 GETIMPORT                        R6 K5 [math.abs]
       58 CALL                             R6 1 1
       59 JUMPIFEQKN                       R6 K6 [0] ; [+2]
       61 LOADB                            R5 0 +1
       62 LOADB                            R5 1
       63 JUMPIF                           R5 ; [+22]
       64 JUMPIFEQKNIL                     R4 ; [+21]
       66 LOADB                            R5 0
       67 GETTABLEKS                       R7 R4 K2 ["X"]
       69 FASTCALL1                        MATH_ABS R7 ; [+2]
       70 GETIMPORT                        R6 K5 [math.abs]
       72 CALL                             R6 1 1
       73 JUMPIFNOTEQKN                    R6 K6 [0] ; [+11]
       75 GETTABLEKS                       R7 R4 K7 ["Y"]
       77 FASTCALL1                        MATH_ABS R7 ; [+2]
       78 GETIMPORT                        R6 K5 [math.abs]
       80 CALL                             R6 1 1
       81 JUMPIFEQKN                       R6 K6 [0] ; [+2]
       83 LOADB                            R5 0 +1
       84 LOADB                            R5 1
       85 JUMPIFNOT                        R5 ; [+2]
       86 LOADNIL                          R5
       87 RETURN                           R5 1
       88 SUB                              R5 R3 R2
       89 DIV                              R6 R5 R4
       90 GETTABLEKS                       R8 R4 K2 ["X"]
       92 GETTABLEKS                       R9 R4 K7 ["Y"]
       94 DIV                              R7 R8 R9
       95 GETTABLEKS                       R10 R1 K8 ["size"]
       97 GETTABLEKS                       R9 R10 K2 ["X"]
       99 DIV                              R8 R9 R7
      100 GETIMPORT                        R9 K11 [Vector2.new]
      102 GETTABLEKS                       R11 R6 K2 ["X"]
      104 GETTABLEKS                       R13 R1 K8 ["size"]
      106 GETTABLEKS                       R12 R13 K2 ["X"]
      108 MUL                              R10 R11 R12
      109 GETTABLEKS                       R13 R6 K7 ["Y"]
      111 MINUS                            R12 R13
      112 MUL                              R11 R12 R8
      113 CALL                             R9 2 1
      114 GETIMPORT                        R10 K11 [Vector2.new]
      116 GETTABLEKS                       R12 R9 K2 ["X"]
      118 FASTCALL1                        MATH_ROUND R12 ; [+2]
      119 GETIMPORT                        R11 K13 [math.round]
      121 CALL                             R11 1 1
      122 GETTABLEKS                       R13 R9 K7 ["Y"]
      124 FASTCALL1                        MATH_ROUND R13 ; [+2]
      125 GETIMPORT                        R12 K13 [math.round]
      127 CALL                             R12 1 1
      128 CALL                             R10 2 1
      129 LOADB                            R11 0
      130 GETTABLEKS                       R13 R10 K2 ["X"]
      132 FASTCALL1                        MATH_ABS R13 ; [+2]
      133 GETIMPORT                        R12 K5 [math.abs]
      135 CALL                             R12 1 1
      136 JUMPIFNOTEQKN                    R12 K6 [0] ; [+11]
      138 GETTABLEKS                       R13 R10 K7 ["Y"]
      140 FASTCALL1                        MATH_ABS R13 ; [+2]
      141 GETIMPORT                        R12 K5 [math.abs]
      143 CALL                             R12 1 1
      144 JUMPIFEQKN                       R12 K6 [0] ; [+2]
      146 LOADB                            R11 0 +1
      147 LOADB                            R11 1
      148 JUMPIFNOT                        R11 ; [+2]
      149 LOADNIL                          R11
      150 RETURN                           R11 1
      151 RETURN                           R10 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["useCallback"]
        7 DUPCLOSURE                       R5 K1 [PROTO_8]
        8 NEWTABLE                         R6 0 0
       10 CALL                             R4 2 1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U2
       19 NEWTABLE                         R7 0 2
       21 MOVE                             R8 R4
       22 GETTABLEKS                       R9 R3 K3 ["setFrame"]
       24 SETLIST                          R7 R8 2 [1]
       26 CALL                             R5 2 0
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K4 ["useMemo"]
       30 NEWCLOSURE                       R6 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R7 0 4
       37 MOVE                             R8 R1
       38 GETTABLEKS                       R9 R3 K5 ["observeAbsolutePosition"]
       40 GETTABLEKS                       R10 R2 K5 ["observeAbsolutePosition"]
       42 GETTABLEKS                       R11 R3 K6 ["observeAbsoluteSize"]
       44 SETLIST                          R7 R8 4 [1]
       46 CALL                             R5 2 1
       47 DUPTABLE                         R6 K9 [{"observeOffsetInNodeSpace", "setPositionerFrame"}]
       48 SETTABLEKS                       R5 R6 K7 ["observeOffsetInNodeSpace"]
       50 GETTABLEKS                       R7 R2 K3 ["setFrame"]
       52 SETTABLEKS                       R7 R6 K8 ["setPositionerFrame"]
       54 RETURN                           R6 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R1 0
        1 SETUPVAL                         R0 0
        2 JUMPIFNOT                        R1 ; [+2]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 0
        5 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R1 R0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeCurvePreviewInfo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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
       15 CALL                             R1 4 0
       16 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K0 ["PinName"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["pinName"]
        9 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_35:
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
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K6 ["useSignalState"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K7 ["useMemo"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R5 0 2
       26 GETTABLEKS                       R6 R1 K8 ["observeGraphNodeById"]
       28 GETTABLEKS                       R7 R0 K0 ["pinNodeId"]
       30 SETLIST                          R5 R6 2 [1]
       32 CALL                             R3 2 -1
       33 CALL                             R2 -1 1
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R4 R5 K9 ["Hooks"]
       37 GETTABLEKS                       R3 R4 K10 ["useTokens"]
       39 CALL                             R3 0 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K4 ["useContext"]
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R5 R6 K5 ["Context"]
       46 CALL                             R4 1 1
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R6 R4 K11 ["observeNodePosition"]
       50 GETTABLEKS                       R7 R0 K0 ["pinNodeId"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K12 ["observeNodeRenderInfoById"]
       55 GETTABLEKS                       R8 R0 K0 ["pinNodeId"]
       57 CALL                             R7 1 -1
       58 CALL                             R5 -1 1
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       62 NEWCLOSURE                       R7 P1
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R0
       65 NEWTABLE                         R8 0 3
       67 GETTABLEKS                       R9 R0 K0 ["pinNodeId"]
       69 GETTABLEKS                       R10 R0 K13 ["pinSide"]
       71 GETTABLEKS                       R11 R0 K14 ["pinName"]
       73 SETLIST                          R8 R9 3 [1]
       75 CALL                             R6 2 1
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R7 R8 K7 ["useMemo"]
       79 NEWCLOSURE                       R8 P2
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R0
       82 NEWTABLE                         R9 0 3
       84 MOVE                             R10 R2
       85 GETTABLEKS                       R11 R0 K13 ["pinSide"]
       87 GETTABLEKS                       R12 R0 K14 ["pinName"]
       89 SETLIST                          R9 R10 3 [1]
       91 CALL                             R7 2 1
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R8 R9 K7 ["useMemo"]
       95 NEWCLOSURE                       R9 P3
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R0
       98 CAPTURE                          UPVAL U6
       99 NEWTABLE                         R10 0 3
      101 MOVE                             R11 R7
      102 GETTABLEKS                       R12 R0 K13 ["pinSide"]
      104 GETTABLEKS                       R13 R0 K14 ["pinName"]
      106 SETLIST                          R10 R11 3 [1]
      108 CALL                             R8 2 1
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R9 R10 K15 ["useEffect"]
      112 NEWCLOSURE                       R10 P4
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U7
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R6
      119 NEWTABLE                         R11 0 8
      121 GETTABLEKS                       R12 R0 K0 ["pinNodeId"]
      123 GETTABLEKS                       R13 R0 K16 ["pinDataType"]
      125 GETTABLEKS                       R14 R0 K14 ["pinName"]
      127 GETTABLEKS                       R15 R0 K13 ["pinSide"]
      129 MOVE                             R16 R6
      130 GETTABLEKS                       R17 R1 K8 ["observeGraphNodeById"]
      132 GETTABLEKS                       R18 R5 K17 ["observeOffsetInNodeSpace"]
      134 GETTABLEKS                       R19 R4 K18 ["pushAnchor"]
      136 SETLIST                          R11 R12 8 [1]
      138 CALL                             R9 2 0
      139 GETUPVAL                         R10 2
      140 GETTABLEKS                       R9 R10 K6 ["useSignalState"]
      142 GETUPVAL                         R11 0
      143 GETTABLEKS                       R10 R11 K7 ["useMemo"]
      145 NEWCLOSURE                       R11 P5
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R6
      148 NEWTABLE                         R12 0 2
      150 MOVE                             R13 R6
      151 GETTABLEKS                       R14 R4 K19 ["observeCurvePreviewInfo"]
      153 SETLIST                          R12 R13 2 [1]
      155 CALL                             R10 2 -1
      156 CALL                             R9 -1 1
      157 GETUPVAL                         R11 2
      158 GETTABLEKS                       R10 R11 K6 ["useSignalState"]
      160 GETUPVAL                         R12 0
      161 GETTABLEKS                       R11 R12 K7 ["useMemo"]
      163 NEWCLOSURE                       R12 P6
      164 CAPTURE                          VAL R8
      165 CAPTURE                          UPVAL U8
      166 CAPTURE                          VAL R4
      167 NEWTABLE                         R13 0 2
      169 MOVE                             R14 R8
      170 GETTABLEKS                       R15 R4 K19 ["observeCurvePreviewInfo"]
      172 SETLIST                          R13 R14 2 [1]
      174 CALL                             R11 2 -1
      175 CALL                             R10 -1 1
      176 GETUPVAL                         R12 2
      177 GETTABLEKS                       R11 R12 K6 ["useSignalState"]
      179 GETUPVAL                         R13 0
      180 GETTABLEKS                       R12 R13 K7 ["useMemo"]
      182 NEWCLOSURE                       R13 P7
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U8
      186 CAPTURE                          UPVAL U7
      187 NEWTABLE                         R14 0 3
      189 GETTABLEKS                       R15 R0 K0 ["pinNodeId"]
      191 GETTABLEKS                       R16 R0 K14 ["pinName"]
      193 GETTABLEKS                       R17 R1 K8 ["observeGraphNodeById"]
      195 SETLIST                          R14 R15 3 [1]
      197 CALL                             R12 2 -1
      198 CALL                             R11 -1 1
      199 GETUPVAL                         R13 2
      200 GETTABLEKS                       R12 R13 K6 ["useSignalState"]
      202 GETUPVAL                         R14 9
      203 GETTABLEKS                       R13 R14 K20 ["useObserveIsDisabled"]
      205 GETTABLEKS                       R14 R0 K0 ["pinNodeId"]
      207 CALL                             R13 1 -1
      208 CALL                             R12 -1 1
      209 GETUPVAL                         R14 0
      210 GETTABLEKS                       R13 R14 K7 ["useMemo"]
      212 NEWCLOSURE                       R14 P8
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R11
      217 NEWTABLE                         R15 0 6
      219 MOVE                             R16 R11
      220 MOVE                             R17 R9
      221 MOVE                             R18 R10
      222 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      224 GETTABLEKS                       R20 R0 K14 ["pinName"]
      226 GETTABLEKS                       R21 R0 K13 ["pinSide"]
      228 SETLIST                          R15 R16 6 [1]
      230 CALL                             R13 2 1
      231 GETUPVAL                         R15 0
      232 GETTABLEKS                       R14 R15 K7 ["useMemo"]
      234 NEWCLOSURE                       R15 P9
      235 CAPTURE                          VAL R0
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R12
      239 NEWTABLE                         R16 0 4
      241 MOVE                             R17 R13
      242 GETTABLEKS                       R18 R0 K16 ["pinDataType"]
      244 MOVE                             R19 R3
      245 MOVE                             R20 R12
      246 SETLIST                          R16 R17 4 [1]
      248 CALL                             R14 2 1
      249 GETUPVAL                         R16 0
      250 GETTABLEKS                       R15 R16 K7 ["useMemo"]
      252 NEWCLOSURE                       R16 P10
      253 CAPTURE                          VAL R0
      254 CAPTURE                          VAL R3
      255 CAPTURE                          VAL R12
      256 NEWTABLE                         R17 0 3
      258 GETTABLEKS                       R18 R0 K16 ["pinDataType"]
      260 MOVE                             R19 R3
      261 MOVE                             R20 R12
      262 SETLIST                          R17 R18 3 [1]
      264 CALL                             R15 2 1
      265 GETUPVAL                         R17 0
      266 GETTABLEKS                       R16 R17 K21 ["useCallback"]
      268 NEWCLOSURE                       R17 P11
      269 CAPTURE                          VAL R4
      270 CAPTURE                          VAL R0
      271 NEWTABLE                         R18 0 5
      273 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      275 GETTABLEKS                       R20 R0 K13 ["pinSide"]
      277 GETTABLEKS                       R21 R0 K16 ["pinDataType"]
      279 GETTABLEKS                       R22 R0 K14 ["pinName"]
      281 GETTABLEKS                       R23 R4 K22 ["onStartDrag"]
      283 SETLIST                          R18 R19 5 [1]
      285 CALL                             R16 2 1
      286 GETUPVAL                         R18 0
      287 GETTABLEKS                       R17 R18 K23 ["useState"]
      289 LOADNIL                          R18
      290 CALL                             R17 1 2
      291 GETUPVAL                         R20 0
      292 GETTABLEKS                       R19 R20 K15 ["useEffect"]
      294 NEWCLOSURE                       R20 P12
      295 CAPTURE                          VAL R17
      296 CAPTURE                          VAL R0
      297 NEWTABLE                         R21 0 2
      299 MOVE                             R22 R17
      300 GETTABLEKS                       R23 R0 K14 ["pinName"]
      302 SETLIST                          R21 R22 2 [1]
      304 CALL                             R19 2 0
      305 GETUPVAL                         R20 0
      306 GETTABLEKS                       R19 R20 K24 ["createElement"]
      308 GETUPVAL                         R20 10
      309 DUPTABLE                         R21 K34 [{"Position", "positionerRef", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      310 GETTABLEKS                       R22 R0 K25 ["Position"]
      312 SETTABLEKS                       R22 R21 K25 ["Position"]
      314 GETTABLEKS                       R22 R5 K35 ["setPositionerFrame"]
      316 SETTABLEKS                       R22 R21 K26 ["positionerRef"]
      318 GETUPVAL                         R24 11
      319 GETTABLEKS                       R23 R24 K36 ["NODEVIEW_ZINDEX"]
      321 GETTABLEKS                       R22 R23 K37 ["Anchors"]
      323 SETTABLEKS                       R22 R21 K27 ["ZIndex"]
      325 SETTABLEKS                       R14 R21 K28 ["Color3"]
      327 SETTABLEKS                       R15 R21 K29 ["OutlineColor3"]
      329 LOADN                            R22 1
      330 SETTABLEKS                       R22 R21 K30 ["OutlineThickness"]
      332 SETTABLEKS                       R16 R21 K31 ["OnDragStart"]
      334 GETTABLEKS                       R22 R4 K38 ["onDragMoved"]
      336 SETTABLEKS                       R22 R21 K32 ["OnDragMoved"]
      338 GETTABLEKS                       R22 R4 K39 ["onDragEnded"]
      340 SETTABLEKS                       R22 R21 K33 ["OnDragEnded"]
      342 DUPTABLE                         R22 K41 [{"DebugMarker"}]
      343 GETUPVAL                         R24 0
      344 GETTABLEKS                       R23 R24 K24 ["createElement"]
      346 GETUPVAL                         R25 3
      347 GETTABLEKS                       R24 R25 K42 ["View"]
      349 DUPTABLE                         R25 K46 [{"tag", "testId", "ref"}]
      350 LOADK                            R26 K47 ["size-full"]
      351 SETTABLEKS                       R26 R25 K43 ["tag"]
      353 LOADK                            R26 K48 ["RenderedCompositorPin-DebugMarker"]
      354 SETTABLEKS                       R26 R25 K44 ["testId"]
      356 SETTABLEKS                       R18 R25 K45 ["ref"]
      358 CALL                             R23 2 1
      359 SETTABLEKS                       R23 R22 K40 ["DebugMarker"]
      361 CALL                             R19 3 -1
      362 RETURN                           R19 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R4 K10 ["CompositorPin"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R7 R0 K8 ["Components"]
       27 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       29 GETTABLEKS                       R5 R6 K11 ["CompositorNodes"]
       31 GETTABLEKS                       R4 R5 K12 ["CompositorStateUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Util"]
       38 GETTABLEKS                       R5 R6 K14 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Parent"]
       45 GETTABLEKS                       R6 R7 K16 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       52 GETTABLEKS                       R7 R8 K17 ["NativeGraphContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       59 GETTABLEKS                       R9 R10 K17 ["NativeGraphContext"]
       61 GETTABLEKS                       R8 R9 K18 ["NativeGraphUtils"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K19 ["NodeViewTypes"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R11 R0 K15 ["Parent"]
       73 GETTABLEKS                       R10 R11 K20 ["React"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R12 R0 K15 ["Parent"]
       80 GETTABLEKS                       R11 R12 K21 ["Signals"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R14 R0 K13 ["Util"]
       87 GETTABLEKS                       R13 R14 K21 ["Signals"]
       89 GETTABLEKS                       R12 R13 K22 ["SignalsInstanceUtils"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R14 R0 K15 ["Parent"]
       96 GETTABLEKS                       R13 R14 K23 ["SignalsReact"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R16 R0 K13 ["Util"]
      103 GETTABLEKS                       R15 R16 K21 ["Signals"]
      105 GETTABLEKS                       R14 R15 K24 ["TypedInstanceSignals"]
      107 CALL                             R13 1 1
      108 DUPCLOSURE                       R14 K25 [PROTO_6]
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R13
      113 DUPCLOSURE                       R15 K26 [PROTO_7]
      114 DUPCLOSURE                       R16 K27 [PROTO_16]
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R10
      118 DUPCLOSURE                       R17 K28 [PROTO_35]
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R4
      131 RETURN                           R17 1
