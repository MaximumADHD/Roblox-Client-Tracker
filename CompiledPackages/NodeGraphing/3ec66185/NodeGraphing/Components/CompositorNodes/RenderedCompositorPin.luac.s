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
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 GETTABLEKS                       R2 R0 K1 ["size"]
        6 GETTABLEKS                       R2 R2 K2 ["X"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["of"]
       13 LOADN                            R2 200
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["absoluteSizeHook"]
        4 GETTABLEKS                       R1 R1 K1 ["observeRelativeAbsolutePosition"]
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 1
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+28]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIFEQKNIL                     R1 ; [+21]
        8 LOADB                            R2 0
        9 GETTABLEKS                       R4 R1 K0 ["X"]
       11 FASTCALL1                        MATH_ABS R4 ; [+2]
       12 GETIMPORT                        R3 K3 [math.abs]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKN                    R3 K4 [0] ; [+11]
       17 GETTABLEKS                       R4 R1 K5 ["Y"]
       19 FASTCALL1                        MATH_ABS R4 ; [+2]
       20 GETIMPORT                        R3 K3 [math.abs]
       22 CALL                             R3 1 1
       23 JUMPIFEQKN                       R3 K4 [0] ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 JUMPIFNOT                        R2 ; [+2]
       28 LOADNIL                          R2
       29 RETURN                           R2 1
       30 RETURN                           R1 1
       31 GETUPVAL                         R1 2
       32 MOVE                             R2 R0
       33 CALL                             R1 1 1
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K6 ["absoluteSizeHook"]
       37 GETTABLEKS                       R2 R2 K7 ["observeAbsolutePosition"]
       39 MOVE                             R3 R0
       40 CALL                             R2 1 1
       41 GETUPVAL                         R3 4
       42 GETTABLEKS                       R3 R3 K7 ["observeAbsolutePosition"]
       44 MOVE                             R4 R0
       45 CALL                             R3 1 1
       46 GETUPVAL                         R4 3
       47 GETTABLEKS                       R4 R4 K6 ["absoluteSizeHook"]
       49 GETTABLEKS                       R4 R4 K8 ["observeAbsoluteSize"]
       51 MOVE                             R5 R0
       52 CALL                             R4 1 1
       53 JUMPIFEQKNIL                     R1 ; [+67]
       55 JUMPIFEQKNIL                     R2 ; [+65]
       57 LOADB                            R5 0
       58 GETTABLEKS                       R7 R2 K0 ["X"]
       60 FASTCALL1                        MATH_ABS R7 ; [+2]
       61 GETIMPORT                        R6 K3 [math.abs]
       63 CALL                             R6 1 1
       64 JUMPIFNOTEQKN                    R6 K4 [0] ; [+11]
       66 GETTABLEKS                       R7 R2 K5 ["Y"]
       68 FASTCALL1                        MATH_ABS R7 ; [+2]
       69 GETIMPORT                        R6 K3 [math.abs]
       71 CALL                             R6 1 1
       72 JUMPIFEQKN                       R6 K4 [0] ; [+2]
       74 LOADB                            R5 0 +1
       75 LOADB                            R5 1
       76 JUMPIF                           R5 ; [+44]
       77 JUMPIFEQKNIL                     R3 ; [+43]
       79 LOADB                            R5 0
       80 GETTABLEKS                       R7 R3 K0 ["X"]
       82 FASTCALL1                        MATH_ABS R7 ; [+2]
       83 GETIMPORT                        R6 K3 [math.abs]
       85 CALL                             R6 1 1
       86 JUMPIFNOTEQKN                    R6 K4 [0] ; [+11]
       88 GETTABLEKS                       R7 R3 K5 ["Y"]
       90 FASTCALL1                        MATH_ABS R7 ; [+2]
       91 GETIMPORT                        R6 K3 [math.abs]
       93 CALL                             R6 1 1
       94 JUMPIFEQKN                       R6 K4 [0] ; [+2]
       96 LOADB                            R5 0 +1
       97 LOADB                            R5 1
       98 JUMPIF                           R5 ; [+22]
       99 JUMPIFEQKNIL                     R4 ; [+21]
      101 LOADB                            R5 0
      102 GETTABLEKS                       R7 R4 K0 ["X"]
      104 FASTCALL1                        MATH_ABS R7 ; [+2]
      105 GETIMPORT                        R6 K3 [math.abs]
      107 CALL                             R6 1 1
      108 JUMPIFNOTEQKN                    R6 K4 [0] ; [+11]
      110 GETTABLEKS                       R7 R4 K5 ["Y"]
      112 FASTCALL1                        MATH_ABS R7 ; [+2]
      113 GETIMPORT                        R6 K3 [math.abs]
      115 CALL                             R6 1 1
      116 JUMPIFEQKN                       R6 K4 [0] ; [+2]
      118 LOADB                            R5 0 +1
      119 LOADB                            R5 1
      120 JUMPIFNOT                        R5 ; [+2]
      121 LOADNIL                          R5
      122 RETURN                           R5 1
      123 SUB                              R5 R3 R2
      124 DIV                              R6 R5 R4
      125 GETTABLEKS                       R8 R4 K0 ["X"]
      127 GETTABLEKS                       R9 R4 K5 ["Y"]
      129 DIV                              R7 R8 R9
      130 GETTABLEKS                       R9 R1 K9 ["size"]
      132 GETTABLEKS                       R9 R9 K0 ["X"]
      134 DIV                              R8 R9 R7
      135 GETIMPORT                        R9 K12 [Vector2.new]
      137 GETTABLEKS                       R11 R6 K0 ["X"]
      139 GETTABLEKS                       R12 R1 K9 ["size"]
      141 GETTABLEKS                       R12 R12 K0 ["X"]
      143 MUL                              R10 R11 R12
      144 GETTABLEKS                       R13 R6 K5 ["Y"]
      146 MINUS                            R12 R13
      147 MUL                              R11 R12 R8
      148 CALL                             R9 2 1
      149 GETIMPORT                        R10 K12 [Vector2.new]
      151 GETTABLEKS                       R12 R9 K0 ["X"]
      153 FASTCALL1                        MATH_ROUND R12 ; [+2]
      154 GETIMPORT                        R11 K14 [math.round]
      156 CALL                             R11 1 1
      157 GETTABLEKS                       R13 R9 K5 ["Y"]
      159 FASTCALL1                        MATH_ROUND R13 ; [+2]
      160 GETIMPORT                        R12 K14 [math.round]
      162 CALL                             R12 1 1
      163 CALL                             R10 2 1
      164 LOADB                            R11 0
      165 GETTABLEKS                       R13 R10 K0 ["X"]
      167 FASTCALL1                        MATH_ABS R13 ; [+2]
      168 GETIMPORT                        R12 K3 [math.abs]
      170 CALL                             R12 1 1
      171 JUMPIFNOTEQKN                    R12 K4 [0] ; [+11]
      173 GETTABLEKS                       R13 R10 K5 ["Y"]
      175 FASTCALL1                        MATH_ABS R13 ; [+2]
      176 GETIMPORT                        R12 K3 [math.abs]
      178 CALL                             R12 1 1
      179 JUMPIFEQKN                       R12 K4 [0] ; [+2]
      181 LOADB                            R11 0 +1
      182 LOADB                            R11 1
      183 JUMPIFNOT                        R11 ; [+2]
      184 LOADNIL                          R11
      185 RETURN                           R11 1
      186 RETURN                           R10 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["switchMap"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["observeFrame"]
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["Experimental"]
       21 GETTABLEKS                       R2 R2 K4 ["createComputed"]
       23 NEWCLOSURE                       R3 P2
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U2
       29 CALL                             R2 1 1
       30 GETUPVAL                         R3 5
       31 CALL                             R3 0 1
       32 JUMPIFNOT                        R3 ; [+6]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K5 ["throttleDefer"]
       36 MOVE                             R4 R2
       37 CALL                             R3 1 -1
       38 RETURN                           R3 -1
       39 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R0 K2 [{"observeOffsetInNodeSpace", "setPositionerFrame"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeOffsetInNodeSpace"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["setFrame"]
        7 SETTABLEKS                       R1 R0 K1 ["setPositionerFrame"]
        9 RETURN                           R0 1

PROTO_6:
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
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 NEWTABLE                         R5 0 6
       21 MOVE                             R6 R0
       22 GETTABLEKS                       R7 R1 K3 ["absoluteSizeHook"]
       24 GETTABLEKS                       R7 R7 K4 ["observeAbsolutePosition"]
       26 GETUPVAL                         R9 4
       27 CALL                             R9 0 1
       28 JUMPIFNOT                        R9 ; [+5]
       29 GETTABLEKS                       R8 R1 K3 ["absoluteSizeHook"]
       31 GETTABLEKS                       R8 R8 K5 ["observeRelativeAbsolutePosition"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R8
       35 GETUPVAL                         R10 4
       36 CALL                             R10 0 1
       37 JUMPIFNOT                        R10 ; [+3]
       38 GETTABLEKS                       R9 R2 K6 ["observeFrame"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R9
       42 GETUPVAL                         R11 4
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+2]
       45 LOADNIL                          R10
       46 JUMP                             ; [+2]
       47 GETTABLEKS                       R10 R2 K4 ["observeAbsolutePosition"]
       49 GETTABLEKS                       R11 R1 K3 ["absoluteSizeHook"]
       51 GETTABLEKS                       R11 R11 K7 ["observeAbsoluteSize"]
       53 SETLIST                          R5 R6 6 [1]
       55 CALL                             R3 2 1
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       59 NEWCLOSURE                       R5 P1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R2
       62 NEWTABLE                         R6 0 2
       64 MOVE                             R7 R3
       65 GETTABLEKS                       R8 R2 K8 ["setFrame"]
       67 SETLIST                          R6 R7 2 [1]
       69 CALL                             R4 2 -1
       70 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["nodePayloadDispatcher"]
        3 GETTABLEKS                       R0 R0 K1 ["observe"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["pinNodeId"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 SETUPVAL                         R0 0
        2 JUMPIFNOT                        R1 ; [+2]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 0
        5 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R1 R0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeCurvePreviewInfo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_18:
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
       71 JUMPIFNOT                        R1 ; [+7]
       72 GETUPVAL                         R2 3
       73 CALL                             R2 0 1
       74 JUMPIFNOT                        R2 ; [+4]
       75 GETTABLEKS                       R2 R1 K12 ["outputNodeId"]
       77 JUMPIFNOTEQKNIL                  R2 ; [+7]
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R2 R2 K0 ["of"]
       82 LOADB                            R3 0
       83 CALL                             R2 1 -1
       84 RETURN                           R2 -1
       85 GETUPVAL                         R2 4
       86 GETTABLEKS                       R2 R2 K13 ["nodePayloadDispatcher"]
       88 GETTABLEKS                       R2 R2 K14 ["observe"]
       90 GETTABLEKS                       R3 R1 K12 ["outputNodeId"]
       92 CALL                             R2 1 1
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K15 ["Experimental"]
       96 GETTABLEKS                       R3 R3 K16 ["createComputed"]
       98 NEWCLOSURE                       R4 P0
       99 CAPTURE                          VAL R2
      100 CALL                             R3 1 -1
      101 RETURN                           R3 -1

PROTO_19:
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
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U0
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DEPRECATED_observeIsDisabledByNodeId"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["DEPRECATED_observeIsDisabledByNodeId"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["pinNodeId"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["of"]
       15 LOADB                            R1 0
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+3]
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+6]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["of"]
       10 LOADNIL                          R1
       11 CALL                             R0 1 1
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K3 ["nodePayloadDispatcher"]
       16 GETTABLEKS                       R0 R0 K4 ["observe"]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K5 ["outputNodeId"]
       21 CALL                             R0 1 -1
       22 RETURN                           R0 -1

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+39]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+26]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+12]
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K2 ["Color"]
       12 GETTABLEKS                       R0 R0 K3 ["Extended"]
       14 GETTABLEKS                       R0 R0 K4 ["Gray"]
       16 GETTABLEKS                       R0 R0 K5 ["Gray_600"]
       18 GETTABLEKS                       R0 R0 K6 ["Color3"]
       20 RETURN                           R0 1
       21 GETUPVAL                         R0 3
       22 GETTABLEKS                       R0 R0 K2 ["Color"]
       24 GETTABLEKS                       R0 R0 K3 ["Extended"]
       26 GETTABLEKS                       R0 R0 K7 ["Green"]
       28 GETTABLEKS                       R0 R0 K8 ["Green_800"]
       30 GETTABLEKS                       R0 R0 K6 ["Color3"]
       32 RETURN                           R0 1
       33 GETUPVAL                         R0 3
       34 GETTABLEKS                       R0 R0 K2 ["Color"]
       36 GETTABLEKS                       R0 R0 K9 ["Surface"]
       38 GETTABLEKS                       R0 R0 K10 ["Surface_100"]
       40 GETTABLEKS                       R0 R0 K6 ["Color3"]
       42 RETURN                           R0 1
       43 GETUPVAL                         R0 1
       44 JUMPIFNOT                        R0 ; [+26]
       45 GETUPVAL                         R0 4
       46 JUMPIFNOT                        R0 ; [+12]
       47 GETUPVAL                         R0 3
       48 GETTABLEKS                       R0 R0 K2 ["Color"]
       50 GETTABLEKS                       R0 R0 K3 ["Extended"]
       52 GETTABLEKS                       R0 R0 K4 ["Gray"]
       54 GETTABLEKS                       R0 R0 K11 ["Gray_800"]
       56 GETTABLEKS                       R0 R0 K6 ["Color3"]
       58 RETURN                           R0 1
       59 GETUPVAL                         R0 3
       60 GETTABLEKS                       R0 R0 K2 ["Color"]
       62 GETTABLEKS                       R0 R0 K3 ["Extended"]
       64 GETTABLEKS                       R0 R0 K4 ["Gray"]
       66 GETTABLEKS                       R0 R0 K5 ["Gray_600"]
       68 GETTABLEKS                       R0 R0 K6 ["Color3"]
       70 RETURN                           R0 1
       71 GETUPVAL                         R0 3
       72 GETTABLEKS                       R0 R0 K2 ["Color"]
       74 GETTABLEKS                       R0 R0 K9 ["Surface"]
       76 GETTABLEKS                       R0 R0 K10 ["Surface_100"]
       78 GETTABLEKS                       R0 R0 K6 ["Color3"]
       80 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+45]
        2 LOADNIL                          R0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["Color"]
        8 GETTABLEKS                       R1 R1 K1 ["Extended"]
       10 GETTABLEKS                       R1 R1 K2 ["Green"]
       12 GETTABLEKS                       R1 R1 K3 ["Green_800"]
       14 GETTABLEKS                       R0 R1 K4 ["Color3"]
       16 JUMP                             ; [+11]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K0 ["Color"]
       20 GETTABLEKS                       R1 R1 K1 ["Extended"]
       22 GETTABLEKS                       R1 R1 K5 ["Gray"]
       24 GETTABLEKS                       R1 R1 K6 ["Gray_600"]
       26 GETTABLEKS                       R0 R1 K4 ["Color3"]
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K7 ["enabled"]
       31 JUMPIFNOT                        R1 ; [+14]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K0 ["Color"]
       35 GETTABLEKS                       R3 R3 K8 ["Content"]
       37 GETTABLEKS                       R3 R3 K9 ["Emphasis"]
       39 GETTABLEKS                       R3 R3 K4 ["Color3"]
       41 LOADK                            R4 K10 [0.5]
       42 NAMECALL                         R1 R0 K11 ["Lerp"]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1
       46 RETURN                           R0 1
       47 GETUPVAL                         R0 2
       48 GETTABLEKS                       R0 R0 K0 ["Color"]
       50 GETTABLEKS                       R0 R0 K12 ["Surface"]
       52 GETTABLEKS                       R0 R0 K13 ["Surface_100"]
       54 GETTABLEKS                       R0 R0 K4 ["Color3"]
       56 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+27]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["Color"]
       10 GETTABLEKS                       R0 R0 K3 ["Extended"]
       12 GETTABLEKS                       R0 R0 K4 ["Gray"]
       14 GETTABLEKS                       R0 R0 K5 ["Gray_600"]
       16 GETTABLEKS                       R0 R0 K6 ["Color3"]
       18 RETURN                           R0 1
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K2 ["Color"]
       22 GETTABLEKS                       R0 R0 K3 ["Extended"]
       24 GETTABLEKS                       R0 R0 K7 ["Green"]
       26 GETTABLEKS                       R0 R0 K8 ["Green_800"]
       28 GETTABLEKS                       R0 R0 K6 ["Color3"]
       30 RETURN                           R0 1
       31 GETUPVAL                         R0 3
       32 JUMPIFNOT                        R0 ; [+12]
       33 GETUPVAL                         R0 2
       34 GETTABLEKS                       R0 R0 K2 ["Color"]
       36 GETTABLEKS                       R0 R0 K3 ["Extended"]
       38 GETTABLEKS                       R0 R0 K4 ["Gray"]
       40 GETTABLEKS                       R0 R0 K9 ["Gray_800"]
       42 GETTABLEKS                       R0 R0 K6 ["Color3"]
       44 RETURN                           R0 1
       45 GETUPVAL                         R0 2
       46 GETTABLEKS                       R0 R0 K2 ["Color"]
       48 GETTABLEKS                       R0 R0 K3 ["Extended"]
       50 GETTABLEKS                       R0 R0 K4 ["Gray"]
       52 GETTABLEKS                       R0 R0 K5 ["Gray_600"]
       54 GETTABLEKS                       R0 R0 K6 ["Color3"]
       56 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selected"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Color"]
        7 GETTABLEKS                       R0 R0 K2 ["Content"]
        9 GETTABLEKS                       R0 R0 K3 ["Emphasis"]
       11 GETTABLEKS                       R0 R0 K4 ["Color3"]
       13 RETURN                           R0 1
       14 LOADNIL                          R0
       15 GETUPVAL                         R1 2
       16 JUMPIFNOT                        R1 ; [+12]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K1 ["Color"]
       20 GETTABLEKS                       R1 R1 K5 ["Extended"]
       22 GETTABLEKS                       R1 R1 K6 ["Green"]
       24 GETTABLEKS                       R1 R1 K7 ["Green_800"]
       26 GETTABLEKS                       R0 R1 K4 ["Color3"]
       28 JUMP                             ; [+11]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K1 ["Color"]
       32 GETTABLEKS                       R1 R1 K5 ["Extended"]
       34 GETTABLEKS                       R1 R1 K8 ["Gray"]
       36 GETTABLEKS                       R1 R1 K9 ["Gray_600"]
       38 GETTABLEKS                       R0 R1 K4 ["Color3"]
       40 GETUPVAL                         R1 3
       41 GETTABLEKS                       R1 R1 K10 ["enabled"]
       43 JUMPIFNOT                        R1 ; [+14]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K1 ["Color"]
       47 GETTABLEKS                       R3 R3 K2 ["Content"]
       49 GETTABLEKS                       R3 R3 K3 ["Emphasis"]
       51 GETTABLEKS                       R3 R3 K4 ["Color3"]
       53 LOADK                            R4 K11 [0.5]
       54 NAMECALL                         R1 R0 K12 ["Lerp"]
       56 CALL                             R1 3 -1
       57 RETURN                           R1 -1
       58 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+43]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["onStartDrag"]
        6 DUPTABLE                         R3 K8 [{"sourcePinNodeId", "sourcePinName", "sourcePinSide", "sourcePinDataType", "sourcePinValue", "sourcePinDynamicIndex", "position"}]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K9 ["pinNodeId"]
       10 SETTABLEKS                       R4 R3 K1 ["sourcePinNodeId"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K10 ["pinName"]
       15 SETTABLEKS                       R4 R3 K2 ["sourcePinName"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K11 ["pinSide"]
       20 SETTABLEKS                       R4 R3 K3 ["sourcePinSide"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K12 ["pinDataType"]
       25 SETTABLEKS                       R4 R3 K4 ["sourcePinDataType"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K13 ["pinValue"]
       30 SETTABLEKS                       R4 R3 K5 ["sourcePinValue"]
       32 GETUPVAL                         R5 3
       33 CALL                             R5 0 1
       34 JUMPIFNOT                        R5 ; [+4]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K14 ["pinDynamicIndex"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R4
       40 SETTABLEKS                       R4 R3 K6 ["sourcePinDynamicIndex"]
       42 SETTABLEKS                       R1 R3 K7 ["position"]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R2 R2 K15 ["DEPRECATED_onStartDrag"]
       49 GETUPVAL                         R3 2
       50 GETTABLEKS                       R3 R3 K9 ["pinNodeId"]
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R4 R4 K10 ["pinName"]
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R5 R5 K12 ["pinDataType"]
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R6 R6 K11 ["pinSide"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K13 ["pinValue"]
       64 GETUPVAL                         R9 3
       65 CALL                             R9 0 1
       66 JUMPIFNOT                        R9 ; [+4]
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R8 R8 K14 ["pinDynamicIndex"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R8
       72 MOVE                             R9 R1
       73 CALL                             R2 7 0
       74 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onMouseMoved"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disable"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["DEPRECATED_onDragEnded"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_30:
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
       20 GETUPVAL                         R0 0
       21 LOADK                            R2 K5 ["IsParameterOverridden"]
       22 GETUPVAL                         R3 2
       23 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       25 CALL                             R0 3 0
       26 RETURN                           R0 0

PROTO_31:
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
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["useContext"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K5 ["Context"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["useContext"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K5 ["Context"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 4
       30 GETTABLEKS                       R4 R4 K6 ["useToggleState"]
       32 LOADB                            R5 0
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R6 R0 K7 ["pinDataType"]
       36 GETUPVAL                         R7 5
       37 GETTABLEKS                       R7 R7 K8 ["PARAMETER_NODE_CLASSNAME"]
       39 JUMPIFEQ                         R6 R7 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R6 R6 K9 ["Hooks"]
       46 GETTABLEKS                       R6 R6 K10 ["useTokens"]
       48 CALL                             R6 0 1
       49 GETUPVAL                         R7 7
       50 GETTABLEKS                       R7 R7 K11 ["useSignalState"]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K12 ["useMemo"]
       55 NEWCLOSURE                       R9 P0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R0
       58 NEWTABLE                         R10 0 2
       60 GETTABLEKS                       R11 R2 K13 ["nodePayloadDispatcher"]
       62 GETTABLEKS                       R11 R11 K14 ["observe"]
       64 GETTABLEKS                       R12 R0 K0 ["pinNodeId"]
       66 SETLIST                          R10 R11 2 [1]
       68 CALL                             R8 2 -1
       69 CALL                             R7 -1 1
       70 GETUPVAL                         R8 8
       71 GETTABLEKS                       R9 R2 K15 ["nodeRenderInfoDispatcher"]
       73 GETTABLEKS                       R9 R9 K14 ["observe"]
       75 GETTABLEKS                       R10 R0 K0 ["pinNodeId"]
       77 CALL                             R9 1 -1
       78 CALL                             R8 -1 1
       79 GETUPVAL                         R9 0
       80 GETTABLEKS                       R9 R9 K12 ["useMemo"]
       82 NEWCLOSURE                       R10 P1
       83 CAPTURE                          UPVAL U9
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U10
       86 NEWTABLE                         R11 0 5
       88 GETTABLEKS                       R12 R0 K0 ["pinNodeId"]
       90 GETTABLEKS                       R13 R0 K16 ["pinSide"]
       92 GETTABLEKS                       R14 R0 K17 ["pinName"]
       94 GETTABLEKS                       R15 R0 K18 ["pinDynamicIndex"]
       96 GETTABLEKS                       R16 R0 K7 ["pinDataType"]
       98 SETLIST                          R11 R12 5 [1]
      100 CALL                             R9 2 1
      101 GETUPVAL                         R10 0
      102 GETTABLEKS                       R10 R10 K12 ["useMemo"]
      104 NEWCLOSURE                       R11 P2
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U9
      108 NEWTABLE                         R12 0 5
      110 MOVE                             R13 R7
      111 GETTABLEKS                       R14 R0 K16 ["pinSide"]
      113 GETTABLEKS                       R15 R0 K17 ["pinName"]
      115 GETTABLEKS                       R16 R0 K18 ["pinDynamicIndex"]
      117 GETTABLEKS                       R17 R0 K7 ["pinDataType"]
      119 SETLIST                          R12 R13 5 [1]
      121 CALL                             R10 2 1
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R11 R11 K12 ["useMemo"]
      125 NEWCLOSURE                       R12 P3
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U10
      129 NEWTABLE                         R13 0 3
      131 MOVE                             R14 R10
      132 GETTABLEKS                       R15 R0 K16 ["pinSide"]
      134 GETTABLEKS                       R16 R0 K17 ["pinName"]
      136 SETLIST                          R13 R14 3 [1]
      138 CALL                             R11 2 1
      139 GETUPVAL                         R12 0
      140 GETTABLEKS                       R12 R12 K19 ["useEffect"]
      142 NEWCLOSURE                       R13 P4
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U11
      146 CAPTURE                          VAL R8
      147 CAPTURE                          UPVAL U9
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R9
      150 NEWTABLE                         R14 0 8
      152 GETTABLEKS                       R15 R0 K0 ["pinNodeId"]
      154 GETTABLEKS                       R16 R0 K7 ["pinDataType"]
      156 GETTABLEKS                       R17 R0 K17 ["pinName"]
      158 GETTABLEKS                       R18 R0 K16 ["pinSide"]
      160 MOVE                             R19 R9
      161 GETTABLEKS                       R20 R2 K13 ["nodePayloadDispatcher"]
      163 GETTABLEKS                       R20 R20 K14 ["observe"]
      165 GETTABLEKS                       R21 R8 K20 ["observeOffsetInNodeSpace"]
      167 GETTABLEKS                       R22 R1 K21 ["pushAnchor"]
      169 SETLIST                          R14 R15 8 [1]
      171 CALL                             R12 2 0
      172 GETUPVAL                         R12 7
      173 GETTABLEKS                       R12 R12 K11 ["useSignalState"]
      175 GETUPVAL                         R13 0
      176 GETTABLEKS                       R13 R13 K12 ["useMemo"]
      178 NEWCLOSURE                       R14 P5
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R9
      181 NEWTABLE                         R15 0 2
      183 MOVE                             R16 R9
      184 GETTABLEKS                       R17 R1 K22 ["observeCurvePreviewInfo"]
      186 SETLIST                          R15 R16 2 [1]
      188 CALL                             R13 2 -1
      189 CALL                             R12 -1 1
      190 GETUPVAL                         R13 7
      191 GETTABLEKS                       R13 R13 K11 ["useSignalState"]
      193 GETUPVAL                         R14 0
      194 GETTABLEKS                       R14 R14 K12 ["useMemo"]
      196 NEWCLOSURE                       R15 P6
      197 CAPTURE                          VAL R11
      198 CAPTURE                          UPVAL U12
      199 CAPTURE                          VAL R1
      200 NEWTABLE                         R16 0 2
      202 MOVE                             R17 R11
      203 GETTABLEKS                       R18 R1 K22 ["observeCurvePreviewInfo"]
      205 SETLIST                          R16 R17 2 [1]
      207 CALL                             R14 2 -1
      208 CALL                             R13 -1 1
      209 GETUPVAL                         R14 7
      210 GETTABLEKS                       R14 R14 K11 ["useSignalState"]
      212 GETUPVAL                         R15 0
      213 GETTABLEKS                       R15 R15 K12 ["useMemo"]
      215 NEWCLOSURE                       R16 P7
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U12
      219 CAPTURE                          UPVAL U9
      220 CAPTURE                          UPVAL U13
      221 NEWTABLE                         R17 0 5
      223 GETTABLEKS                       R18 R0 K0 ["pinNodeId"]
      225 GETTABLEKS                       R19 R0 K17 ["pinName"]
      227 GETTABLEKS                       R20 R0 K18 ["pinDynamicIndex"]
      229 GETTABLEKS                       R21 R0 K7 ["pinDataType"]
      231 GETTABLEKS                       R22 R2 K13 ["nodePayloadDispatcher"]
      233 GETTABLEKS                       R22 R22 K14 ["observe"]
      235 SETLIST                          R17 R18 5 [1]
      237 CALL                             R15 2 -1
      238 CALL                             R14 -1 1
      239 GETUPVAL                         R15 7
      240 GETTABLEKS                       R15 R15 K11 ["useSignalState"]
      242 GETUPVAL                         R16 0
      243 GETTABLEKS                       R16 R16 K12 ["useMemo"]
      245 NEWCLOSURE                       R17 P8
      246 CAPTURE                          VAL R2
      247 CAPTURE                          VAL R0
      248 CAPTURE                          UPVAL U12
      249 NEWTABLE                         R18 0 2
      251 GETTABLEKS                       R19 R2 K23 ["DEPRECATED_observeIsDisabledByNodeId"]
      253 GETTABLEKS                       R20 R0 K0 ["pinNodeId"]
      255 SETLIST                          R18 R19 2 [1]
      257 CALL                             R16 2 -1
      258 CALL                             R15 -1 1
      259 GETUPVAL                         R16 7
      260 GETTABLEKS                       R16 R16 K11 ["useSignalState"]
      262 GETUPVAL                         R17 0
      263 GETTABLEKS                       R17 R17 K12 ["useMemo"]
      265 NEWCLOSURE                       R18 P9
      266 CAPTURE                          VAL R0
      267 CAPTURE                          VAL R10
      268 CAPTURE                          UPVAL U12
      269 CAPTURE                          VAL R2
      270 NEWTABLE                         R19 0 3
      272 GETTABLEKS                       R20 R0 K7 ["pinDataType"]
      274 MOVE                             R21 R10
      275 GETTABLEKS                       R22 R2 K13 ["nodePayloadDispatcher"]
      277 GETTABLEKS                       R22 R22 K14 ["observe"]
      279 SETLIST                          R19 R20 3 [1]
      281 CALL                             R17 2 -1
      282 CALL                             R16 -1 1
      283 GETUPVAL                         R17 14
      284 CALL                             R17 0 1
      285 JUMPIFNOT                        R17 ; [+17]
      286 LOADB                            R17 0
      287 JUMPIFEQKNIL                     R16 ; [+15]
      289 LOADB                            R17 0
      290 GETTABLEKS                       R18 R16 K24 ["name"]
      292 JUMPIFEQKNIL                     R18 ; [+10]
      294 GETTABLEKS                       R19 R3 K25 ["parameterOverrides"]
      296 GETTABLEKS                       R20 R16 K24 ["name"]
      298 GETTABLE                         R18 R19 R20
      299 JUMPIFNOTEQKNIL                  R18 ; [+2]
      301 LOADB                            R17 0 +1
      302 LOADB                            R17 1
      303 GETUPVAL                         R18 0
      304 GETTABLEKS                       R18 R18 K12 ["useMemo"]
      306 NEWCLOSURE                       R19 P10
      307 CAPTURE                          VAL R12
      308 CAPTURE                          VAL R0
      309 CAPTURE                          VAL R13
      310 CAPTURE                          VAL R14
      311 NEWTABLE                         R20 0 6
      313 MOVE                             R21 R14
      314 MOVE                             R22 R12
      315 MOVE                             R23 R13
      316 GETTABLEKS                       R24 R0 K0 ["pinNodeId"]
      318 GETTABLEKS                       R25 R0 K17 ["pinName"]
      320 GETTABLEKS                       R26 R0 K16 ["pinSide"]
      322 SETLIST                          R20 R21 6 [1]
      324 CALL                             R18 2 1
      325 GETUPVAL                         R19 0
      326 GETTABLEKS                       R19 R19 K12 ["useMemo"]
      328 NEWCLOSURE                       R20 P11
      329 CAPTURE                          VAL R0
      330 CAPTURE                          VAL R18
      331 CAPTURE                          VAL R17
      332 CAPTURE                          VAL R6
      333 CAPTURE                          VAL R15
      334 NEWTABLE                         R21 0 5
      336 MOVE                             R22 R18
      337 GETTABLEKS                       R23 R0 K7 ["pinDataType"]
      339 MOVE                             R24 R6
      340 MOVE                             R25 R15
      341 MOVE                             R26 R17
      342 SETLIST                          R21 R22 5 [1]
      344 CALL                             R19 2 1
      345 GETUPVAL                         R20 0
      346 GETTABLEKS                       R20 R20 K12 ["useMemo"]
      348 NEWCLOSURE                       R21 P12
      349 CAPTURE                          VAL R18
      350 CAPTURE                          VAL R5
      351 CAPTURE                          VAL R6
      352 CAPTURE                          VAL R4
      353 NEWTABLE                         R22 0 4
      355 MOVE                             R23 R18
      356 MOVE                             R24 R5
      357 GETTABLEKS                       R25 R4 K26 ["enabled"]
      359 MOVE                             R26 R6
      360 SETLIST                          R22 R23 4 [1]
      362 CALL                             R20 2 1
      363 GETUPVAL                         R21 0
      364 GETTABLEKS                       R21 R21 K12 ["useMemo"]
      366 NEWCLOSURE                       R22 P13
      367 CAPTURE                          VAL R0
      368 CAPTURE                          VAL R17
      369 CAPTURE                          VAL R6
      370 CAPTURE                          VAL R15
      371 NEWTABLE                         R23 0 4
      373 GETTABLEKS                       R24 R0 K7 ["pinDataType"]
      375 MOVE                             R25 R6
      376 MOVE                             R26 R15
      377 MOVE                             R27 R17
      378 SETLIST                          R23 R24 4 [1]
      380 CALL                             R21 2 1
      381 GETUPVAL                         R22 0
      382 GETTABLEKS                       R22 R22 K12 ["useMemo"]
      384 NEWCLOSURE                       R23 P14
      385 CAPTURE                          VAL R0
      386 CAPTURE                          VAL R6
      387 CAPTURE                          VAL R5
      388 CAPTURE                          VAL R4
      389 NEWTABLE                         R24 0 4
      391 MOVE                             R25 R5
      392 GETTABLEKS                       R26 R4 K26 ["enabled"]
      394 GETTABLEKS                       R27 R0 K27 ["selected"]
      396 MOVE                             R28 R6
      397 SETLIST                          R24 R25 4 [1]
      399 CALL                             R22 2 1
      400 GETUPVAL                         R23 0
      401 GETTABLEKS                       R23 R23 K28 ["useCallback"]
      403 NEWCLOSURE                       R24 P15
      404 CAPTURE                          UPVAL U15
      405 CAPTURE                          VAL R1
      406 CAPTURE                          VAL R0
      407 CAPTURE                          UPVAL U9
      408 NEWTABLE                         R25 0 7
      410 GETTABLEKS                       R26 R0 K0 ["pinNodeId"]
      412 GETTABLEKS                       R27 R0 K16 ["pinSide"]
      414 GETTABLEKS                       R28 R0 K7 ["pinDataType"]
      416 GETTABLEKS                       R29 R0 K17 ["pinName"]
      418 GETTABLEKS                       R30 R0 K29 ["pinValue"]
      420 GETTABLEKS                       R31 R0 K18 ["pinDynamicIndex"]
      422 GETTABLEKS                       R32 R1 K30 ["onStartDrag"]
      424 SETLIST                          R25 R26 7 [1]
      426 CALL                             R23 2 1
      427 GETUPVAL                         R25 16
      428 JUMPIFNOT                        R25 ; [+7]
      429 GETUPVAL                         R24 4
      430 GETTABLEKS                       R24 R24 K31 ["useEventCallback"]
      432 NEWCLOSURE                       R25 P16
      433 CAPTURE                          VAL R1
      434 CALL                             R24 1 1
      435 JUMP                             ; [+1]
      436 LOADNIL                          R24
      437 GETUPVAL                         R25 4
      438 GETTABLEKS                       R25 R25 K31 ["useEventCallback"]
      440 NEWCLOSURE                       R26 P17
      441 CAPTURE                          VAL R4
      442 CAPTURE                          UPVAL U16
      443 CAPTURE                          VAL R1
      444 CALL                             R25 1 1
      445 GETUPVAL                         R26 0
      446 GETTABLEKS                       R26 R26 K32 ["useState"]
      448 LOADNIL                          R27
      449 CALL                             R26 1 2
      450 GETUPVAL                         R28 0
      451 GETTABLEKS                       R28 R28 K19 ["useEffect"]
      453 NEWCLOSURE                       R29 P18
      454 CAPTURE                          VAL R26
      455 CAPTURE                          VAL R0
      456 CAPTURE                          VAL R17
      457 NEWTABLE                         R30 0 4
      459 MOVE                             R31 R26
      460 GETTABLEKS                       R32 R0 K17 ["pinName"]
      462 GETTABLEKS                       R33 R0 K33 ["debugDisplayName"]
      464 MOVE                             R34 R17
      465 SETLIST                          R30 R31 4 [1]
      467 CALL                             R28 2 0
      468 GETUPVAL                         R28 0
      469 GETTABLEKS                       R28 R28 K34 ["createElement"]
      471 GETUPVAL                         R29 17
      472 DUPTABLE                         R30 K48 [{["Position"], ["positionerRef"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 1, ["CanDrag"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"], ["OnHoverStart"], ["OnHoverEnded"]}]
      473 GETTABLEKS                       R31 R0 K35 ["Position"]
      475 SETTABLEKS                       R31 R30 K35 ["Position"]
      477 GETTABLEKS                       R31 R8 K49 ["setPositionerFrame"]
      479 SETTABLEKS                       R31 R30 K36 ["positionerRef"]
      481 GETUPVAL                         R31 5
      482 GETTABLEKS                       R31 R31 K50 ["NODEVIEW_ZINDEX"]
      484 GETTABLEKS                       R31 R31 K51 ["Anchors"]
      486 SETTABLEKS                       R31 R30 K37 ["ZIndex"]
      488 GETUPVAL                         R32 18
      489 CALL                             R32 0 1
      490 JUMPIFNOT                        R32 ; [+2]
      491 MOVE                             R31 R20
      492 JUMP                             ; [+1]
      493 MOVE                             R31 R19
      494 SETTABLEKS                       R31 R30 K38 ["Color3"]
      496 GETUPVAL                         R32 18
      497 CALL                             R32 0 1
      498 JUMPIFNOT                        R32 ; [+2]
      499 MOVE                             R31 R22
      500 JUMP                             ; [+1]
      501 MOVE                             R31 R21
      502 SETTABLEKS                       R31 R30 K39 ["OutlineColor3"]
      504 GETUPVAL                         R32 19
      505 CALL                             R32 0 1
      506 JUMPIFNOT                        R32 ; [+4]
      507 GETTABLEKS                       R32 R2 K52 ["isReadonly"]
      509 NOT                              R31 R32
      510 JUMP                             ; [+1]
      511 LOADNIL                          R31
      512 SETTABLEKS                       R31 R30 K42 ["CanDrag"]
      514 SETTABLEKS                       R23 R30 K43 ["OnDragStart"]
      516 GETUPVAL                         R32 16
      517 JUMPIFNOT                        R32 ; [+2]
      518 MOVE                             R31 R24
      519 JUMP                             ; [+2]
      520 GETTABLEKS                       R31 R1 K53 ["DEPRECATED_onDragMoved"]
      522 SETTABLEKS                       R31 R30 K44 ["OnDragMoved"]
      524 GETUPVAL                         R32 18
      525 CALL                             R32 0 1
      526 JUMPIFNOT                        R32 ; [+2]
      527 MOVE                             R31 R25
      528 JUMP                             ; [+6]
      529 GETUPVAL                         R32 16
      530 JUMPIFNOT                        R32 ; [+2]
      531 LOADNIL                          R31
      532 JUMP                             ; [+2]
      533 GETTABLEKS                       R31 R1 K54 ["DEPRECATED_onDragEnded"]
      535 SETTABLEKS                       R31 R30 K45 ["OnDragEnded"]
      537 GETUPVAL                         R32 18
      538 CALL                             R32 0 1
      539 JUMPIFNOT                        R32 ; [+3]
      540 GETTABLEKS                       R31 R4 K55 ["enable"]
      542 JUMP                             ; [+1]
      543 LOADNIL                          R31
      544 SETTABLEKS                       R31 R30 K46 ["OnHoverStart"]
      546 GETUPVAL                         R32 18
      547 CALL                             R32 0 1
      548 JUMPIFNOT                        R32 ; [+3]
      549 GETTABLEKS                       R31 R4 K56 ["disable"]
      551 JUMP                             ; [+1]
      552 LOADNIL                          R31
      553 SETTABLEKS                       R31 R30 K47 ["OnHoverEnded"]
      555 DUPTABLE                         R31 K58 [{"DebugMarker"}]
      556 GETUPVAL                         R32 0
      557 GETTABLEKS                       R32 R32 K34 ["createElement"]
      559 GETUPVAL                         R33 6
      560 GETTABLEKS                       R33 R33 K59 ["View"]
      562 DUPTABLE                         R34 K65 [{["tag"] = "size-full", ["testId"] = "RenderedCompositorPin-DebugMarker", ["ref"]}]
      563 SETTABLEKS                       R27 R34 K64 ["ref"]
      565 CALL                             R32 2 1
      566 SETTABLEKS                       R32 R31 K57 ["DebugMarker"]
      568 CALL                             R28 3 -1
      569 RETURN                           R28 -1

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
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["FFlagAnimGraphUI_ClickTogglePins"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["Foundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K16 ["GraphContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K17 ["NodeViewTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Components"]
       65 GETTABLEKS                       R10 R10 K18 ["ParameterOverrideContext"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K14 ["Parent"]
       72 GETTABLEKS                       R11 R11 K19 ["React"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K14 ["Parent"]
       79 GETTABLEKS                       R12 R12 K20 ["ReactUtils"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K14 ["Parent"]
       86 GETTABLEKS                       R13 R13 K21 ["Signals"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K14 ["Parent"]
       93 GETTABLEKS                       R14 R14 K22 ["SignalsReact"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K14 ["Parent"]
      100 GETTABLEKS                       R15 R15 K23 ["SignalsUtils"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K12 ["Flags"]
      107 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUIGrayOutOverriddenParameterNoodles"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K12 ["Flags"]
      114 GETTABLEKS                       R17 R17 K25 ["getFFlagAnimGraphUIPinStates"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K12 ["Flags"]
      121 GETTABLEKS                       R18 R18 K26 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K12 ["Flags"]
      128 GETTABLEKS                       R19 R19 K27 ["getFFlagAnimGraphUI_PerfFixes"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K12 ["Flags"]
      135 GETTABLEKS                       R20 R20 K28 ["getFFlagAnimGraphUI_PerfFixes_Dragging"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K29 ["Util"]
      142 GETTABLEKS                       R21 R21 K30 ["getPinAnchorKey"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K31 ["Hooks"]
      149 GETTABLEKS                       R22 R22 K32 ["useAbsoluteSize"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K12 ["Flags"]
      156 GETTABLEKS                       R23 R23 K33 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K12 ["Flags"]
      163 GETTABLEKS                       R24 R24 K34 ["getFFlagAnimGraphUIImplementNoodleDragging"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R25 R0 K12 ["Flags"]
      170 GETTABLEKS                       R25 R25 K35 ["getFFlagAnimGraphUI_RunTimeDebug"]
      172 CALL                             R24 1 1
      173 DUPCLOSURE                       R25 K36 [PROTO_0]
      174 DUPCLOSURE                       R26 K37 [PROTO_6]
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R18
      181 DUPCLOSURE                       R27 K38 [PROTO_31]
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R4
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R26
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R24
      202 GETTABLEKS                       R28 R10 K39 ["memo"]
      204 MOVE                             R29 R27
      205 CALL                             R28 1 -1
      206 RETURN                           R28 -1
