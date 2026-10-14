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
       21 GETUPVAL                         R6 2
       22 CALL                             R1 5 -1
       23 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["pinSide"]
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+53]
        9 GETUPVAL                         R0 2
       10 JUMPIFEQKNIL                     R0 ; [+11]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["inputConnectionsByInputId"]
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K2 ["inputConnectionsByInputId"]
       19 GETUPVAL                         R2 2
       20 GETTABLE                         R0 R1 R2
       21 RETURN                           R0 1
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K3 ["pinDynamicIndex"]
       25 JUMPIFEQKNIL                     R0 ; [+27]
       27 GETUPVAL                         R0 1
       28 GETTABLEKS                       R0 R0 K4 ["pinDataType"]
       30 JUMPIFNOTEQKS                    R0 K5 ["Parameter"] ; [+22]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K6 ["inputPinIds"]
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R2 R2 K3 ["pinDynamicIndex"]
       38 GETTABLE                         R0 R1 R2
       39 MOVE                             R1 R0
       40 JUMPIFNOT                        R1 ; [+7]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K7 ["inputLabelPinToConnectionMap"]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K8 ["pinName"]
       47 GETTABLE                         R1 R2 R3
       48 JUMPIFNOT                        R1 ; [+2]
       49 GETTABLE                         R2 R1 R0
       50 RETURN                           R2 1
       51 LOADNIL                          R2
       52 RETURN                           R2 1
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R1 R1 K9 ["inputPinToConnectionMap"]
       56 GETUPVAL                         R2 1
       57 GETTABLEKS                       R2 R2 K8 ["pinName"]
       59 GETTABLE                         R0 R1 R2
       60 RETURN                           R0 1
       61 GETUPVAL                         R0 1
       62 GETTABLEKS                       R0 R0 K0 ["pinSide"]
       64 JUMPIFNOTEQKS                    R0 K10 ["Output"] ; [+9]
       66 GETUPVAL                         R1 0
       67 GETTABLEKS                       R1 R1 K11 ["outputPinToConnectionMap"]
       69 GETUPVAL                         R2 1
       70 GETTABLEKS                       R2 R2 K8 ["pinName"]
       72 GETTABLE                         R0 R1 R2
       73 RETURN                           R0 1
       74 LOADNIL                          R0
       75 RETURN                           R0 1

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
       29 JUMPIFNOTEQKS                    R0 K3 ["Output"] ; [+20]
       31 GETUPVAL                         R0 2
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K5 ["inputNodeId"]
       35 LOADK                            R2 K1 ["Input"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K6 ["inputNodePinId"]
       39 LOADNIL                          R4
       40 GETUPVAL                         R6 3
       41 CALL                             R6 0 1
       42 JUMPIFNOT                        R6 ; [+4]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K7 ["inputPinInputId"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 CALL                             R0 5 -1
       49 RETURN                           R0 -1
       50 LOADNIL                          R0
       51 RETURN                           R0 1

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
       28 DUPTABLE                         R3 K8 [{"pinDataType", "pinName", "pinOffset", "pinSide", "pinNodeId", "pinDynamicIndex", "pinInputId"}]
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
       57 SETTABLEKS                       R4 R3 K7 ["pinInputId"]
       59 GETUPVAL                         R4 5
       60 GETTABLEKS                       R4 R4 K9 ["pushAnchor"]
       62 GETUPVAL                         R5 6
       63 MOVE                             R6 R3
       64 CALL                             R4 2 1
       65 GETUPVAL                         R5 2
       66 SETUPVAL                         R4 2
       67 JUMPIFNOT                        R5 ; [+2]
       68 MOVE                             R6 R5
       69 CALL                             R6 0 0
       70 RETURN                           R0 0

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
       12 JUMPIFNOTEQKS                    R2 K2 ["Input"] ; [+48]
       14 GETUPVAL                         R2 2
       15 JUMPIFEQKNIL                     R2 ; [+9]
       17 GETTABLEKS                       R2 R0 K3 ["inputConnectionsByInputId"]
       19 JUMPIFNOT                        R2 ; [+5]
       20 GETTABLEKS                       R2 R0 K3 ["inputConnectionsByInputId"]
       22 GETUPVAL                         R3 2
       23 GETTABLE                         R1 R2 R3
       24 JUMP                             ; [+54]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K4 ["pinDynamicIndex"]
       28 JUMPIFEQKNIL                     R2 ; [+25]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K5 ["pinDataType"]
       33 JUMPIFNOTEQKS                    R2 K6 ["Parameter"] ; [+20]
       35 GETTABLEKS                       R3 R0 K7 ["inputPinIds"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K4 ["pinDynamicIndex"]
       40 GETTABLE                         R2 R3 R4
       41 MOVE                             R3 R2
       42 JUMPIFNOT                        R3 ; [+6]
       43 GETTABLEKS                       R4 R0 K8 ["inputLabelPinToConnectionMap"]
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K9 ["pinName"]
       48 GETTABLE                         R3 R4 R5
       49 JUMPIFNOT                        R3 ; [+2]
       50 GETTABLE                         R1 R3 R2
       51 JUMP                             ; [+27]
       52 LOADNIL                          R1
       53 JUMP                             ; [+25]
       54 GETTABLEKS                       R2 R0 K10 ["inputPinToConnectionMap"]
       56 GETUPVAL                         R3 1
       57 GETTABLEKS                       R3 R3 K9 ["pinName"]
       59 GETTABLE                         R1 R2 R3
       60 JUMP                             ; [+18]
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R2 R2 K1 ["pinSide"]
       64 JUMPIFNOTEQKS                    R2 K11 ["Output"] ; [+8]
       66 GETTABLEKS                       R2 R0 K12 ["outputPinToConnectionMap"]
       68 GETUPVAL                         R3 1
       69 GETTABLEKS                       R3 R3 K9 ["pinName"]
       71 GETTABLE                         R1 R2 R3
       72 JUMP                             ; [+6]
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K0 ["of"]
       76 LOADB                            R3 0
       77 CALL                             R2 1 -1
       78 RETURN                           R2 -1
       79 JUMPIFNOT                        R1 ; [+4]
       80 GETTABLEKS                       R2 R1 K13 ["outputNodeId"]
       82 JUMPIFNOTEQKNIL                  R2 ; [+7]
       84 GETUPVAL                         R2 0
       85 GETTABLEKS                       R2 R2 K0 ["of"]
       87 LOADB                            R3 0
       88 CALL                             R2 1 -1
       89 RETURN                           R2 -1
       90 GETUPVAL                         R2 3
       91 GETTABLEKS                       R2 R2 K14 ["nodePayloadDispatcher"]
       93 GETTABLEKS                       R2 R2 K15 ["observe"]
       95 GETTABLEKS                       R3 R1 K13 ["outputNodeId"]
       97 CALL                             R2 1 1
       98 GETUPVAL                         R3 0
       99 GETTABLEKS                       R3 R3 K16 ["Experimental"]
      101 GETTABLEKS                       R3 R3 K17 ["createComputed"]
      103 NEWCLOSURE                       R4 P0
      104 CAPTURE                          VAL R2
      105 CALL                             R3 1 -1
      106 RETURN                           R3 -1

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
        3 DUPTABLE                         R3 K11 [{["sourcePinNodeId"], ["sourcePinName"], ["sourcePinSide"], ["sourcePinDataType"], ["sourcePinValue"], ["sourcePinDynamicIndex"], ["sourcePinInputId"], ["position"], ["isCurveDrag"] = False}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K12 ["pinNodeId"]
        7 SETTABLEKS                       R4 R3 K1 ["sourcePinNodeId"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K13 ["pinName"]
       12 SETTABLEKS                       R4 R3 K2 ["sourcePinName"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K14 ["pinSide"]
       17 SETTABLEKS                       R4 R3 K3 ["sourcePinSide"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K15 ["pinDataType"]
       22 SETTABLEKS                       R4 R3 K4 ["sourcePinDataType"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K16 ["pinValue"]
       27 SETTABLEKS                       R4 R3 K5 ["sourcePinValue"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K17 ["pinDynamicIndex"]
       32 SETTABLEKS                       R4 R3 K6 ["sourcePinDynamicIndex"]
       34 GETUPVAL                         R4 2
       35 SETTABLEKS                       R4 R3 K7 ["sourcePinInputId"]
       37 SETTABLEKS                       R1 R3 K8 ["position"]
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onMouseMoved"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

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
       79 GETUPVAL                         R10 9
       80 CALL                             R10 0 1
       81 JUMPIFNOT                        R10 ; [+7]
       82 GETTABLEKS                       R10 R0 K16 ["pinSide"]
       84 JUMPIFNOTEQKS                    R10 K17 ["Input"] ; [+4]
       86 GETTABLEKS                       R9 R0 K18 ["pinInputId"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R9
       90 GETUPVAL                         R10 0
       91 GETTABLEKS                       R10 R10 K12 ["useMemo"]
       93 NEWCLOSURE                       R11 P1
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          VAL R9
       97 NEWTABLE                         R12 0 6
       99 GETTABLEKS                       R13 R0 K0 ["pinNodeId"]
      101 GETTABLEKS                       R14 R0 K16 ["pinSide"]
      103 GETTABLEKS                       R15 R0 K19 ["pinName"]
      105 GETTABLEKS                       R16 R0 K20 ["pinDynamicIndex"]
      107 GETTABLEKS                       R17 R0 K7 ["pinDataType"]
      109 MOVE                             R18 R9
      110 SETLIST                          R12 R13 6 [1]
      112 CALL                             R10 2 1
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R11 R11 K12 ["useMemo"]
      116 NEWCLOSURE                       R12 P2
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R9
      120 NEWTABLE                         R13 0 6
      122 MOVE                             R14 R7
      123 GETTABLEKS                       R15 R0 K16 ["pinSide"]
      125 GETTABLEKS                       R16 R0 K19 ["pinName"]
      127 GETTABLEKS                       R17 R0 K20 ["pinDynamicIndex"]
      129 GETTABLEKS                       R18 R0 K7 ["pinDataType"]
      131 MOVE                             R19 R9
      132 SETLIST                          R13 R14 6 [1]
      134 CALL                             R11 2 1
      135 GETUPVAL                         R12 0
      136 GETTABLEKS                       R12 R12 K12 ["useMemo"]
      138 NEWCLOSURE                       R13 P3
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U10
      142 CAPTURE                          UPVAL U9
      143 NEWTABLE                         R14 0 3
      145 MOVE                             R15 R11
      146 GETTABLEKS                       R16 R0 K16 ["pinSide"]
      148 GETTABLEKS                       R17 R0 K19 ["pinName"]
      150 SETLIST                          R14 R15 3 [1]
      152 CALL                             R12 2 1
      153 GETUPVAL                         R13 0
      154 GETTABLEKS                       R13 R13 K21 ["useEffect"]
      156 NEWCLOSURE                       R14 P4
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R0
      159 CAPTURE                          UPVAL U11
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R10
      164 NEWTABLE                         R15 0 10
      166 GETTABLEKS                       R16 R0 K0 ["pinNodeId"]
      168 GETTABLEKS                       R17 R0 K7 ["pinDataType"]
      170 GETTABLEKS                       R18 R0 K19 ["pinName"]
      172 GETTABLEKS                       R19 R0 K16 ["pinSide"]
      174 GETTABLEKS                       R20 R0 K20 ["pinDynamicIndex"]
      176 MOVE                             R21 R9
      177 MOVE                             R22 R10
      178 GETTABLEKS                       R23 R2 K13 ["nodePayloadDispatcher"]
      180 GETTABLEKS                       R23 R23 K14 ["observe"]
      182 GETTABLEKS                       R24 R8 K22 ["observeOffsetInNodeSpace"]
      184 GETTABLEKS                       R25 R1 K23 ["pushAnchor"]
      186 SETLIST                          R15 R16 10 [1]
      188 CALL                             R13 2 0
      189 GETUPVAL                         R13 7
      190 GETTABLEKS                       R13 R13 K11 ["useSignalState"]
      192 GETUPVAL                         R14 0
      193 GETTABLEKS                       R14 R14 K12 ["useMemo"]
      195 NEWCLOSURE                       R15 P5
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R10
      198 NEWTABLE                         R16 0 2
      200 MOVE                             R17 R10
      201 GETTABLEKS                       R18 R1 K24 ["observeCurvePreviewInfo"]
      203 SETLIST                          R16 R17 2 [1]
      205 CALL                             R14 2 -1
      206 CALL                             R13 -1 1
      207 GETUPVAL                         R14 7
      208 GETTABLEKS                       R14 R14 K11 ["useSignalState"]
      210 GETUPVAL                         R15 0
      211 GETTABLEKS                       R15 R15 K12 ["useMemo"]
      213 NEWCLOSURE                       R16 P6
      214 CAPTURE                          VAL R12
      215 CAPTURE                          UPVAL U12
      216 CAPTURE                          VAL R1
      217 NEWTABLE                         R17 0 2
      219 MOVE                             R18 R12
      220 GETTABLEKS                       R19 R1 K24 ["observeCurvePreviewInfo"]
      222 SETLIST                          R17 R18 2 [1]
      224 CALL                             R15 2 -1
      225 CALL                             R14 -1 1
      226 GETUPVAL                         R15 7
      227 GETTABLEKS                       R15 R15 K11 ["useSignalState"]
      229 GETUPVAL                         R16 0
      230 GETTABLEKS                       R16 R16 K12 ["useMemo"]
      232 NEWCLOSURE                       R17 P7
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R0
      235 CAPTURE                          UPVAL U12
      236 CAPTURE                          VAL R9
      237 NEWTABLE                         R18 0 6
      239 GETTABLEKS                       R19 R0 K0 ["pinNodeId"]
      241 GETTABLEKS                       R20 R0 K19 ["pinName"]
      243 GETTABLEKS                       R21 R0 K20 ["pinDynamicIndex"]
      245 GETTABLEKS                       R22 R0 K7 ["pinDataType"]
      247 MOVE                             R23 R9
      248 GETTABLEKS                       R24 R2 K13 ["nodePayloadDispatcher"]
      250 GETTABLEKS                       R24 R24 K14 ["observe"]
      252 SETLIST                          R18 R19 6 [1]
      254 CALL                             R16 2 -1
      255 CALL                             R15 -1 1
      256 GETUPVAL                         R16 7
      257 GETTABLEKS                       R16 R16 K11 ["useSignalState"]
      259 GETUPVAL                         R17 0
      260 GETTABLEKS                       R17 R17 K12 ["useMemo"]
      262 NEWCLOSURE                       R18 P8
      263 CAPTURE                          VAL R0
      264 CAPTURE                          VAL R11
      265 CAPTURE                          UPVAL U12
      266 CAPTURE                          VAL R2
      267 NEWTABLE                         R19 0 3
      269 GETTABLEKS                       R20 R0 K7 ["pinDataType"]
      271 MOVE                             R21 R11
      272 GETTABLEKS                       R22 R2 K13 ["nodePayloadDispatcher"]
      274 GETTABLEKS                       R22 R22 K14 ["observe"]
      276 SETLIST                          R19 R20 3 [1]
      278 CALL                             R17 2 -1
      279 CALL                             R16 -1 1
      280 LOADB                            R17 0
      281 JUMPIFEQKNIL                     R16 ; [+15]
      283 LOADB                            R17 0
      284 GETTABLEKS                       R18 R16 K25 ["name"]
      286 JUMPIFEQKNIL                     R18 ; [+10]
      288 GETTABLEKS                       R19 R3 K26 ["parameterOverrides"]
      290 GETTABLEKS                       R20 R16 K25 ["name"]
      292 GETTABLE                         R18 R19 R20
      293 JUMPIFNOTEQKNIL                  R18 ; [+2]
      295 LOADB                            R17 0 +1
      296 LOADB                            R17 1
      297 GETUPVAL                         R18 0
      298 GETTABLEKS                       R18 R18 K12 ["useMemo"]
      300 NEWCLOSURE                       R19 P9
      301 CAPTURE                          VAL R13
      302 CAPTURE                          VAL R0
      303 CAPTURE                          VAL R14
      304 CAPTURE                          VAL R15
      305 NEWTABLE                         R20 0 6
      307 MOVE                             R21 R15
      308 MOVE                             R22 R13
      309 MOVE                             R23 R14
      310 GETTABLEKS                       R24 R0 K0 ["pinNodeId"]
      312 GETTABLEKS                       R25 R0 K19 ["pinName"]
      314 GETTABLEKS                       R26 R0 K16 ["pinSide"]
      316 SETLIST                          R20 R21 6 [1]
      318 CALL                             R18 2 1
      319 GETUPVAL                         R19 0
      320 GETTABLEKS                       R19 R19 K12 ["useMemo"]
      322 NEWCLOSURE                       R20 P10
      323 CAPTURE                          VAL R18
      324 CAPTURE                          VAL R5
      325 CAPTURE                          VAL R6
      326 CAPTURE                          VAL R4
      327 NEWTABLE                         R21 0 4
      329 MOVE                             R22 R18
      330 MOVE                             R23 R5
      331 GETTABLEKS                       R24 R4 K27 ["enabled"]
      333 MOVE                             R25 R6
      334 SETLIST                          R21 R22 4 [1]
      336 CALL                             R19 2 1
      337 GETUPVAL                         R20 0
      338 GETTABLEKS                       R20 R20 K12 ["useMemo"]
      340 NEWCLOSURE                       R21 P11
      341 CAPTURE                          VAL R0
      342 CAPTURE                          VAL R6
      343 CAPTURE                          VAL R5
      344 CAPTURE                          VAL R4
      345 NEWTABLE                         R22 0 4
      347 MOVE                             R23 R5
      348 GETTABLEKS                       R24 R4 K27 ["enabled"]
      350 GETTABLEKS                       R25 R0 K28 ["selected"]
      352 MOVE                             R26 R6
      353 SETLIST                          R22 R23 4 [1]
      355 CALL                             R20 2 1
      356 GETUPVAL                         R21 0
      357 GETTABLEKS                       R21 R21 K29 ["useCallback"]
      359 NEWCLOSURE                       R22 P12
      360 CAPTURE                          VAL R1
      361 CAPTURE                          VAL R0
      362 CAPTURE                          VAL R9
      363 NEWTABLE                         R23 0 8
      365 GETTABLEKS                       R24 R0 K0 ["pinNodeId"]
      367 GETTABLEKS                       R25 R0 K16 ["pinSide"]
      369 GETTABLEKS                       R26 R0 K7 ["pinDataType"]
      371 GETTABLEKS                       R27 R0 K19 ["pinName"]
      373 GETTABLEKS                       R28 R0 K30 ["pinValue"]
      375 GETTABLEKS                       R29 R0 K20 ["pinDynamicIndex"]
      377 MOVE                             R30 R9
      378 GETTABLEKS                       R31 R1 K31 ["onStartDrag"]
      380 SETLIST                          R23 R24 8 [1]
      382 CALL                             R21 2 1
      383 GETUPVAL                         R22 4
      384 GETTABLEKS                       R22 R22 K32 ["useEventCallback"]
      386 NEWCLOSURE                       R23 P13
      387 CAPTURE                          VAL R1
      388 CALL                             R22 1 1
      389 GETUPVAL                         R23 0
      390 GETTABLEKS                       R23 R23 K33 ["useState"]
      392 LOADNIL                          R24
      393 CALL                             R23 1 2
      394 GETUPVAL                         R25 0
      395 GETTABLEKS                       R25 R25 K21 ["useEffect"]
      397 NEWCLOSURE                       R26 P14
      398 CAPTURE                          VAL R23
      399 CAPTURE                          VAL R0
      400 CAPTURE                          VAL R17
      401 NEWTABLE                         R27 0 4
      403 MOVE                             R28 R23
      404 GETTABLEKS                       R29 R0 K19 ["pinName"]
      406 GETTABLEKS                       R30 R0 K34 ["debugDisplayName"]
      408 MOVE                             R31 R17
      409 SETLIST                          R27 R28 4 [1]
      411 CALL                             R25 2 0
      412 GETUPVAL                         R25 0
      413 GETTABLEKS                       R25 R25 K35 ["createElement"]
      415 GETUPVAL                         R26 13
      416 DUPTABLE                         R27 K49 [{["Position"], ["positionerRef"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 1, ["CanDrag"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"], ["OnHoverStart"], ["OnHoverEnded"]}]
      417 GETTABLEKS                       R28 R0 K36 ["Position"]
      419 SETTABLEKS                       R28 R27 K36 ["Position"]
      421 GETTABLEKS                       R28 R8 K50 ["setPositionerFrame"]
      423 SETTABLEKS                       R28 R27 K37 ["positionerRef"]
      425 GETUPVAL                         R28 5
      426 GETTABLEKS                       R28 R28 K51 ["NODEVIEW_ZINDEX"]
      428 GETTABLEKS                       R28 R28 K52 ["Anchors"]
      430 SETTABLEKS                       R28 R27 K38 ["ZIndex"]
      432 SETTABLEKS                       R19 R27 K39 ["Color3"]
      434 SETTABLEKS                       R20 R27 K40 ["OutlineColor3"]
      436 GETUPVAL                         R29 14
      437 CALL                             R29 0 1
      438 JUMPIFNOT                        R29 ; [+4]
      439 GETTABLEKS                       R29 R2 K53 ["isReadonly"]
      441 NOT                              R28 R29
      442 JUMP                             ; [+1]
      443 LOADNIL                          R28
      444 SETTABLEKS                       R28 R27 K43 ["CanDrag"]
      446 SETTABLEKS                       R21 R27 K44 ["OnDragStart"]
      448 SETTABLEKS                       R22 R27 K45 ["OnDragMoved"]
      450 GETTABLEKS                       R28 R4 K54 ["disable"]
      452 SETTABLEKS                       R28 R27 K46 ["OnDragEnded"]
      454 GETTABLEKS                       R28 R4 K55 ["enable"]
      456 SETTABLEKS                       R28 R27 K47 ["OnHoverStart"]
      458 GETTABLEKS                       R28 R4 K54 ["disable"]
      460 SETTABLEKS                       R28 R27 K48 ["OnHoverEnded"]
      462 DUPTABLE                         R28 K57 [{"DebugMarker"}]
      463 GETUPVAL                         R29 0
      464 GETTABLEKS                       R29 R29 K35 ["createElement"]
      466 GETUPVAL                         R30 6
      467 GETTABLEKS                       R30 R30 K58 ["View"]
      469 DUPTABLE                         R31 K64 [{["tag"] = "size-full", ["testId"] = "RenderedCompositorPin-DebugMarker", ["ref"]}]
      470 SETTABLEKS                       R24 R31 K63 ["ref"]
      472 CALL                             R29 2 1
      473 SETTABLEKS                       R29 R28 K56 ["DebugMarker"]
      475 CALL                             R25 3 -1
      476 RETURN                           R25 -1

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
       72 GETTABLEKS                       R11 R11 K18 ["ReactUtils"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Parent"]
       79 GETTABLEKS                       R12 R12 K19 ["Signals"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Parent"]
       86 GETTABLEKS                       R13 R13 K20 ["SignalsReact"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K12 ["Parent"]
       93 GETTABLEKS                       R14 R14 K21 ["SignalsUtils"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K22 ["Flags"]
      100 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUIInputIds"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K22 ["Flags"]
      107 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUI_PerfFixes"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K22 ["Flags"]
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
      133 GETTABLEKS                       R20 R0 K22 ["Flags"]
      135 GETTABLEKS                       R20 R20 K30 ["getFFlagAnimGraphUI_RunTimeDebug"]
      137 CALL                             R19 1 1
      138 DUPCLOSURE                       R20 K31 [PROTO_0]
      139 DUPCLOSURE                       R21 K32 [PROTO_6]
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R15
      146 DUPCLOSURE                       R22 K33 [PROTO_27]
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R19
      162 GETTABLEKS                       R23 R9 K34 ["memo"]
      164 MOVE                             R24 R22
      165 CALL                             R23 1 -1
      166 RETURN                           R23 -1
