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
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observe"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["observe"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Experimental"]
       15 GETTABLEKS                       R3 R3 K3 ["createComputed"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U3
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1

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
        4 JUMPIFNOT                        R8 ; [+13]
        5 JUMPIFNOTEQKS                    R2 K0 ["Parameter"] ; [+3]
        7 MOVE                             R6 R5
        8 JUMP                             ; [+1]
        9 LOADNIL                          R6
       10 GETUPVAL                         R8 1
       11 MOVE                             R9 R0
       12 MOVE                             R10 R3
       13 MOVE                             R11 R1
       14 MOVE                             R12 R6
       15 CALL                             R8 4 1
       16 MOVE                             R7 R8
       17 JUMP                             ; [+6]
       18 GETUPVAL                         R8 1
       19 MOVE                             R9 R0
       20 MOVE                             R10 R3
       21 MOVE                             R11 R1
       22 CALL                             R8 3 1
       23 MOVE                             R7 R8
       24 GETIMPORT                        R8 K3 [table.freeze]
       26 DUPTABLE                         R9 K10 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue", "sourcePinDynamicIndex"}]
       27 SETTABLEKS                       R0 R9 K4 ["sourcePinNodeId"]
       29 SETTABLEKS                       R1 R9 K5 ["sourcePinName"]
       31 SETTABLEKS                       R2 R9 K6 ["sourcePinDataType"]
       33 SETTABLEKS                       R3 R9 K7 ["sourcePinSide"]
       35 SETTABLEKS                       R4 R9 K8 ["sourcePinValue"]
       37 GETUPVAL                         R11 0
       38 CALL                             R11 0 1
       39 JUMPIFNOT                        R11 ; [+2]
       40 MOVE                             R10 R5
       41 JUMP                             ; [+1]
       42 LOADNIL                          R10
       43 SETTABLEKS                       R10 R9 K9 ["sourcePinDynamicIndex"]
       45 CALL                             R8 1 1
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K11 ["setMap"]
       49 NEWTABLE                         R10 2 0
       51 SETTABLEKS                       R8 R10 K12 ["global"]
       53 SETTABLE                         R8 R10 R7
       54 CALL                             R9 1 0
       55 RETURN                           R0 0

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
       11 JUMPIFNOT                        R3 ; [+19]
       12 GETTABLEKS                       R4 R1 K2 ["sourcePinDataType"]
       14 JUMPIFNOTEQKS                    R4 K3 ["Parameter"] ; [+4]
       16 GETTABLEKS                       R3 R1 K4 ["sourcePinDynamicIndex"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R5 R1 K5 ["sourcePinNodeId"]
       23 GETTABLEKS                       R6 R1 K6 ["sourcePinSide"]
       25 GETTABLEKS                       R7 R1 K7 ["sourcePinName"]
       27 MOVE                             R8 R3
       28 CALL                             R4 4 1
       29 MOVE                             R2 R4
       30 JUMP                             ; [+9]
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R4 R1 K5 ["sourcePinNodeId"]
       34 GETTABLEKS                       R5 R1 K6 ["sourcePinSide"]
       36 GETTABLEKS                       R6 R1 K7 ["sourcePinName"]
       38 CALL                             R3 3 1
       39 MOVE                             R2 R3
       40 GETUPVAL                         R3 3
       41 MOVE                             R4 R0
       42 CALL                             R3 1 2
       43 JUMPIFNOT                        R3 ; [+62]
       44 JUMPIFNOT                        R4 ; [+61]
       45 GETIMPORT                        R5 K10 [table.clone]
       47 MOVE                             R6 R1
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R3 K11 ["pinName"]
       51 SETTABLEKS                       R6 R5 K12 ["targetPinName"]
       53 SETTABLEKS                       R4 R5 K13 ["targetPinPosition"]
       55 GETTABLEKS                       R6 R3 K14 ["pinNodeId"]
       57 SETTABLEKS                       R6 R5 K15 ["targetPinNodeId"]
       59 GETTABLEKS                       R6 R3 K16 ["pinDynamicIndex"]
       61 SETTABLEKS                       R6 R5 K17 ["targetPinDynamicIndex"]
       63 LOADNIL                          R6
       64 GETUPVAL                         R7 1
       65 CALL                             R7 0 1
       66 JUMPIFNOT                        R7 ; [+19]
       67 GETTABLEKS                       R8 R3 K18 ["pinDataType"]
       69 JUMPIFNOTEQKS                    R8 K3 ["Parameter"] ; [+4]
       71 GETTABLEKS                       R7 R3 K16 ["pinDynamicIndex"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R7
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R9 R3 K14 ["pinNodeId"]
       78 GETTABLEKS                       R10 R3 K19 ["pinSide"]
       80 GETTABLEKS                       R11 R3 K11 ["pinName"]
       82 MOVE                             R12 R7
       83 CALL                             R8 4 1
       84 MOVE                             R6 R8
       85 JUMP                             ; [+9]
       86 GETUPVAL                         R7 2
       87 GETTABLEKS                       R8 R3 K14 ["pinNodeId"]
       89 GETTABLEKS                       R9 R3 K19 ["pinSide"]
       91 GETTABLEKS                       R10 R3 K11 ["pinName"]
       93 CALL                             R7 3 1
       94 MOVE                             R6 R7
       95 GETUPVAL                         R7 0
       96 GETTABLEKS                       R7 R7 K20 ["setMap"]
       98 NEWTABLE                         R8 4 0
      100 SETTABLEKS                       R5 R8 K1 ["global"]
      102 SETTABLE                         R5 R8 R2
      103 SETTABLE                         R5 R8 R6
      104 CALL                             R7 1 0
      105 RETURN                           R0 0
      106 GETIMPORT                        R5 K10 [table.clone]
      108 MOVE                             R6 R1
      109 CALL                             R5 1 1
      110 LOADNIL                          R6
      111 SETTABLEKS                       R6 R5 K12 ["targetPinName"]
      113 SETTABLEKS                       R0 R5 K13 ["targetPinPosition"]
      115 LOADNIL                          R6
      116 SETTABLEKS                       R6 R5 K15 ["targetPinNodeId"]
      118 GETUPVAL                         R6 0
      119 GETTABLEKS                       R6 R6 K20 ["setMap"]
      121 NEWTABLE                         R7 2 0
      123 SETTABLEKS                       R5 R7 K1 ["global"]
      125 SETTABLE                         R5 R7 R2
      126 CALL                             R6 1 0
      127 RETURN                           R0 0

PROTO_6:
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
       91 JUMPIFNOT                        R3 ; [+22]
       92 JUMPIFNOT                        R4 ; [+21]
       93 JUMPIFNOT                        R5 ; [+20]
       94 JUMPIFNOT                        R6 ; [+19]
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R9 R9 K20 ["setNodeConnection"]
       98 MOVE                             R10 R3
       99 MOVE                             R11 R4
      100 MOVE                             R12 R5
      101 MOVE                             R13 R6
      102 GETUPVAL                         R15 2
      103 CALL                             R15 0 1
      104 JUMPIFNOT                        R15 ; [+6]
      105 GETTABLEKS                       R15 R1 K17 ["sourcePinDataType"]
      107 JUMPIFNOTEQKS                    R15 K21 ["Parameter"] ; [+3]
      109 MOVE                             R14 R7
      110 JUMP                             ; [+1]
      111 LOADNIL                          R14
      112 CALL                             R9 5 0
      113 JUMP                             ; [+52]
      114 JUMPIFNOT                        R3 ; [+31]
      115 JUMPIFNOT                        R4 ; [+30]
      116 GETUPVAL                         R10 2
      117 CALL                             R10 0 1
      118 JUMPIFNOT                        R10 ; [+6]
      119 GETTABLEKS                       R10 R1 K17 ["sourcePinDataType"]
      121 JUMPIFNOTEQKS                    R10 K21 ["Parameter"] ; [+3]
      123 MOVE                             R9 R7
      124 JUMP                             ; [+1]
      125 LOADNIL                          R9
      126 GETUPVAL                         R10 3
      127 GETTABLEKS                       R10 R10 K22 ["removeNodeInputConnectionAsync"]
      129 MOVE                             R11 R3
      130 MOVE                             R12 R4
      131 GETUPVAL                         R14 2
      132 CALL                             R14 0 1
      133 JUMPIFNOT                        R14 ; [+2]
      134 MOVE                             R13 R9
      135 JUMP                             ; [+1]
      136 LOADNIL                          R13
      137 CALL                             R10 3 1
      138 JUMPIF                           R10 ; [+27]
      139 GETUPVAL                         R10 4
      140 GETTABLEKS                       R10 R10 K23 ["showMenu"]
      142 MOVE                             R11 R0
      143 MOVE                             R12 R8
      144 CALL                             R10 2 0
      145 JUMP                             ; [+20]
      146 JUMPIFNOT                        R5 ; [+15]
      147 JUMPIFNOT                        R6 ; [+14]
      148 GETUPVAL                         R9 3
      149 GETTABLEKS                       R9 R9 K24 ["removeNodeOutputConnectionAsync"]
      151 MOVE                             R10 R5
      152 MOVE                             R11 R6
      153 CALL                             R9 2 1
      154 JUMPIF                           R9 ; [+11]
      155 GETUPVAL                         R9 4
      156 GETTABLEKS                       R9 R9 K23 ["showMenu"]
      158 MOVE                             R10 R0
      159 MOVE                             R11 R8
      160 CALL                             R9 2 0
      161 JUMP                             ; [+4]
      162 GETIMPORT                        R9 K26 [warn]
      164 LOADK                            R10 K27 ["Bad state"]
      165 CALL                             R9 1 0
      166 GETUPVAL                         R9 0
      167 GETTABLEKS                       R9 R9 K28 ["setMap"]
      169 NEWTABLE                         R10 0 0
      171 CALL                             R9 1 0
      172 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observe"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["forEach"]
       11 MOVE                             R2 R0
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["createEffect"]
       18 NEWCLOSURE                       R3 P2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U1
       21 CALL                             R2 1 1
       22 NEWCLOSURE                       R3 P3
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1

PROTO_12:
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

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["pinNodeId"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Experimental"]
        8 GETTABLEKS                       R2 R2 K2 ["createComputed"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K3 ["of"]
       18 LOADNIL                          R2
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observe"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["switchMap"]
        8 MOVE                             R3 R1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Experimental"]
        6 GETTABLEKS                       R2 R2 K1 ["createComputed"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLE                         R3 R1 R0
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["get"]
       12 MOVE                             R5 R0
       13 CALL                             R4 1 -1
       14 CALL                             R2 -1 1
       15 JUMPIF                           R2 ; [+3]
       16 NEWTABLE                         R3 0 0
       18 RETURN                           R3 1
       19 NEWTABLE                         R3 0 0
       21 GETTABLE                         R4 R1 R0
       22 GETTABLEKS                       R4 R4 K3 ["isSelected"]
       24 JUMPIFNOT                        R4 ; [+22]
       25 MOVE                             R4 R1
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETTABLEKS                       R9 R8 K3 ["isSelected"]
       31 JUMPIFNOT                        R9 ; [+13]
       32 JUMPIFEQ                         R7 R0 ; [+12]
       34 GETUPVAL                         R9 1
       35 MOVE                             R10 R8
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R11 R11 K2 ["get"]
       39 MOVE                             R12 R7
       40 CALL                             R11 1 -1
       41 CALL                             R9 -1 1
       42 JUMPIFNOT                        R9 ; [+2]
       43 SUB                              R10 R9 R2
       44 SETTABLE                         R10 R3 R7
       45 FORGLOOP                         R4 2 ; [-17]
       47 RETURN                           R3 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMap"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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
       17 GETTABLEKS                       R6 R6 K4 ["nodeRenderInfoDispatcher"]
       19 GETTABLEKS                       R6 R6 K5 ["observe"]
       21 MOVE                             R7 R0
       22 CALL                             R6 1 1
       23 LOADB                            R7 0
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 3
       26 MOVE                             R8 R6
       27 MOVE                             R9 R5
       28 CALL                             R7 2 1
       29 MOVE                             R8 R4
       30 MOVE                             R9 R0
       31 MOVE                             R10 R7
       32 CALL                             R8 2 0
       33 GETTABLEKS                       R8 R5 K6 ["selectedNodesOffset"]
       35 JUMPIFNOT                        R8 ; [+15]
       36 GETTABLEKS                       R8 R5 K6 ["selectedNodesOffset"]
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 JUMPIFNOT                        R7 ; [+2]
       42 ADD                              R13 R7 R12
       43 JUMP                             ; [+1]
       44 LOADNIL                          R13
       45 MOVE                             R14 R4
       46 MOVE                             R15 R11
       47 MOVE                             R16 R13
       48 CALL                             R14 2 0
       49 FORGLOOP                         R8 2 ; [-9]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K7 ["setMap"]
       54 MOVE                             R9 R3
       55 CALL                             R8 1 0
       56 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observe"]
        3 LOADK                            R1 K1 ["global"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_27:
        0 DUPTABLE                         R0 K13 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "observeNodePreviewData", "observeNodePosition", "pushAnchor", "observeAnchorPosition", "observeCollapsedPinPosition", "onStartDrag", "onDragMoved", "onDragEnded"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeGlobalCurvePreviewInfo"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K14 ["observe"]
        7 SETTABLEKS                       R1 R0 K1 ["observeCurvePreviewInfo"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K2 ["onDragNodeStart"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K3 ["onDragNodeMoved"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K4 ["onDragNodeEnded"]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K14 ["observe"]
       21 SETTABLEKS                       R1 R0 K5 ["observeNodePreviewData"]
       23 GETUPVAL                         R1 6
       24 SETTABLEKS                       R1 R0 K6 ["observeNodePosition"]
       26 GETUPVAL                         R1 7
       27 SETTABLEKS                       R1 R0 K7 ["pushAnchor"]
       29 GETUPVAL                         R1 8
       30 SETTABLEKS                       R1 R0 K8 ["observeAnchorPosition"]
       32 GETUPVAL                         R1 9
       33 SETTABLEKS                       R1 R0 K9 ["observeCollapsedPinPosition"]
       35 GETUPVAL                         R1 10
       36 SETTABLEKS                       R1 R0 K10 ["onStartDrag"]
       38 GETUPVAL                         R1 11
       39 SETTABLEKS                       R1 R0 K11 ["onDragMoved"]
       41 GETUPVAL                         R1 12
       42 SETTABLEKS                       R1 R0 K12 ["onDragEnded"]
       44 RETURN                           R0 1

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
       40 GETTABLEKS                       R12 R2 K5 ["nodeRenderInfoDispatcher"]
       42 GETTABLEKS                       R12 R12 K4 ["observe"]
       44 SETLIST                          R9 R10 3 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       50 NEWCLOSURE                       R9 P2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R7
       54 CAPTURE                          UPVAL U5
       55 NEWTABLE                         R10 0 3
       57 GETTABLEKS                       R11 R4 K6 ["getMap"]
       59 MOVE                             R12 R7
       60 GETTABLEKS                       R13 R5 K7 ["get"]
       62 SETLIST                          R10 R11 3 [1]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K2 ["useCallback"]
       68 NEWCLOSURE                       R10 P3
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          VAL R5
       72 NEWTABLE                         R11 0 1
       74 GETTABLEKS                       R12 R5 K8 ["setMap"]
       76 SETLIST                          R11 R12 1 [1]
       78 CALL                             R9 2 1
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K2 ["useCallback"]
       82 NEWCLOSURE                       R11 P4
       83 CAPTURE                          VAL R5
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          VAL R8
       87 NEWTABLE                         R12 0 2
       89 MOVE                             R13 R8
       90 GETTABLEKS                       R14 R5 K8 ["setMap"]
       92 SETLIST                          R12 R13 2 [1]
       94 CALL                             R10 2 1
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K2 ["useCallback"]
       98 NEWCLOSURE                       R12 P5
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R8
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R1
      104 NEWTABLE                         R13 0 7
      106 GETTABLEKS                       R14 R5 K7 ["get"]
      108 GETTABLEKS                       R15 R5 K8 ["setMap"]
      110 MOVE                             R16 R8
      111 GETTABLEKS                       R17 R2 K9 ["setNodeConnection"]
      113 GETTABLEKS                       R18 R2 K10 ["removeNodeInputConnectionAsync"]
      115 GETTABLEKS                       R19 R2 K11 ["removeNodeOutputConnectionAsync"]
      117 GETTABLEKS                       R20 R1 K12 ["showMenu"]
      119 SETLIST                          R13 R14 7 [1]
      121 CALL                             R11 2 1
      122 GETUPVAL                         R12 0
      123 GETTABLEKS                       R12 R12 K13 ["useEffect"]
      125 NEWCLOSURE                       R13 P6
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R2
      129 CAPTURE                          UPVAL U8
      130 NEWTABLE                         R14 0 2
      132 GETTABLEKS                       R15 R2 K5 ["nodeRenderInfoDispatcher"]
      134 GETTABLEKS                       R15 R15 K4 ["observe"]
      136 GETTABLEKS                       R16 R3 K14 ["observeMap"]
      138 SETLIST                          R14 R15 2 [1]
      140 CALL                             R12 2 0
      141 GETUPVAL                         R12 0
      142 GETTABLEKS                       R12 R12 K2 ["useCallback"]
      144 NEWCLOSURE                       R13 P7
      145 CAPTURE                          VAL R4
      146 CAPTURE                          UPVAL U4
      147 CAPTURE                          VAL R7
      148 NEWTABLE                         R14 0 2
      150 GETTABLEKS                       R15 R4 K7 ["get"]
      152 MOVE                             R16 R7
      153 SETLIST                          R14 R15 2 [1]
      155 CALL                             R12 2 1
      156 GETUPVAL                         R13 0
      157 GETTABLEKS                       R13 R13 K2 ["useCallback"]
      159 NEWCLOSURE                       R14 P8
      160 CAPTURE                          VAL R7
      161 CAPTURE                          UPVAL U4
      162 CAPTURE                          UPVAL U5
      163 NEWTABLE                         R15 0 2
      165 GETTABLEKS                       R16 R4 K7 ["get"]
      167 MOVE                             R17 R7
      168 SETLIST                          R15 R16 2 [1]
      170 CALL                             R13 2 1
      171 GETUPVAL                         R14 0
      172 GETTABLEKS                       R14 R14 K2 ["useCallback"]
      174 NEWCLOSURE                       R15 P9
      175 CAPTURE                          VAL R4
      176 NEWTABLE                         R16 0 2
      178 GETTABLEKS                       R17 R4 K7 ["get"]
      180 GETTABLEKS                       R18 R4 K15 ["set"]
      182 SETLIST                          R16 R17 2 [1]
      184 CALL                             R14 2 1
      185 GETUPVAL                         R15 0
      186 GETTABLEKS                       R15 R15 K2 ["useCallback"]
      188 NEWCLOSURE                       R16 P10
      189 CAPTURE                          VAL R3
      190 NEWTABLE                         R17 0 2
      192 GETTABLEKS                       R18 R3 K7 ["get"]
      194 GETTABLEKS                       R19 R3 K15 ["set"]
      196 SETLIST                          R17 R18 2 [1]
      198 CALL                             R15 2 1
      199 GETUPVAL                         R16 0
      200 GETTABLEKS                       R16 R16 K2 ["useCallback"]
      202 NEWCLOSURE                       R17 P11
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R3
      206 NEWTABLE                         R18 0 3
      208 GETTABLEKS                       R19 R2 K5 ["nodeRenderInfoDispatcher"]
      210 GETTABLEKS                       R19 R19 K14 ["observeMap"]
      212 MOVE                             R20 R6
      213 MOVE                             R21 R15
      214 SETLIST                          R18 R19 3 [1]
      216 CALL                             R16 2 1
      217 GETUPVAL                         R17 0
      218 GETTABLEKS                       R17 R17 K2 ["useCallback"]
      220 NEWCLOSURE                       R18 P12
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R15
      223 NEWTABLE                         R19 0 1
      225 GETTABLEKS                       R20 R3 K7 ["get"]
      227 SETLIST                          R19 R20 1 [1]
      229 CALL                             R17 2 1
      230 GETUPVAL                         R18 0
      231 GETTABLEKS                       R18 R18 K2 ["useCallback"]
      233 NEWCLOSURE                       R19 P13
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R3
      236 CAPTURE                          VAL R17
      237 NEWTABLE                         R20 0 3
      239 GETTABLEKS                       R21 R3 K8 ["setMap"]
      241 MOVE                             R22 R17
      242 MOVE                             R23 R16
      243 SETLIST                          R20 R21 3 [1]
      245 CALL                             R18 2 1
      246 GETUPVAL                         R19 0
      247 GETTABLEKS                       R19 R19 K2 ["useCallback"]
      249 NEWCLOSURE                       R20 P14
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R17
      252 NEWTABLE                         R21 0 2
      254 GETTABLEKS                       R22 R3 K8 ["setMap"]
      256 MOVE                             R23 R17
      257 SETLIST                          R21 R22 2 [1]
      259 CALL                             R19 2 1
      260 GETUPVAL                         R20 0
      261 GETTABLEKS                       R20 R20 K2 ["useCallback"]
      263 NEWCLOSURE                       R21 P15
      264 CAPTURE                          VAL R3
      265 CAPTURE                          VAL R15
      266 CAPTURE                          VAL R2
      267 CAPTURE                          VAL R6
      268 NEWTABLE                         R22 0 5
      270 GETTABLEKS                       R23 R3 K8 ["setMap"]
      272 MOVE                             R24 R15
      273 GETTABLEKS                       R25 R2 K5 ["nodeRenderInfoDispatcher"]
      275 GETTABLEKS                       R25 R25 K4 ["observe"]
      277 MOVE                             R26 R6
      278 GETTABLEKS                       R27 R3 K6 ["getMap"]
      280 SETLIST                          R22 R23 5 [1]
      282 CALL                             R20 2 1
      283 GETUPVAL                         R21 0
      284 GETTABLEKS                       R21 R21 K16 ["useMemo"]
      286 NEWCLOSURE                       R22 P16
      287 CAPTURE                          VAL R5
      288 NEWTABLE                         R23 0 1
      290 GETTABLEKS                       R24 R5 K4 ["observe"]
      292 SETLIST                          R23 R24 1 [1]
      294 CALL                             R21 2 1
      295 GETUPVAL                         R22 0
      296 GETTABLEKS                       R22 R22 K16 ["useMemo"]
      298 NEWCLOSURE                       R23 P17
      299 CAPTURE                          VAL R21
      300 CAPTURE                          VAL R5
      301 CAPTURE                          VAL R18
      302 CAPTURE                          VAL R19
      303 CAPTURE                          VAL R20
      304 CAPTURE                          VAL R3
      305 CAPTURE                          VAL R7
      306 CAPTURE                          VAL R14
      307 CAPTURE                          VAL R12
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R9
      310 CAPTURE                          VAL R10
      311 CAPTURE                          VAL R11
      312 NEWTABLE                         R24 0 13
      314 MOVE                             R25 R21
      315 GETTABLEKS                       R26 R5 K4 ["observe"]
      317 MOVE                             R27 R18
      318 MOVE                             R28 R19
      319 MOVE                             R29 R20
      320 GETTABLEKS                       R30 R3 K4 ["observe"]
      322 MOVE                             R31 R7
      323 MOVE                             R32 R14
      324 MOVE                             R33 R12
      325 MOVE                             R34 R13
      326 MOVE                             R35 R9
      327 MOVE                             R36 R10
      328 MOVE                             R37 R11
      329 SETLIST                          R24 R25 13 [1]
      331 CALL                             R22 2 1
      332 GETUPVAL                         R23 0
      333 GETTABLEKS                       R23 R23 K17 ["createElement"]
      335 GETUPVAL                         R24 9
      336 GETTABLEKS                       R24 R24 K18 ["Provider"]
      338 DUPTABLE                         R25 K20 [{"value"}]
      339 SETTABLEKS                       R22 R25 K19 ["value"]
      341 GETTABLEKS                       R26 R0 K21 ["children"]
      343 CALL                             R23 3 -1
      344 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["GraphContext"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Components"]
       23 GETTABLEKS                       R4 R4 K9 ["InsertNodeContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["NodeViewTypes"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K11 ["Parent"]
       35 GETTABLEKS                       R6 R6 K12 ["React"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Parent"]
       42 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Parent"]
       49 GETTABLEKS                       R8 R8 K14 ["Signals"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K11 ["Parent"]
       56 GETTABLEKS                       R9 R9 K15 ["SignalsUtils"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K16 ["Util"]
       63 GETTABLEKS                       R10 R10 K17 ["getPinAnchorKey"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       70 GETTABLEKS                       R11 R11 K19 ["useSignalDispatcher"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K20 ["Flags"]
       77 GETTABLEKS                       R12 R12 K21 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       79 CALL                             R11 1 1
       80 DUPTABLE                         R12 K35 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "observeCollapsedPinPosition", "onStartDrag", "onDragMoved", "onDragEnded", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded"}]
       81 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
       83 LOADK                            R14 K22 ["observeGlobalCurvePreviewInfo"]
       84 CALL                             R13 1 1
       85 SETTABLEKS                       R13 R12 K22 ["observeGlobalCurvePreviewInfo"]
       87 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
       89 LOADK                            R14 K23 ["observeCurvePreviewInfo"]
       90 CALL                             R13 1 1
       91 SETTABLEKS                       R13 R12 K23 ["observeCurvePreviewInfo"]
       93 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
       95 LOADK                            R14 K24 ["pushAnchor"]
       96 CALL                             R13 1 1
       97 SETTABLEKS                       R13 R12 K24 ["pushAnchor"]
       99 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      101 LOADK                            R14 K25 ["observeNodePreviewData"]
      102 CALL                             R13 1 1
      103 SETTABLEKS                       R13 R12 K25 ["observeNodePreviewData"]
      105 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      107 LOADK                            R14 K26 ["observeAnchorPosition"]
      108 CALL                             R13 1 1
      109 SETTABLEKS                       R13 R12 K26 ["observeAnchorPosition"]
      111 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      113 LOADK                            R14 K27 ["observeNodePosition"]
      114 CALL                             R13 1 1
      115 SETTABLEKS                       R13 R12 K27 ["observeNodePosition"]
      117 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      119 LOADK                            R14 K28 ["observeCollapsedPinPosition"]
      120 CALL                             R13 1 1
      121 SETTABLEKS                       R13 R12 K28 ["observeCollapsedPinPosition"]
      123 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      125 LOADK                            R14 K29 ["onStartDrag"]
      126 CALL                             R13 1 1
      127 SETTABLEKS                       R13 R12 K29 ["onStartDrag"]
      129 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      131 LOADK                            R14 K30 ["onDragMoved"]
      132 CALL                             R13 1 1
      133 SETTABLEKS                       R13 R12 K30 ["onDragMoved"]
      135 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      137 LOADK                            R14 K31 ["onDragEnded"]
      138 CALL                             R13 1 1
      139 SETTABLEKS                       R13 R12 K31 ["onDragEnded"]
      141 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      143 LOADK                            R14 K32 ["onDragNodeStart"]
      144 CALL                             R13 1 1
      145 SETTABLEKS                       R13 R12 K32 ["onDragNodeStart"]
      147 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      149 LOADK                            R14 K33 ["onDragNodeMoved"]
      150 CALL                             R13 1 1
      151 SETTABLEKS                       R13 R12 K33 ["onDragNodeMoved"]
      153 GETTABLEKS                       R13 R6 K36 ["createUnimplemented"]
      155 LOADK                            R14 K34 ["onDragNodeEnded"]
      156 CALL                             R13 1 1
      157 SETTABLEKS                       R13 R12 K34 ["onDragNodeEnded"]
      159 GETTABLEKS                       R13 R5 K37 ["createContext"]
      161 MOVE                             R14 R12
      162 CALL                             R13 1 1
      163 DUPCLOSURE                       R14 K38 [PROTO_28]
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R13
      174 DUPTABLE                         R15 K41 [{"Context", "Provider"}]
      175 SETTABLEKS                       R13 R15 K39 ["Context"]
      177 SETTABLEKS                       R14 R15 K40 ["Provider"]
      179 RETURN                           R15 1
