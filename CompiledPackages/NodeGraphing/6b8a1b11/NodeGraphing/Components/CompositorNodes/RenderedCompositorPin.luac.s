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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeFadeByNodeId"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["observeFadeByNodeId"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["pinNodeId"]
       10 CALL                             R0 1 1
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["of"]
       15 LOADN                            R1 0
       16 CALL                             R0 1 1
       17 RETURN                           R0 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["pinDataType"]
        6 JUMPIFNOTEQKS                    R2 K1 ["Parameter"] ; [+39]
        8 GETUPVAL                         R2 2
        9 JUMPIFNOT                        R2 ; [+26]
       10 GETUPVAL                         R2 3
       11 JUMPIFNOT                        R2 ; [+12]
       12 GETUPVAL                         R2 4
       13 GETTABLEKS                       R2 R2 K2 ["Color"]
       15 GETTABLEKS                       R2 R2 K3 ["Extended"]
       17 GETTABLEKS                       R2 R2 K4 ["Gray"]
       19 GETTABLEKS                       R2 R2 K5 ["Gray_600"]
       21 GETTABLEKS                       R2 R2 K6 ["Color3"]
       23 RETURN                           R2 1
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K2 ["Color"]
       27 GETTABLEKS                       R2 R2 K3 ["Extended"]
       29 GETTABLEKS                       R2 R2 K7 ["Green"]
       31 GETTABLEKS                       R2 R2 K8 ["Green_800"]
       33 GETTABLEKS                       R2 R2 K6 ["Color3"]
       35 RETURN                           R2 1
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R2 R2 K2 ["Color"]
       39 GETTABLEKS                       R2 R2 K9 ["Surface"]
       41 GETTABLEKS                       R2 R2 K10 ["Surface_100"]
       43 GETTABLEKS                       R2 R2 K6 ["Color3"]
       45 RETURN                           R2 1
       46 GETUPVAL                         R2 2
       47 JUMPIFNOT                        R2 ; [+27]
       48 GETUPVAL                         R2 4
       49 GETTABLEKS                       R2 R2 K2 ["Color"]
       51 GETTABLEKS                       R2 R2 K3 ["Extended"]
       53 GETTABLEKS                       R2 R2 K4 ["Gray"]
       55 GETTABLEKS                       R2 R2 K11 ["Gray_800"]
       57 GETTABLEKS                       R2 R2 K6 ["Color3"]
       59 GETUPVAL                         R4 4
       60 GETTABLEKS                       R4 R4 K2 ["Color"]
       62 GETTABLEKS                       R4 R4 K3 ["Extended"]
       64 GETTABLEKS                       R4 R4 K4 ["Gray"]
       66 GETTABLEKS                       R4 R4 K5 ["Gray_600"]
       68 GETTABLEKS                       R4 R4 K6 ["Color3"]
       70 MOVE                             R5 R1
       71 NAMECALL                         R2 R2 K12 ["Lerp"]
       73 CALL                             R2 3 -1
       74 RETURN                           R2 -1
       75 GETUPVAL                         R2 4
       76 GETTABLEKS                       R2 R2 K2 ["Color"]
       78 GETTABLEKS                       R2 R2 K9 ["Surface"]
       80 GETTABLEKS                       R2 R2 K10 ["Surface_100"]
       82 GETTABLEKS                       R2 R2 K6 ["Color3"]
       84 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["pinDataType"]
        6 JUMPIFNOTEQKS                    R2 K1 ["Parameter"] ; [+27]
        8 GETUPVAL                         R2 2
        9 JUMPIFNOT                        R2 ; [+12]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K2 ["Color"]
       13 GETTABLEKS                       R2 R2 K3 ["Extended"]
       15 GETTABLEKS                       R2 R2 K4 ["Gray"]
       17 GETTABLEKS                       R2 R2 K5 ["Gray_600"]
       19 GETTABLEKS                       R2 R2 K6 ["Color3"]
       21 RETURN                           R2 1
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K2 ["Color"]
       25 GETTABLEKS                       R2 R2 K3 ["Extended"]
       27 GETTABLEKS                       R2 R2 K7 ["Green"]
       29 GETTABLEKS                       R2 R2 K8 ["Green_800"]
       31 GETTABLEKS                       R2 R2 K6 ["Color3"]
       33 RETURN                           R2 1
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K2 ["Color"]
       37 GETTABLEKS                       R2 R2 K3 ["Extended"]
       39 GETTABLEKS                       R2 R2 K4 ["Gray"]
       41 GETTABLEKS                       R2 R2 K9 ["Gray_800"]
       43 GETTABLEKS                       R2 R2 K6 ["Color3"]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K2 ["Color"]
       48 GETTABLEKS                       R4 R4 K3 ["Extended"]
       50 GETTABLEKS                       R4 R4 K4 ["Gray"]
       52 GETTABLEKS                       R4 R4 K5 ["Gray_600"]
       54 GETTABLEKS                       R4 R4 K6 ["Color3"]
       56 MOVE                             R5 R1
       57 NAMECALL                         R2 R2 K10 ["Lerp"]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onStartDrag"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["pinNodeId"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["pinName"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["pinDataType"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K4 ["pinSide"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K5 ["pinValue"]
       18 GETUPVAL                         R9 2
       19 CALL                             R9 0 1
       20 JUMPIFNOT                        R9 ; [+4]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K6 ["pinDynamicIndex"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R8
       26 MOVE                             R9 R1
       27 CALL                             R2 7 0
       28 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onMouseMoved"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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
       30 GETTABLEKS                       R4 R4 K6 ["Hooks"]
       32 GETTABLEKS                       R4 R4 K7 ["useTokens"]
       34 CALL                             R4 0 1
       35 GETUPVAL                         R5 5
       36 GETTABLEKS                       R5 R5 K8 ["useSignalState"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R8 0 2
       46 GETTABLEKS                       R9 R2 K10 ["nodePayloadDispatcher"]
       48 GETTABLEKS                       R9 R9 K11 ["observe"]
       50 GETTABLEKS                       R10 R0 K0 ["pinNodeId"]
       52 SETLIST                          R8 R9 2 [1]
       54 CALL                             R6 2 -1
       55 CALL                             R5 -1 1
       56 GETUPVAL                         R6 6
       57 GETTABLEKS                       R7 R2 K12 ["nodeRenderInfoDispatcher"]
       59 GETTABLEKS                       R7 R7 K11 ["observe"]
       61 GETTABLEKS                       R8 R0 K0 ["pinNodeId"]
       63 CALL                             R7 1 -1
       64 CALL                             R6 -1 1
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       68 NEWCLOSURE                       R8 P1
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U8
       72 NEWTABLE                         R9 0 5
       74 GETTABLEKS                       R10 R0 K0 ["pinNodeId"]
       76 GETTABLEKS                       R11 R0 K13 ["pinSide"]
       78 GETTABLEKS                       R12 R0 K14 ["pinName"]
       80 GETTABLEKS                       R13 R0 K15 ["pinDynamicIndex"]
       82 GETTABLEKS                       R14 R0 K16 ["pinDataType"]
       84 SETLIST                          R9 R10 5 [1]
       86 CALL                             R7 2 1
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       90 NEWCLOSURE                       R9 P2
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U7
       94 NEWTABLE                         R10 0 5
       96 MOVE                             R11 R5
       97 GETTABLEKS                       R12 R0 K13 ["pinSide"]
       99 GETTABLEKS                       R13 R0 K14 ["pinName"]
      101 GETTABLEKS                       R14 R0 K15 ["pinDynamicIndex"]
      103 GETTABLEKS                       R15 R0 K16 ["pinDataType"]
      105 SETLIST                          R10 R11 5 [1]
      107 CALL                             R8 2 1
      108 GETUPVAL                         R9 0
      109 GETTABLEKS                       R9 R9 K9 ["useMemo"]
      111 NEWCLOSURE                       R10 P3
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U8
      115 NEWTABLE                         R11 0 3
      117 MOVE                             R12 R8
      118 GETTABLEKS                       R13 R0 K13 ["pinSide"]
      120 GETTABLEKS                       R14 R0 K14 ["pinName"]
      122 SETLIST                          R11 R12 3 [1]
      124 CALL                             R9 2 1
      125 GETUPVAL                         R10 0
      126 GETTABLEKS                       R10 R10 K17 ["useEffect"]
      128 NEWCLOSURE                       R11 P4
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          VAL R6
      133 CAPTURE                          UPVAL U7
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R7
      136 NEWTABLE                         R12 0 8
      138 GETTABLEKS                       R13 R0 K0 ["pinNodeId"]
      140 GETTABLEKS                       R14 R0 K16 ["pinDataType"]
      142 GETTABLEKS                       R15 R0 K14 ["pinName"]
      144 GETTABLEKS                       R16 R0 K13 ["pinSide"]
      146 MOVE                             R17 R7
      147 GETTABLEKS                       R18 R2 K10 ["nodePayloadDispatcher"]
      149 GETTABLEKS                       R18 R18 K11 ["observe"]
      151 GETTABLEKS                       R19 R6 K18 ["observeOffsetInNodeSpace"]
      153 GETTABLEKS                       R20 R1 K19 ["pushAnchor"]
      155 SETLIST                          R12 R13 8 [1]
      157 CALL                             R10 2 0
      158 GETUPVAL                         R10 5
      159 GETTABLEKS                       R10 R10 K8 ["useSignalState"]
      161 GETUPVAL                         R11 0
      162 GETTABLEKS                       R11 R11 K9 ["useMemo"]
      164 NEWCLOSURE                       R12 P5
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R7
      167 NEWTABLE                         R13 0 2
      169 MOVE                             R14 R7
      170 GETTABLEKS                       R15 R1 K20 ["observeCurvePreviewInfo"]
      172 SETLIST                          R13 R14 2 [1]
      174 CALL                             R11 2 -1
      175 CALL                             R10 -1 1
      176 GETUPVAL                         R11 5
      177 GETTABLEKS                       R11 R11 K8 ["useSignalState"]
      179 GETUPVAL                         R12 0
      180 GETTABLEKS                       R12 R12 K9 ["useMemo"]
      182 NEWCLOSURE                       R13 P6
      183 CAPTURE                          VAL R9
      184 CAPTURE                          UPVAL U10
      185 CAPTURE                          VAL R1
      186 NEWTABLE                         R14 0 2
      188 MOVE                             R15 R9
      189 GETTABLEKS                       R16 R1 K20 ["observeCurvePreviewInfo"]
      191 SETLIST                          R14 R15 2 [1]
      193 CALL                             R12 2 -1
      194 CALL                             R11 -1 1
      195 GETUPVAL                         R12 5
      196 GETTABLEKS                       R12 R12 K8 ["useSignalState"]
      198 GETUPVAL                         R13 0
      199 GETTABLEKS                       R13 R13 K9 ["useMemo"]
      201 NEWCLOSURE                       R14 P7
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R0
      204 CAPTURE                          UPVAL U10
      205 CAPTURE                          UPVAL U7
      206 CAPTURE                          UPVAL U11
      207 NEWTABLE                         R15 0 5
      209 GETTABLEKS                       R16 R0 K0 ["pinNodeId"]
      211 GETTABLEKS                       R17 R0 K14 ["pinName"]
      213 GETTABLEKS                       R18 R0 K15 ["pinDynamicIndex"]
      215 GETTABLEKS                       R19 R0 K16 ["pinDataType"]
      217 GETTABLEKS                       R20 R2 K10 ["nodePayloadDispatcher"]
      219 GETTABLEKS                       R20 R20 K11 ["observe"]
      221 SETLIST                          R15 R16 5 [1]
      223 CALL                             R13 2 -1
      224 CALL                             R12 -1 1
      225 GETUPVAL                         R14 12
      226 JUMPIFNOT                        R14 ; [+17]
      227 GETUPVAL                         R13 0
      228 GETTABLEKS                       R13 R13 K9 ["useMemo"]
      230 NEWCLOSURE                       R14 P8
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R0
      233 CAPTURE                          UPVAL U10
      234 NEWTABLE                         R15 0 2
      236 GETTABLEKS                       R16 R2 K21 ["observeFadeByNodeId"]
      238 GETTABLEKS                       R17 R0 K0 ["pinNodeId"]
      240 SETLIST                          R15 R16 2 [1]
      242 CALL                             R13 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R13
      245 GETUPVAL                         R15 12
      246 JUMPIFNOT                        R15 ; [+2]
      247 LOADB                            R14 0
      248 JUMP                             ; [+20]
      249 GETUPVAL                         R14 5
      250 GETTABLEKS                       R14 R14 K8 ["useSignalState"]
      252 GETUPVAL                         R15 0
      253 GETTABLEKS                       R15 R15 K9 ["useMemo"]
      255 NEWCLOSURE                       R16 P9
      256 CAPTURE                          VAL R2
      257 CAPTURE                          VAL R0
      258 CAPTURE                          UPVAL U10
      259 NEWTABLE                         R17 0 2
      261 GETTABLEKS                       R18 R2 K22 ["DEPRECATED_observeIsDisabledByNodeId"]
      263 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      265 SETLIST                          R17 R18 2 [1]
      267 CALL                             R15 2 -1
      268 CALL                             R14 -1 1
      269 GETUPVAL                         R15 5
      270 GETTABLEKS                       R15 R15 K8 ["useSignalState"]
      272 GETUPVAL                         R16 0
      273 GETTABLEKS                       R16 R16 K9 ["useMemo"]
      275 NEWCLOSURE                       R17 P10
      276 CAPTURE                          VAL R0
      277 CAPTURE                          VAL R8
      278 CAPTURE                          UPVAL U10
      279 CAPTURE                          VAL R2
      280 NEWTABLE                         R18 0 3
      282 GETTABLEKS                       R19 R0 K16 ["pinDataType"]
      284 MOVE                             R20 R8
      285 GETTABLEKS                       R21 R2 K10 ["nodePayloadDispatcher"]
      287 GETTABLEKS                       R21 R21 K11 ["observe"]
      289 SETLIST                          R18 R19 3 [1]
      291 CALL                             R16 2 -1
      292 CALL                             R15 -1 1
      293 GETUPVAL                         R16 13
      294 CALL                             R16 0 1
      295 JUMPIFNOT                        R16 ; [+17]
      296 LOADB                            R16 0
      297 JUMPIFEQKNIL                     R15 ; [+15]
      299 LOADB                            R16 0
      300 GETTABLEKS                       R17 R15 K23 ["name"]
      302 JUMPIFEQKNIL                     R17 ; [+10]
      304 GETTABLEKS                       R18 R3 K24 ["parameterOverrides"]
      306 GETTABLEKS                       R19 R15 K23 ["name"]
      308 GETTABLE                         R17 R18 R19
      309 JUMPIFNOTEQKNIL                  R17 ; [+2]
      311 LOADB                            R16 0 +1
      312 LOADB                            R16 1
      313 GETUPVAL                         R17 0
      314 GETTABLEKS                       R17 R17 K9 ["useMemo"]
      316 NEWCLOSURE                       R18 P11
      317 CAPTURE                          VAL R10
      318 CAPTURE                          VAL R0
      319 CAPTURE                          VAL R11
      320 CAPTURE                          VAL R12
      321 NEWTABLE                         R19 0 6
      323 MOVE                             R20 R12
      324 MOVE                             R21 R10
      325 MOVE                             R22 R11
      326 GETTABLEKS                       R23 R0 K0 ["pinNodeId"]
      328 GETTABLEKS                       R24 R0 K14 ["pinName"]
      330 GETTABLEKS                       R25 R0 K13 ["pinSide"]
      332 SETLIST                          R19 R20 6 [1]
      334 CALL                             R17 2 1
      335 GETUPVAL                         R19 12
      336 JUMPIFNOT                        R19 ; [+26]
      337 GETUPVAL                         R18 5
      338 GETTABLEKS                       R18 R18 K25 ["useSignalBinding"]
      340 GETUPVAL                         R19 0
      341 GETTABLEKS                       R19 R19 K9 ["useMemo"]
      343 NEWCLOSURE                       R20 P12
      344 CAPTURE                          UPVAL U9
      345 CAPTURE                          VAL R13
      346 CAPTURE                          VAL R0
      347 CAPTURE                          VAL R17
      348 CAPTURE                          VAL R16
      349 CAPTURE                          VAL R4
      350 NEWTABLE                         R21 0 5
      352 MOVE                             R22 R13
      353 GETTABLEKS                       R23 R0 K16 ["pinDataType"]
      355 MOVE                             R24 R17
      356 MOVE                             R25 R16
      357 MOVE                             R26 R4
      358 SETLIST                          R21 R22 5 [1]
      360 CALL                             R19 2 -1
      361 CALL                             R18 -1 1
      362 JUMP                             ; [+1]
      363 LOADNIL                          R18
      364 GETUPVAL                         R20 12
      365 JUMPIFNOT                        R20 ; [+2]
      366 LOADNIL                          R19
      367 JUMP                             ; [+20]
      368 GETUPVAL                         R19 0
      369 GETTABLEKS                       R19 R19 K9 ["useMemo"]
      371 NEWCLOSURE                       R20 P13
      372 CAPTURE                          VAL R0
      373 CAPTURE                          VAL R17
      374 CAPTURE                          VAL R16
      375 CAPTURE                          VAL R4
      376 CAPTURE                          VAL R14
      377 NEWTABLE                         R21 0 5
      379 MOVE                             R22 R17
      380 GETTABLEKS                       R23 R0 K16 ["pinDataType"]
      382 MOVE                             R24 R4
      383 MOVE                             R25 R14
      384 MOVE                             R26 R16
      385 SETLIST                          R21 R22 5 [1]
      387 CALL                             R19 2 1
      388 GETUPVAL                         R21 12
      389 JUMPIFNOT                        R21 ; [+25]
      390 GETUPVAL                         R20 5
      391 GETTABLEKS                       R20 R20 K25 ["useSignalBinding"]
      393 GETUPVAL                         R21 0
      394 GETTABLEKS                       R21 R21 K9 ["useMemo"]
      396 NEWCLOSURE                       R22 P14
      397 CAPTURE                          UPVAL U9
      398 CAPTURE                          VAL R13
      399 CAPTURE                          VAL R0
      400 CAPTURE                          VAL R16
      401 CAPTURE                          VAL R4
      402 NEWTABLE                         R23 0 5
      404 MOVE                             R24 R13
      405 GETTABLEKS                       R25 R0 K16 ["pinDataType"]
      407 MOVE                             R26 R17
      408 MOVE                             R27 R16
      409 MOVE                             R28 R4
      410 SETLIST                          R23 R24 5 [1]
      412 CALL                             R21 2 -1
      413 CALL                             R20 -1 1
      414 JUMP                             ; [+1]
      415 LOADNIL                          R20
      416 GETUPVAL                         R22 12
      417 JUMPIFNOT                        R22 ; [+2]
      418 LOADNIL                          R21
      419 JUMP                             ; [+18]
      420 GETUPVAL                         R21 0
      421 GETTABLEKS                       R21 R21 K9 ["useMemo"]
      423 NEWCLOSURE                       R22 P15
      424 CAPTURE                          VAL R0
      425 CAPTURE                          VAL R16
      426 CAPTURE                          VAL R4
      427 CAPTURE                          VAL R14
      428 NEWTABLE                         R23 0 4
      430 GETTABLEKS                       R24 R0 K16 ["pinDataType"]
      432 MOVE                             R25 R4
      433 MOVE                             R26 R14
      434 MOVE                             R27 R16
      435 SETLIST                          R23 R24 4 [1]
      437 CALL                             R21 2 1
      438 GETUPVAL                         R22 0
      439 GETTABLEKS                       R22 R22 K26 ["useCallback"]
      441 NEWCLOSURE                       R23 P16
      442 CAPTURE                          VAL R1
      443 CAPTURE                          VAL R0
      444 CAPTURE                          UPVAL U7
      445 NEWTABLE                         R24 0 7
      447 GETTABLEKS                       R25 R0 K0 ["pinNodeId"]
      449 GETTABLEKS                       R26 R0 K13 ["pinSide"]
      451 GETTABLEKS                       R27 R0 K16 ["pinDataType"]
      453 GETTABLEKS                       R28 R0 K14 ["pinName"]
      455 GETTABLEKS                       R29 R0 K27 ["pinValue"]
      457 GETTABLEKS                       R30 R0 K15 ["pinDynamicIndex"]
      459 GETTABLEKS                       R31 R1 K28 ["onStartDrag"]
      461 SETLIST                          R24 R25 7 [1]
      463 CALL                             R22 2 1
      464 GETUPVAL                         R24 14
      465 JUMPIFNOT                        R24 ; [+7]
      466 GETUPVAL                         R23 15
      467 GETTABLEKS                       R23 R23 K29 ["useEventCallback"]
      469 NEWCLOSURE                       R24 P17
      470 CAPTURE                          VAL R1
      471 CALL                             R23 1 1
      472 JUMP                             ; [+1]
      473 LOADNIL                          R23
      474 GETUPVAL                         R24 0
      475 GETTABLEKS                       R24 R24 K30 ["useState"]
      477 LOADNIL                          R25
      478 CALL                             R24 1 2
      479 GETUPVAL                         R26 0
      480 GETTABLEKS                       R26 R26 K17 ["useEffect"]
      482 NEWCLOSURE                       R27 P18
      483 CAPTURE                          VAL R24
      484 CAPTURE                          VAL R0
      485 CAPTURE                          VAL R16
      486 NEWTABLE                         R28 0 4
      488 MOVE                             R29 R24
      489 GETTABLEKS                       R30 R0 K14 ["pinName"]
      491 GETTABLEKS                       R31 R0 K31 ["debugDisplayName"]
      493 MOVE                             R32 R16
      494 SETLIST                          R28 R29 4 [1]
      496 CALL                             R26 2 0
      497 GETUPVAL                         R26 0
      498 GETTABLEKS                       R26 R26 K32 ["createElement"]
      500 GETUPVAL                         R27 16
      501 DUPTABLE                         R28 K43 [{["Position"], ["positionerRef"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 1, ["OnDragStart"], ["OnDragMoved"], ["DEPRECATED_OnDragEnded"]}]
      502 GETTABLEKS                       R29 R0 K33 ["Position"]
      504 SETTABLEKS                       R29 R28 K33 ["Position"]
      506 GETTABLEKS                       R29 R6 K44 ["setPositionerFrame"]
      508 SETTABLEKS                       R29 R28 K34 ["positionerRef"]
      510 GETUPVAL                         R29 17
      511 GETTABLEKS                       R29 R29 K45 ["NODEVIEW_ZINDEX"]
      513 GETTABLEKS                       R29 R29 K46 ["Anchors"]
      515 SETTABLEKS                       R29 R28 K35 ["ZIndex"]
      517 GETUPVAL                         R30 12
      518 JUMPIFNOT                        R30 ; [+2]
      519 MOVE                             R29 R18
      520 JUMP                             ; [+1]
      521 MOVE                             R29 R19
      522 SETTABLEKS                       R29 R28 K36 ["Color3"]
      524 GETUPVAL                         R30 12
      525 JUMPIFNOT                        R30 ; [+2]
      526 MOVE                             R29 R20
      527 JUMP                             ; [+1]
      528 MOVE                             R29 R21
      529 SETTABLEKS                       R29 R28 K37 ["OutlineColor3"]
      531 SETTABLEKS                       R22 R28 K40 ["OnDragStart"]
      533 GETUPVAL                         R30 14
      534 JUMPIFNOT                        R30 ; [+2]
      535 MOVE                             R29 R23
      536 JUMP                             ; [+2]
      537 GETTABLEKS                       R29 R1 K47 ["DEPRECATED_onDragMoved"]
      539 SETTABLEKS                       R29 R28 K41 ["OnDragMoved"]
      541 GETUPVAL                         R30 14
      542 JUMPIFNOT                        R30 ; [+2]
      543 LOADNIL                          R29
      544 JUMP                             ; [+2]
      545 GETTABLEKS                       R29 R1 K48 ["DEPRECATED_onDragEnded"]
      547 SETTABLEKS                       R29 R28 K42 ["DEPRECATED_OnDragEnded"]
      549 DUPTABLE                         R29 K50 [{"DebugMarker"}]
      550 GETUPVAL                         R30 0
      551 GETTABLEKS                       R30 R30 K32 ["createElement"]
      553 GETUPVAL                         R31 4
      554 GETTABLEKS                       R31 R31 K51 ["View"]
      556 DUPTABLE                         R32 K57 [{["tag"] = "size-full", ["testId"] = "RenderedCompositorPin-DebugMarker", ["ref"]}]
      557 SETTABLEKS                       R25 R32 K56 ["ref"]
      559 CALL                             R30 2 1
      560 SETTABLEKS                       R30 R29 K49 ["DebugMarker"]
      562 CALL                             R26 3 -1
      563 RETURN                           R26 -1

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
       44 GETTABLEKS                       R7 R0 K12 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["FFlagAnimGraphUI_NoodleColorLerping"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Parent"]
       53 GETTABLEKS                       R8 R8 K16 ["Foundation"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R9 K17 ["GraphContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K18 ["NodeViewTypes"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K6 ["Components"]
       72 GETTABLEKS                       R11 R11 K19 ["ParameterOverrideContext"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K15 ["Parent"]
       79 GETTABLEKS                       R12 R12 K20 ["React"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K15 ["Parent"]
       86 GETTABLEKS                       R13 R13 K21 ["ReactUtils"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K15 ["Parent"]
       93 GETTABLEKS                       R14 R14 K22 ["Signals"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K15 ["Parent"]
      100 GETTABLEKS                       R15 R15 K23 ["SignalsReact"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K15 ["Parent"]
      107 GETTABLEKS                       R16 R16 K24 ["SignalsUtils"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K12 ["Flags"]
      114 GETTABLEKS                       R17 R17 K25 ["getFFlagAnimGraphUIGrayOutOverriddenParameterNoodles"]
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
      159 DUPCLOSURE                       R23 K34 [PROTO_0]
      160 DUPCLOSURE                       R24 K35 [PROTO_6]
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R18
      167 DUPCLOSURE                       R25 K36 [PROTO_33]
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R4
      186 GETTABLEKS                       R26 R11 K37 ["memo"]
      188 MOVE                             R27 R25
      189 CALL                             R26 1 -1
      190 RETURN                           R26 -1
