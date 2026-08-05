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
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["of"]
        6 LOADB                            R1 0
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+3]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["observeSpotlightedSubtree"]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K2 ["createComputed"]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U4
       20 CALL                             R1 1 -1
       21 RETURN                           R1 -1

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
       17 GETUPVAL                         R6 2
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+9]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K3 ["pinDataType"]
       23 JUMPIFNOTEQKS                    R6 K4 ["Parameter"] ; [+5]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K5 ["inputPinDynamicIndex"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 CALL                             R1 4 1
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K6 ["observeCurvePreviewInfo"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 1
       36 MOVE                             R0 R2
       37 LOADNIL                          R1
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K7 ["outputPinNodeId"]
       41 JUMPIFNOT                        R2 ; [+19]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K8 ["outputPinName"]
       45 JUMPIFNOT                        R2 ; [+15]
       46 GETUPVAL                         R2 1
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K7 ["outputPinNodeId"]
       50 LOADK                            R4 K9 ["Output"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K8 ["outputPinName"]
       54 CALL                             R2 3 1
       55 GETUPVAL                         R3 3
       56 GETTABLEKS                       R3 R3 K10 ["observeAnchorPosition"]
       58 MOVE                             R4 R2
       59 CALL                             R3 1 1
       60 MOVE                             R1 R3
       61 GETUPVAL                         R2 4
       62 GETTABLEKS                       R2 R2 K11 ["Experimental"]
       64 GETTABLEKS                       R2 R2 K12 ["createComputed"]
       66 NEWCLOSURE                       R3 P0
       67 CAPTURE                          REF R0
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          REF R1
       70 CALL                             R2 1 -1
       71 CLOSEUPVALS                      R0
       72 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["outputPinNodeId"]
        3 ORK                              R0 R1 K0 [""]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["DEPRECATED_observeIsDisabledByNodeId"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["DEPRECATED_observeIsDisabledByNodeId"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K3 ["of"]
       17 LOADB                            R2 0
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIFNOT                        R1 ; [+47]
        8 GETTABLEKS                       R2 R1 K0 ["sourcePinSide"]
       10 JUMPIFNOTEQKS                    R2 K1 ["Output"] ; [+44]
       12 GETTABLEKS                       R2 R1 K2 ["sourcePinNodeId"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["outputPinNodeId"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+37]
       19 GETTABLEKS                       R2 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["outputPinName"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+30]
       26 GETTABLEKS                       R2 R1 K6 ["specificInputPinNodeId"]
       28 JUMPIFEQKNIL                     R2 ; [+23]
       30 GETUPVAL                         R2 2
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+22]
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K7 ["inputPinNodeId"]
       36 JUMPIFEQKNIL                     R2 ; [+15]
       38 GETTABLEKS                       R2 R1 K6 ["specificInputPinNodeId"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K7 ["inputPinNodeId"]
       43 JUMPIFNOTEQ                      R2 R3 ; [+11]
       45 GETTABLEKS                       R2 R1 K8 ["specificInputPinName"]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K9 ["inputPinName"]
       50 JUMPIFNOTEQ                      R2 R3 ; [+4]
       52 GETTABLEKS                       R2 R1 K10 ["targetPinPosition"]
       54 RETURN                           R2 1
       55 GETUPVAL                         R3 3
       56 JUMPIFNOT                        R3 ; [+4]
       57 GETUPVAL                         R2 3
       58 MOVE                             R3 R0
       59 CALL                             R2 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R2
       62 JUMPIFNOT                        R2 ; [+1]
       63 RETURN                           R2 1
       64 GETUPVAL                         R4 4
       65 JUMPIFNOT                        R4 ; [+4]
       66 GETUPVAL                         R3 4
       67 MOVE                             R4 R0
       68 CALL                             R3 1 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R3
       71 JUMPIFNOT                        R3 ; [+1]
       72 RETURN                           R3 1
       73 LOADNIL                          R4
       74 RETURN                           R4 1

PROTO_7:
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
       41 GETUPVAL                         R7 3
       42 CALL                             R7 0 1
       43 JUMPIFNOT                        R7 ; [+9]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K7 ["pinDataType"]
       47 JUMPIFNOTEQKS                    R7 K8 ["Parameter"] ; [+5]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K9 ["inputPinDynamicIndex"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R6
       54 CALL                             R2 4 1
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K10 ["observeAnchorPosition"]
       58 MOVE                             R4 R2
       59 CALL                             R3 1 1
       60 MOVE                             R1 R3
       61 LOADNIL                          R2
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K4 ["inputPinNodeId"]
       65 JUMPIFNOT                        R3 ; [+8]
       66 GETUPVAL                         R3 2
       67 GETTABLEKS                       R3 R3 K11 ["observeCollapsedPinPosition"]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K4 ["inputPinNodeId"]
       72 CALL                             R3 1 1
       73 MOVE                             R2 R3
       74 GETUPVAL                         R3 4
       75 GETTABLEKS                       R3 R3 K12 ["Experimental"]
       77 GETTABLEKS                       R3 R3 K13 ["createComputed"]
       79 NEWCLOSURE                       R4 P0
       80 CAPTURE                          REF R0
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          REF R1
       84 CAPTURE                          REF R2
       85 CALL                             R3 1 -1
       86 CLOSEUPVALS                      R0
       87 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMP                             ; [+1]
        7 LOADB                            R1 0
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 MULK                             R2 R3 K0 [0.5]
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K1 ["Color"]
       20 GETTABLEKS                       R3 R3 K2 ["Extended"]
       22 GETTABLEKS                       R3 R3 K3 ["Gray"]
       24 GETTABLEKS                       R3 R3 K4 ["Gray_800"]
       26 GETTABLEKS                       R3 R3 K5 ["Color3"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K1 ["Color"]
       31 GETTABLEKS                       R5 R5 K2 ["Extended"]
       33 GETTABLEKS                       R5 R5 K3 ["Gray"]
       35 GETTABLEKS                       R5 R5 K6 ["Gray_600"]
       37 GETTABLEKS                       R5 R5 K5 ["Color3"]
       39 MOVE                             R6 R2
       40 NAMECALL                         R3 R3 K7 ["Lerp"]
       42 CALL                             R3 3 1
       43 GETUPVAL                         R4 4
       44 GETTABLEKS                       R4 R4 K8 ["pinDataType"]
       46 JUMPIFNOTEQKS                    R4 K9 ["Parameter"] ; [+45]
       48 GETUPVAL                         R4 5
       49 JUMPIFNOT                        R4 ; [+1]
       50 RETURN                           R3 1
       51 GETUPVAL                         R5 6
       52 GETUPVAL                         R6 7
       53 GETTABLEKS                       R6 R6 K10 ["Enums"]
       55 GETTABLEKS                       R6 R6 K11 ["Theme"]
       57 GETTABLEKS                       R6 R6 K12 ["Dark"]
       59 JUMPIFNOTEQ                      R5 R6 ; [+11]
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K1 ["Color"]
       64 GETTABLEKS                       R4 R4 K2 ["Extended"]
       66 GETTABLEKS                       R4 R4 K13 ["Green"]
       68 GETTABLEKS                       R4 R4 K14 ["Green_800"]
       70 JUMP                             ; [+9]
       71 GETUPVAL                         R4 3
       72 GETTABLEKS                       R4 R4 K1 ["Color"]
       74 GETTABLEKS                       R4 R4 K2 ["Extended"]
       76 GETTABLEKS                       R4 R4 K13 ["Green"]
       78 GETTABLEKS                       R4 R4 K15 ["Green_600"]
       80 JUMPIFNOT                        R1 ; [+8]
       81 GETTABLEKS                       R5 R4 K5 ["Color3"]
       83 MOVE                             R7 R3
       84 LOADK                            R8 K0 [0.5]
       85 NAMECALL                         R5 R5 K7 ["Lerp"]
       87 CALL                             R5 3 -1
       88 RETURN                           R5 -1
       89 GETTABLEKS                       R5 R4 K5 ["Color3"]
       91 RETURN                           R5 1
       92 RETURN                           R3 1

PROTO_9:
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
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CALL                             R1 1 -1
       34 RETURN                           R1 -1

PROTO_10:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["pinDataType"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Parameter"] ; [+61]
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+26]
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+12]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["Color"]
       13 GETTABLEKS                       R1 R1 K3 ["Extended"]
       15 GETTABLEKS                       R1 R1 K4 ["Gray"]
       17 GETTABLEKS                       R1 R1 K5 ["Gray_800"]
       19 GETTABLEKS                       R0 R1 K6 ["Color3"]
       21 JUMP                             ; [+69]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K2 ["Color"]
       25 GETTABLEKS                       R1 R1 K3 ["Extended"]
       27 GETTABLEKS                       R1 R1 K4 ["Gray"]
       29 GETTABLEKS                       R1 R1 K7 ["Gray_600"]
       31 GETTABLEKS                       R0 R1 K6 ["Color3"]
       33 JUMP                             ; [+57]
       34 GETUPVAL                         R2 4
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K8 ["Enums"]
       38 GETTABLEKS                       R3 R3 K9 ["Theme"]
       40 GETTABLEKS                       R3 R3 K10 ["Dark"]
       42 JUMPIFNOTEQ                      R2 R3 ; [+11]
       44 GETUPVAL                         R1 3
       45 GETTABLEKS                       R1 R1 K2 ["Color"]
       47 GETTABLEKS                       R1 R1 K3 ["Extended"]
       49 GETTABLEKS                       R1 R1 K11 ["Green"]
       51 GETTABLEKS                       R1 R1 K12 ["Green_800"]
       53 JUMP                             ; [+9]
       54 GETUPVAL                         R1 3
       55 GETTABLEKS                       R1 R1 K2 ["Color"]
       57 GETTABLEKS                       R1 R1 K3 ["Extended"]
       59 GETTABLEKS                       R1 R1 K11 ["Green"]
       61 GETTABLEKS                       R1 R1 K13 ["Green_600"]
       63 GETTABLEKS                       R0 R1 K6 ["Color3"]
       65 JUMP                             ; [+25]
       66 GETUPVAL                         R1 2
       67 JUMPIFNOT                        R1 ; [+12]
       68 GETUPVAL                         R1 3
       69 GETTABLEKS                       R1 R1 K2 ["Color"]
       71 GETTABLEKS                       R1 R1 K3 ["Extended"]
       73 GETTABLEKS                       R1 R1 K4 ["Gray"]
       75 GETTABLEKS                       R1 R1 K5 ["Gray_800"]
       77 GETTABLEKS                       R0 R1 K6 ["Color3"]
       79 JUMP                             ; [+11]
       80 GETUPVAL                         R1 3
       81 GETTABLEKS                       R1 R1 K2 ["Color"]
       83 GETTABLEKS                       R1 R1 K3 ["Extended"]
       85 GETTABLEKS                       R1 R1 K4 ["Gray"]
       87 GETTABLEKS                       R1 R1 K7 ["Gray_600"]
       89 GETTABLEKS                       R0 R1 K6 ["Color3"]
       91 GETUPVAL                         R1 6
       92 JUMPIFNOT                        R1 ; [+16]
       93 GETUPVAL                         R3 3
       94 GETTABLEKS                       R3 R3 K2 ["Color"]
       96 GETTABLEKS                       R3 R3 K3 ["Extended"]
       98 GETTABLEKS                       R3 R3 K4 ["Gray"]
      100 GETTABLEKS                       R3 R3 K5 ["Gray_800"]
      102 GETTABLEKS                       R3 R3 K6 ["Color3"]
      104 LOADK                            R4 K14 [0.5]
      105 NAMECALL                         R1 R0 K15 ["Lerp"]
      107 CALL                             R1 3 -1
      108 RETURN                           R1 -1
      109 RETURN                           R0 1

PROTO_11:
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
       28 GETUPVAL                         R6 5
       29 CALL                             R6 0 1
       30 JUMPIFNOT                        R6 ; [+8]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K0 ["useContext"]
       34 GETUPVAL                         R6 6
       35 GETTABLEKS                       R6 R6 K1 ["Context"]
       37 CALL                             R5 1 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R5
       40 GETUPVAL                         R6 7
       41 CALL                             R6 0 1
       42 GETUPVAL                         R7 8
       43 GETTABLEKS                       R7 R7 K2 ["Hooks"]
       45 GETTABLEKS                       R7 R7 K3 ["useTokens"]
       47 CALL                             R7 0 1
       48 GETTABLEKS                       R8 R4 K4 ["observeZoomRatio"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       53 NEWCLOSURE                       R10 P0
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U9
       56 CAPTURE                          VAL R5
       57 CAPTURE                          UPVAL U10
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R11 0 2
       61 MOVE                             R12 R5
       62 JUMPIFNOT                        R12 ; [+2]
       63 GETTABLEKS                       R12 R5 K6 ["observeSpotlightedSubtree"]
       65 GETTABLEKS                       R13 R0 K7 ["inputPinNodeId"]
       67 SETLIST                          R11 R12 2 [1]
       69 CALL                             R9 2 1
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K5 ["useMemo"]
       73 NEWCLOSURE                       R11 P1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U9
       79 NEWTABLE                         R12 0 6
       81 GETTABLEKS                       R13 R0 K8 ["outputPinNodeId"]
       83 GETTABLEKS                       R14 R0 K9 ["outputPinName"]
       85 GETTABLEKS                       R15 R0 K7 ["inputPinNodeId"]
       87 GETTABLEKS                       R16 R0 K10 ["inputPinName"]
       89 GETTABLEKS                       R17 R0 K11 ["inputPinDynamicIndex"]
       91 GETTABLEKS                       R18 R1 K12 ["observeAnchorPosition"]
       93 SETLIST                          R12 R13 6 [1]
       95 CALL                             R10 2 1
       96 GETUPVAL                         R12 13
       97 JUMPIFNOT                        R12 ; [+2]
       98 LOADB                            R11 0
       99 JUMP                             ; [+20]
      100 GETUPVAL                         R11 14
      101 GETTABLEKS                       R11 R11 K13 ["useSignalState"]
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K5 ["useMemo"]
      106 NEWCLOSURE                       R13 P2
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R2
      109 CAPTURE                          UPVAL U9
      110 NEWTABLE                         R14 0 2
      112 GETTABLEKS                       R15 R2 K14 ["DEPRECATED_observeIsDisabledByNodeId"]
      114 GETTABLEKS                       R16 R0 K8 ["outputPinNodeId"]
      116 SETLIST                          R14 R15 2 [1]
      118 CALL                             R12 2 -1
      119 CALL                             R11 -1 1
      120 GETUPVAL                         R13 13
      121 JUMPIFNOT                        R13 ; [+2]
      122 LOADB                            R12 0
      123 JUMP                             ; [+5]
      124 GETUPVAL                         R12 14
      125 GETTABLEKS                       R12 R12 K13 ["useSignalState"]
      127 MOVE                             R13 R9
      128 CALL                             R12 1 1
      129 GETUPVAL                         R13 14
      130 GETTABLEKS                       R13 R13 K13 ["useSignalState"]
      132 GETUPVAL                         R14 0
      133 GETTABLEKS                       R14 R14 K5 ["useMemo"]
      135 NEWCLOSURE                       R15 P3
      136 CAPTURE                          VAL R0
      137 CAPTURE                          UPVAL U9
      138 CAPTURE                          VAL R2
      139 NEWTABLE                         R16 0 3
      141 GETTABLEKS                       R17 R0 K15 ["pinDataType"]
      143 GETTABLEKS                       R18 R0 K8 ["outputPinNodeId"]
      145 GETTABLEKS                       R19 R2 K16 ["nodePayloadDispatcher"]
      147 GETTABLEKS                       R19 R19 K17 ["observe"]
      149 SETLIST                          R16 R17 3 [1]
      151 CALL                             R14 2 -1
      152 CALL                             R13 -1 1
      153 GETUPVAL                         R14 15
      154 CALL                             R14 0 1
      155 JUMPIFNOT                        R14 ; [+17]
      156 LOADB                            R14 0
      157 JUMPIFEQKNIL                     R13 ; [+15]
      159 LOADB                            R14 0
      160 GETTABLEKS                       R15 R13 K18 ["name"]
      162 JUMPIFEQKNIL                     R15 ; [+10]
      164 GETTABLEKS                       R16 R3 K19 ["parameterOverrides"]
      166 GETTABLEKS                       R17 R13 K18 ["name"]
      168 GETTABLE                         R15 R16 R17
      169 JUMPIFNOTEQKNIL                  R15 ; [+2]
      171 LOADB                            R14 0 +1
      172 LOADB                            R14 1
      173 GETUPVAL                         R15 0
      174 GETTABLEKS                       R15 R15 K5 ["useMemo"]
      176 NEWCLOSURE                       R16 P4
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U11
      179 CAPTURE                          VAL R1
      180 CAPTURE                          UPVAL U12
      181 CAPTURE                          UPVAL U9
      182 CAPTURE                          UPVAL U16
      183 NEWTABLE                         R17 0 6
      185 GETTABLEKS                       R18 R0 K8 ["outputPinNodeId"]
      187 GETTABLEKS                       R19 R0 K9 ["outputPinName"]
      189 GETTABLEKS                       R20 R0 K7 ["inputPinNodeId"]
      191 GETTABLEKS                       R21 R0 K10 ["inputPinName"]
      193 GETTABLEKS                       R22 R0 K11 ["inputPinDynamicIndex"]
      195 GETTABLEKS                       R23 R1 K12 ["observeAnchorPosition"]
      197 SETLIST                          R17 R18 6 [1]
      199 CALL                             R15 2 1
      200 GETUPVAL                         R17 13
      201 JUMPIFNOT                        R17 ; [+34]
      202 GETUPVAL                         R16 14
      203 GETTABLEKS                       R16 R16 K20 ["useSignalBinding"]
      205 GETUPVAL                         R17 0
      206 GETTABLEKS                       R17 R17 K5 ["useMemo"]
      208 NEWCLOSURE                       R18 P5
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R0
      211 CAPTURE                          UPVAL U9
      212 CAPTURE                          UPVAL U10
      213 CAPTURE                          UPVAL U5
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R6
      218 CAPTURE                          UPVAL U8
      219 NEWTABLE                         R19 0 7
      221 MOVE                             R20 R7
      222 MOVE                             R21 R6
      223 GETTABLEKS                       R22 R0 K15 ["pinDataType"]
      225 MOVE                             R23 R14
      226 GETTABLEKS                       R24 R2 K21 ["observeFadeByNodeId"]
      228 GETTABLEKS                       R25 R0 K8 ["outputPinNodeId"]
      230 MOVE                             R26 R9
      231 SETLIST                          R19 R20 7 [1]
      233 CALL                             R17 2 -1
      234 CALL                             R16 -1 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R16
      237 GETUPVAL                         R17 0
      238 GETTABLEKS                       R17 R17 K5 ["useMemo"]
      240 NEWCLOSURE                       R18 P6
      241 CAPTURE                          VAL R0
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R11
      244 CAPTURE                          VAL R7
      245 CAPTURE                          VAL R6
      246 CAPTURE                          UPVAL U8
      247 CAPTURE                          VAL R12
      248 NEWTABLE                         R19 0 6
      250 MOVE                             R20 R7
      251 MOVE                             R21 R6
      252 GETTABLEKS                       R22 R0 K15 ["pinDataType"]
      254 MOVE                             R23 R11
      255 MOVE                             R24 R14
      256 MOVE                             R25 R12
      257 SETLIST                          R19 R20 6 [1]
      259 CALL                             R17 2 1
      260 GETUPVAL                         R18 0
      261 GETTABLEKS                       R18 R18 K22 ["createElement"]
      263 GETUPVAL                         R19 17
      264 DUPTABLE                         R20 K28 [{"ObserveScale", "ObserveStart", "ObserveFinish", "Color3", "ZIndex"}]
      265 SETTABLEKS                       R8 R20 K23 ["ObserveScale"]
      267 SETTABLEKS                       R10 R20 K24 ["ObserveStart"]
      269 SETTABLEKS                       R15 R20 K25 ["ObserveFinish"]
      271 GETUPVAL                         R22 13
      272 JUMPIFNOT                        R22 ; [+2]
      273 MOVE                             R21 R16
      274 JUMP                             ; [+1]
      275 MOVE                             R21 R17
      276 SETTABLEKS                       R21 R20 K26 ["Color3"]
      278 GETUPVAL                         R21 18
      279 GETTABLEKS                       R21 R21 K29 ["NODEVIEW_ZINDEX"]
      281 GETTABLEKS                       R21 R21 K30 ["Curves"]
      283 SETTABLEKS                       R21 R20 K27 ["ZIndex"]
      285 CALL                             R18 2 -1
      286 RETURN                           R18 -1

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
      103 GETTABLEKS                       R16 R0 K24 ["Flags"]
      105 GETTABLEKS                       R16 R16 K25 ["FFlagAnimGraphUI_NoodleColorLerping"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K6 ["Components"]
      112 GETTABLEKS                       R17 R17 K26 ["SpotlightedNodeContext"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K24 ["Flags"]
      119 GETTABLEKS                       R18 R18 K27 ["getFFlagAnimGraphUIGrayOutOverriddenParameterNoodles"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETTABLEKS                       R19 R0 K24 ["Flags"]
      126 GETTABLEKS                       R19 R19 K28 ["getFFlagAnimGraphUIImplementNoodleDragging"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K5 [require]
      131 GETTABLEKS                       R20 R0 K24 ["Flags"]
      133 GETTABLEKS                       R20 R20 K29 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K5 [require]
      138 GETTABLEKS                       R21 R0 K24 ["Flags"]
      140 GETTABLEKS                       R21 R21 K30 ["getFFlagAnimGraphUI_SpotlightNodes"]
      142 CALL                             R20 1 1
      143 DUPCLOSURE                       R21 K31 [PROTO_11]
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R20
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R3
      163 RETURN                           R21 1
