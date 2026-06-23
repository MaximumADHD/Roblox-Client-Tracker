PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIFNOT                        R1 ; [+21]
        8 GETTABLEKS                       R2 R1 K0 ["sourcePinSide"]
       10 JUMPIFNOTEQKS                    R2 K1 ["Output"] ; [+18]
       12 GETTABLEKS                       R2 R1 K2 ["sourcePinNodeId"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["outputPinNodeId"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+11]
       19 GETTABLEKS                       R2 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["outputPinName"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+4]
       26 GETTABLEKS                       R2 R1 K6 ["targetPinPosition"]
       28 RETURN                           R2 1
       29 GETUPVAL                         R3 2
       30 JUMPIFNOT                        R3 ; [+4]
       31 GETUPVAL                         R2 2
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R2 1
       38 GETUPVAL                         R4 3
       39 JUMPIFNOT                        R4 ; [+4]
       40 GETUPVAL                         R3 3
       41 MOVE                             R4 R0
       42 CALL                             R3 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R3
       45 JUMPIFNOT                        R3 ; [+1]
       46 RETURN                           R3 1
       47 LOADNIL                          R4
       48 RETURN                           R4 1

PROTO_5:
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
       82 CAPTURE                          REF R1
       83 CAPTURE                          REF R2
       84 CALL                             R3 1 -1
       85 CLOSEUPVALS                      R0
       86 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Color"]
        6 GETTABLEKS                       R2 R2 K1 ["Extended"]
        8 GETTABLEKS                       R2 R2 K2 ["Gray"]
       10 GETTABLEKS                       R2 R2 K3 ["Gray_800"]
       12 GETTABLEKS                       R2 R2 K4 ["Color3"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K0 ["Color"]
       17 GETTABLEKS                       R4 R4 K1 ["Extended"]
       19 GETTABLEKS                       R4 R4 K2 ["Gray"]
       21 GETTABLEKS                       R4 R4 K5 ["Gray_600"]
       23 GETTABLEKS                       R4 R4 K4 ["Color3"]
       25 MOVE                             R5 R1
       26 NAMECALL                         R2 R2 K6 ["Lerp"]
       28 CALL                             R2 3 1
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K7 ["pinDataType"]
       32 JUMPIFNOTEQKS                    R3 K8 ["Parameter"] ; [+36]
       34 GETUPVAL                         R3 3
       35 JUMPIFNOT                        R3 ; [+1]
       36 RETURN                           R2 1
       37 GETUPVAL                         R4 4
       38 GETUPVAL                         R5 5
       39 GETTABLEKS                       R5 R5 K9 ["Enums"]
       41 GETTABLEKS                       R5 R5 K10 ["Theme"]
       43 GETTABLEKS                       R5 R5 K11 ["Dark"]
       45 JUMPIFNOTEQ                      R4 R5 ; [+11]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K0 ["Color"]
       50 GETTABLEKS                       R3 R3 K1 ["Extended"]
       52 GETTABLEKS                       R3 R3 K12 ["Green"]
       54 GETTABLEKS                       R3 R3 K13 ["Green_800"]
       56 JUMP                             ; [+9]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K0 ["Color"]
       60 GETTABLEKS                       R3 R3 K1 ["Extended"]
       62 GETTABLEKS                       R3 R3 K12 ["Green"]
       64 GETTABLEKS                       R3 R3 K14 ["Green_600"]
       66 GETTABLEKS                       R4 R3 K4 ["Color3"]
       68 RETURN                           R4 1
       69 RETURN                           R2 1

PROTO_7:
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
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CALL                             R1 1 -1
       32 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+61]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+26]
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+12]
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K2 ["Color"]
       12 GETTABLEKS                       R0 R0 K3 ["Extended"]
       14 GETTABLEKS                       R0 R0 K4 ["Gray"]
       16 GETTABLEKS                       R0 R0 K5 ["Gray_800"]
       18 GETTABLEKS                       R0 R0 K6 ["Color3"]
       20 RETURN                           R0 1
       21 GETUPVAL                         R0 3
       22 GETTABLEKS                       R0 R0 K2 ["Color"]
       24 GETTABLEKS                       R0 R0 K3 ["Extended"]
       26 GETTABLEKS                       R0 R0 K4 ["Gray"]
       28 GETTABLEKS                       R0 R0 K7 ["Gray_600"]
       30 GETTABLEKS                       R0 R0 K6 ["Color3"]
       32 RETURN                           R0 1
       33 GETUPVAL                         R1 4
       34 GETUPVAL                         R2 5
       35 GETTABLEKS                       R2 R2 K8 ["Enums"]
       37 GETTABLEKS                       R2 R2 K9 ["Theme"]
       39 GETTABLEKS                       R2 R2 K10 ["Dark"]
       41 JUMPIFNOTEQ                      R1 R2 ; [+11]
       43 GETUPVAL                         R0 3
       44 GETTABLEKS                       R0 R0 K2 ["Color"]
       46 GETTABLEKS                       R0 R0 K3 ["Extended"]
       48 GETTABLEKS                       R0 R0 K11 ["Green"]
       50 GETTABLEKS                       R0 R0 K12 ["Green_800"]
       52 JUMP                             ; [+9]
       53 GETUPVAL                         R0 3
       54 GETTABLEKS                       R0 R0 K2 ["Color"]
       56 GETTABLEKS                       R0 R0 K3 ["Extended"]
       58 GETTABLEKS                       R0 R0 K11 ["Green"]
       60 GETTABLEKS                       R0 R0 K13 ["Green_600"]
       62 GETTABLEKS                       R1 R0 K6 ["Color3"]
       64 RETURN                           R1 1
       65 GETUPVAL                         R0 2
       66 JUMPIFNOT                        R0 ; [+12]
       67 GETUPVAL                         R0 3
       68 GETTABLEKS                       R0 R0 K2 ["Color"]
       70 GETTABLEKS                       R0 R0 K3 ["Extended"]
       72 GETTABLEKS                       R0 R0 K4 ["Gray"]
       74 GETTABLEKS                       R0 R0 K5 ["Gray_800"]
       76 GETTABLEKS                       R0 R0 K6 ["Color3"]
       78 RETURN                           R0 1
       79 GETUPVAL                         R0 3
       80 GETTABLEKS                       R0 R0 K2 ["Color"]
       82 GETTABLEKS                       R0 R0 K3 ["Extended"]
       84 GETTABLEKS                       R0 R0 K4 ["Gray"]
       86 GETTABLEKS                       R0 R0 K7 ["Gray_600"]
       88 GETTABLEKS                       R0 R0 K6 ["Color3"]
       90 RETURN                           R0 1

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
       28 GETUPVAL                         R5 5
       29 CALL                             R5 0 1
       30 GETUPVAL                         R6 6
       31 GETTABLEKS                       R6 R6 K2 ["Hooks"]
       33 GETTABLEKS                       R6 R6 K3 ["useTokens"]
       35 CALL                             R6 0 1
       36 GETTABLEKS                       R7 R4 K4 ["observeZoomRatio"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       41 NEWCLOSURE                       R9 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U9
       47 NEWTABLE                         R10 0 6
       49 GETTABLEKS                       R11 R0 K6 ["outputPinNodeId"]
       51 GETTABLEKS                       R12 R0 K7 ["outputPinName"]
       53 GETTABLEKS                       R13 R0 K8 ["inputPinNodeId"]
       55 GETTABLEKS                       R14 R0 K9 ["inputPinName"]
       57 GETTABLEKS                       R15 R0 K10 ["inputPinDynamicIndex"]
       59 GETTABLEKS                       R16 R1 K11 ["observeAnchorPosition"]
       61 SETLIST                          R10 R11 6 [1]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R10 10
       65 JUMPIFNOT                        R10 ; [+2]
       66 LOADB                            R9 0
       67 JUMP                             ; [+20]
       68 GETUPVAL                         R9 11
       69 GETTABLEKS                       R9 R9 K12 ["useSignalState"]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K5 ["useMemo"]
       74 NEWCLOSURE                       R11 P1
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R2
       77 CAPTURE                          UPVAL U9
       78 NEWTABLE                         R12 0 2
       80 GETTABLEKS                       R13 R2 K13 ["DEPRECATED_observeIsDisabledByNodeId"]
       82 GETTABLEKS                       R14 R0 K6 ["outputPinNodeId"]
       84 SETLIST                          R12 R13 2 [1]
       86 CALL                             R10 2 -1
       87 CALL                             R9 -1 1
       88 GETUPVAL                         R10 11
       89 GETTABLEKS                       R10 R10 K12 ["useSignalState"]
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K5 ["useMemo"]
       94 NEWCLOSURE                       R12 P2
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          VAL R2
       98 NEWTABLE                         R13 0 3
      100 GETTABLEKS                       R14 R0 K14 ["pinDataType"]
      102 GETTABLEKS                       R15 R0 K6 ["outputPinNodeId"]
      104 GETTABLEKS                       R16 R2 K15 ["nodePayloadDispatcher"]
      106 GETTABLEKS                       R16 R16 K16 ["observe"]
      108 SETLIST                          R13 R14 3 [1]
      110 CALL                             R11 2 -1
      111 CALL                             R10 -1 1
      112 GETUPVAL                         R11 12
      113 CALL                             R11 0 1
      114 JUMPIFNOT                        R11 ; [+17]
      115 LOADB                            R11 0
      116 JUMPIFEQKNIL                     R10 ; [+15]
      118 LOADB                            R11 0
      119 GETTABLEKS                       R12 R10 K17 ["name"]
      121 JUMPIFEQKNIL                     R12 ; [+10]
      123 GETTABLEKS                       R13 R3 K18 ["parameterOverrides"]
      125 GETTABLEKS                       R14 R10 K17 ["name"]
      127 GETTABLE                         R12 R13 R14
      128 JUMPIFNOTEQKNIL                  R12 ; [+2]
      130 LOADB                            R11 0 +1
      131 LOADB                            R11 1
      132 GETUPVAL                         R12 0
      133 GETTABLEKS                       R12 R12 K5 ["useMemo"]
      135 NEWCLOSURE                       R13 P3
      136 CAPTURE                          VAL R0
      137 CAPTURE                          UPVAL U7
      138 CAPTURE                          VAL R1
      139 CAPTURE                          UPVAL U8
      140 CAPTURE                          UPVAL U9
      141 NEWTABLE                         R14 0 6
      143 GETTABLEKS                       R15 R0 K6 ["outputPinNodeId"]
      145 GETTABLEKS                       R16 R0 K7 ["outputPinName"]
      147 GETTABLEKS                       R17 R0 K8 ["inputPinNodeId"]
      149 GETTABLEKS                       R18 R0 K9 ["inputPinName"]
      151 GETTABLEKS                       R19 R0 K10 ["inputPinDynamicIndex"]
      153 GETTABLEKS                       R20 R1 K11 ["observeAnchorPosition"]
      155 SETLIST                          R14 R15 6 [1]
      157 CALL                             R12 2 1
      158 GETUPVAL                         R14 10
      159 JUMPIFNOT                        R14 ; [+31]
      160 GETUPVAL                         R13 11
      161 GETTABLEKS                       R13 R13 K19 ["useSignalBinding"]
      163 GETUPVAL                         R14 0
      164 GETTABLEKS                       R14 R14 K5 ["useMemo"]
      166 NEWCLOSURE                       R15 P4
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R0
      169 CAPTURE                          UPVAL U9
      170 CAPTURE                          UPVAL U13
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R5
      174 CAPTURE                          UPVAL U6
      175 NEWTABLE                         R16 0 6
      177 MOVE                             R17 R6
      178 MOVE                             R18 R5
      179 GETTABLEKS                       R19 R0 K14 ["pinDataType"]
      181 MOVE                             R20 R11
      182 GETTABLEKS                       R21 R2 K20 ["observeFadeByNodeId"]
      184 GETTABLEKS                       R22 R0 K6 ["outputPinNodeId"]
      186 SETLIST                          R16 R17 6 [1]
      188 CALL                             R14 2 -1
      189 CALL                             R13 -1 1
      190 JUMP                             ; [+1]
      191 LOADNIL                          R13
      192 GETUPVAL                         R14 0
      193 GETTABLEKS                       R14 R14 K5 ["useMemo"]
      195 NEWCLOSURE                       R15 P5
      196 CAPTURE                          VAL R0
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R5
      201 CAPTURE                          UPVAL U6
      202 NEWTABLE                         R16 0 5
      204 MOVE                             R17 R6
      205 MOVE                             R18 R5
      206 GETTABLEKS                       R19 R0 K14 ["pinDataType"]
      208 MOVE                             R20 R9
      209 MOVE                             R21 R11
      210 SETLIST                          R16 R17 5 [1]
      212 CALL                             R14 2 1
      213 GETUPVAL                         R15 0
      214 GETTABLEKS                       R15 R15 K21 ["createElement"]
      216 GETUPVAL                         R16 14
      217 DUPTABLE                         R17 K27 [{"ObserveScale", "ObserveStart", "ObserveFinish", "Color3", "ZIndex"}]
      218 SETTABLEKS                       R7 R17 K22 ["ObserveScale"]
      220 SETTABLEKS                       R8 R17 K23 ["ObserveStart"]
      222 SETTABLEKS                       R12 R17 K24 ["ObserveFinish"]
      224 GETUPVAL                         R19 10
      225 JUMPIFNOT                        R19 ; [+2]
      226 MOVE                             R18 R13
      227 JUMP                             ; [+1]
      228 MOVE                             R18 R14
      229 SETTABLEKS                       R18 R17 K25 ["Color3"]
      231 GETUPVAL                         R18 15
      232 GETTABLEKS                       R18 R18 K28 ["NODEVIEW_ZINDEX"]
      234 GETTABLEKS                       R18 R18 K29 ["Curves"]
      236 SETTABLEKS                       R18 R17 K26 ["ZIndex"]
      238 CALL                             R15 2 -1
      239 RETURN                           R15 -1

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
      110 GETTABLEKS                       R17 R0 K24 ["Flags"]
      112 GETTABLEKS                       R17 R17 K26 ["getFFlagAnimGraphUIGrayOutOverriddenParameterNoodles"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K24 ["Flags"]
      119 GETTABLEKS                       R18 R18 K27 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      121 CALL                             R17 1 1
      122 DUPCLOSURE                       R18 K28 [PROTO_9]
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R3
      139 RETURN                           R18 1
