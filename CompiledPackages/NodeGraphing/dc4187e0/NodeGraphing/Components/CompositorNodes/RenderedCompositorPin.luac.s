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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R1 K1 ["Parameter"] ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["pinDynamicIndex"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R0
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["pinNodeId"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["pinSide"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K5 ["pinName"]
       20 MOVE                             R5 R0
       21 CALL                             R1 4 -1
       22 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["pinSide"]
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+40]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["pinDynamicIndex"]
       12 JUMPIFEQKNIL                     R0 ; [+27]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K3 ["pinDataType"]
       17 JUMPIFNOTEQKS                    R0 K4 ["Parameter"] ; [+22]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["inputPinIds"]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K2 ["pinDynamicIndex"]
       25 GETTABLE                         R0 R1 R2
       26 MOVE                             R1 R0
       27 JUMPIFNOT                        R1 ; [+7]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K6 ["inputLabelPinToConnectionMap"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K7 ["pinName"]
       34 GETTABLE                         R1 R2 R3
       35 JUMPIFNOT                        R1 ; [+2]
       36 GETTABLE                         R2 R1 R0
       37 RETURN                           R2 1
       38 LOADNIL                          R2
       39 RETURN                           R2 1
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K8 ["inputPinToConnectionMap"]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K7 ["pinName"]
       46 GETTABLE                         R0 R1 R2
       47 RETURN                           R0 1
       48 GETUPVAL                         R0 1
       49 GETTABLEKS                       R0 R0 K0 ["pinSide"]
       51 JUMPIFNOTEQKS                    R0 K9 ["Output"] ; [+9]
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R1 R1 K10 ["outputPinToConnectionMap"]
       56 GETUPVAL                         R2 1
       57 GETTABLEKS                       R2 R2 K7 ["pinName"]
       59 GETTABLE                         R0 R1 R2
       60 RETURN                           R0 1
       61 LOADNIL                          R0
       62 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["pinSide"]
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+18]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K2 ["outputNodeId"]
       12 JUMPIFNOTEQKNIL                  R0 ; [+3]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K2 ["outputNodeId"]
       20 LOADK                            R2 K3 ["Output"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["outputNodePinId"]
       24 CALL                             R0 3 -1
       25 RETURN                           R0 -1
       26 GETUPVAL                         R0 1
       27 GETTABLEKS                       R0 R0 K0 ["pinSide"]
       29 JUMPIFNOTEQKS                    R0 K3 ["Output"] ; [+11]
       31 GETUPVAL                         R0 2
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K5 ["inputNodeId"]
       35 LOADK                            R2 K1 ["Input"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K6 ["inputNodePinId"]
       39 CALL                             R0 3 -1
       40 RETURN                           R0 -1
       41 LOADNIL                          R0
       42 RETURN                           R0 1

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
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K6 ["pinDynamicIndex"]
       54 SETTABLEKS                       R4 R3 K6 ["pinDynamicIndex"]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K8 ["pushAnchor"]
       59 GETUPVAL                         R5 5
       60 MOVE                             R6 R3
       61 CALL                             R4 2 1
       62 GETUPVAL                         R5 2
       63 SETUPVAL                         R4 2
       64 JUMPIFNOT                        R5 ; [+2]
       65 MOVE                             R6 R5
       66 CALL                             R6 0 0
       67 RETURN                           R0 0

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
       22 CALL                             R3 1 1
       23 NEWCLOSURE                       R4 P2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          REF R1
       26 CLOSEUPVALS                      R1
       27 RETURN                           R4 1

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
       12 JUMPIFNOTEQKS                    R2 K2 ["Input"] ; [+37]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["pinDynamicIndex"]
       17 JUMPIFEQKNIL                     R2 ; [+25]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["pinDataType"]
       22 JUMPIFNOTEQKS                    R2 K5 ["Parameter"] ; [+20]
       24 GETTABLEKS                       R3 R0 K6 ["inputPinIds"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K3 ["pinDynamicIndex"]
       29 GETTABLE                         R2 R3 R4
       30 MOVE                             R3 R2
       31 JUMPIFNOT                        R3 ; [+6]
       32 GETTABLEKS                       R4 R0 K7 ["inputLabelPinToConnectionMap"]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K8 ["pinName"]
       37 GETTABLE                         R3 R4 R5
       38 JUMPIFNOT                        R3 ; [+2]
       39 GETTABLE                         R1 R3 R2
       40 JUMP                             ; [+27]
       41 LOADNIL                          R1
       42 JUMP                             ; [+25]
       43 GETTABLEKS                       R2 R0 K9 ["inputPinToConnectionMap"]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K8 ["pinName"]
       48 GETTABLE                         R1 R2 R3
       49 JUMP                             ; [+18]
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K1 ["pinSide"]
       53 JUMPIFNOTEQKS                    R2 K10 ["Output"] ; [+8]
       55 GETTABLEKS                       R2 R0 K11 ["outputPinToConnectionMap"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K8 ["pinName"]
       60 GETTABLE                         R1 R2 R3
       61 JUMP                             ; [+6]
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K0 ["of"]
       65 LOADB                            R3 0
       66 CALL                             R2 1 -1
       67 RETURN                           R2 -1
       68 JUMPIFNOT                        R1 ; [+4]
       69 GETTABLEKS                       R2 R1 K12 ["outputNodeId"]
       71 JUMPIFNOTEQKNIL                  R2 ; [+7]
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K0 ["of"]
       76 LOADB                            R3 0
       77 CALL                             R2 1 -1
       78 RETURN                           R2 -1
       79 GETUPVAL                         R2 2
       80 GETTABLEKS                       R2 R2 K13 ["nodePayloadDispatcher"]
       82 GETTABLEKS                       R2 R2 K14 ["observe"]
       84 GETTABLEKS                       R3 R1 K12 ["outputNodeId"]
       86 CALL                             R2 1 1
       87 GETUPVAL                         R3 0
       88 GETTABLEKS                       R3 R3 K15 ["Experimental"]
       90 GETTABLEKS                       R3 R3 K16 ["createComputed"]
       92 NEWCLOSURE                       R4 P0
       93 CAPTURE                          VAL R2
       94 CALL                             R3 1 -1
       95 RETURN                           R3 -1

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
       16 CAPTURE                          UPVAL U0
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+7]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K2 ["outputNodeId"]
       10 JUMPIF                           R0 ; [+6]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K3 ["of"]
       14 LOADNIL                          R1
       15 CALL                             R0 1 1
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 3
       18 GETTABLEKS                       R0 R0 K4 ["nodePayloadDispatcher"]
       20 GETTABLEKS                       R0 R0 K5 ["observe"]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K2 ["outputNodeId"]
       25 CALL                             R0 1 -1
       26 RETURN                           R0 -1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onStartDrag"]
        3 DUPTABLE                         R3 K10 [{["sourcePinNodeId"], ["sourcePinName"], ["sourcePinSide"], ["sourcePinDataType"], ["sourcePinValue"], ["sourcePinDynamicIndex"], ["position"], ["isCurveDrag"] = False}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K11 ["pinNodeId"]
        7 SETTABLEKS                       R4 R3 K1 ["sourcePinNodeId"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K12 ["pinName"]
       12 SETTABLEKS                       R4 R3 K2 ["sourcePinName"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K13 ["pinSide"]
       17 SETTABLEKS                       R4 R3 K3 ["sourcePinSide"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K14 ["pinDataType"]
       22 SETTABLEKS                       R4 R3 K4 ["sourcePinDataType"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K15 ["pinValue"]
       27 SETTABLEKS                       R4 R3 K5 ["sourcePinValue"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K16 ["pinDynamicIndex"]
       32 SETTABLEKS                       R4 R3 K6 ["sourcePinDynamicIndex"]
       34 SETTABLEKS                       R1 R3 K7 ["position"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onMouseMoved"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U9
       85 NEWTABLE                         R11 0 5
       87 GETTABLEKS                       R12 R0 K0 ["pinNodeId"]
       89 GETTABLEKS                       R13 R0 K16 ["pinSide"]
       91 GETTABLEKS                       R14 R0 K17 ["pinName"]
       93 GETTABLEKS                       R15 R0 K18 ["pinDynamicIndex"]
       95 GETTABLEKS                       R16 R0 K7 ["pinDataType"]
       97 SETLIST                          R11 R12 5 [1]
       99 CALL                             R9 2 1
      100 GETUPVAL                         R10 0
      101 GETTABLEKS                       R10 R10 K12 ["useMemo"]
      103 NEWCLOSURE                       R11 P2
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R0
      106 NEWTABLE                         R12 0 5
      108 MOVE                             R13 R7
      109 GETTABLEKS                       R14 R0 K16 ["pinSide"]
      111 GETTABLEKS                       R15 R0 K17 ["pinName"]
      113 GETTABLEKS                       R16 R0 K18 ["pinDynamicIndex"]
      115 GETTABLEKS                       R17 R0 K7 ["pinDataType"]
      117 SETLIST                          R12 R13 5 [1]
      119 CALL                             R10 2 1
      120 GETUPVAL                         R11 0
      121 GETTABLEKS                       R11 R11 K12 ["useMemo"]
      123 NEWCLOSURE                       R12 P3
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R0
      126 CAPTURE                          UPVAL U9
      127 NEWTABLE                         R13 0 3
      129 MOVE                             R14 R10
      130 GETTABLEKS                       R15 R0 K16 ["pinSide"]
      132 GETTABLEKS                       R16 R0 K17 ["pinName"]
      134 SETLIST                          R13 R14 3 [1]
      136 CALL                             R11 2 1
      137 GETUPVAL                         R12 0
      138 GETTABLEKS                       R12 R12 K19 ["useEffect"]
      140 NEWCLOSURE                       R13 P4
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U10
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R9
      147 NEWTABLE                         R14 0 8
      149 GETTABLEKS                       R15 R0 K0 ["pinNodeId"]
      151 GETTABLEKS                       R16 R0 K7 ["pinDataType"]
      153 GETTABLEKS                       R17 R0 K17 ["pinName"]
      155 GETTABLEKS                       R18 R0 K16 ["pinSide"]
      157 MOVE                             R19 R9
      158 GETTABLEKS                       R20 R2 K13 ["nodePayloadDispatcher"]
      160 GETTABLEKS                       R20 R20 K14 ["observe"]
      162 GETTABLEKS                       R21 R8 K20 ["observeOffsetInNodeSpace"]
      164 GETTABLEKS                       R22 R1 K21 ["pushAnchor"]
      166 SETLIST                          R14 R15 8 [1]
      168 CALL                             R12 2 0
      169 GETUPVAL                         R12 7
      170 GETTABLEKS                       R12 R12 K11 ["useSignalState"]
      172 GETUPVAL                         R13 0
      173 GETTABLEKS                       R13 R13 K12 ["useMemo"]
      175 NEWCLOSURE                       R14 P5
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R9
      178 NEWTABLE                         R15 0 2
      180 MOVE                             R16 R9
      181 GETTABLEKS                       R17 R1 K22 ["observeCurvePreviewInfo"]
      183 SETLIST                          R15 R16 2 [1]
      185 CALL                             R13 2 -1
      186 CALL                             R12 -1 1
      187 GETUPVAL                         R13 7
      188 GETTABLEKS                       R13 R13 K11 ["useSignalState"]
      190 GETUPVAL                         R14 0
      191 GETTABLEKS                       R14 R14 K12 ["useMemo"]
      193 NEWCLOSURE                       R15 P6
      194 CAPTURE                          VAL R11
      195 CAPTURE                          UPVAL U11
      196 CAPTURE                          VAL R1
      197 NEWTABLE                         R16 0 2
      199 MOVE                             R17 R11
      200 GETTABLEKS                       R18 R1 K22 ["observeCurvePreviewInfo"]
      202 SETLIST                          R16 R17 2 [1]
      204 CALL                             R14 2 -1
      205 CALL                             R13 -1 1
      206 GETUPVAL                         R14 7
      207 GETTABLEKS                       R14 R14 K11 ["useSignalState"]
      209 GETUPVAL                         R15 0
      210 GETTABLEKS                       R15 R15 K12 ["useMemo"]
      212 NEWCLOSURE                       R16 P7
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R0
      215 CAPTURE                          UPVAL U11
      216 NEWTABLE                         R17 0 5
      218 GETTABLEKS                       R18 R0 K0 ["pinNodeId"]
      220 GETTABLEKS                       R19 R0 K17 ["pinName"]
      222 GETTABLEKS                       R20 R0 K18 ["pinDynamicIndex"]
      224 GETTABLEKS                       R21 R0 K7 ["pinDataType"]
      226 GETTABLEKS                       R22 R2 K13 ["nodePayloadDispatcher"]
      228 GETTABLEKS                       R22 R22 K14 ["observe"]
      230 SETLIST                          R17 R18 5 [1]
      232 CALL                             R15 2 -1
      233 CALL                             R14 -1 1
      234 GETUPVAL                         R15 7
      235 GETTABLEKS                       R15 R15 K11 ["useSignalState"]
      237 GETUPVAL                         R16 0
      238 GETTABLEKS                       R16 R16 K12 ["useMemo"]
      240 NEWCLOSURE                       R17 P8
      241 CAPTURE                          VAL R0
      242 CAPTURE                          VAL R10
      243 CAPTURE                          UPVAL U11
      244 CAPTURE                          VAL R2
      245 NEWTABLE                         R18 0 3
      247 GETTABLEKS                       R19 R0 K7 ["pinDataType"]
      249 MOVE                             R20 R10
      250 GETTABLEKS                       R21 R2 K13 ["nodePayloadDispatcher"]
      252 GETTABLEKS                       R21 R21 K14 ["observe"]
      254 SETLIST                          R18 R19 3 [1]
      256 CALL                             R16 2 -1
      257 CALL                             R15 -1 1
      258 LOADB                            R16 0
      259 JUMPIFEQKNIL                     R15 ; [+15]
      261 LOADB                            R16 0
      262 GETTABLEKS                       R17 R15 K23 ["name"]
      264 JUMPIFEQKNIL                     R17 ; [+10]
      266 GETTABLEKS                       R18 R3 K24 ["parameterOverrides"]
      268 GETTABLEKS                       R19 R15 K23 ["name"]
      270 GETTABLE                         R17 R18 R19
      271 JUMPIFNOTEQKNIL                  R17 ; [+2]
      273 LOADB                            R16 0 +1
      274 LOADB                            R16 1
      275 GETUPVAL                         R17 0
      276 GETTABLEKS                       R17 R17 K12 ["useMemo"]
      278 NEWCLOSURE                       R18 P9
      279 CAPTURE                          VAL R12
      280 CAPTURE                          VAL R0
      281 CAPTURE                          VAL R13
      282 CAPTURE                          VAL R14
      283 NEWTABLE                         R19 0 6
      285 MOVE                             R20 R14
      286 MOVE                             R21 R12
      287 MOVE                             R22 R13
      288 GETTABLEKS                       R23 R0 K0 ["pinNodeId"]
      290 GETTABLEKS                       R24 R0 K17 ["pinName"]
      292 GETTABLEKS                       R25 R0 K16 ["pinSide"]
      294 SETLIST                          R19 R20 6 [1]
      296 CALL                             R17 2 1
      297 GETUPVAL                         R18 0
      298 GETTABLEKS                       R18 R18 K12 ["useMemo"]
      300 NEWCLOSURE                       R19 P10
      301 CAPTURE                          VAL R17
      302 CAPTURE                          VAL R5
      303 CAPTURE                          VAL R6
      304 CAPTURE                          VAL R4
      305 NEWTABLE                         R20 0 4
      307 MOVE                             R21 R17
      308 MOVE                             R22 R5
      309 GETTABLEKS                       R23 R4 K25 ["enabled"]
      311 MOVE                             R24 R6
      312 SETLIST                          R20 R21 4 [1]
      314 CALL                             R18 2 1
      315 GETUPVAL                         R19 0
      316 GETTABLEKS                       R19 R19 K12 ["useMemo"]
      318 NEWCLOSURE                       R20 P11
      319 CAPTURE                          VAL R0
      320 CAPTURE                          VAL R6
      321 CAPTURE                          VAL R5
      322 CAPTURE                          VAL R4
      323 NEWTABLE                         R21 0 4
      325 MOVE                             R22 R5
      326 GETTABLEKS                       R23 R4 K25 ["enabled"]
      328 GETTABLEKS                       R24 R0 K26 ["selected"]
      330 MOVE                             R25 R6
      331 SETLIST                          R21 R22 4 [1]
      333 CALL                             R19 2 1
      334 GETUPVAL                         R20 0
      335 GETTABLEKS                       R20 R20 K27 ["useCallback"]
      337 NEWCLOSURE                       R21 P12
      338 CAPTURE                          VAL R1
      339 CAPTURE                          VAL R0
      340 NEWTABLE                         R22 0 7
      342 GETTABLEKS                       R23 R0 K0 ["pinNodeId"]
      344 GETTABLEKS                       R24 R0 K16 ["pinSide"]
      346 GETTABLEKS                       R25 R0 K7 ["pinDataType"]
      348 GETTABLEKS                       R26 R0 K17 ["pinName"]
      350 GETTABLEKS                       R27 R0 K28 ["pinValue"]
      352 GETTABLEKS                       R28 R0 K18 ["pinDynamicIndex"]
      354 GETTABLEKS                       R29 R1 K29 ["onStartDrag"]
      356 SETLIST                          R22 R23 7 [1]
      358 CALL                             R20 2 1
      359 GETUPVAL                         R22 12
      360 JUMPIFNOT                        R22 ; [+7]
      361 GETUPVAL                         R21 4
      362 GETTABLEKS                       R21 R21 K30 ["useEventCallback"]
      364 NEWCLOSURE                       R22 P13
      365 CAPTURE                          VAL R1
      366 CALL                             R21 1 1
      367 JUMP                             ; [+1]
      368 LOADNIL                          R21
      369 GETUPVAL                         R22 4
      370 GETTABLEKS                       R22 R22 K30 ["useEventCallback"]
      372 NEWCLOSURE                       R23 P14
      373 CAPTURE                          VAL R4
      374 CAPTURE                          UPVAL U12
      375 CAPTURE                          VAL R1
      376 CALL                             R22 1 1
      377 GETUPVAL                         R23 0
      378 GETTABLEKS                       R23 R23 K31 ["useState"]
      380 LOADNIL                          R24
      381 CALL                             R23 1 2
      382 GETUPVAL                         R25 0
      383 GETTABLEKS                       R25 R25 K19 ["useEffect"]
      385 NEWCLOSURE                       R26 P15
      386 CAPTURE                          VAL R23
      387 CAPTURE                          VAL R0
      388 CAPTURE                          VAL R16
      389 NEWTABLE                         R27 0 4
      391 MOVE                             R28 R23
      392 GETTABLEKS                       R29 R0 K17 ["pinName"]
      394 GETTABLEKS                       R30 R0 K32 ["debugDisplayName"]
      396 MOVE                             R31 R16
      397 SETLIST                          R27 R28 4 [1]
      399 CALL                             R25 2 0
      400 GETUPVAL                         R25 0
      401 GETTABLEKS                       R25 R25 K33 ["createElement"]
      403 GETUPVAL                         R26 13
      404 DUPTABLE                         R27 K47 [{["Position"], ["positionerRef"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 1, ["CanDrag"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"], ["OnHoverStart"], ["OnHoverEnded"]}]
      405 GETTABLEKS                       R28 R0 K34 ["Position"]
      407 SETTABLEKS                       R28 R27 K34 ["Position"]
      409 GETTABLEKS                       R28 R8 K48 ["setPositionerFrame"]
      411 SETTABLEKS                       R28 R27 K35 ["positionerRef"]
      413 GETUPVAL                         R28 5
      414 GETTABLEKS                       R28 R28 K49 ["NODEVIEW_ZINDEX"]
      416 GETTABLEKS                       R28 R28 K50 ["Anchors"]
      418 SETTABLEKS                       R28 R27 K36 ["ZIndex"]
      420 SETTABLEKS                       R18 R27 K37 ["Color3"]
      422 SETTABLEKS                       R19 R27 K38 ["OutlineColor3"]
      424 GETUPVAL                         R29 14
      425 CALL                             R29 0 1
      426 JUMPIFNOT                        R29 ; [+4]
      427 GETTABLEKS                       R29 R2 K51 ["isReadonly"]
      429 NOT                              R28 R29
      430 JUMP                             ; [+1]
      431 LOADNIL                          R28
      432 SETTABLEKS                       R28 R27 K41 ["CanDrag"]
      434 SETTABLEKS                       R20 R27 K42 ["OnDragStart"]
      436 GETUPVAL                         R29 12
      437 JUMPIFNOT                        R29 ; [+2]
      438 MOVE                             R28 R21
      439 JUMP                             ; [+2]
      440 GETTABLEKS                       R28 R1 K52 ["DEPRECATED_onDragMoved"]
      442 SETTABLEKS                       R28 R27 K43 ["OnDragMoved"]
      444 SETTABLEKS                       R22 R27 K44 ["OnDragEnded"]
      446 GETTABLEKS                       R28 R4 K53 ["enable"]
      448 SETTABLEKS                       R28 R27 K45 ["OnHoverStart"]
      450 GETTABLEKS                       R28 R4 K54 ["disable"]
      452 SETTABLEKS                       R28 R27 K46 ["OnHoverEnded"]
      454 DUPTABLE                         R28 K56 [{"DebugMarker"}]
      455 GETUPVAL                         R29 0
      456 GETTABLEKS                       R29 R29 K33 ["createElement"]
      458 GETUPVAL                         R30 6
      459 GETTABLEKS                       R30 R30 K57 ["View"]
      461 DUPTABLE                         R31 K63 [{["tag"] = "size-full", ["testId"] = "RenderedCompositorPin-DebugMarker", ["ref"]}]
      462 SETTABLEKS                       R24 R31 K62 ["ref"]
      464 CALL                             R29 2 1
      465 SETTABLEKS                       R29 R28 K55 ["DebugMarker"]
      467 CALL                             R25 3 -1
      468 RETURN                           R25 -1

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
      107 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUI_PerfFixes"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K12 ["Flags"]
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
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K12 ["Flags"]
      135 GETTABLEKS                       R20 R20 K30 ["getFFlagAnimGraphUI_RunTimeDebug"]
      137 CALL                             R19 1 1
      138 DUPCLOSURE                       R20 K31 [PROTO_0]
      139 DUPCLOSURE                       R21 K32 [PROTO_6]
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R15
      146 DUPCLOSURE                       R22 K33 [PROTO_28]
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R19
      162 GETTABLEKS                       R23 R10 K34 ["memo"]
      164 MOVE                             R24 R22
      165 CALL                             R23 1 -1
      166 RETURN                           R23 -1
