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
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K15 ["Experimental"]
       89 GETTABLEKS                       R3 R3 K16 ["createComputed"]
       91 NEWCLOSURE                       R4 P0
       92 CAPTURE                          VAL R2
       93 CALL                             R3 1 -1
       94 RETURN                           R3 -1

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
       17 CAPTURE                          UPVAL U0
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_20:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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
      206 NEWTABLE                         R15 0 5
      208 GETTABLEKS                       R16 R0 K0 ["pinNodeId"]
      210 GETTABLEKS                       R17 R0 K14 ["pinName"]
      212 GETTABLEKS                       R18 R0 K15 ["pinDynamicIndex"]
      214 GETTABLEKS                       R19 R0 K16 ["pinDataType"]
      216 GETTABLEKS                       R20 R2 K10 ["nodePayloadDispatcher"]
      218 GETTABLEKS                       R20 R20 K11 ["observe"]
      220 SETLIST                          R15 R16 5 [1]
      222 CALL                             R13 2 -1
      223 CALL                             R12 -1 1
      224 GETUPVAL                         R13 5
      225 GETTABLEKS                       R13 R13 K8 ["useSignalState"]
      227 GETUPVAL                         R14 0
      228 GETTABLEKS                       R14 R14 K9 ["useMemo"]
      230 NEWCLOSURE                       R15 P8
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R0
      233 CAPTURE                          UPVAL U10
      234 NEWTABLE                         R16 0 2
      236 GETTABLEKS                       R17 R2 K21 ["observeIsDisabledByNodeId"]
      238 GETTABLEKS                       R18 R0 K0 ["pinNodeId"]
      240 SETLIST                          R16 R17 2 [1]
      242 CALL                             R14 2 -1
      243 CALL                             R13 -1 1
      244 GETUPVAL                         R14 5
      245 GETTABLEKS                       R14 R14 K8 ["useSignalState"]
      247 GETUPVAL                         R15 0
      248 GETTABLEKS                       R15 R15 K9 ["useMemo"]
      250 NEWCLOSURE                       R16 P9
      251 CAPTURE                          VAL R0
      252 CAPTURE                          VAL R8
      253 CAPTURE                          UPVAL U10
      254 CAPTURE                          VAL R2
      255 NEWTABLE                         R17 0 3
      257 GETTABLEKS                       R18 R0 K16 ["pinDataType"]
      259 MOVE                             R19 R8
      260 GETTABLEKS                       R20 R2 K10 ["nodePayloadDispatcher"]
      262 GETTABLEKS                       R20 R20 K11 ["observe"]
      264 SETLIST                          R17 R18 3 [1]
      266 CALL                             R15 2 -1
      267 CALL                             R14 -1 1
      268 GETUPVAL                         R15 11
      269 CALL                             R15 0 1
      270 JUMPIFNOT                        R15 ; [+17]
      271 LOADB                            R15 0
      272 JUMPIFEQKNIL                     R14 ; [+15]
      274 LOADB                            R15 0
      275 GETTABLEKS                       R16 R14 K22 ["name"]
      277 JUMPIFEQKNIL                     R16 ; [+10]
      279 GETTABLEKS                       R17 R3 K23 ["parameterOverrides"]
      281 GETTABLEKS                       R18 R14 K22 ["name"]
      283 GETTABLE                         R16 R17 R18
      284 JUMPIFNOTEQKNIL                  R16 ; [+2]
      286 LOADB                            R15 0 +1
      287 LOADB                            R15 1
      288 GETUPVAL                         R16 0
      289 GETTABLEKS                       R16 R16 K9 ["useMemo"]
      291 NEWCLOSURE                       R17 P10
      292 CAPTURE                          VAL R10
      293 CAPTURE                          VAL R0
      294 CAPTURE                          VAL R11
      295 CAPTURE                          VAL R12
      296 NEWTABLE                         R18 0 6
      298 MOVE                             R19 R12
      299 MOVE                             R20 R10
      300 MOVE                             R21 R11
      301 GETTABLEKS                       R22 R0 K0 ["pinNodeId"]
      303 GETTABLEKS                       R23 R0 K14 ["pinName"]
      305 GETTABLEKS                       R24 R0 K13 ["pinSide"]
      307 SETLIST                          R18 R19 6 [1]
      309 CALL                             R16 2 1
      310 GETUPVAL                         R17 0
      311 GETTABLEKS                       R17 R17 K9 ["useMemo"]
      313 NEWCLOSURE                       R18 P11
      314 CAPTURE                          VAL R0
      315 CAPTURE                          VAL R16
      316 CAPTURE                          VAL R15
      317 CAPTURE                          VAL R4
      318 CAPTURE                          VAL R13
      319 NEWTABLE                         R19 0 5
      321 MOVE                             R20 R16
      322 GETTABLEKS                       R21 R0 K16 ["pinDataType"]
      324 MOVE                             R22 R4
      325 MOVE                             R23 R13
      326 MOVE                             R24 R15
      327 SETLIST                          R19 R20 5 [1]
      329 CALL                             R17 2 1
      330 GETUPVAL                         R18 0
      331 GETTABLEKS                       R18 R18 K9 ["useMemo"]
      333 NEWCLOSURE                       R19 P12
      334 CAPTURE                          VAL R0
      335 CAPTURE                          VAL R15
      336 CAPTURE                          VAL R4
      337 CAPTURE                          VAL R13
      338 NEWTABLE                         R20 0 4
      340 GETTABLEKS                       R21 R0 K16 ["pinDataType"]
      342 MOVE                             R22 R4
      343 MOVE                             R23 R13
      344 MOVE                             R24 R15
      345 SETLIST                          R20 R21 4 [1]
      347 CALL                             R18 2 1
      348 GETUPVAL                         R19 0
      349 GETTABLEKS                       R19 R19 K24 ["useCallback"]
      351 NEWCLOSURE                       R20 P13
      352 CAPTURE                          VAL R1
      353 CAPTURE                          VAL R0
      354 CAPTURE                          UPVAL U7
      355 NEWTABLE                         R21 0 7
      357 GETTABLEKS                       R22 R0 K0 ["pinNodeId"]
      359 GETTABLEKS                       R23 R0 K13 ["pinSide"]
      361 GETTABLEKS                       R24 R0 K16 ["pinDataType"]
      363 GETTABLEKS                       R25 R0 K14 ["pinName"]
      365 GETTABLEKS                       R26 R0 K25 ["pinValue"]
      367 GETTABLEKS                       R27 R0 K15 ["pinDynamicIndex"]
      369 GETTABLEKS                       R28 R1 K26 ["onStartDrag"]
      371 SETLIST                          R21 R22 7 [1]
      373 CALL                             R19 2 1
      374 GETUPVAL                         R20 0
      375 GETTABLEKS                       R20 R20 K27 ["useState"]
      377 LOADNIL                          R21
      378 CALL                             R20 1 2
      379 GETUPVAL                         R22 0
      380 GETTABLEKS                       R22 R22 K17 ["useEffect"]
      382 NEWCLOSURE                       R23 P14
      383 CAPTURE                          VAL R20
      384 CAPTURE                          VAL R0
      385 CAPTURE                          VAL R15
      386 NEWTABLE                         R24 0 4
      388 MOVE                             R25 R20
      389 GETTABLEKS                       R26 R0 K14 ["pinName"]
      391 GETTABLEKS                       R27 R0 K28 ["debugDisplayName"]
      393 MOVE                             R28 R15
      394 SETLIST                          R24 R25 4 [1]
      396 CALL                             R22 2 0
      397 GETUPVAL                         R22 0
      398 GETTABLEKS                       R22 R22 K29 ["createElement"]
      400 GETUPVAL                         R23 12
      401 DUPTABLE                         R24 K39 [{"Position", "positionerRef", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      402 GETTABLEKS                       R25 R0 K30 ["Position"]
      404 SETTABLEKS                       R25 R24 K30 ["Position"]
      406 GETTABLEKS                       R25 R6 K40 ["setPositionerFrame"]
      408 SETTABLEKS                       R25 R24 K31 ["positionerRef"]
      410 GETUPVAL                         R25 13
      411 GETTABLEKS                       R25 R25 K41 ["NODEVIEW_ZINDEX"]
      413 GETTABLEKS                       R25 R25 K42 ["Anchors"]
      415 SETTABLEKS                       R25 R24 K32 ["ZIndex"]
      417 SETTABLEKS                       R17 R24 K33 ["Color3"]
      419 SETTABLEKS                       R18 R24 K34 ["OutlineColor3"]
      421 LOADN                            R25 1
      422 SETTABLEKS                       R25 R24 K35 ["OutlineThickness"]
      424 SETTABLEKS                       R19 R24 K36 ["OnDragStart"]
      426 GETTABLEKS                       R25 R1 K43 ["onDragMoved"]
      428 SETTABLEKS                       R25 R24 K37 ["OnDragMoved"]
      430 GETTABLEKS                       R25 R1 K44 ["onDragEnded"]
      432 SETTABLEKS                       R25 R24 K38 ["OnDragEnded"]
      434 DUPTABLE                         R25 K46 [{"DebugMarker"}]
      435 GETUPVAL                         R26 0
      436 GETTABLEKS                       R26 R26 K29 ["createElement"]
      438 GETUPVAL                         R27 4
      439 GETTABLEKS                       R27 R27 K47 ["View"]
      441 DUPTABLE                         R28 K51 [{"tag", "testId", "ref"}]
      442 LOADK                            R29 K52 ["size-full"]
      443 SETTABLEKS                       R29 R28 K48 ["tag"]
      445 LOADK                            R29 K53 ["RenderedCompositorPin-DebugMarker"]
      446 SETTABLEKS                       R29 R28 K49 ["testId"]
      448 SETTABLEKS                       R21 R28 K50 ["ref"]
      450 CALL                             R26 2 1
      451 SETTABLEKS                       R26 R25 K45 ["DebugMarker"]
      453 CALL                             R22 3 -1
      454 RETURN                           R22 -1

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
       56 GETTABLEKS                       R9 R0 K6 ["Components"]
       58 GETTABLEKS                       R9 R9 K16 ["ParameterOverrideContext"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K12 ["Parent"]
       65 GETTABLEKS                       R10 R10 K17 ["React"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Parent"]
       72 GETTABLEKS                       R11 R11 K18 ["Signals"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Parent"]
       79 GETTABLEKS                       R12 R12 K19 ["SignalsReact"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Parent"]
       86 GETTABLEKS                       R13 R13 K20 ["SignalsUtils"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K21 ["Flags"]
       93 GETTABLEKS                       R14 R14 K22 ["getFFlagAnimGraphUIGrayOutOverriddenParameterNoodles"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K21 ["Flags"]
      100 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K21 ["Flags"]
      107 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUI_PerfFixes"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K21 ["Flags"]
      114 GETTABLEKS                       R17 R17 K25 ["getFFlagAnimGraphUI_PerfFixes_Dragging"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K26 ["Util"]
      121 GETTABLEKS                       R18 R18 K27 ["getPinAnchorKey"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K28 ["Hooks"]
      128 GETTABLEKS                       R19 R19 K29 ["useAbsoluteSize"]
      130 CALL                             R18 1 1
      131 DUPCLOSURE                       R19 K30 [PROTO_0]
      132 DUPCLOSURE                       R20 K31 [PROTO_6]
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R15
      139 DUPCLOSURE                       R21 K32 [PROTO_27]
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R4
      154 GETTABLEKS                       R22 R9 K33 ["memo"]
      156 MOVE                             R23 R21
      157 CALL                             R22 1 -1
      158 RETURN                           R22 -1
