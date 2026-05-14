PROTO_0:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["pendingNetworkPosition"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETTABLEKS                       R3 R0 K1 ["position"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R4 R1 K2 ["delta"]
       13 JUMPIF                           R4 ; [+2]
       14 GETIMPORT                        R4 K5 [Vector2.zero]
       16 JUMPIFNOT                        R2 ; [+2]
       17 ADD                              R5 R2 R4
       18 RETURN                           R5 1
       19 JUMPIFNOT                        R3 ; [+2]
       20 ADD                              R5 R3 R4
       21 RETURN                           R5 1
       22 LOADNIL                          R5
       23 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R1
        8 MOVE                             R5 R2
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeNodeRenderInfoById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["observe"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["createComputed"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U3
       17 CALL                             R3 1 -1
       18 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R3 R1 K2 ["sourcePinSide"]
       11 JUMPIFNOTEQKS                    R3 K3 ["Input"] ; [+3]
       13 LOADK                            R2 K4 ["Output"]
       14 JUMP                             ; [+1]
       15 LOADK                            R2 K3 ["Input"]
       16 GETTABLEKS                       R3 R1 K5 ["sourcePinDataType"]
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 LOADK                            R6 K6 [∞]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K7 ["getMap"]
       24 CALL                             R7 0 3
       25 FORGPREP                         R7
       26 GETTABLEKS                       R12 R11 K8 ["pinSide"]
       28 JUMPIFNOTEQ                      R12 R2 ; [+28]
       30 GETTABLEKS                       R12 R11 K9 ["pinDataType"]
       32 JUMPIFNOTEQ                      R12 R3 ; [+24]
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R13 R11 K10 ["pinNodeId"]
       37 CALL                             R12 1 1
       38 LOADB                            R13 0
       39 CALL                             R12 1 1
       40 JUMPIFNOT                        R12 ; [+16]
       41 GETTABLEKS                       R14 R11 K11 ["pinOffset"]
       43 ADD                              R13 R12 R14
       44 SUB                              R14 R0 R13
       45 GETTABLEKS                       R14 R14 K12 ["Magnitude"]
       47 JUMPIFNOTLT                      R14 R6 ; [+9]
       49 GETUPVAL                         R15 3
       50 GETTABLEKS                       R15 R15 K13 ["SNAP_DISTANCE"]
       52 JUMPIFNOTLT                      R14 R15 ; [+4]
       54 MOVE                             R6 R14
       55 MOVE                             R4 R11
       56 MOVE                             R5 R13
       57 FORGLOOP                         R7 2 ; [-32]
       59 RETURN                           R4 2

PROTO_4:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 GETUPVAL                         R8 0
        3 CALL                             R8 0 1
        4 JUMPIFNOT                        R8 ; [+15]
        5 JUMPIFNOTEQKS                    R2 K0 ["Parameter"] ; [+3]
        7 MOVE                             R6 R5
        8 JUMP                             ; [+1]
        9 LOADNIL                          R6
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K1 ["getPinAnchorKey"]
       13 MOVE                             R9 R0
       14 MOVE                             R10 R3
       15 MOVE                             R11 R1
       16 MOVE                             R12 R6
       17 CALL                             R8 4 1
       18 MOVE                             R7 R8
       19 JUMP                             ; [+8]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K1 ["getPinAnchorKey"]
       23 MOVE                             R9 R0
       24 MOVE                             R10 R3
       25 MOVE                             R11 R1
       26 CALL                             R8 3 1
       27 MOVE                             R7 R8
       28 GETIMPORT                        R8 K4 [table.freeze]
       30 DUPTABLE                         R9 K11 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue", "sourcePinDynamicIndex"}]
       31 SETTABLEKS                       R0 R9 K5 ["sourcePinNodeId"]
       33 SETTABLEKS                       R1 R9 K6 ["sourcePinName"]
       35 SETTABLEKS                       R2 R9 K7 ["sourcePinDataType"]
       37 SETTABLEKS                       R3 R9 K8 ["sourcePinSide"]
       39 SETTABLEKS                       R4 R9 K9 ["sourcePinValue"]
       41 GETUPVAL                         R11 0
       42 CALL                             R11 0 1
       43 JUMPIFNOT                        R11 ; [+2]
       44 MOVE                             R10 R5
       45 JUMP                             ; [+1]
       46 LOADNIL                          R10
       47 SETTABLEKS                       R10 R9 K10 ["sourcePinDynamicIndex"]
       49 CALL                             R8 1 1
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K12 ["setMap"]
       53 NEWTABLE                         R10 2 0
       55 SETTABLEKS                       R8 R10 K13 ["global"]
       57 SETTABLE                         R8 R10 R7
       58 CALL                             R9 1 0
       59 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+21]
       12 GETTABLEKS                       R4 R1 K2 ["sourcePinDataType"]
       14 JUMPIFNOTEQKS                    R4 K3 ["Parameter"] ; [+4]
       16 GETTABLEKS                       R3 R1 K4 ["sourcePinDynamicIndex"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K5 ["getPinAnchorKey"]
       23 GETTABLEKS                       R5 R1 K6 ["sourcePinNodeId"]
       25 GETTABLEKS                       R6 R1 K7 ["sourcePinSide"]
       27 GETTABLEKS                       R7 R1 K8 ["sourcePinName"]
       29 MOVE                             R8 R3
       30 CALL                             R4 4 1
       31 MOVE                             R2 R4
       32 JUMP                             ; [+11]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K5 ["getPinAnchorKey"]
       36 GETTABLEKS                       R4 R1 K6 ["sourcePinNodeId"]
       38 GETTABLEKS                       R5 R1 K7 ["sourcePinSide"]
       40 GETTABLEKS                       R6 R1 K8 ["sourcePinName"]
       42 CALL                             R3 3 1
       43 MOVE                             R2 R3
       44 GETUPVAL                         R3 3
       45 MOVE                             R4 R0
       46 CALL                             R3 1 2
       47 JUMPIFNOT                        R3 ; [+66]
       48 JUMPIFNOT                        R4 ; [+65]
       49 GETIMPORT                        R5 K11 [table.clone]
       51 MOVE                             R6 R1
       52 CALL                             R5 1 1
       53 GETTABLEKS                       R6 R3 K12 ["pinName"]
       55 SETTABLEKS                       R6 R5 K13 ["targetPinName"]
       57 SETTABLEKS                       R4 R5 K14 ["targetPinPosition"]
       59 GETTABLEKS                       R6 R3 K15 ["pinNodeId"]
       61 SETTABLEKS                       R6 R5 K16 ["targetPinNodeId"]
       63 GETTABLEKS                       R6 R3 K17 ["pinDynamicIndex"]
       65 SETTABLEKS                       R6 R5 K18 ["targetPinDynamicIndex"]
       67 LOADNIL                          R6
       68 GETUPVAL                         R7 1
       69 CALL                             R7 0 1
       70 JUMPIFNOT                        R7 ; [+21]
       71 GETTABLEKS                       R8 R3 K19 ["pinDataType"]
       73 JUMPIFNOTEQKS                    R8 K3 ["Parameter"] ; [+4]
       75 GETTABLEKS                       R7 R3 K17 ["pinDynamicIndex"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R7
       79 GETUPVAL                         R8 2
       80 GETTABLEKS                       R8 R8 K5 ["getPinAnchorKey"]
       82 GETTABLEKS                       R9 R3 K15 ["pinNodeId"]
       84 GETTABLEKS                       R10 R3 K20 ["pinSide"]
       86 GETTABLEKS                       R11 R3 K12 ["pinName"]
       88 MOVE                             R12 R7
       89 CALL                             R8 4 1
       90 MOVE                             R6 R8
       91 JUMP                             ; [+11]
       92 GETUPVAL                         R7 2
       93 GETTABLEKS                       R7 R7 K5 ["getPinAnchorKey"]
       95 GETTABLEKS                       R8 R3 K15 ["pinNodeId"]
       97 GETTABLEKS                       R9 R3 K20 ["pinSide"]
       99 GETTABLEKS                       R10 R3 K12 ["pinName"]
      101 CALL                             R7 3 1
      102 MOVE                             R6 R7
      103 GETUPVAL                         R7 0
      104 GETTABLEKS                       R7 R7 K21 ["setMap"]
      106 NEWTABLE                         R8 4 0
      108 SETTABLEKS                       R5 R8 K1 ["global"]
      110 SETTABLE                         R5 R8 R2
      111 SETTABLE                         R5 R8 R6
      112 CALL                             R7 1 0
      113 RETURN                           R0 0
      114 GETIMPORT                        R5 K11 [table.clone]
      116 MOVE                             R6 R1
      117 CALL                             R5 1 1
      118 LOADNIL                          R6
      119 SETTABLEKS                       R6 R5 K13 ["targetPinName"]
      121 SETTABLEKS                       R0 R5 K14 ["targetPinPosition"]
      123 LOADNIL                          R6
      124 SETTABLEKS                       R6 R5 K16 ["targetPinNodeId"]
      126 GETUPVAL                         R6 0
      127 GETTABLEKS                       R6 R6 K21 ["setMap"]
      129 NEWTABLE                         R7 2 0
      131 SETTABLEKS                       R5 R7 K1 ["global"]
      133 SETTABLE                         R5 R7 R2
      134 CALL                             R6 1 0
      135 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+26]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+24]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+22]
        6 GETUPVAL                         R0 3
        7 JUMPIFNOT                        R0 ; [+20]
        8 GETUPVAL                         R0 4
        9 GETTABLEKS                       R0 R0 K0 ["setNodeConnectionAsync"]
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R6 5
       16 CALL                             R6 0 1
       17 JUMPIFNOT                        R6 ; [+7]
       18 GETUPVAL                         R6 6
       19 GETTABLEKS                       R6 R6 K1 ["sourcePinDataType"]
       21 JUMPIFNOTEQKS                    R6 K2 ["Parameter"] ; [+3]
       23 GETUPVAL                         R5 7
       24 JUMP                             ; [+1]
       25 LOADNIL                          R5
       26 CALL                             R0 5 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 0
       29 JUMPIFNOT                        R0 ; [+33]
       30 GETUPVAL                         R0 1
       31 JUMPIFNOT                        R0 ; [+31]
       32 GETUPVAL                         R1 5
       33 CALL                             R1 0 1
       34 JUMPIFNOT                        R1 ; [+7]
       35 GETUPVAL                         R1 6
       36 GETTABLEKS                       R1 R1 K1 ["sourcePinDataType"]
       38 JUMPIFNOTEQKS                    R1 K2 ["Parameter"] ; [+3]
       40 GETUPVAL                         R0 7
       41 JUMP                             ; [+1]
       42 LOADNIL                          R0
       43 GETUPVAL                         R1 4
       44 GETTABLEKS                       R1 R1 K3 ["removeNodeInputConnectionAsync"]
       46 GETUPVAL                         R2 0
       47 GETUPVAL                         R3 1
       48 GETUPVAL                         R5 5
       49 CALL                             R5 0 1
       50 JUMPIFNOT                        R5 ; [+2]
       51 MOVE                             R4 R0
       52 JUMP                             ; [+1]
       53 LOADNIL                          R4
       54 CALL                             R1 3 1
       55 JUMPIF                           R1 ; [+29]
       56 GETUPVAL                         R1 8
       57 GETTABLEKS                       R1 R1 K4 ["showMenu"]
       59 GETUPVAL                         R2 9
       60 GETUPVAL                         R3 10
       61 CALL                             R1 2 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R0 2
       64 JUMPIFNOT                        R0 ; [+16]
       65 GETUPVAL                         R0 3
       66 JUMPIFNOT                        R0 ; [+14]
       67 GETUPVAL                         R0 4
       68 GETTABLEKS                       R0 R0 K5 ["removeNodeOutputConnectionAsync"]
       70 GETUPVAL                         R1 2
       71 GETUPVAL                         R2 3
       72 CALL                             R0 2 1
       73 JUMPIF                           R0 ; [+11]
       74 GETUPVAL                         R0 8
       75 GETTABLEKS                       R0 R0 K4 ["showMenu"]
       77 GETUPVAL                         R1 9
       78 GETUPVAL                         R2 10
       79 CALL                             R0 2 0
       80 RETURN                           R0 0
       81 GETIMPORT                        R0 K7 [warn]
       83 LOADK                            R1 K8 ["Bad state"]
       84 CALL                             R0 1 0
       85 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 GETTABLEKS                       R8 R1 K2 ["sourcePinSide"]
       18 JUMPIFNOTEQKS                    R8 K3 ["Output"] ; [+16]
       20 GETTABLEKS                       R5 R1 K4 ["sourcePinNodeId"]
       22 GETTABLEKS                       R6 R1 K5 ["sourcePinName"]
       24 JUMPIFNOT                        R2 ; [+33]
       25 GETTABLEKS                       R3 R2 K6 ["pinNodeId"]
       27 GETTABLEKS                       R4 R2 K7 ["pinName"]
       29 GETUPVAL                         R8 2
       30 CALL                             R8 0 1
       31 JUMPIFNOT                        R8 ; [+26]
       32 GETTABLEKS                       R7 R2 K8 ["pinDynamicIndex"]
       34 JUMP                             ; [+23]
       35 GETTABLEKS                       R8 R1 K2 ["sourcePinSide"]
       37 JUMPIFNOTEQKS                    R8 K9 ["Input"] ; [+16]
       39 GETTABLEKS                       R3 R1 K4 ["sourcePinNodeId"]
       41 GETTABLEKS                       R4 R1 K5 ["sourcePinName"]
       43 GETUPVAL                         R8 2
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R8 ; [+2]
       46 GETTABLEKS                       R7 R1 K10 ["sourcePinDynamicIndex"]
       48 JUMPIFNOT                        R2 ; [+9]
       49 GETTABLEKS                       R5 R2 K6 ["pinNodeId"]
       51 GETTABLEKS                       R6 R2 K7 ["pinName"]
       53 JUMP                             ; [+4]
       54 GETIMPORT                        R8 K12 [error]
       56 LOADK                            R9 K13 ["Bad sourcePin state"]
       57 CALL                             R8 1 0
       58 GETIMPORT                        R8 K16 [table.freeze]
       60 DUPTABLE                         R9 K19 [{"sourcePinNodeId", "sourcePinName", "sourcePinSide", "sourcePinDataType", "sourcePinValue", "sourcePinDynamicIndex"}]
       61 GETTABLEKS                       R10 R1 K4 ["sourcePinNodeId"]
       63 SETTABLEKS                       R10 R9 K4 ["sourcePinNodeId"]
       65 GETTABLEKS                       R10 R1 K5 ["sourcePinName"]
       67 SETTABLEKS                       R10 R9 K5 ["sourcePinName"]
       69 GETTABLEKS                       R10 R1 K2 ["sourcePinSide"]
       71 SETTABLEKS                       R10 R9 K2 ["sourcePinSide"]
       73 GETTABLEKS                       R10 R1 K17 ["sourcePinDataType"]
       75 SETTABLEKS                       R10 R9 K17 ["sourcePinDataType"]
       77 GETTABLEKS                       R10 R1 K18 ["sourcePinValue"]
       79 SETTABLEKS                       R10 R9 K18 ["sourcePinValue"]
       81 GETUPVAL                         R11 2
       82 CALL                             R11 0 1
       83 JUMPIFNOT                        R11 ; [+3]
       84 GETTABLEKS                       R10 R1 K10 ["sourcePinDynamicIndex"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K10 ["sourcePinDynamicIndex"]
       90 CALL                             R8 1 1
       91 GETIMPORT                        R9 K22 [task.spawn]
       93 NEWCLOSURE                       R10 P0
       94 CAPTURE                          REF R3
       95 CAPTURE                          REF R4
       96 CAPTURE                          REF R5
       97 CAPTURE                          REF R6
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          VAL R1
      101 CAPTURE                          REF R7
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R8
      105 CALL                             R9 1 0
      106 GETUPVAL                         R9 0
      107 GETTABLEKS                       R9 R9 K23 ["setMap"]
      109 NEWTABLE                         R10 0 0
      111 CALL                             R9 1 0
      112 CLOSEUPVALS                      R3
      113 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeMap"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       13 MOVE                             R9 R2
       14 MOVE                             R10 R6
       15 GETIMPORT                        R8 K3 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 ; [-8]
       20 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeNodeRenderInfoById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 JUMPIFNOT                        R6 ; [+46]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K0 ["get"]
       11 GETTABLEKS                       R8 R6 K1 ["nodeId"]
       13 CALL                             R7 1 1
       14 JUMPIFEQKNIL                     R7 ; [+39]
       16 GETTABLEKS                       R8 R6 K2 ["position"]
       18 GETTABLEKS                       R9 R7 K3 ["pendingNetworkPosition"]
       20 JUMPIFNOTEQ                      R8 R9 ; [+33]
       22 GETTABLEKS                       R8 R7 K4 ["delta"]
       24 JUMPIF                           R8 ; [+3]
       25 GETTABLEKS                       R8 R7 K5 ["origin"]
       27 JUMPIFNOT                        R8 ; [+19]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K6 ["set"]
       31 GETTABLEKS                       R9 R6 K1 ["nodeId"]
       33 DUPTABLE                         R10 K7 [{"delta", "origin", "pendingNetworkPosition"}]
       34 GETTABLEKS                       R11 R7 K4 ["delta"]
       36 SETTABLEKS                       R11 R10 K4 ["delta"]
       38 GETTABLEKS                       R11 R7 K5 ["origin"]
       40 SETTABLEKS                       R11 R10 K5 ["origin"]
       42 LOADNIL                          R11
       43 SETTABLEKS                       R11 R10 K3 ["pendingNetworkPosition"]
       45 CALL                             R8 2 0
       46 JUMP                             ; [+7]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K6 ["set"]
       50 GETTABLEKS                       R9 R6 K1 ["nodeId"]
       52 LOADNIL                          R10
       53 CALL                             R8 2 0
       54 FORGLOOP                         R2 2 ; [-48]
       56 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["forEach"]
        9 MOVE                             R2 R0
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U3
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R2 R2 K2 ["createEffect"]
       16 NEWCLOSURE                       R3 P2
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U1
       19 CALL                             R2 1 1
       20 NEWCLOSURE                       R3 P3
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["pinOffset"]
        9 ADD                              R2 R1 R3
       10 RETURN                           R2 1

PROTO_14:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["pinNodeId"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createComputed"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K2 ["of"]
       16 LOADNIL                          R2
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observe"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["switchMap"]
        8 MOVE                             R3 R1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETIMPORT                        R3 K2 [Vector2.new]
        6 LOADN                            R4 0
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K4 ["WELL_KNOWN_HEADER_HEIGHT"]
       10 MINUS                            R6 R7
       11 DIVK                             R5 R6 K3 [2]
       12 CALL                             R3 2 1
       13 ADD                              R2 R1 R3
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["createComputed"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["set"]
       11 GETUPVAL                         R1 1
       12 LOADNIL                          R2
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["set"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K5 [{"selectedNodesOffset", "origin", "delta", "pendingNetworkPosition"}]
        6 MOVE                             R5 R2
        7 JUMPIF                           R5 ; [+5]
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETTABLEKS                       R5 R3 K1 ["selectedNodesOffset"]
       11 JUMPIF                           R5 ; [+1]
       12 LOADNIL                          R5
       13 SETTABLEKS                       R5 R4 K1 ["selectedNodesOffset"]
       15 JUMPIFNOT                        R3 ; [+3]
       16 GETTABLEKS                       R5 R3 K2 ["origin"]
       18 JUMP                             ; [+1]
       19 MOVE                             R5 R1
       20 SETTABLEKS                       R5 R4 K2 ["origin"]
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETTABLEKS                       R6 R3 K2 ["origin"]
       25 JUMPIFNOT                        R6 ; [+4]
       26 GETTABLEKS                       R6 R3 K2 ["origin"]
       28 SUB                              R5 R1 R6
       29 JUMP                             ; [+2]
       30 GETIMPORT                        R5 K8 [Vector2.zero]
       32 SETTABLEKS                       R5 R4 K3 ["delta"]
       34 JUMPIFNOT                        R3 ; [+3]
       35 GETTABLEKS                       R5 R3 K4 ["pendingNetworkPosition"]
       37 JUMPIF                           R5 ; [+1]
       38 LOADNIL                          R5
       39 SETTABLEKS                       R5 R4 K4 ["pendingNetworkPosition"]
       41 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderInfoMap"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R3 R1 R0
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["get"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 -1
       12 CALL                             R2 -1 1
       13 JUMPIF                           R2 ; [+3]
       14 NEWTABLE                         R3 0 0
       16 RETURN                           R3 1
       17 NEWTABLE                         R3 0 0
       19 GETTABLE                         R4 R1 R0
       20 GETTABLEKS                       R4 R4 K2 ["isSelected"]
       22 JUMPIFNOT                        R4 ; [+22]
       23 MOVE                             R4 R1
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 GETTABLEKS                       R9 R8 K2 ["isSelected"]
       29 JUMPIFNOT                        R9 ; [+13]
       30 JUMPIFEQ                         R7 R0 ; [+12]
       32 GETUPVAL                         R9 1
       33 MOVE                             R10 R8
       34 GETUPVAL                         R11 2
       35 GETTABLEKS                       R11 R11 K1 ["get"]
       37 MOVE                             R12 R7
       38 CALL                             R11 1 -1
       39 CALL                             R9 -1 1
       40 JUMPIFNOT                        R9 ; [+2]
       41 SUB                              R10 R9 R2
       42 SETTABLE                         R10 R3 R7
       43 FORGLOOP                         R4 2 ; [-17]
       45 RETURN                           R3 1

PROTO_22:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K3 ["getMap"]
        5 CALL                             R4 0 -1
        6 CALL                             R3 -1 1
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 CALL                             R4 3 1
       12 SETTABLE                         R4 R3 R0
       13 GETTABLEKS                       R5 R4 K4 ["selectedNodesOffset"]
       15 JUMPIFNOT                        R5 ; [+31]
       16 GETTABLEKS                       R5 R4 K4 ["selectedNodesOffset"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K5 ["get"]
       24 MOVE                             R11 R8
       25 CALL                             R10 1 1
       26 DUPTABLE                         R11 K9 [{"selectedNodesOffset", "origin", "delta", "pendingNetworkPosition"}]
       27 LOADNIL                          R12
       28 SETTABLEKS                       R12 R11 K4 ["selectedNodesOffset"]
       30 LOADNIL                          R12
       31 SETTABLEKS                       R12 R11 K6 ["origin"]
       33 GETTABLEKS                       R12 R4 K7 ["delta"]
       35 SETTABLEKS                       R12 R11 K7 ["delta"]
       37 JUMPIFNOT                        R10 ; [+3]
       38 GETTABLEKS                       R12 R10 K8 ["pendingNetworkPosition"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R12
       42 SETTABLEKS                       R12 R11 K8 ["pendingNetworkPosition"]
       44 SETTABLE                         R11 R3 R8
       45 FORGLOOP                         R5 2 ; [-25]
       47 RETURN                           R3 1

PROTO_23:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["setMap"]
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 MOVE                             R8 R3
       12 CALL                             R5 3 -1
       13 CALL                             R4 -1 0
       14 LOADB                            R4 1
       15 SETTABLE                         R4 R2 R0
       16 MOVE                             R4 R3
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 LOADB                            R9 1
       21 SETTABLE                         R9 R2 R7
       22 FORGLOOP                         R4 2 ; [-3]
       24 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMap"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETUPVAL                         R3 1
        4 SETTABLE                         R1 R3 R0
        5 GETUPVAL                         R3 0
        6 DUPTABLE                         R4 K3 [{"origin", "delta", "pendingNetworkPosition"}]
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K0 ["origin"]
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K1 ["delta"]
       13 SETTABLEKS                       R1 R4 K2 ["pendingNetworkPosition"]
       15 SETTABLE                         R4 R3 R0
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R2 ; [+13]
       18 GETTABLEKS                       R3 R2 K2 ["pendingNetworkPosition"]
       20 JUMPIFNOT                        R3 ; [+10]
       21 GETUPVAL                         R3 0
       22 DUPTABLE                         R4 K4 [{"pendingNetworkPosition"}]
       23 MOVE                             R5 R2
       24 JUMPIFNOT                        R5 ; [+2]
       25 GETTABLEKS                       R5 R2 K2 ["pendingNetworkPosition"]
       27 SETTABLEKS                       R5 R4 K2 ["pendingNetworkPosition"]
       29 SETTABLE                         R4 R3 R0
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 0
       32 LOADNIL                          R4
       33 SETTABLE                         R4 R3 R0
       34 RETURN                           R0 0

PROTO_26:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K2 [table.clone]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K3 ["getMap"]
        7 CALL                             R4 0 -1
        8 CALL                             R3 -1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 CALL                             R5 2 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K4 ["observeNodeRenderInfoById"]
       19 MOVE                             R7 R0
       20 CALL                             R6 1 1
       21 LOADB                            R7 0
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 3
       24 MOVE                             R8 R6
       25 MOVE                             R9 R5
       26 CALL                             R7 2 1
       27 MOVE                             R8 R4
       28 MOVE                             R9 R0
       29 MOVE                             R10 R7
       30 CALL                             R8 2 0
       31 GETTABLEKS                       R8 R5 K5 ["selectedNodesOffset"]
       33 JUMPIFNOT                        R8 ; [+15]
       34 GETTABLEKS                       R8 R5 K5 ["selectedNodesOffset"]
       36 LOADNIL                          R9
       37 LOADNIL                          R10
       38 FORGPREP                         R8
       39 JUMPIFNOT                        R7 ; [+2]
       40 ADD                              R13 R7 R12
       41 JUMP                             ; [+1]
       42 LOADNIL                          R13
       43 MOVE                             R14 R4
       44 MOVE                             R15 R11
       45 MOVE                             R16 R13
       46 CALL                             R14 2 0
       47 FORGLOOP                         R8 2 ; [-9]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K6 ["setMap"]
       52 MOVE                             R9 R3
       53 CALL                             R8 1 0
       54 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observe"]
        3 LOADK                            R1 K1 ["global"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_28:
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
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 1
       18 GETUPVAL                         R5 3
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       23 DUPCLOSURE                       R7 K3 [PROTO_0]
       24 NEWTABLE                         R8 0 0
       26 CALL                             R6 2 1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R6
       35 NEWTABLE                         R9 0 3
       37 GETTABLEKS                       R10 R3 K4 ["observe"]
       39 MOVE                             R11 R6
       40 GETTABLEKS                       R12 R2 K5 ["observeNodeRenderInfoById"]
       42 SETLIST                          R9 R10 3 [1]
       44 CALL                             R7 2 1
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       48 NEWCLOSURE                       R9 P2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R7
       52 CAPTURE                          UPVAL U5
       53 NEWTABLE                         R10 0 3
       55 GETTABLEKS                       R11 R4 K6 ["getMap"]
       57 MOVE                             R12 R7
       58 GETTABLEKS                       R13 R5 K7 ["get"]
       60 SETLIST                          R10 R11 3 [1]
       62 CALL                             R8 2 1
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K2 ["useCallback"]
       66 NEWCLOSURE                       R10 P3
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R11 0 1
       72 GETTABLEKS                       R12 R5 K8 ["setMap"]
       74 SETLIST                          R11 R12 1 [1]
       76 CALL                             R9 2 1
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K2 ["useCallback"]
       80 NEWCLOSURE                       R11 P4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          VAL R8
       85 NEWTABLE                         R12 0 2
       87 MOVE                             R13 R8
       88 GETTABLEKS                       R14 R5 K8 ["setMap"]
       90 SETLIST                          R12 R13 2 [1]
       92 CALL                             R10 2 1
       93 GETUPVAL                         R11 0
       94 GETTABLEKS                       R11 R11 K2 ["useCallback"]
       96 NEWCLOSURE                       R12 P5
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R8
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R1
      102 NEWTABLE                         R13 0 7
      104 GETTABLEKS                       R14 R5 K7 ["get"]
      106 GETTABLEKS                       R15 R5 K8 ["setMap"]
      108 MOVE                             R16 R8
      109 GETTABLEKS                       R17 R2 K9 ["setNodeConnectionAsync"]
      111 GETTABLEKS                       R18 R2 K10 ["removeNodeInputConnectionAsync"]
      113 GETTABLEKS                       R19 R2 K11 ["removeNodeOutputConnectionAsync"]
      115 GETTABLEKS                       R20 R1 K12 ["showMenu"]
      117 SETLIST                          R13 R14 7 [1]
      119 CALL                             R11 2 1
      120 GETUPVAL                         R12 0
      121 GETTABLEKS                       R12 R12 K13 ["useEffect"]
      123 NEWCLOSURE                       R13 P6
      124 CAPTURE                          UPVAL U4
      125 CAPTURE                          VAL R3
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          VAL R2
      128 CAPTURE                          UPVAL U9
      129 NEWTABLE                         R14 0 2
      131 GETTABLEKS                       R15 R2 K5 ["observeNodeRenderInfoById"]
      133 GETTABLEKS                       R16 R3 K14 ["observeMap"]
      135 SETLIST                          R14 R15 2 [1]
      137 CALL                             R12 2 0
      138 GETUPVAL                         R12 0
      139 GETTABLEKS                       R12 R12 K2 ["useCallback"]
      141 NEWCLOSURE                       R13 P7
      142 CAPTURE                          VAL R4
      143 CAPTURE                          UPVAL U8
      144 CAPTURE                          VAL R7
      145 CAPTURE                          UPVAL U4
      146 NEWTABLE                         R14 0 2
      148 GETTABLEKS                       R15 R4 K7 ["get"]
      150 MOVE                             R16 R7
      151 SETLIST                          R14 R15 2 [1]
      153 CALL                             R12 2 1
      154 GETUPVAL                         R13 0
      155 GETTABLEKS                       R13 R13 K2 ["useCallback"]
      157 NEWCLOSURE                       R14 P8
      158 CAPTURE                          VAL R7
      159 CAPTURE                          UPVAL U4
      160 CAPTURE                          UPVAL U5
      161 NEWTABLE                         R15 0 2
      163 GETTABLEKS                       R16 R4 K7 ["get"]
      165 MOVE                             R17 R7
      166 SETLIST                          R15 R16 2 [1]
      168 CALL                             R13 2 1
      169 GETUPVAL                         R14 0
      170 GETTABLEKS                       R14 R14 K2 ["useCallback"]
      172 NEWCLOSURE                       R15 P9
      173 CAPTURE                          VAL R4
      174 NEWTABLE                         R16 0 2
      176 GETTABLEKS                       R17 R4 K7 ["get"]
      178 GETTABLEKS                       R18 R4 K15 ["set"]
      180 SETLIST                          R16 R17 2 [1]
      182 CALL                             R14 2 1
      183 GETUPVAL                         R15 0
      184 GETTABLEKS                       R15 R15 K2 ["useCallback"]
      186 NEWCLOSURE                       R16 P10
      187 CAPTURE                          VAL R3
      188 NEWTABLE                         R17 0 2
      190 GETTABLEKS                       R18 R3 K7 ["get"]
      192 GETTABLEKS                       R19 R3 K15 ["set"]
      194 SETLIST                          R17 R18 2 [1]
      196 CALL                             R15 2 1
      197 GETUPVAL                         R16 0
      198 GETTABLEKS                       R16 R16 K2 ["useCallback"]
      200 NEWCLOSURE                       R17 P11
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R3
      204 NEWTABLE                         R18 0 3
      206 GETTABLEKS                       R19 R2 K16 ["observeRenderInfoMap"]
      208 MOVE                             R20 R6
      209 MOVE                             R21 R15
      210 SETLIST                          R18 R19 3 [1]
      212 CALL                             R16 2 1
      213 GETUPVAL                         R17 0
      214 GETTABLEKS                       R17 R17 K2 ["useCallback"]
      216 NEWCLOSURE                       R18 P12
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R15
      219 NEWTABLE                         R19 0 1
      221 GETTABLEKS                       R20 R3 K7 ["get"]
      223 SETLIST                          R19 R20 1 [1]
      225 CALL                             R17 2 1
      226 GETUPVAL                         R18 0
      227 GETTABLEKS                       R18 R18 K2 ["useCallback"]
      229 NEWCLOSURE                       R19 P13
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R17
      233 NEWTABLE                         R20 0 3
      235 GETTABLEKS                       R21 R3 K8 ["setMap"]
      237 MOVE                             R22 R17
      238 MOVE                             R23 R16
      239 SETLIST                          R20 R21 3 [1]
      241 CALL                             R18 2 1
      242 GETUPVAL                         R19 0
      243 GETTABLEKS                       R19 R19 K2 ["useCallback"]
      245 NEWCLOSURE                       R20 P14
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R17
      248 NEWTABLE                         R21 0 2
      250 GETTABLEKS                       R22 R3 K8 ["setMap"]
      252 MOVE                             R23 R17
      253 SETLIST                          R21 R22 2 [1]
      255 CALL                             R19 2 1
      256 GETUPVAL                         R20 0
      257 GETTABLEKS                       R20 R20 K2 ["useCallback"]
      259 NEWCLOSURE                       R21 P15
      260 CAPTURE                          VAL R3
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R2
      263 CAPTURE                          VAL R6
      264 NEWTABLE                         R22 0 5
      266 GETTABLEKS                       R23 R3 K8 ["setMap"]
      268 MOVE                             R24 R15
      269 GETTABLEKS                       R25 R2 K5 ["observeNodeRenderInfoById"]
      271 MOVE                             R26 R6
      272 GETTABLEKS                       R27 R3 K6 ["getMap"]
      274 SETLIST                          R22 R23 5 [1]
      276 CALL                             R20 2 1
      277 GETUPVAL                         R21 0
      278 GETTABLEKS                       R21 R21 K17 ["useMemo"]
      280 NEWCLOSURE                       R22 P16
      281 CAPTURE                          VAL R5
      282 NEWTABLE                         R23 0 1
      284 GETTABLEKS                       R24 R5 K4 ["observe"]
      286 SETLIST                          R23 R24 1 [1]
      288 CALL                             R21 2 1
      289 DUPTABLE                         R22 K31 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "observeNodePreviewData", "observeNodePosition", "pushAnchor", "observeAnchorPosition", "observeCollapsedPinPosition", "onStartDrag", "onDragMoved", "onDragEnded"}]
      290 SETTABLEKS                       R21 R22 K18 ["observeGlobalCurvePreviewInfo"]
      292 GETTABLEKS                       R23 R5 K4 ["observe"]
      294 SETTABLEKS                       R23 R22 K19 ["observeCurvePreviewInfo"]
      296 SETTABLEKS                       R18 R22 K20 ["onDragNodeStart"]
      298 SETTABLEKS                       R19 R22 K21 ["onDragNodeMoved"]
      300 SETTABLEKS                       R20 R22 K22 ["onDragNodeEnded"]
      302 GETTABLEKS                       R23 R3 K4 ["observe"]
      304 SETTABLEKS                       R23 R22 K23 ["observeNodePreviewData"]
      306 SETTABLEKS                       R7 R22 K24 ["observeNodePosition"]
      308 SETTABLEKS                       R14 R22 K25 ["pushAnchor"]
      310 SETTABLEKS                       R12 R22 K26 ["observeAnchorPosition"]
      312 SETTABLEKS                       R13 R22 K27 ["observeCollapsedPinPosition"]
      314 SETTABLEKS                       R9 R22 K28 ["onStartDrag"]
      316 SETTABLEKS                       R10 R22 K29 ["onDragMoved"]
      318 SETTABLEKS                       R11 R22 K30 ["onDragEnded"]
      320 GETUPVAL                         R23 0
      321 GETTABLEKS                       R23 R23 K32 ["createElement"]
      323 GETUPVAL                         R24 10
      324 GETTABLEKS                       R24 R24 K33 ["Provider"]
      326 DUPTABLE                         R25 K35 [{"value"}]
      327 SETTABLEKS                       R22 R25 K34 ["value"]
      329 GETTABLEKS                       R26 R0 K36 ["children"]
      331 CALL                             R23 3 -1
      332 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["InsertNodeContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["NativeGraphContext"]
       36 GETTABLEKS                       R5 R5 K12 ["NativeGraphUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["NodeViewTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Parent"]
       55 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Util"]
       62 GETTABLEKS                       R9 R9 K16 ["Signals"]
       64 GETTABLEKS                       R9 R9 K17 ["Experimental"]
       66 GETTABLEKS                       R9 R9 K18 ["SignalExperimentalUtils"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Parent"]
       73 GETTABLEKS                       R10 R10 K16 ["Signals"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETIMPORT                        R11 K1 [script]
       80 GETTABLEKS                       R11 R11 K11 ["Parent"]
       82 GETTABLEKS                       R11 R11 K11 ["Parent"]
       84 GETTABLEKS                       R11 R11 K6 ["Util"]
       86 GETTABLEKS                       R11 R11 K16 ["Signals"]
       88 GETTABLEKS                       R11 R11 K19 ["SignalsInstanceUtils"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       95 GETTABLEKS                       R12 R12 K21 ["useSignalDispatcher"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K22 ["Flags"]
      102 GETTABLEKS                       R13 R13 K23 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      104 CALL                             R12 1 1
      105 DUPTABLE                         R13 K37 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "observeCollapsedPinPosition", "onStartDrag", "onDragMoved", "onDragEnded", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded"}]
      106 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      108 LOADK                            R15 K24 ["observeGlobalCurvePreviewInfo"]
      109 CALL                             R14 1 1
      110 SETTABLEKS                       R14 R13 K24 ["observeGlobalCurvePreviewInfo"]
      112 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      114 LOADK                            R15 K25 ["observeCurvePreviewInfo"]
      115 CALL                             R14 1 1
      116 SETTABLEKS                       R14 R13 K25 ["observeCurvePreviewInfo"]
      118 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      120 LOADK                            R15 K26 ["pushAnchor"]
      121 CALL                             R14 1 1
      122 SETTABLEKS                       R14 R13 K26 ["pushAnchor"]
      124 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      126 LOADK                            R15 K27 ["observeNodePreviewData"]
      127 CALL                             R14 1 1
      128 SETTABLEKS                       R14 R13 K27 ["observeNodePreviewData"]
      130 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      132 LOADK                            R15 K28 ["observeAnchorPosition"]
      133 CALL                             R14 1 1
      134 SETTABLEKS                       R14 R13 K28 ["observeAnchorPosition"]
      136 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      138 LOADK                            R15 K29 ["observeNodePosition"]
      139 CALL                             R14 1 1
      140 SETTABLEKS                       R14 R13 K29 ["observeNodePosition"]
      142 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      144 LOADK                            R15 K30 ["observeCollapsedPinPosition"]
      145 CALL                             R14 1 1
      146 SETTABLEKS                       R14 R13 K30 ["observeCollapsedPinPosition"]
      148 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      150 LOADK                            R15 K31 ["onStartDrag"]
      151 CALL                             R14 1 1
      152 SETTABLEKS                       R14 R13 K31 ["onStartDrag"]
      154 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      156 LOADK                            R15 K32 ["onDragMoved"]
      157 CALL                             R14 1 1
      158 SETTABLEKS                       R14 R13 K32 ["onDragMoved"]
      160 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      162 LOADK                            R15 K33 ["onDragEnded"]
      163 CALL                             R14 1 1
      164 SETTABLEKS                       R14 R13 K33 ["onDragEnded"]
      166 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      168 LOADK                            R15 K34 ["onDragNodeStart"]
      169 CALL                             R14 1 1
      170 SETTABLEKS                       R14 R13 K34 ["onDragNodeStart"]
      172 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      174 LOADK                            R15 K35 ["onDragNodeMoved"]
      175 CALL                             R14 1 1
      176 SETTABLEKS                       R14 R13 K35 ["onDragNodeMoved"]
      178 GETTABLEKS                       R14 R7 K38 ["createUnimplemented"]
      180 LOADK                            R15 K36 ["onDragNodeEnded"]
      181 CALL                             R14 1 1
      182 SETTABLEKS                       R14 R13 K36 ["onDragNodeEnded"]
      184 GETTABLEKS                       R14 R6 K39 ["createContext"]
      186 MOVE                             R15 R13
      187 CALL                             R14 1 1
      188 DUPCLOSURE                       R15 K40 [PROTO_28]
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R14
      200 DUPTABLE                         R16 K43 [{"Context", "Provider"}]
      201 SETTABLEKS                       R14 R16 K41 ["Context"]
      203 SETTABLEKS                       R15 R16 K42 ["Provider"]
      205 RETURN                           R16 1
