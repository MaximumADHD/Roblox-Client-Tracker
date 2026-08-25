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
        4 JUMPIFNOT                        R1 ; [+29]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["inputPinName"]
        8 JUMPIFNOT                        R1 ; [+25]
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
       27 CALL                             R1 4 1
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K6 ["observeCurvePreviewInfo"]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 1
       33 MOVE                             R0 R2
       34 LOADNIL                          R1
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K7 ["outputPinNodeId"]
       38 JUMPIFNOT                        R2 ; [+19]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K8 ["outputPinName"]
       42 JUMPIFNOT                        R2 ; [+15]
       43 GETUPVAL                         R2 1
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K7 ["outputPinNodeId"]
       47 LOADK                            R4 K9 ["Output"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K8 ["outputPinName"]
       51 CALL                             R2 3 1
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R3 R3 K10 ["observeAnchorPosition"]
       55 MOVE                             R4 R2
       56 CALL                             R3 1 1
       57 MOVE                             R1 R3
       58 GETUPVAL                         R2 3
       59 GETTABLEKS                       R2 R2 K11 ["Experimental"]
       61 GETTABLEKS                       R2 R2 K12 ["createComputed"]
       63 NEWCLOSURE                       R3 P0
       64 CAPTURE                          REF R0
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          REF R1
       67 CALL                             R2 1 -1
       68 CLOSEUPVALS                      R0
       69 RETURN                           R2 -1

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
        7 JUMPIFNOT                        R1 ; [+44]
        8 GETTABLEKS                       R2 R1 K0 ["sourcePinSide"]
       10 JUMPIFNOTEQKS                    R2 K1 ["Output"] ; [+41]
       12 GETTABLEKS                       R2 R1 K2 ["sourcePinNodeId"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["outputPinNodeId"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+34]
       19 GETTABLEKS                       R2 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["outputPinName"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+27]
       26 GETTABLEKS                       R2 R1 K6 ["specificInputPinNodeId"]
       28 JUMPIFEQKNIL                     R2 ; [+20]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K7 ["inputPinNodeId"]
       33 JUMPIFEQKNIL                     R2 ; [+15]
       35 GETTABLEKS                       R2 R1 K6 ["specificInputPinNodeId"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K7 ["inputPinNodeId"]
       40 JUMPIFNOTEQ                      R2 R3 ; [+11]
       42 GETTABLEKS                       R2 R1 K8 ["specificInputPinName"]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K9 ["inputPinName"]
       47 JUMPIFNOTEQ                      R2 R3 ; [+4]
       49 GETTABLEKS                       R2 R1 K10 ["targetPinPosition"]
       51 RETURN                           R2 1
       52 GETUPVAL                         R3 2
       53 JUMPIFNOT                        R3 ; [+4]
       54 GETUPVAL                         R2 2
       55 MOVE                             R3 R0
       56 CALL                             R2 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R2
       59 JUMPIFNOT                        R2 ; [+1]
       60 RETURN                           R2 1
       61 GETUPVAL                         R4 3
       62 JUMPIFNOT                        R4 ; [+4]
       63 GETUPVAL                         R3 3
       64 MOVE                             R4 R0
       65 CALL                             R3 1 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R3
       68 JUMPIFNOT                        R3 ; [+1]
       69 RETURN                           R3 1
       70 LOADNIL                          R4
       71 RETURN                           R4 1

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
       28 JUMPIFNOT                        R2 ; [+29]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K5 ["inputPinName"]
       32 JUMPIFNOT                        R2 ; [+25]
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
       51 CALL                             R2 4 1
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R3 R3 K10 ["observeAnchorPosition"]
       55 MOVE                             R4 R2
       56 CALL                             R3 1 1
       57 MOVE                             R1 R3
       58 LOADNIL                          R2
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K4 ["inputPinNodeId"]
       62 JUMPIFNOT                        R3 ; [+8]
       63 GETUPVAL                         R3 2
       64 GETTABLEKS                       R3 R3 K11 ["observeCollapsedPinPosition"]
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R4 R4 K4 ["inputPinNodeId"]
       69 CALL                             R3 1 1
       70 MOVE                             R2 R3
       71 GETUPVAL                         R3 3
       72 GETTABLEKS                       R3 R3 K12 ["Experimental"]
       74 GETTABLEKS                       R3 R3 K13 ["createComputed"]
       76 NEWCLOSURE                       R4 P0
       77 CAPTURE                          REF R0
       78 CAPTURE                          UPVAL U0
       79 CAPTURE                          REF R1
       80 CAPTURE                          REF R2
       81 CALL                             R3 1 -1
       82 CLOSEUPVALS                      R0
       83 RETURN                           R3 -1

PROTO_8:
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
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CALL                             R1 1 -1
       33 RETURN                           R1 -1

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
       71 NEWTABLE                         R12 0 6
       73 GETTABLEKS                       R13 R0 K8 ["outputPinNodeId"]
       75 GETTABLEKS                       R14 R0 K9 ["outputPinName"]
       77 GETTABLEKS                       R15 R0 K7 ["inputPinNodeId"]
       79 GETTABLEKS                       R16 R0 K10 ["inputPinName"]
       81 GETTABLEKS                       R17 R0 K11 ["inputPinDynamicIndex"]
       83 GETTABLEKS                       R18 R1 K12 ["observeAnchorPosition"]
       85 SETLIST                          R12 R13 6 [1]
       87 CALL                             R10 2 1
       88 GETUPVAL                         R12 11
       89 JUMPIFNOT                        R12 ; [+2]
       90 LOADB                            R11 0
       91 JUMP                             ; [+20]
       92 GETUPVAL                         R11 12
       93 GETTABLEKS                       R11 R11 K13 ["useSignalState"]
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R12 R12 K5 ["useMemo"]
       98 NEWCLOSURE                       R13 P2
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R2
      101 CAPTURE                          UPVAL U10
      102 NEWTABLE                         R14 0 2
      104 GETTABLEKS                       R15 R2 K14 ["DEPRECATED_observeIsDisabledByNodeId"]
      106 GETTABLEKS                       R16 R0 K8 ["outputPinNodeId"]
      108 SETLIST                          R14 R15 2 [1]
      110 CALL                             R12 2 -1
      111 CALL                             R11 -1 1
      112 GETUPVAL                         R13 11
      113 JUMPIFNOT                        R13 ; [+2]
      114 LOADB                            R12 0
      115 JUMP                             ; [+5]
      116 GETUPVAL                         R12 12
      117 GETTABLEKS                       R12 R12 K13 ["useSignalState"]
      119 MOVE                             R13 R9
      120 CALL                             R12 1 1
      121 GETUPVAL                         R13 12
      122 GETTABLEKS                       R13 R13 K13 ["useSignalState"]
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R14 R14 K5 ["useMemo"]
      127 NEWCLOSURE                       R15 P3
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          VAL R2
      131 NEWTABLE                         R16 0 3
      133 GETTABLEKS                       R17 R0 K15 ["pinDataType"]
      135 GETTABLEKS                       R18 R0 K8 ["outputPinNodeId"]
      137 GETTABLEKS                       R19 R2 K16 ["nodePayloadDispatcher"]
      139 GETTABLEKS                       R19 R19 K17 ["observe"]
      141 SETLIST                          R16 R17 3 [1]
      143 CALL                             R14 2 -1
      144 CALL                             R13 -1 1
      145 LOADB                            R14 0
      146 JUMPIFEQKNIL                     R13 ; [+15]
      148 LOADB                            R14 0
      149 GETTABLEKS                       R15 R13 K18 ["name"]
      151 JUMPIFEQKNIL                     R15 ; [+10]
      153 GETTABLEKS                       R16 R3 K19 ["parameterOverrides"]
      155 GETTABLEKS                       R17 R13 K18 ["name"]
      157 GETTABLE                         R15 R16 R17
      158 JUMPIFNOTEQKNIL                  R15 ; [+2]
      160 LOADB                            R14 0 +1
      161 LOADB                            R14 1
      162 GETUPVAL                         R15 0
      163 GETTABLEKS                       R15 R15 K5 ["useMemo"]
      165 NEWCLOSURE                       R16 P4
      166 CAPTURE                          VAL R0
      167 CAPTURE                          UPVAL U9
      168 CAPTURE                          VAL R1
      169 CAPTURE                          UPVAL U10
      170 NEWTABLE                         R17 0 6
      172 GETTABLEKS                       R18 R0 K8 ["outputPinNodeId"]
      174 GETTABLEKS                       R19 R0 K9 ["outputPinName"]
      176 GETTABLEKS                       R20 R0 K7 ["inputPinNodeId"]
      178 GETTABLEKS                       R21 R0 K10 ["inputPinName"]
      180 GETTABLEKS                       R22 R0 K11 ["inputPinDynamicIndex"]
      182 GETTABLEKS                       R23 R1 K12 ["observeAnchorPosition"]
      184 SETLIST                          R17 R18 6 [1]
      186 CALL                             R15 2 1
      187 GETUPVAL                         R17 11
      188 JUMPIFNOT                        R17 ; [+33]
      189 GETUPVAL                         R16 12
      190 GETTABLEKS                       R16 R16 K20 ["useSignalBinding"]
      192 GETUPVAL                         R17 0
      193 GETTABLEKS                       R17 R17 K5 ["useMemo"]
      195 NEWCLOSURE                       R18 P5
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R0
      198 CAPTURE                          UPVAL U10
      199 CAPTURE                          UPVAL U8
      200 CAPTURE                          VAL R9
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R6
      204 CAPTURE                          UPVAL U7
      205 NEWTABLE                         R19 0 7
      207 MOVE                             R20 R7
      208 MOVE                             R21 R6
      209 GETTABLEKS                       R22 R0 K15 ["pinDataType"]
      211 MOVE                             R23 R14
      212 GETTABLEKS                       R24 R2 K21 ["observeFadeByNodeId"]
      214 GETTABLEKS                       R25 R0 K8 ["outputPinNodeId"]
      216 MOVE                             R26 R9
      217 SETLIST                          R19 R20 7 [1]
      219 CALL                             R17 2 -1
      220 CALL                             R16 -1 1
      221 JUMP                             ; [+1]
      222 LOADNIL                          R16
      223 GETUPVAL                         R17 0
      224 GETTABLEKS                       R17 R17 K5 ["useMemo"]
      226 NEWCLOSURE                       R18 P6
      227 CAPTURE                          VAL R0
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R11
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R6
      232 CAPTURE                          UPVAL U7
      233 CAPTURE                          VAL R12
      234 NEWTABLE                         R19 0 6
      236 MOVE                             R20 R7
      237 MOVE                             R21 R6
      238 GETTABLEKS                       R22 R0 K15 ["pinDataType"]
      240 MOVE                             R23 R11
      241 MOVE                             R24 R14
      242 MOVE                             R25 R12
      243 SETLIST                          R19 R20 6 [1]
      245 CALL                             R17 2 1
      246 GETUPVAL                         R18 0
      247 GETTABLEKS                       R18 R18 K22 ["createElement"]
      249 GETUPVAL                         R19 13
      250 DUPTABLE                         R20 K28 [{"ObserveScale", "ObserveStart", "ObserveFinish", "Color3", "ZIndex"}]
      251 SETTABLEKS                       R8 R20 K23 ["ObserveScale"]
      253 SETTABLEKS                       R10 R20 K24 ["ObserveStart"]
      255 SETTABLEKS                       R15 R20 K25 ["ObserveFinish"]
      257 GETUPVAL                         R22 11
      258 JUMPIFNOT                        R22 ; [+2]
      259 MOVE                             R21 R16
      260 JUMP                             ; [+1]
      261 MOVE                             R21 R17
      262 SETTABLEKS                       R21 R20 K26 ["Color3"]
      264 GETUPVAL                         R21 14
      265 GETTABLEKS                       R21 R21 K29 ["NODEVIEW_ZINDEX"]
      267 GETTABLEKS                       R21 R21 K30 ["Curves"]
      269 SETTABLEKS                       R21 R20 K27 ["ZIndex"]
      271 CALL                             R18 2 -1
      272 RETURN                           R18 -1

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
      115 DUPCLOSURE                       R17 K27 [PROTO_11]
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R3
      131 RETURN                           R17 1
