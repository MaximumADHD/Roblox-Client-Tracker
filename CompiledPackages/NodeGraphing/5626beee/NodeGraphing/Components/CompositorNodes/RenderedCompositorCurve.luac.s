PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+21]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["inputPinNodeId"]
        6 JUMPIFEQKNIL                     R1 ; [+16]
        8 GETUPVAL                         R1 0
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 LOADB                            R2 0
       12 JUMPIFEQKNIL                     R1 ; [+9]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K0 ["inputPinNodeId"]
       17 GETTABLE                         R3 R1 R4
       18 JUMPIFEQKNIL                     R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 LOADB                            R1 0
       24 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["observeSpotlightedSubtree"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["createComputed"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIFNOT                        R1 ; [+21]
        8 GETTABLEKS                       R2 R1 K0 ["sourcePinSide"]
       10 JUMPIFNOTEQKS                    R2 K1 ["Input"] ; [+18]
       12 GETTABLEKS                       R2 R1 K2 ["sourcePinNodeId"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["inputPinNodeId"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+11]
       19 GETTABLEKS                       R2 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["inputPinName"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+4]
       26 GETTABLEKS                       R2 R1 K6 ["targetPinPosition"]
       28 RETURN                           R2 1
       29 GETUPVAL                         R3 2
       30 JUMPIFNOT                        R3 ; [+4]
       31 GETUPVAL                         R2 2
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 RETURN                           R2 1
       35 LOADNIL                          R2
       36 RETURN                           R2 1

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["inputPinNodeId"]
        4 JUMPIFNOT                        R1 ; [+32]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["inputPinName"]
        8 JUMPIFNOT                        R1 ; [+28]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["inputPinNodeId"]
       13 LOADK                            R3 K2 ["Input"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["inputPinName"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K3 ["pinDataType"]
       20 JUMPIFNOTEQKS                    R6 K4 ["Parameter"] ; [+5]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K5 ["inputPinDynamicIndex"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K6 ["inputPinInputId"]
       30 CALL                             R1 5 1
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K7 ["observeCurvePreviewInfo"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 1
       36 MOVE                             R0 R2
       37 LOADNIL                          R1
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K8 ["outputPinNodeId"]
       41 JUMPIFNOT                        R2 ; [+19]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K9 ["outputPinName"]
       45 JUMPIFNOT                        R2 ; [+15]
       46 GETUPVAL                         R2 1
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K8 ["outputPinNodeId"]
       50 LOADK                            R4 K10 ["Output"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K9 ["outputPinName"]
       54 CALL                             R2 3 1
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K11 ["observeAnchorPosition"]
       58 MOVE                             R4 R2
       59 CALL                             R3 1 1
       60 MOVE                             R1 R3
       61 GETUPVAL                         R2 3
       62 GETTABLEKS                       R2 R2 K12 ["Experimental"]
       64 GETTABLEKS                       R2 R2 K13 ["createComputed"]
       66 NEWCLOSURE                       R3 P0
       67 CAPTURE                          REF R0
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          REF R1
       70 CALL                             R2 1 -1
       71 CLOSEUPVALS                      R0
       72 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["outputPinNodeId"]
        8 JUMPIF                           R0 ; [+6]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K3 ["of"]
       12 LOADNIL                          R1
       13 CALL                             R0 1 1
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K4 ["nodePayloadDispatcher"]
       18 GETTABLEKS                       R0 R0 K5 ["observe"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K2 ["outputPinNodeId"]
       23 CALL                             R0 1 -1
       24 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIFNOT                        R1 ; [+66]
        8 GETTABLEKS                       R2 R1 K0 ["sourcePinSide"]
       10 JUMPIFNOTEQKS                    R2 K1 ["Output"] ; [+63]
       12 GETTABLEKS                       R2 R1 K2 ["sourcePinNodeId"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["outputPinNodeId"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+56]
       19 GETTABLEKS                       R2 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["outputPinName"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+49]
       26 GETTABLEKS                       R2 R1 K6 ["specificInputPinNodeId"]
       28 JUMPIFEQKNIL                     R2 ; [+42]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K7 ["inputPinNodeId"]
       33 JUMPIFEQKNIL                     R2 ; [+37]
       35 GETTABLEKS                       R2 R1 K6 ["specificInputPinNodeId"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K7 ["inputPinNodeId"]
       40 JUMPIFNOTEQ                      R2 R3 ; [+33]
       42 GETTABLEKS                       R3 R1 K8 ["specificInputPinInputId"]
       44 JUMPIFEQKNIL                     R3 ; [+16]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K9 ["inputPinInputId"]
       49 JUMPIFEQKNIL                     R3 ; [+11]
       51 GETTABLEKS                       R3 R1 K8 ["specificInputPinInputId"]
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K9 ["inputPinInputId"]
       56 JUMPIFEQ                         R3 R4 ; [+2]
       58 LOADB                            R2 0 +1
       59 LOADB                            R2 1
       60 JUMP                             ; [+9]
       61 GETTABLEKS                       R3 R1 K10 ["specificInputPinName"]
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K11 ["inputPinName"]
       66 JUMPIFEQ                         R3 R4 ; [+2]
       68 LOADB                            R2 0 +1
       69 LOADB                            R2 1
       70 JUMPIFNOT                        R2 ; [+3]
       71 GETTABLEKS                       R2 R1 K12 ["targetPinPosition"]
       73 RETURN                           R2 1
       74 GETUPVAL                         R3 2
       75 JUMPIFNOT                        R3 ; [+4]
       76 GETUPVAL                         R2 2
       77 MOVE                             R3 R0
       78 CALL                             R2 1 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R2
       81 JUMPIFNOT                        R2 ; [+1]
       82 RETURN                           R2 1
       83 GETUPVAL                         R4 3
       84 JUMPIFNOT                        R4 ; [+4]
       85 GETUPVAL                         R3 3
       86 MOVE                             R4 R0
       87 CALL                             R3 1 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R3
       90 JUMPIFNOT                        R3 ; [+1]
       91 RETURN                           R3 1
       92 LOADNIL                          R4
       93 RETURN                           R4 1

PROTO_6:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["outputPinNodeId"]
        4 JUMPIFNOT                        R1 ; [+19]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["outputPinName"]
        8 JUMPIFNOT                        R1 ; [+15]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["outputPinNodeId"]
       13 LOADK                            R3 K2 ["Output"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["outputPinName"]
       17 CALL                             R1 3 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K3 ["observeCurvePreviewInfo"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 MOVE                             R0 R2
       24 LOADNIL                          R1
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K4 ["inputPinNodeId"]
       28 JUMPIFNOT                        R2 ; [+32]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K5 ["inputPinName"]
       32 JUMPIFNOT                        R2 ; [+28]
       33 GETUPVAL                         R2 1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K4 ["inputPinNodeId"]
       37 LOADK                            R4 K6 ["Input"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K5 ["inputPinName"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K7 ["pinDataType"]
       44 JUMPIFNOTEQKS                    R7 K8 ["Parameter"] ; [+5]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K9 ["inputPinDynamicIndex"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R6
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K10 ["inputPinInputId"]
       54 CALL                             R2 5 1
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K11 ["observeAnchorPosition"]
       58 MOVE                             R4 R2
       59 CALL                             R3 1 1
       60 MOVE                             R1 R3
       61 LOADNIL                          R2
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K4 ["inputPinNodeId"]
       65 JUMPIFNOT                        R3 ; [+8]
       66 GETUPVAL                         R3 2
       67 GETTABLEKS                       R3 R3 K12 ["observeCollapsedPinPosition"]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K4 ["inputPinNodeId"]
       72 CALL                             R3 1 1
       73 MOVE                             R2 R3
       74 GETUPVAL                         R3 3
       75 GETTABLEKS                       R3 R3 K13 ["Experimental"]
       77 GETTABLEKS                       R3 R3 K14 ["createComputed"]
       79 NEWCLOSURE                       R4 P0
       80 CAPTURE                          REF R0
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          REF R1
       83 CAPTURE                          REF R2
       84 CALL                             R3 1 -1
       85 CLOSEUPVALS                      R0
       86 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 MULK                             R2 R3 K0 [0.5]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["Color"]
       15 GETTABLEKS                       R3 R3 K2 ["Extended"]
       17 GETTABLEKS                       R3 R3 K3 ["Gray"]
       19 GETTABLEKS                       R3 R3 K4 ["Gray_800"]
       21 GETTABLEKS                       R3 R3 K5 ["Color3"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K1 ["Color"]
       26 GETTABLEKS                       R5 R5 K2 ["Extended"]
       28 GETTABLEKS                       R5 R5 K3 ["Gray"]
       30 GETTABLEKS                       R5 R5 K6 ["Gray_600"]
       32 GETTABLEKS                       R5 R5 K5 ["Color3"]
       34 MOVE                             R6 R2
       35 NAMECALL                         R3 R3 K7 ["Lerp"]
       37 CALL                             R3 3 1
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K8 ["pinDataType"]
       41 JUMPIFNOTEQKS                    R4 K9 ["Parameter"] ; [+45]
       43 GETUPVAL                         R4 4
       44 JUMPIFNOT                        R4 ; [+1]
       45 RETURN                           R3 1
       46 GETUPVAL                         R5 5
       47 GETUPVAL                         R6 6
       48 GETTABLEKS                       R6 R6 K10 ["Enums"]
       50 GETTABLEKS                       R6 R6 K11 ["Theme"]
       52 GETTABLEKS                       R6 R6 K12 ["Dark"]
       54 JUMPIFNOTEQ                      R5 R6 ; [+11]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R4 R4 K1 ["Color"]
       59 GETTABLEKS                       R4 R4 K2 ["Extended"]
       61 GETTABLEKS                       R4 R4 K13 ["Green"]
       63 GETTABLEKS                       R4 R4 K14 ["Green_800"]
       65 JUMP                             ; [+9]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R4 R4 K1 ["Color"]
       69 GETTABLEKS                       R4 R4 K2 ["Extended"]
       71 GETTABLEKS                       R4 R4 K13 ["Green"]
       73 GETTABLEKS                       R4 R4 K15 ["Green_600"]
       75 JUMPIFNOT                        R1 ; [+8]
       76 GETTABLEKS                       R5 R4 K5 ["Color3"]
       78 MOVE                             R7 R3
       79 LOADK                            R8 K0 [0.5]
       80 NAMECALL                         R5 R5 K7 ["Lerp"]
       82 CALL                             R5 3 -1
       83 RETURN                           R5 -1
       84 GETTABLEKS                       R5 R4 K5 ["Color3"]
       86 RETURN                           R5 1
       87 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeFadeByNodeId"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["outputPinNodeId"]
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["observeFadeByNodeId"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["outputPinNodeId"]
       14 CALL                             R0 1 1
       15 JUMPIF                           R0 ; [+5]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K2 ["of"]
       19 LOADN                            R1 1
       20 CALL                             R0 1 1
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K3 ["createComputed"]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CALL                             R1 1 -1
       33 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["useContext"]
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K1 ["Context"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 6
       36 CALL                             R6 0 1
       37 GETUPVAL                         R7 7
       38 GETTABLEKS                       R7 R7 K2 ["Hooks"]
       40 GETTABLEKS                       R7 R7 K3 ["useTokens"]
       42 CALL                             R7 0 1
       43 GETTABLEKS                       R8 R4 K4 ["observeZoomRatio"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          VAL R5
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R11 0 2
       54 MOVE                             R12 R5
       55 JUMPIFNOT                        R12 ; [+2]
       56 GETTABLEKS                       R12 R5 K6 ["observeSpotlightedSubtree"]
       58 GETTABLEKS                       R13 R0 K7 ["inputPinNodeId"]
       60 SETLIST                          R11 R12 2 [1]
       62 CALL                             R9 2 1
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K5 ["useMemo"]
       66 NEWCLOSURE                       R11 P1
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U10
       71 NEWTABLE                         R12 0 9
       73 GETTABLEKS                       R13 R0 K8 ["outputPinNodeId"]
       75 GETTABLEKS                       R14 R0 K9 ["outputPinName"]
       77 GETTABLEKS                       R15 R0 K7 ["inputPinNodeId"]
       79 GETTABLEKS                       R16 R0 K10 ["inputPinName"]
       81 GETTABLEKS                       R17 R0 K11 ["inputPinDynamicIndex"]
       83 GETTABLEKS                       R18 R0 K12 ["inputPinInputId"]
       85 GETTABLEKS                       R19 R0 K13 ["pinDataType"]
       87 GETTABLEKS                       R20 R1 K14 ["observeAnchorPosition"]
       89 GETTABLEKS                       R21 R1 K15 ["observeCurvePreviewInfo"]
       91 SETLIST                          R12 R13 9 [1]
       93 CALL                             R10 2 1
       94 GETUPVAL                         R11 11
       95 GETTABLEKS                       R11 R11 K16 ["useSignalState"]
       97 GETUPVAL                         R12 0
       98 GETTABLEKS                       R12 R12 K5 ["useMemo"]
      100 NEWCLOSURE                       R13 P2
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          VAL R2
      104 NEWTABLE                         R14 0 3
      106 GETTABLEKS                       R15 R0 K13 ["pinDataType"]
      108 GETTABLEKS                       R16 R0 K8 ["outputPinNodeId"]
      110 GETTABLEKS                       R17 R2 K17 ["nodePayloadDispatcher"]
      112 GETTABLEKS                       R17 R17 K18 ["observe"]
      114 SETLIST                          R14 R15 3 [1]
      116 CALL                             R12 2 -1
      117 CALL                             R11 -1 1
      118 LOADB                            R12 0
      119 JUMPIFEQKNIL                     R11 ; [+15]
      121 LOADB                            R12 0
      122 GETTABLEKS                       R13 R11 K19 ["name"]
      124 JUMPIFEQKNIL                     R13 ; [+10]
      126 GETTABLEKS                       R14 R3 K20 ["parameterOverrides"]
      128 GETTABLEKS                       R15 R11 K19 ["name"]
      130 GETTABLE                         R13 R14 R15
      131 JUMPIFNOTEQKNIL                  R13 ; [+2]
      133 LOADB                            R12 0 +1
      134 LOADB                            R12 1
      135 GETUPVAL                         R13 0
      136 GETTABLEKS                       R13 R13 K5 ["useMemo"]
      138 NEWCLOSURE                       R14 P3
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U9
      141 CAPTURE                          VAL R1
      142 CAPTURE                          UPVAL U10
      143 NEWTABLE                         R15 0 10
      145 GETTABLEKS                       R16 R0 K8 ["outputPinNodeId"]
      147 GETTABLEKS                       R17 R0 K9 ["outputPinName"]
      149 GETTABLEKS                       R18 R0 K7 ["inputPinNodeId"]
      151 GETTABLEKS                       R19 R0 K10 ["inputPinName"]
      153 GETTABLEKS                       R20 R0 K11 ["inputPinDynamicIndex"]
      155 GETTABLEKS                       R21 R0 K12 ["inputPinInputId"]
      157 GETTABLEKS                       R22 R0 K13 ["pinDataType"]
      159 GETTABLEKS                       R23 R1 K14 ["observeAnchorPosition"]
      161 GETTABLEKS                       R24 R1 K15 ["observeCurvePreviewInfo"]
      163 GETTABLEKS                       R25 R1 K21 ["observeCollapsedPinPosition"]
      165 SETLIST                          R15 R16 10 [1]
      167 CALL                             R13 2 1
      168 GETUPVAL                         R14 11
      169 GETTABLEKS                       R14 R14 K22 ["useSignalBinding"]
      171 GETUPVAL                         R15 0
      172 GETTABLEKS                       R15 R15 K5 ["useMemo"]
      174 NEWCLOSURE                       R16 P4
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R0
      177 CAPTURE                          UPVAL U10
      178 CAPTURE                          UPVAL U8
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R6
      183 CAPTURE                          UPVAL U7
      184 NEWTABLE                         R17 0 7
      186 MOVE                             R18 R7
      187 MOVE                             R19 R6
      188 GETTABLEKS                       R20 R0 K13 ["pinDataType"]
      190 MOVE                             R21 R12
      191 GETTABLEKS                       R22 R2 K23 ["observeFadeByNodeId"]
      193 GETTABLEKS                       R23 R0 K8 ["outputPinNodeId"]
      195 MOVE                             R24 R9
      196 SETLIST                          R17 R18 7 [1]
      198 CALL                             R15 2 -1
      199 CALL                             R14 -1 1
      200 GETUPVAL                         R15 0
      201 GETTABLEKS                       R15 R15 K24 ["createElement"]
      203 GETUPVAL                         R16 12
      204 DUPTABLE                         R17 K30 [{"ObserveScale", "ObserveStart", "ObserveFinish", "Color3", "ZIndex"}]
      205 SETTABLEKS                       R8 R17 K25 ["ObserveScale"]
      207 SETTABLEKS                       R10 R17 K26 ["ObserveStart"]
      209 SETTABLEKS                       R13 R17 K27 ["ObserveFinish"]
      211 SETTABLEKS                       R14 R17 K28 ["Color3"]
      213 GETUPVAL                         R18 13
      214 GETTABLEKS                       R18 R18 K31 ["NODEVIEW_ZINDEX"]
      216 GETTABLEKS                       R18 R18 K32 ["Curves"]
      218 SETTABLEKS                       R18 R17 K29 ["ZIndex"]
      220 CALL                             R15 2 -1
      221 RETURN                           R15 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["CompositorCurve"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["GraphContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["NodeViewTypes"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K10 ["Parent"]
       49 GETTABLEKS                       R8 R8 K14 ["React"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K6 ["Components"]
       56 GETTABLEKS                       R9 R9 K15 ["ParameterOverrideContext"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K10 ["Parent"]
       63 GETTABLEKS                       R10 R10 K16 ["Signals"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Parent"]
       70 GETTABLEKS                       R11 R11 K17 ["SignalsReact"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K10 ["Parent"]
       77 GETTABLEKS                       R12 R12 K18 ["SignalsUtils"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K6 ["Components"]
       84 GETTABLEKS                       R13 R13 K19 ["ViewportRectContext"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K20 ["Util"]
       91 GETTABLEKS                       R14 R14 K21 ["getPinAnchorKey"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K22 ["Hooks"]
       98 GETTABLEKS                       R15 R15 K23 ["useFoundationStudioTheme"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K6 ["Components"]
      105 GETTABLEKS                       R16 R16 K24 ["SpotlightedNodeContext"]
      107 CALL                             R15 1 1
      108 DUPCLOSURE                       R16 K25 [PROTO_9]
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R3
      123 RETURN                           R16 1
