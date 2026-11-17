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
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFEQKNIL                     R1 ; [+21]
        5 LOADB                            R2 0
        6 GETTABLEKS                       R4 R1 K0 ["X"]
        8 FASTCALL1                        MATH_ABS R4 ; [+2]
        9 GETIMPORT                        R3 K3 [math.abs]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKN                    R3 K4 [0] ; [+11]
       14 GETTABLEKS                       R4 R1 K5 ["Y"]
       16 FASTCALL1                        MATH_ABS R4 ; [+2]
       17 GETIMPORT                        R3 K3 [math.abs]
       19 CALL                             R3 1 1
       20 JUMPIFEQKN                       R3 K4 [0] ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 JUMPIFNOT                        R2 ; [+2]
       25 LOADNIL                          R2
       26 RETURN                           R2 1
       27 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["observeWidth"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["observeWidth"]
       10 JUMP                             ; [+7]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["switchMap"]
       14 GETUPVAL                         R1 3
       15 DUPCLOSURE                       R2 K2 [PROTO_1]
       16 CAPTURE                          UPVAL U2
       17 CALL                             R0 2 1
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K1 ["switchMap"]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K3 ["observeFrame"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CALL                             R1 2 1
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K4 ["Experimental"]
       32 GETTABLEKS                       R2 R2 K5 ["createComputed"]
       34 NEWCLOSURE                       R3 P2
       35 CAPTURE                          VAL R1
       36 CALL                             R2 1 1
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K6 ["throttleDefer"]
       40 MOVE                             R4 R2
       41 CALL                             R3 1 -1
       42 RETURN                           R3 -1

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
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R5 0 6
       20 MOVE                             R6 R0
       21 GETTABLEKS                       R7 R1 K3 ["observeWidth"]
       23 GETTABLEKS                       R8 R1 K4 ["absoluteSizeHook"]
       25 GETTABLEKS                       R8 R8 K5 ["observeAbsolutePosition"]
       27 GETTABLEKS                       R9 R1 K4 ["absoluteSizeHook"]
       29 GETTABLEKS                       R9 R9 K6 ["observeRelativeAbsolutePosition"]
       31 GETTABLEKS                       R10 R2 K7 ["observeFrame"]
       33 GETTABLEKS                       R11 R1 K4 ["absoluteSizeHook"]
       35 GETTABLEKS                       R11 R11 K8 ["observeAbsoluteSize"]
       37 SETLIST                          R5 R6 6 [1]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       43 NEWCLOSURE                       R5 P1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R6 0 2
       48 MOVE                             R7 R3
       49 GETTABLEKS                       R8 R2 K9 ["setFrame"]
       51 SETLIST                          R6 R7 2 [1]
       53 CALL                             R4 2 -1
       54 RETURN                           R4 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeGlobalCurvePreviewInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+22]
        8 LOADB                            R2 0
        9 GETTABLEKS                       R3 R1 K1 ["sourcePinSide"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["pinSide"]
       14 JUMPIFEQ                         R3 R4 ; [+14]
       16 LOADB                            R2 0
       17 GETTABLEKS                       R3 R1 K3 ["sourcePinNodeId"]
       19 GETUPVAL                         R4 2
       20 JUMPIFNOTEQ                      R3 R4 ; [+8]
       22 GETTABLEKS                       R3 R1 K4 ["sourcePinName"]
       24 GETUPVAL                         R4 3
       25 JUMPIFEQ                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+9]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["DEFAULT_PIN_DATA_TYPE"]
       12 JUMPIFEQ                         R0 R1 ; [+7]
       14 GETUPVAL                         R0 4
       15 GETTABLEKS                       R0 R0 K2 ["of"]
       17 LOADB                            R1 0
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K3 ["pinSide"]
       23 JUMPIFNOTEQKS                    R1 K4 ["Input"] ; [+5]
       25 GETUPVAL                         R0 1
       26 GETTABLEKS                       R0 R0 K5 ["outputNodeId"]
       28 JUMP                             ; [+3]
       29 GETUPVAL                         R0 1
       30 GETTABLEKS                       R0 R0 K6 ["inputNodeId"]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K3 ["pinSide"]
       35 JUMPIFNOTEQKS                    R2 K4 ["Input"] ; [+5]
       37 GETUPVAL                         R1 1
       38 GETTABLEKS                       R1 R1 K7 ["outputNodePinId"]
       40 JUMP                             ; [+3]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K8 ["inputNodePinId"]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K9 ["Experimental"]
       47 GETTABLEKS                       R2 R2 K10 ["createComputed"]
       49 NEWCLOSURE                       R3 P0
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CALL                             R2 1 -1
       55 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+56]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["sourcePinSide"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["pinSide"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+27]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["sourcePinNodeId"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K3 ["pinNodeId"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+41]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K4 ["sourcePinName"]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K5 ["pinName"]
       24 JUMPIFNOTEQ                      R0 R1 ; [+33]
       26 GETUPVAL                         R0 2
       27 CALL                             R0 0 1
       28 JUMPIFNOT                        R0 ; [+4]
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K6 ["awaitingMenuChoice"]
       32 JUMPIF                           R0 ; [+25]
       33 LOADB                            R0 1
       34 RETURN                           R0 1
       35 JUMP                             ; [+22]
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K7 ["targetPinNodeId"]
       39 JUMPIFNOT                        R0 ; [+18]
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K7 ["targetPinNodeId"]
       43 GETUPVAL                         R1 1
       44 GETTABLEKS                       R1 R1 K3 ["pinNodeId"]
       46 JUMPIFNOTEQ                      R0 R1 ; [+11]
       48 GETUPVAL                         R0 0
       49 GETTABLEKS                       R0 R0 K8 ["targetPinName"]
       51 GETUPVAL                         R1 1
       52 GETTABLEKS                       R1 R1 K5 ["pinName"]
       54 JUMPIFNOTEQ                      R0 R1 ; [+3]
       56 LOADB                            R0 1
       57 RETURN                           R0 1
       58 GETUPVAL                         R0 3
       59 JUMPIFNOT                        R0 ; [+2]
       60 LOADB                            R0 0
       61 RETURN                           R0 1
       62 GETUPVAL                         R0 4
       63 JUMPIFNOT                        R0 ; [+21]
       64 GETUPVAL                         R0 5
       65 CALL                             R0 0 1
       66 JUMPIFNOT                        R0 ; [+18]
       67 GETUPVAL                         R0 1
       68 GETTABLEKS                       R0 R0 K1 ["pinSide"]
       70 JUMPIFNOTEQKS                    R0 K9 ["Input"] ; [+14]
       72 GETUPVAL                         R0 6
       73 GETUPVAL                         R1 4
       74 GETUPVAL                         R2 1
       75 GETTABLEKS                       R2 R2 K3 ["pinNodeId"]
       77 GETUPVAL                         R3 1
       78 GETTABLEKS                       R3 R3 K5 ["pinName"]
       80 GETUPVAL                         R4 7
       81 CALL                             R0 4 1
       82 JUMPIF                           R0 ; [+2]
       83 GETUPVAL                         R0 8
       84 RETURN                           R0 1
       85 GETUPVAL                         R0 4
       86 JUMPIFNOT                        R0 ; [+20]
       87 LOADB                            R0 0
       88 GETUPVAL                         R1 4
       89 GETTABLEKS                       R1 R1 K8 ["targetPinName"]
       91 GETUPVAL                         R2 1
       92 GETTABLEKS                       R2 R2 K5 ["pinName"]
       94 JUMPIFNOTEQ                      R1 R2 ; [+11]
       96 GETUPVAL                         R1 4
       97 GETTABLEKS                       R1 R1 K7 ["targetPinNodeId"]
       99 GETUPVAL                         R2 1
      100 GETTABLEKS                       R2 R2 K3 ["pinNodeId"]
      102 JUMPIFEQ                         R1 R2 ; [+2]
      104 LOADB                            R0 0 +1
      105 LOADB                            R0 1
      106 RETURN                           R0 1
      107 GETUPVAL                         R0 8
      108 RETURN                           R0 1

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

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onMouseMoved"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_28:
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
       26 GETUPVAL                         R0 0
       27 LOADK                            R2 K6 ["IsConnected"]
       28 GETUPVAL                         R3 3
       29 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       31 CALL                             R0 3 0
       32 RETURN                           R0 0

PROTO_29:
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
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K4 ["useContext"]
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K5 ["Context"]
       35 CALL                             R4 1 1
       36 GETUPVAL                         R5 5
       37 GETTABLEKS                       R5 R5 K6 ["useToggleState"]
       39 LOADB                            R6 0
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R7 R0 K7 ["pinDataType"]
       43 GETUPVAL                         R8 6
       44 GETTABLEKS                       R8 R8 K8 ["PARAMETER_NODE_CLASSNAME"]
       46 JUMPIFEQ                         R7 R8 ; [+2]
       48 LOADB                            R6 0 +1
       49 LOADB                            R6 1
       50 GETUPVAL                         R7 7
       51 GETTABLEKS                       R7 R7 K9 ["Hooks"]
       53 GETTABLEKS                       R7 R7 K10 ["useTokens"]
       55 CALL                             R7 0 1
       56 GETUPVAL                         R8 8
       57 GETTABLEKS                       R8 R8 K11 ["useSignalState"]
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K12 ["useMemo"]
       62 NEWCLOSURE                       R10 P0
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R0
       65 NEWTABLE                         R11 0 2
       67 GETTABLEKS                       R12 R2 K13 ["nodePayloadDispatcher"]
       69 GETTABLEKS                       R12 R12 K14 ["observe"]
       71 GETTABLEKS                       R13 R0 K0 ["pinNodeId"]
       73 SETLIST                          R11 R12 2 [1]
       75 CALL                             R9 2 -1
       76 CALL                             R8 -1 1
       77 GETUPVAL                         R9 9
       78 GETTABLEKS                       R10 R2 K15 ["nodeRenderInfoDispatcher"]
       80 GETTABLEKS                       R10 R10 K14 ["observe"]
       82 GETTABLEKS                       R11 R0 K0 ["pinNodeId"]
       84 CALL                             R10 1 -1
       85 CALL                             R9 -1 1
       86 GETUPVAL                         R11 10
       87 CALL                             R11 0 1
       88 JUMPIFNOT                        R11 ; [+7]
       89 GETTABLEKS                       R11 R0 K16 ["pinSide"]
       91 JUMPIFNOTEQKS                    R11 K17 ["Input"] ; [+4]
       93 GETTABLEKS                       R10 R0 K18 ["pinInputId"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R10
       97 GETUPVAL                         R11 0
       98 GETTABLEKS                       R11 R11 K12 ["useMemo"]
      100 NEWCLOSURE                       R12 P1
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          VAL R10
      104 NEWTABLE                         R13 0 6
      106 GETTABLEKS                       R14 R0 K0 ["pinNodeId"]
      108 GETTABLEKS                       R15 R0 K16 ["pinSide"]
      110 GETTABLEKS                       R16 R0 K19 ["pinName"]
      112 GETTABLEKS                       R17 R0 K20 ["pinDynamicIndex"]
      114 GETTABLEKS                       R18 R0 K7 ["pinDataType"]
      116 MOVE                             R19 R10
      117 SETLIST                          R13 R14 6 [1]
      119 CALL                             R11 2 1
      120 GETUPVAL                         R12 0
      121 GETTABLEKS                       R12 R12 K12 ["useMemo"]
      123 NEWCLOSURE                       R13 P2
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R10
      127 NEWTABLE                         R14 0 6
      129 MOVE                             R15 R8
      130 GETTABLEKS                       R16 R0 K16 ["pinSide"]
      132 GETTABLEKS                       R17 R0 K19 ["pinName"]
      134 GETTABLEKS                       R18 R0 K20 ["pinDynamicIndex"]
      136 GETTABLEKS                       R19 R0 K7 ["pinDataType"]
      138 MOVE                             R20 R10
      139 SETLIST                          R14 R15 6 [1]
      141 CALL                             R12 2 1
      142 GETUPVAL                         R13 0
      143 GETTABLEKS                       R13 R13 K12 ["useMemo"]
      145 NEWCLOSURE                       R14 P3
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U11
      149 CAPTURE                          UPVAL U10
      150 NEWTABLE                         R15 0 3
      152 MOVE                             R16 R12
      153 GETTABLEKS                       R17 R0 K16 ["pinSide"]
      155 GETTABLEKS                       R18 R0 K19 ["pinName"]
      157 SETLIST                          R15 R16 3 [1]
      159 CALL                             R13 2 1
      160 GETUPVAL                         R14 0
      161 GETTABLEKS                       R14 R14 K21 ["useEffect"]
      163 NEWCLOSURE                       R15 P4
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R0
      166 CAPTURE                          UPVAL U12
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R11
      171 NEWTABLE                         R16 0 10
      173 GETTABLEKS                       R17 R0 K0 ["pinNodeId"]
      175 GETTABLEKS                       R18 R0 K7 ["pinDataType"]
      177 GETTABLEKS                       R19 R0 K19 ["pinName"]
      179 GETTABLEKS                       R20 R0 K16 ["pinSide"]
      181 GETTABLEKS                       R21 R0 K20 ["pinDynamicIndex"]
      183 MOVE                             R22 R10
      184 MOVE                             R23 R11
      185 GETTABLEKS                       R24 R2 K13 ["nodePayloadDispatcher"]
      187 GETTABLEKS                       R24 R24 K14 ["observe"]
      189 GETTABLEKS                       R25 R9 K22 ["observeOffsetInNodeSpace"]
      191 GETTABLEKS                       R26 R1 K23 ["pushAnchor"]
      193 SETLIST                          R16 R17 10 [1]
      195 CALL                             R14 2 0
      196 GETUPVAL                         R14 8
      197 GETTABLEKS                       R14 R14 K11 ["useSignalState"]
      199 GETUPVAL                         R15 0
      200 GETTABLEKS                       R15 R15 K12 ["useMemo"]
      202 NEWCLOSURE                       R16 P5
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R11
      205 NEWTABLE                         R17 0 2
      207 MOVE                             R18 R11
      208 GETTABLEKS                       R19 R1 K24 ["observeCurvePreviewInfo"]
      210 SETLIST                          R17 R18 2 [1]
      212 CALL                             R15 2 -1
      213 CALL                             R14 -1 1
      214 GETUPVAL                         R15 8
      215 GETTABLEKS                       R15 R15 K11 ["useSignalState"]
      217 GETUPVAL                         R16 0
      218 GETTABLEKS                       R16 R16 K12 ["useMemo"]
      220 NEWCLOSURE                       R17 P6
      221 CAPTURE                          VAL R13
      222 CAPTURE                          UPVAL U13
      223 CAPTURE                          VAL R1
      224 NEWTABLE                         R18 0 2
      226 MOVE                             R19 R13
      227 GETTABLEKS                       R20 R1 K24 ["observeCurvePreviewInfo"]
      229 SETLIST                          R18 R19 2 [1]
      231 CALL                             R16 2 -1
      232 CALL                             R15 -1 1
      233 GETUPVAL                         R16 8
      234 GETTABLEKS                       R16 R16 K11 ["useSignalState"]
      236 GETUPVAL                         R17 0
      237 GETTABLEKS                       R17 R17 K12 ["useMemo"]
      239 NEWCLOSURE                       R18 P7
      240 CAPTURE                          VAL R2
      241 CAPTURE                          VAL R0
      242 CAPTURE                          UPVAL U13
      243 CAPTURE                          VAL R10
      244 NEWTABLE                         R19 0 6
      246 GETTABLEKS                       R20 R0 K0 ["pinNodeId"]
      248 GETTABLEKS                       R21 R0 K19 ["pinName"]
      250 GETTABLEKS                       R22 R0 K20 ["pinDynamicIndex"]
      252 GETTABLEKS                       R23 R0 K7 ["pinDataType"]
      254 MOVE                             R24 R10
      255 GETTABLEKS                       R25 R2 K13 ["nodePayloadDispatcher"]
      257 GETTABLEKS                       R25 R25 K14 ["observe"]
      259 SETLIST                          R19 R20 6 [1]
      261 CALL                             R17 2 -1
      262 CALL                             R16 -1 1
      263 GETUPVAL                         R17 8
      264 GETTABLEKS                       R17 R17 K11 ["useSignalState"]
      266 GETUPVAL                         R18 0
      267 GETTABLEKS                       R18 R18 K12 ["useMemo"]
      269 NEWCLOSURE                       R19 P8
      270 CAPTURE                          VAL R0
      271 CAPTURE                          VAL R12
      272 CAPTURE                          UPVAL U13
      273 CAPTURE                          VAL R2
      274 NEWTABLE                         R20 0 3
      276 GETTABLEKS                       R21 R0 K7 ["pinDataType"]
      278 MOVE                             R22 R12
      279 GETTABLEKS                       R23 R2 K13 ["nodePayloadDispatcher"]
      281 GETTABLEKS                       R23 R23 K14 ["observe"]
      283 SETLIST                          R20 R21 3 [1]
      285 CALL                             R18 2 -1
      286 CALL                             R17 -1 1
      287 LOADNIL                          R18
      288 GETUPVAL                         R19 14
      289 CALL                             R19 0 1
      290 JUMPIFNOT                        R19 ; [+36]
      291 GETTABLEKS                       R19 R0 K16 ["pinSide"]
      293 JUMPIFNOTEQKS                    R19 K17 ["Input"] ; [+31]
      295 GETTABLEKS                       R20 R0 K20 ["pinDynamicIndex"]
      297 JUMPIFEQKNIL                     R20 ; [+10]
      299 JUMPIFNOT                        R12 ; [+8]
      300 JUMPIFNOT                        R8 ; [+7]
      301 GETTABLEKS                       R21 R8 K26 ["inputPinIds"]
      303 GETTABLEKS                       R22 R0 K20 ["pinDynamicIndex"]
      305 GETTABLE                         R20 R21 R22
      306 ORK                              R19 R20 K25 [""]
      307 JUMP                             ; [+1]
      308 LOADK                            R19 K25 [""]
      309 GETUPVAL                         R20 4
      310 GETTABLEKS                       R20 R20 K27 ["getNodeOverride"]
      312 GETTABLEKS                       R21 R4 K28 ["nodeOverrides"]
      314 GETTABLEKS                       R22 R0 K0 ["pinNodeId"]
      316 GETTABLEKS                       R23 R0 K19 ["pinName"]
      318 MOVE                             R24 R19
      319 CALL                             R20 4 1
      320 JUMPIFNOTEQKNIL                  R20 ; [+2]
      322 LOADB                            R18 0 +1
      323 LOADB                            R18 1
      324 JUMP                             ; [+20]
      325 LOADB                            R18 0
      326 JUMP                             ; [+18]
      327 LOADB                            R19 0
      328 JUMPIFEQKNIL                     R17 ; [+15]
      330 LOADB                            R19 0
      331 GETTABLEKS                       R20 R17 K29 ["name"]
      333 JUMPIFEQKNIL                     R20 ; [+10]
      335 GETTABLEKS                       R21 R3 K30 ["parameterOverrides"]
      337 GETTABLEKS                       R22 R17 K29 ["name"]
      339 GETTABLE                         R20 R21 R22
      340 JUMPIFNOTEQKNIL                  R20 ; [+2]
      342 LOADB                            R19 0 +1
      343 LOADB                            R19 1
      344 MOVE                             R18 R19
      345 GETUPVAL                         R19 8
      346 GETTABLEKS                       R19 R19 K11 ["useSignalState"]
      348 GETUPVAL                         R20 0
      349 GETTABLEKS                       R20 R20 K12 ["useMemo"]
      351 NEWCLOSURE                       R21 P9
      352 CAPTURE                          UPVAL U15
      353 CAPTURE                          VAL R12
      354 CAPTURE                          VAL R0
      355 CAPTURE                          UPVAL U6
      356 CAPTURE                          UPVAL U13
      357 CAPTURE                          VAL R1
      358 NEWTABLE                         R22 0 4
      360 MOVE                             R23 R12
      361 GETTABLEKS                       R24 R0 K16 ["pinSide"]
      363 GETTABLEKS                       R25 R0 K7 ["pinDataType"]
      365 GETTABLEKS                       R26 R1 K31 ["observeGlobalCurvePreviewInfo"]
      367 SETLIST                          R22 R23 4 [1]
      369 CALL                             R20 2 -1
      370 CALL                             R19 -1 1
      371 GETUPVAL                         R20 0
      372 GETTABLEKS                       R20 R20 K12 ["useMemo"]
      374 NEWCLOSURE                       R21 P10
      375 CAPTURE                          VAL R14
      376 CAPTURE                          VAL R0
      377 CAPTURE                          UPVAL U15
      378 CAPTURE                          VAL R19
      379 CAPTURE                          VAL R15
      380 CAPTURE                          UPVAL U16
      381 CAPTURE                          UPVAL U17
      382 CAPTURE                          VAL R10
      383 CAPTURE                          VAL R16
      384 NEWTABLE                         R22 0 8
      386 MOVE                             R23 R16
      387 MOVE                             R24 R14
      388 MOVE                             R25 R15
      389 GETTABLEKS                       R26 R0 K0 ["pinNodeId"]
      391 GETTABLEKS                       R27 R0 K19 ["pinName"]
      393 GETTABLEKS                       R28 R0 K16 ["pinSide"]
      395 MOVE                             R29 R10
      396 MOVE                             R30 R19
      397 SETLIST                          R22 R23 8 [1]
      399 CALL                             R20 2 1
      400 GETUPVAL                         R21 0
      401 GETTABLEKS                       R21 R21 K12 ["useMemo"]
      403 NEWCLOSURE                       R22 P11
      404 CAPTURE                          VAL R20
      405 CAPTURE                          VAL R6
      406 CAPTURE                          VAL R7
      407 CAPTURE                          VAL R5
      408 NEWTABLE                         R23 0 4
      410 MOVE                             R24 R20
      411 MOVE                             R25 R6
      412 GETTABLEKS                       R26 R5 K32 ["enabled"]
      414 MOVE                             R27 R7
      415 SETLIST                          R23 R24 4 [1]
      417 CALL                             R21 2 1
      418 GETUPVAL                         R22 0
      419 GETTABLEKS                       R22 R22 K12 ["useMemo"]
      421 NEWCLOSURE                       R23 P12
      422 CAPTURE                          VAL R0
      423 CAPTURE                          VAL R7
      424 CAPTURE                          VAL R6
      425 CAPTURE                          VAL R5
      426 NEWTABLE                         R24 0 4
      428 MOVE                             R25 R6
      429 GETTABLEKS                       R26 R5 K32 ["enabled"]
      431 GETTABLEKS                       R27 R0 K33 ["selected"]
      433 MOVE                             R28 R7
      434 SETLIST                          R24 R25 4 [1]
      436 CALL                             R22 2 1
      437 GETUPVAL                         R23 0
      438 GETTABLEKS                       R23 R23 K34 ["useCallback"]
      440 NEWCLOSURE                       R24 P13
      441 CAPTURE                          VAL R1
      442 CAPTURE                          VAL R0
      443 CAPTURE                          VAL R10
      444 NEWTABLE                         R25 0 8
      446 GETTABLEKS                       R26 R0 K0 ["pinNodeId"]
      448 GETTABLEKS                       R27 R0 K16 ["pinSide"]
      450 GETTABLEKS                       R28 R0 K7 ["pinDataType"]
      452 GETTABLEKS                       R29 R0 K19 ["pinName"]
      454 GETTABLEKS                       R30 R0 K35 ["pinValue"]
      456 GETTABLEKS                       R31 R0 K20 ["pinDynamicIndex"]
      458 MOVE                             R32 R10
      459 GETTABLEKS                       R33 R1 K36 ["onStartDrag"]
      461 SETLIST                          R25 R26 8 [1]
      463 CALL                             R23 2 1
      464 GETUPVAL                         R24 5
      465 GETTABLEKS                       R24 R24 K37 ["useEventCallback"]
      467 NEWCLOSURE                       R25 P14
      468 CAPTURE                          VAL R1
      469 CALL                             R24 1 1
      470 GETUPVAL                         R25 0
      471 GETTABLEKS                       R25 R25 K38 ["useState"]
      473 LOADNIL                          R26
      474 CALL                             R25 1 2
      475 GETUPVAL                         R27 0
      476 GETTABLEKS                       R27 R27 K21 ["useEffect"]
      478 NEWCLOSURE                       R28 P15
      479 CAPTURE                          VAL R25
      480 CAPTURE                          VAL R0
      481 CAPTURE                          REF R18
      482 CAPTURE                          VAL R20
      483 NEWTABLE                         R29 0 5
      485 MOVE                             R30 R25
      486 GETTABLEKS                       R31 R0 K19 ["pinName"]
      488 GETTABLEKS                       R32 R0 K39 ["debugDisplayName"]
      490 MOVE                             R33 R18
      491 MOVE                             R34 R20
      492 SETLIST                          R29 R30 5 [1]
      494 CALL                             R27 2 0
      495 GETUPVAL                         R27 0
      496 GETTABLEKS                       R27 R27 K40 ["createElement"]
      498 GETUPVAL                         R28 18
      499 DUPTABLE                         R29 K54 [{["Position"], ["positionerRef"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 1, ["CanDrag"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"], ["OnHoverStart"], ["OnHoverEnded"]}]
      500 GETTABLEKS                       R30 R0 K41 ["Position"]
      502 SETTABLEKS                       R30 R29 K41 ["Position"]
      504 GETTABLEKS                       R30 R9 K55 ["setPositionerFrame"]
      506 SETTABLEKS                       R30 R29 K42 ["positionerRef"]
      508 GETUPVAL                         R30 6
      509 GETTABLEKS                       R30 R30 K56 ["NODEVIEW_ZINDEX"]
      511 GETTABLEKS                       R30 R30 K57 ["Anchors"]
      513 SETTABLEKS                       R30 R29 K43 ["ZIndex"]
      515 SETTABLEKS                       R21 R29 K44 ["Color3"]
      517 SETTABLEKS                       R22 R29 K45 ["OutlineColor3"]
      519 GETTABLEKS                       R31 R2 K58 ["isReadonly"]
      521 NOT                              R30 R31
      522 SETTABLEKS                       R30 R29 K48 ["CanDrag"]
      524 SETTABLEKS                       R23 R29 K49 ["OnDragStart"]
      526 SETTABLEKS                       R24 R29 K50 ["OnDragMoved"]
      528 GETTABLEKS                       R30 R5 K59 ["disable"]
      530 SETTABLEKS                       R30 R29 K51 ["OnDragEnded"]
      532 GETTABLEKS                       R30 R5 K60 ["enable"]
      534 SETTABLEKS                       R30 R29 K52 ["OnHoverStart"]
      536 GETTABLEKS                       R30 R5 K59 ["disable"]
      538 SETTABLEKS                       R30 R29 K53 ["OnHoverEnded"]
      540 DUPTABLE                         R30 K62 [{"DebugMarker"}]
      541 GETUPVAL                         R31 0
      542 GETTABLEKS                       R31 R31 K40 ["createElement"]
      544 GETUPVAL                         R32 7
      545 GETTABLEKS                       R32 R32 K63 ["View"]
      547 DUPTABLE                         R33 K69 [{["tag"] = "size-full", ["testId"] = "RenderedCompositorPin-DebugMarker", ["ref"]}]
      548 SETTABLEKS                       R26 R33 K68 ["ref"]
      550 CALL                             R31 2 1
      551 SETTABLEKS                       R31 R30 K61 ["DebugMarker"]
      553 CALL                             R27 3 -1
      554 CLOSEUPVALS                      R18
      555 RETURN                           R27 -1

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
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["NodePropertyOverrideContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["NodeViewTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Components"]
       65 GETTABLEKS                       R10 R10 K17 ["ParameterOverrideContext"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Parent"]
       72 GETTABLEKS                       R11 R11 K18 ["React"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Parent"]
       79 GETTABLEKS                       R12 R12 K19 ["ReactUtils"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Parent"]
       86 GETTABLEKS                       R13 R13 K20 ["Signals"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K12 ["Parent"]
       93 GETTABLEKS                       R14 R14 K21 ["SignalsReact"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K12 ["Parent"]
      100 GETTABLEKS                       R15 R15 K22 ["SignalsUtils"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K23 ["Flags"]
      107 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUIInputIds"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K23 ["Flags"]
      114 GETTABLEKS                       R17 R17 K25 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K23 ["Flags"]
      121 GETTABLEKS                       R18 R18 K26 ["getFFlagAnimGraphUI_PinOffsetsUseRenderedWidth"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K23 ["Flags"]
      128 GETTABLEKS                       R19 R19 K27 ["getFFlagAnimGraphUIKeepParameterNoodlesOnDrag"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K23 ["Flags"]
      135 GETTABLEKS                       R20 R20 K28 ["getFFlagAnimGraphUI_FixUndoHistory"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K29 ["Util"]
      142 GETTABLEKS                       R21 R21 K30 ["getPinAnchorKey"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K29 ["Util"]
      149 GETTABLEKS                       R22 R22 K31 ["isConnectionDetachedByPreview"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K32 ["Hooks"]
      156 GETTABLEKS                       R23 R23 K33 ["useAbsoluteSize"]
      158 CALL                             R22 1 1
      159 DUPCLOSURE                       R23 K34 [PROTO_0]
      160 DUPCLOSURE                       R24 K35 [PROTO_6]
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R14
      166 DUPCLOSURE                       R25 K36 [PROTO_29]
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R24
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R3
      186 GETTABLEKS                       R26 R10 K37 ["memo"]
      188 MOVE                             R27 R25
      189 CALL                             R26 1 -1
      190 RETURN                           R26 -1
