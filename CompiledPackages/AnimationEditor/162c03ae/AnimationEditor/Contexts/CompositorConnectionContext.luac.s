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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeNodeRenderInfoById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["observe"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["createComputed"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U3
       17 CALL                             R3 1 -1
       18 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
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
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K7 ["getMap"]
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
       44 SUB                              R15 R0 R13
       45 GETTABLEKS                       R14 R15 K12 ["Magnitude"]
       47 JUMPIFNOTLT                      R14 R6 ; [+9]
       49 GETUPVAL                         R16 3
       50 GETTABLEKS                       R15 R16 K13 ["SNAP_DISTANCE"]
       52 JUMPIFNOTLT                      R14 R15 ; [+4]
       54 MOVE                             R6 R14
       55 MOVE                             R4 R11
       56 MOVE                             R5 R13
       57 FORGLOOP                         R7 2 ; [-32]
       59 RETURN                           R4 2

PROTO_4:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["getPinAnchorKey"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R3
        5 MOVE                             R8 R1
        6 CALL                             R5 3 1
        7 GETIMPORT                        R6 K3 [table.freeze]
        9 DUPTABLE                         R7 K9 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue"}]
       10 SETTABLEKS                       R0 R7 K4 ["sourcePinNodeId"]
       12 SETTABLEKS                       R1 R7 K5 ["sourcePinName"]
       14 SETTABLEKS                       R2 R7 K6 ["sourcePinDataType"]
       16 SETTABLEKS                       R3 R7 K7 ["sourcePinSide"]
       18 SETTABLEKS                       R4 R7 K8 ["sourcePinValue"]
       20 CALL                             R6 1 1
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K10 ["setMap"]
       24 NEWTABLE                         R8 2 0
       26 SETTABLEKS                       R6 R8 K11 ["global"]
       28 SETTABLE                         R6 R8 R5
       29 CALL                             R7 1 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["getPinAnchorKey"]
       11 GETTABLEKS                       R3 R1 K3 ["sourcePinNodeId"]
       13 GETTABLEKS                       R4 R1 K4 ["sourcePinSide"]
       15 GETTABLEKS                       R5 R1 K5 ["sourcePinName"]
       17 CALL                             R2 3 1
       18 GETUPVAL                         R3 2
       19 MOVE                             R4 R0
       20 CALL                             R3 1 2
       21 JUMPIFNOT                        R3 ; [+36]
       22 JUMPIFNOT                        R4 ; [+35]
       23 GETIMPORT                        R5 K8 [table.clone]
       25 MOVE                             R6 R1
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R3 K9 ["pinName"]
       29 SETTABLEKS                       R6 R5 K10 ["targetPinName"]
       31 SETTABLEKS                       R4 R5 K11 ["targetPinPosition"]
       33 GETTABLEKS                       R6 R3 K12 ["pinNodeId"]
       35 SETTABLEKS                       R6 R5 K13 ["targetPinNodeId"]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K2 ["getPinAnchorKey"]
       40 GETTABLEKS                       R7 R3 K12 ["pinNodeId"]
       42 GETTABLEKS                       R8 R3 K14 ["pinSide"]
       44 GETTABLEKS                       R9 R3 K9 ["pinName"]
       46 CALL                             R6 3 1
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K15 ["setMap"]
       50 NEWTABLE                         R8 4 0
       52 SETTABLEKS                       R5 R8 K1 ["global"]
       54 SETTABLE                         R5 R8 R2
       55 SETTABLE                         R5 R8 R6
       56 CALL                             R7 1 0
       57 RETURN                           R0 0
       58 GETIMPORT                        R5 K8 [table.clone]
       60 MOVE                             R6 R1
       61 CALL                             R5 1 1
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K10 ["targetPinName"]
       65 SETTABLEKS                       R0 R5 K11 ["targetPinPosition"]
       67 LOADNIL                          R6
       68 SETTABLEKS                       R6 R5 K13 ["targetPinNodeId"]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R6 R7 K15 ["setMap"]
       73 NEWTABLE                         R7 2 0
       75 SETTABLEKS                       R5 R7 K1 ["global"]
       77 SETTABLE                         R5 R7 R2
       78 CALL                             R6 1 0
       79 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R0 3
        7 JUMPIFNOT                        R0 ; [+9]
        8 GETUPVAL                         R1 4
        9 GETTABLEKS                       R0 R1 K0 ["setNodeConnectionAsync"]
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 CALL                             R0 4 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 0
       18 JUMPIFNOT                        R0 ; [+16]
       19 GETUPVAL                         R0 1
       20 JUMPIFNOT                        R0 ; [+14]
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R0 R1 K1 ["removeNodeInputConnectionAsync"]
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R2 1
       26 CALL                             R0 2 1
       27 JUMPIF                           R0 ; [+29]
       28 GETUPVAL                         R1 5
       29 GETTABLEKS                       R0 R1 K2 ["showMenu"]
       31 GETUPVAL                         R1 6
       32 GETUPVAL                         R2 7
       33 CALL                             R0 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R0 2
       36 JUMPIFNOT                        R0 ; [+16]
       37 GETUPVAL                         R0 3
       38 JUMPIFNOT                        R0 ; [+14]
       39 GETUPVAL                         R1 4
       40 GETTABLEKS                       R0 R1 K3 ["removeNodeOutputConnectionAsync"]
       42 GETUPVAL                         R1 2
       43 GETUPVAL                         R2 3
       44 CALL                             R0 2 1
       45 JUMPIF                           R0 ; [+11]
       46 GETUPVAL                         R1 5
       47 GETTABLEKS                       R0 R1 K2 ["showMenu"]
       49 GETUPVAL                         R1 6
       50 GETUPVAL                         R2 7
       51 CALL                             R0 2 0
       52 RETURN                           R0 0
       53 GETIMPORT                        R0 K5 [warn]
       55 LOADK                            R1 K6 ["Bad state"]
       56 CALL                             R0 1 0
       57 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
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
       15 GETTABLEKS                       R7 R1 K2 ["sourcePinSide"]
       17 JUMPIFNOTEQKS                    R7 K3 ["Output"] ; [+11]
       19 GETTABLEKS                       R5 R1 K4 ["sourcePinNodeId"]
       21 GETTABLEKS                       R6 R1 K5 ["sourcePinName"]
       23 JUMPIFNOT                        R2 ; [+23]
       24 GETTABLEKS                       R3 R2 K6 ["pinNodeId"]
       26 GETTABLEKS                       R4 R2 K7 ["pinName"]
       28 JUMP                             ; [+18]
       29 GETTABLEKS                       R7 R1 K2 ["sourcePinSide"]
       31 JUMPIFNOTEQKS                    R7 K8 ["Input"] ; [+11]
       33 GETTABLEKS                       R3 R1 K4 ["sourcePinNodeId"]
       35 GETTABLEKS                       R4 R1 K5 ["sourcePinName"]
       37 JUMPIFNOT                        R2 ; [+9]
       38 GETTABLEKS                       R5 R2 K6 ["pinNodeId"]
       40 GETTABLEKS                       R6 R2 K7 ["pinName"]
       42 JUMP                             ; [+4]
       43 GETIMPORT                        R7 K10 [error]
       45 LOADK                            R8 K11 ["Bad sourcePin state"]
       46 CALL                             R7 1 0
       47 GETIMPORT                        R7 K14 [table.freeze]
       49 DUPTABLE                         R8 K17 [{"sourcePinNodeId", "sourcePinName", "sourcePinSide", "sourcePinDataType", "sourcePinValue"}]
       50 GETTABLEKS                       R9 R1 K4 ["sourcePinNodeId"]
       52 SETTABLEKS                       R9 R8 K4 ["sourcePinNodeId"]
       54 GETTABLEKS                       R9 R1 K5 ["sourcePinName"]
       56 SETTABLEKS                       R9 R8 K5 ["sourcePinName"]
       58 GETTABLEKS                       R9 R1 K2 ["sourcePinSide"]
       60 SETTABLEKS                       R9 R8 K2 ["sourcePinSide"]
       62 GETTABLEKS                       R9 R1 K15 ["sourcePinDataType"]
       64 SETTABLEKS                       R9 R8 K15 ["sourcePinDataType"]
       66 GETTABLEKS                       R9 R1 K16 ["sourcePinValue"]
       68 SETTABLEKS                       R9 R8 K16 ["sourcePinValue"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K20 [task.spawn]
       73 NEWCLOSURE                       R9 P0
       74 CAPTURE                          REF R3
       75 CAPTURE                          REF R4
       76 CAPTURE                          REF R5
       77 CAPTURE                          REF R6
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R7
       82 CALL                             R8 1 0
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K21 ["setMap"]
       86 NEWTABLE                         R9 0 0
       88 CALL                             R8 1 0
       89 CLOSEUPVALS                      R3
       90 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeMap"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeNodeRenderInfoById"]
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
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K0 ["get"]
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
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R8 R9 K6 ["set"]
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
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R8 R9 K6 ["set"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["forEach"]
        9 MOVE                             R2 R0
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U3
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R2 R3 K2 ["createEffect"]
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
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["pinOffset"]
        9 ADD                              R2 R1 R3
       10 RETURN                           R2 1

PROTO_14:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["pinNodeId"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["createComputed"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K2 ["of"]
       16 LOADNIL                          R2
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observe"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["switchMap"]
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
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K4 ["WELL_KNOWN_HEADER_HEIGHT"]
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
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["createComputed"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K1 ["set"]
       11 GETUPVAL                         R1 1
       12 LOADNIL                          R2
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["set"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["get"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeRenderInfoMap"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R3 R1 R0
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K1 ["get"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 -1
       12 CALL                             R2 -1 1
       13 JUMPIF                           R2 ; [+3]
       14 NEWTABLE                         R3 0 0
       16 RETURN                           R3 1
       17 NEWTABLE                         R3 0 0
       19 GETTABLE                         R5 R1 R0
       20 GETTABLEKS                       R4 R5 K2 ["isSelected"]
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
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R11 R12 K1 ["get"]
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
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K3 ["getMap"]
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
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R10 R11 K5 ["get"]
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
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K0 ["setMap"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["setMap"]
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
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K3 ["getMap"]
        7 CALL                             R4 0 -1
        8 CALL                             R3 -1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 CALL                             R5 2 1
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K4 ["observeNodeRenderInfoById"]
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
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R8 R9 K6 ["setMap"]
       52 MOVE                             R9 R3
       53 CALL                             R8 1 0
       54 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observe"]
        3 LOADK                            R1 K1 ["global"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 1
       18 GETUPVAL                         R5 3
       19 CALL                             R5 0 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       23 DUPCLOSURE                       R7 K3 [PROTO_0]
       24 NEWTABLE                         R8 0 0
       26 CALL                             R6 2 1
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K2 ["useCallback"]
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
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K2 ["useCallback"]
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
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R9 R10 K2 ["useCallback"]
       66 NEWCLOSURE                       R10 P3
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          VAL R5
       69 NEWTABLE                         R11 0 1
       71 GETTABLEKS                       R12 R5 K8 ["setMap"]
       73 SETLIST                          R11 R12 1 [1]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R10 R11 K2 ["useCallback"]
       79 NEWCLOSURE                       R11 P4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          VAL R8
       83 NEWTABLE                         R12 0 2
       85 MOVE                             R13 R8
       86 GETTABLEKS                       R14 R5 K8 ["setMap"]
       88 SETLIST                          R12 R13 2 [1]
       90 CALL                             R10 2 1
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R11 R12 K2 ["useCallback"]
       94 NEWCLOSURE                       R12 P5
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R1
       99 NEWTABLE                         R13 0 7
      101 GETTABLEKS                       R14 R5 K7 ["get"]
      103 GETTABLEKS                       R15 R5 K8 ["setMap"]
      105 MOVE                             R16 R8
      106 GETTABLEKS                       R17 R2 K9 ["setNodeConnectionAsync"]
      108 GETTABLEKS                       R18 R2 K10 ["removeNodeInputConnectionAsync"]
      110 GETTABLEKS                       R19 R2 K11 ["removeNodeOutputConnectionAsync"]
      112 GETTABLEKS                       R20 R1 K12 ["showMenu"]
      114 SETLIST                          R13 R14 7 [1]
      116 CALL                             R11 2 1
      117 GETUPVAL                         R13 0
      118 GETTABLEKS                       R12 R13 K13 ["useEffect"]
      120 NEWCLOSURE                       R13 P6
      121 CAPTURE                          UPVAL U4
      122 CAPTURE                          VAL R3
      123 CAPTURE                          UPVAL U7
      124 CAPTURE                          VAL R2
      125 CAPTURE                          UPVAL U8
      126 NEWTABLE                         R14 0 2
      128 GETTABLEKS                       R15 R2 K5 ["observeNodeRenderInfoById"]
      130 GETTABLEKS                       R16 R3 K14 ["observeMap"]
      132 SETLIST                          R14 R15 2 [1]
      134 CALL                             R12 2 0
      135 GETUPVAL                         R13 0
      136 GETTABLEKS                       R12 R13 K2 ["useCallback"]
      138 NEWCLOSURE                       R13 P7
      139 CAPTURE                          VAL R4
      140 CAPTURE                          UPVAL U7
      141 CAPTURE                          VAL R7
      142 CAPTURE                          UPVAL U4
      143 NEWTABLE                         R14 0 2
      145 GETTABLEKS                       R15 R4 K7 ["get"]
      147 MOVE                             R16 R7
      148 SETLIST                          R14 R15 2 [1]
      150 CALL                             R12 2 1
      151 GETUPVAL                         R14 0
      152 GETTABLEKS                       R13 R14 K2 ["useCallback"]
      154 NEWCLOSURE                       R14 P8
      155 CAPTURE                          VAL R7
      156 CAPTURE                          UPVAL U4
      157 CAPTURE                          UPVAL U5
      158 NEWTABLE                         R15 0 2
      160 GETTABLEKS                       R16 R4 K7 ["get"]
      162 MOVE                             R17 R7
      163 SETLIST                          R15 R16 2 [1]
      165 CALL                             R13 2 1
      166 GETUPVAL                         R15 0
      167 GETTABLEKS                       R14 R15 K2 ["useCallback"]
      169 NEWCLOSURE                       R15 P9
      170 CAPTURE                          VAL R4
      171 NEWTABLE                         R16 0 2
      173 GETTABLEKS                       R17 R4 K7 ["get"]
      175 GETTABLEKS                       R18 R4 K15 ["set"]
      177 SETLIST                          R16 R17 2 [1]
      179 CALL                             R14 2 1
      180 GETUPVAL                         R16 0
      181 GETTABLEKS                       R15 R16 K2 ["useCallback"]
      183 NEWCLOSURE                       R16 P10
      184 CAPTURE                          VAL R3
      185 NEWTABLE                         R17 0 2
      187 GETTABLEKS                       R18 R3 K7 ["get"]
      189 GETTABLEKS                       R19 R3 K15 ["set"]
      191 SETLIST                          R17 R18 2 [1]
      193 CALL                             R15 2 1
      194 GETUPVAL                         R17 0
      195 GETTABLEKS                       R16 R17 K2 ["useCallback"]
      197 NEWCLOSURE                       R17 P11
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R3
      201 NEWTABLE                         R18 0 3
      203 GETTABLEKS                       R19 R2 K16 ["observeRenderInfoMap"]
      205 MOVE                             R20 R6
      206 MOVE                             R21 R15
      207 SETLIST                          R18 R19 3 [1]
      209 CALL                             R16 2 1
      210 GETUPVAL                         R18 0
      211 GETTABLEKS                       R17 R18 K2 ["useCallback"]
      213 NEWCLOSURE                       R18 P12
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R15
      216 NEWTABLE                         R19 0 1
      218 GETTABLEKS                       R20 R3 K7 ["get"]
      220 SETLIST                          R19 R20 1 [1]
      222 CALL                             R17 2 1
      223 GETUPVAL                         R19 0
      224 GETTABLEKS                       R18 R19 K2 ["useCallback"]
      226 NEWCLOSURE                       R19 P13
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R17
      230 NEWTABLE                         R20 0 3
      232 GETTABLEKS                       R21 R3 K8 ["setMap"]
      234 MOVE                             R22 R17
      235 MOVE                             R23 R16
      236 SETLIST                          R20 R21 3 [1]
      238 CALL                             R18 2 1
      239 GETUPVAL                         R20 0
      240 GETTABLEKS                       R19 R20 K2 ["useCallback"]
      242 NEWCLOSURE                       R20 P14
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R17
      245 NEWTABLE                         R21 0 2
      247 GETTABLEKS                       R22 R3 K8 ["setMap"]
      249 MOVE                             R23 R17
      250 SETLIST                          R21 R22 2 [1]
      252 CALL                             R19 2 1
      253 GETUPVAL                         R21 0
      254 GETTABLEKS                       R20 R21 K2 ["useCallback"]
      256 NEWCLOSURE                       R21 P15
      257 CAPTURE                          VAL R3
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R2
      260 CAPTURE                          VAL R6
      261 NEWTABLE                         R22 0 5
      263 GETTABLEKS                       R23 R3 K8 ["setMap"]
      265 MOVE                             R24 R15
      266 GETTABLEKS                       R25 R2 K5 ["observeNodeRenderInfoById"]
      268 MOVE                             R26 R6
      269 GETTABLEKS                       R27 R3 K6 ["getMap"]
      271 SETLIST                          R22 R23 5 [1]
      273 CALL                             R20 2 1
      274 GETUPVAL                         R22 0
      275 GETTABLEKS                       R21 R22 K17 ["useMemo"]
      277 NEWCLOSURE                       R22 P16
      278 CAPTURE                          VAL R5
      279 NEWTABLE                         R23 0 1
      281 GETTABLEKS                       R24 R5 K4 ["observe"]
      283 SETLIST                          R23 R24 1 [1]
      285 CALL                             R21 2 1
      286 DUPTABLE                         R22 K31 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "observeNodePreviewData", "observeNodePosition", "pushAnchor", "observeAnchorPosition", "observeCollapsedPinPosition", "onStartDrag", "onDragMoved", "onDragEnded"}]
      287 SETTABLEKS                       R21 R22 K18 ["observeGlobalCurvePreviewInfo"]
      289 GETTABLEKS                       R23 R5 K4 ["observe"]
      291 SETTABLEKS                       R23 R22 K19 ["observeCurvePreviewInfo"]
      293 SETTABLEKS                       R18 R22 K20 ["onDragNodeStart"]
      295 SETTABLEKS                       R19 R22 K21 ["onDragNodeMoved"]
      297 SETTABLEKS                       R20 R22 K22 ["onDragNodeEnded"]
      299 GETTABLEKS                       R23 R3 K4 ["observe"]
      301 SETTABLEKS                       R23 R22 K23 ["observeNodePreviewData"]
      303 SETTABLEKS                       R7 R22 K24 ["observeNodePosition"]
      305 SETTABLEKS                       R14 R22 K25 ["pushAnchor"]
      307 SETTABLEKS                       R12 R22 K26 ["observeAnchorPosition"]
      309 SETTABLEKS                       R13 R22 K27 ["observeCollapsedPinPosition"]
      311 SETTABLEKS                       R9 R22 K28 ["onStartDrag"]
      313 SETTABLEKS                       R10 R22 K29 ["onDragMoved"]
      315 SETTABLEKS                       R11 R22 K30 ["onDragEnded"]
      317 GETUPVAL                         R24 0
      318 GETTABLEKS                       R23 R24 K32 ["createElement"]
      320 GETUPVAL                         R25 9
      321 GETTABLEKS                       R24 R25 K33 ["Provider"]
      323 DUPTABLE                         R25 K35 [{"value"}]
      324 SETTABLEKS                       R22 R25 K34 ["value"]
      326 GETTABLEKS                       R26 R0 K36 ["children"]
      328 CALL                             R23 3 -1
      329 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["InsertNodeContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R7 R8 K11 ["Parent"]
       34 GETTABLEKS                       R6 R7 K10 ["NativeGraphContext"]
       36 GETTABLEKS                       R5 R6 K12 ["NativeGraphUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["NodeViewTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Parent"]
       48 GETTABLEKS                       R7 R8 K14 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K11 ["Parent"]
       55 GETTABLEKS                       R8 R9 K15 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R12 R0 K6 ["Util"]
       62 GETTABLEKS                       R11 R12 K16 ["Signals"]
       64 GETTABLEKS                       R10 R11 K17 ["Experimental"]
       66 GETTABLEKS                       R9 R10 K18 ["SignalExperimentalUtils"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R11 R0 K11 ["Parent"]
       73 GETTABLEKS                       R10 R11 K16 ["Signals"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETIMPORT                        R16 K1 [script]
       80 GETTABLEKS                       R15 R16 K11 ["Parent"]
       82 GETTABLEKS                       R14 R15 K11 ["Parent"]
       84 GETTABLEKS                       R13 R14 K6 ["Util"]
       86 GETTABLEKS                       R12 R13 K16 ["Signals"]
       88 GETTABLEKS                       R11 R12 K19 ["SignalsInstanceUtils"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R13 R0 K20 ["Hooks"]
       95 GETTABLEKS                       R12 R13 K21 ["useSignalDispatcher"]
       97 CALL                             R11 1 1
       98 DUPTABLE                         R12 K35 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "observeCollapsedPinPosition", "onStartDrag", "onDragMoved", "onDragEnded", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded"}]
       99 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      101 LOADK                            R14 K22 ["observeGlobalCurvePreviewInfo"]
      102 CALL                             R13 1 1
      103 SETTABLEKS                       R13 R12 K22 ["observeGlobalCurvePreviewInfo"]
      105 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      107 LOADK                            R14 K23 ["observeCurvePreviewInfo"]
      108 CALL                             R13 1 1
      109 SETTABLEKS                       R13 R12 K23 ["observeCurvePreviewInfo"]
      111 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      113 LOADK                            R14 K24 ["pushAnchor"]
      114 CALL                             R13 1 1
      115 SETTABLEKS                       R13 R12 K24 ["pushAnchor"]
      117 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      119 LOADK                            R14 K25 ["observeNodePreviewData"]
      120 CALL                             R13 1 1
      121 SETTABLEKS                       R13 R12 K25 ["observeNodePreviewData"]
      123 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      125 LOADK                            R14 K26 ["observeAnchorPosition"]
      126 CALL                             R13 1 1
      127 SETTABLEKS                       R13 R12 K26 ["observeAnchorPosition"]
      129 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      131 LOADK                            R14 K27 ["observeNodePosition"]
      132 CALL                             R13 1 1
      133 SETTABLEKS                       R13 R12 K27 ["observeNodePosition"]
      135 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      137 LOADK                            R14 K28 ["observeCollapsedPinPosition"]
      138 CALL                             R13 1 1
      139 SETTABLEKS                       R13 R12 K28 ["observeCollapsedPinPosition"]
      141 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      143 LOADK                            R14 K29 ["onStartDrag"]
      144 CALL                             R13 1 1
      145 SETTABLEKS                       R13 R12 K29 ["onStartDrag"]
      147 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      149 LOADK                            R14 K30 ["onDragMoved"]
      150 CALL                             R13 1 1
      151 SETTABLEKS                       R13 R12 K30 ["onDragMoved"]
      153 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      155 LOADK                            R14 K31 ["onDragEnded"]
      156 CALL                             R13 1 1
      157 SETTABLEKS                       R13 R12 K31 ["onDragEnded"]
      159 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      161 LOADK                            R14 K32 ["onDragNodeStart"]
      162 CALL                             R13 1 1
      163 SETTABLEKS                       R13 R12 K32 ["onDragNodeStart"]
      165 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      167 LOADK                            R14 K33 ["onDragNodeMoved"]
      168 CALL                             R13 1 1
      169 SETTABLEKS                       R13 R12 K33 ["onDragNodeMoved"]
      171 GETTABLEKS                       R13 R7 K36 ["createUnimplemented"]
      173 LOADK                            R14 K34 ["onDragNodeEnded"]
      174 CALL                             R13 1 1
      175 SETTABLEKS                       R13 R12 K34 ["onDragNodeEnded"]
      177 GETTABLEKS                       R13 R6 K37 ["createContext"]
      179 MOVE                             R14 R12
      180 CALL                             R13 1 1
      181 DUPCLOSURE                       R14 K38 [PROTO_28]
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R13
      192 DUPTABLE                         R15 K41 [{"Context", "Provider"}]
      193 SETTABLEKS                       R13 R15 K39 ["Context"]
      195 SETTABLEKS                       R14 R15 K40 ["Provider"]
      197 RETURN                           R15 1
