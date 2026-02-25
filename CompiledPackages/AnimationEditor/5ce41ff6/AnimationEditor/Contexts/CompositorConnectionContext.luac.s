PROTO_0:
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
       19 LOADK                            R5 K6 [∞]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K7 ["getMap"]
       23 CALL                             R6 0 3
       24 FORGPREP                         R6
       25 GETTABLEKS                       R11 R10 K8 ["pinSide"]
       27 JUMPIFNOTEQ                      R11 R2 ; [+19]
       29 GETTABLEKS                       R11 R10 K9 ["pinDataType"]
       31 JUMPIFNOTEQ                      R11 R3 ; [+15]
       33 GETTABLEKS                       R13 R10 K10 ["pinPosition"]
       35 SUB                              R12 R0 R13
       36 GETTABLEKS                       R11 R12 K11 ["Magnitude"]
       38 JUMPIFNOTLT                      R11 R5 ; [+8]
       40 GETUPVAL                         R13 2
       41 GETTABLEKS                       R12 R13 K12 ["SNAP_DISTANCE"]
       43 JUMPIFNOTLT                      R11 R12 ; [+3]
       45 MOVE                             R5 R11
       46 MOVE                             R4 R10
       47 FORGLOOP                         R6 2 ; [-23]
       49 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["getPinAnchorKey"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R3
        5 MOVE                             R7 R1
        6 CALL                             R4 3 1
        7 GETIMPORT                        R5 K3 [table.freeze]
        9 DUPTABLE                         R6 K8 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide"}]
       10 SETTABLEKS                       R0 R6 K4 ["sourcePinNodeId"]
       12 SETTABLEKS                       R1 R6 K5 ["sourcePinName"]
       14 SETTABLEKS                       R2 R6 K6 ["sourcePinDataType"]
       16 SETTABLEKS                       R3 R6 K7 ["sourcePinSide"]
       18 CALL                             R5 1 1
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K9 ["setMap"]
       22 NEWTABLE                         R7 2 0
       24 SETTABLEKS                       R5 R7 K10 ["global"]
       26 SETTABLE                         R5 R7 R4
       27 CALL                             R6 1 0
       28 RETURN                           R0 0

PROTO_2:
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
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R3 ; [+37]
       22 GETIMPORT                        R4 K8 [table.clone]
       24 MOVE                             R5 R1
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R3 K9 ["pinName"]
       28 SETTABLEKS                       R5 R4 K10 ["targetPinName"]
       30 GETTABLEKS                       R5 R3 K11 ["pinPosition"]
       32 SETTABLEKS                       R5 R4 K12 ["targetPinPosition"]
       34 GETTABLEKS                       R5 R3 K13 ["pinNodeId"]
       36 SETTABLEKS                       R5 R4 K14 ["targetPinNodeId"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R5 R6 K2 ["getPinAnchorKey"]
       41 GETTABLEKS                       R6 R3 K13 ["pinNodeId"]
       43 GETTABLEKS                       R7 R3 K15 ["pinSide"]
       45 GETTABLEKS                       R8 R3 K9 ["pinName"]
       47 CALL                             R5 3 1
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K16 ["setMap"]
       51 NEWTABLE                         R7 4 0
       53 SETTABLEKS                       R4 R7 K1 ["global"]
       55 SETTABLE                         R4 R7 R2
       56 SETTABLE                         R4 R7 R5
       57 CALL                             R6 1 0
       58 RETURN                           R0 0
       59 GETIMPORT                        R4 K8 [table.clone]
       61 MOVE                             R5 R1
       62 CALL                             R4 1 1
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R4 K10 ["targetPinName"]
       66 SETTABLEKS                       R0 R4 K12 ["targetPinPosition"]
       68 LOADNIL                          R5
       69 SETTABLEKS                       R5 R4 K14 ["targetPinNodeId"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R5 R6 K16 ["setMap"]
       74 NEWTABLE                         R6 2 0
       76 SETTABLEKS                       R4 R6 K1 ["global"]
       78 SETTABLE                         R4 R6 R2
       79 CALL                             R5 1 0
       80 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
       49 DUPTABLE                         R8 K16 [{"sourcePinNodeId", "sourcePinName", "sourcePinSide", "sourcePinDataType"}]
       50 GETTABLEKS                       R9 R1 K4 ["sourcePinNodeId"]
       52 SETTABLEKS                       R9 R8 K4 ["sourcePinNodeId"]
       54 GETTABLEKS                       R9 R1 K5 ["sourcePinName"]
       56 SETTABLEKS                       R9 R8 K5 ["sourcePinName"]
       58 GETTABLEKS                       R9 R1 K2 ["sourcePinSide"]
       60 SETTABLEKS                       R9 R8 K2 ["sourcePinSide"]
       62 GETTABLEKS                       R9 R1 K15 ["sourcePinDataType"]
       64 SETTABLEKS                       R9 R8 K15 ["sourcePinDataType"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K19 [task.spawn]
       69 NEWCLOSURE                       R9 P0
       70 CAPTURE                          REF R3
       71 CAPTURE                          REF R4
       72 CAPTURE                          REF R5
       73 CAPTURE                          REF R6
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R7
       78 CALL                             R8 1 0
       79 GETUPVAL                         R9 0
       80 GETTABLEKS                       R8 R9 K20 ["setMap"]
       82 NEWTABLE                         R9 0 0
       84 CALL                             R8 1 0
       85 CLOSEUPVALS                      R3
       86 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+2]
       13 GETTABLEKS                       R3 R1 K0 ["position"]
       15 JUMPIF                           R2 ; [+1]
       16 RETURN                           R3 1
       17 GETTABLEKS                       R5 R2 K1 ["delta"]
       19 ADD                              R4 R3 R5
       20 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeNodeRenderInfoById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["observe"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["observe"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K2 ["createComputed"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 CALL                             R4 1 -1
       23 RETURN                           R4 -1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeNodeRenderInfoById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 JUMPIFNOT                        R6 ; [+17]
        8 GETTABLEKS                       R7 R6 K0 ["position"]
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R8 R9 K1 ["get"]
       13 GETTABLEKS                       R9 R6 K2 ["nodeId"]
       15 CALL                             R8 1 1
       16 JUMPIFNOTEQ                      R7 R8 ; [+8]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K3 ["set"]
       21 GETTABLEKS                       R8 R6 K2 ["nodeId"]
       23 LOADNIL                          R9
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-19]
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_11:
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
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K2 ["createEffect"]
       16 NEWCLOSURE                       R3 P2
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U1
       19 CALL                             R2 1 1
       20 NEWCLOSURE                       R3 P3
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K0 ["pinPosition"]
        8 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observe"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["createComputed"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["set"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K3 [{"origin", "delta"}]
        5 SETTABLEKS                       R1 R4 K1 ["origin"]
        7 GETIMPORT                        R5 K6 [Vector2.zero]
        9 SETTABLEKS                       R5 R4 K2 ["delta"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+13]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["set"]
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K4 [{"origin", "delta"}]
       11 SETTABLEKS                       R1 R5 K2 ["origin"]
       13 GETIMPORT                        R6 K7 [Vector2.zero]
       15 SETTABLEKS                       R6 R5 K3 ["delta"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K1 ["set"]
       22 MOVE                             R4 R0
       23 DUPTABLE                         R5 K4 [{"origin", "delta"}]
       24 GETTABLEKS                       R6 R2 K2 ["origin"]
       26 SETTABLEKS                       R6 R5 K2 ["origin"]
       28 GETTABLEKS                       R7 R2 K2 ["origin"]
       30 SUB                              R6 R1 R7
       31 SETTABLEKS                       R6 R5 K3 ["delta"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["set"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observe"]
        3 LOADK                            R1 K1 ["global"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_20:
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
       20 GETUPVAL                         R6 3
       21 CALL                             R6 0 1
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K2 ["useCallback"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R5
       28 CAPTURE                          UPVAL U4
       29 NEWTABLE                         R9 0 2
       31 GETTABLEKS                       R10 R5 K3 ["getMap"]
       33 GETTABLEKS                       R11 R6 K4 ["get"]
       35 SETLIST                          R9 R10 2 [1]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R8 R9 K2 ["useCallback"]
       41 NEWCLOSURE                       R9 P1
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R6
       44 NEWTABLE                         R10 0 1
       46 GETTABLEKS                       R11 R6 K5 ["setMap"]
       48 SETLIST                          R10 R11 1 [1]
       50 CALL                             R8 2 1
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R9 R10 K2 ["useCallback"]
       54 NEWCLOSURE                       R10 P2
       55 CAPTURE                          VAL R6
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R7
       58 NEWTABLE                         R11 0 2
       60 MOVE                             R12 R7
       61 GETTABLEKS                       R13 R6 K5 ["setMap"]
       63 SETLIST                          R11 R12 2 [1]
       65 CALL                             R9 2 1
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R10 R11 K2 ["useCallback"]
       69 NEWCLOSURE                       R11 P3
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R1
       74 NEWTABLE                         R12 0 7
       76 GETTABLEKS                       R13 R6 K4 ["get"]
       78 GETTABLEKS                       R14 R6 K5 ["setMap"]
       80 MOVE                             R15 R7
       81 GETTABLEKS                       R16 R2 K6 ["setNodeConnectionAsync"]
       83 GETTABLEKS                       R17 R2 K7 ["removeNodeInputConnectionAsync"]
       85 GETTABLEKS                       R18 R2 K8 ["removeNodeOutputConnectionAsync"]
       87 GETTABLEKS                       R19 R1 K9 ["showMenu"]
       89 SETLIST                          R12 R13 7 [1]
       91 CALL                             R10 2 1
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R11 R12 K2 ["useCallback"]
       95 NEWCLOSURE                       R12 P4
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R3
       99 CAPTURE                          UPVAL U6
      100 NEWTABLE                         R13 0 3
      102 GETTABLEKS                       R14 R4 K10 ["observe"]
      104 GETTABLEKS                       R15 R3 K10 ["observe"]
      106 GETTABLEKS                       R16 R2 K11 ["observeGraphNodeById"]
      108 SETLIST                          R13 R14 3 [1]
      110 CALL                             R11 2 1
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R12 R13 K12 ["useEffect"]
      114 NEWCLOSURE                       R13 P5
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          VAL R3
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          VAL R2
      119 NEWTABLE                         R14 0 2
      121 GETTABLEKS                       R15 R2 K13 ["observeNodeRenderInfoById"]
      123 GETTABLEKS                       R16 R3 K14 ["observeMap"]
      125 SETLIST                          R14 R15 2 [1]
      127 CALL                             R12 2 0
      128 GETUPVAL                         R13 0
      129 GETTABLEKS                       R12 R13 K2 ["useCallback"]
      131 NEWCLOSURE                       R13 P6
      132 CAPTURE                          VAL R5
      133 CAPTURE                          UPVAL U6
      134 NEWTABLE                         R14 0 1
      136 GETTABLEKS                       R15 R5 K4 ["get"]
      138 SETLIST                          R14 R15 1 [1]
      140 CALL                             R12 2 1
      141 GETUPVAL                         R14 0
      142 GETTABLEKS                       R13 R14 K2 ["useCallback"]
      144 NEWCLOSURE                       R14 P7
      145 CAPTURE                          VAL R5
      146 NEWTABLE                         R15 0 2
      148 GETTABLEKS                       R16 R5 K4 ["get"]
      150 GETTABLEKS                       R17 R5 K15 ["set"]
      152 SETLIST                          R15 R16 2 [1]
      154 CALL                             R13 2 1
      155 GETUPVAL                         R15 0
      156 GETTABLEKS                       R14 R15 K2 ["useCallback"]
      158 NEWCLOSURE                       R15 P8
      159 CAPTURE                          VAL R4
      160 NEWTABLE                         R16 0 1
      162 GETTABLEKS                       R17 R4 K15 ["set"]
      164 SETLIST                          R16 R17 1 [1]
      166 CALL                             R14 2 1
      167 GETUPVAL                         R16 0
      168 GETTABLEKS                       R15 R16 K2 ["useCallback"]
      170 NEWCLOSURE                       R16 P9
      171 CAPTURE                          VAL R4
      172 NEWTABLE                         R17 0 2
      174 GETTABLEKS                       R18 R4 K15 ["set"]
      176 GETTABLEKS                       R19 R4 K4 ["get"]
      178 SETLIST                          R17 R18 2 [1]
      180 CALL                             R15 2 1
      181 GETUPVAL                         R17 0
      182 GETTABLEKS                       R16 R17 K2 ["useCallback"]
      184 NEWCLOSURE                       R17 P10
      185 CAPTURE                          VAL R4
      186 NEWTABLE                         R18 0 1
      188 GETTABLEKS                       R19 R4 K15 ["set"]
      190 SETLIST                          R18 R19 1 [1]
      192 CALL                             R16 2 1
      193 GETUPVAL                         R18 0
      194 GETTABLEKS                       R17 R18 K16 ["useMemo"]
      196 NEWCLOSURE                       R18 P11
      197 CAPTURE                          VAL R6
      198 NEWTABLE                         R19 0 1
      200 GETTABLEKS                       R20 R6 K10 ["observe"]
      202 SETLIST                          R19 R20 1 [1]
      204 CALL                             R17 2 1
      205 DUPTABLE                         R18 K30 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "observeNodePreviewData", "observeNodePosition", "pushAnchor", "observeAnchorPosition", "onStartDrag", "onDragMoved", "onDragEnded", "setPendingNodePosition"}]
      206 SETTABLEKS                       R17 R18 K17 ["observeGlobalCurvePreviewInfo"]
      208 GETTABLEKS                       R19 R6 K10 ["observe"]
      210 SETTABLEKS                       R19 R18 K18 ["observeCurvePreviewInfo"]
      212 SETTABLEKS                       R14 R18 K19 ["onDragNodeStart"]
      214 SETTABLEKS                       R15 R18 K20 ["onDragNodeMoved"]
      216 SETTABLEKS                       R16 R18 K21 ["onDragNodeEnded"]
      218 GETTABLEKS                       R19 R4 K10 ["observe"]
      220 SETTABLEKS                       R19 R18 K22 ["observeNodePreviewData"]
      222 SETTABLEKS                       R11 R18 K23 ["observeNodePosition"]
      224 SETTABLEKS                       R13 R18 K24 ["pushAnchor"]
      226 SETTABLEKS                       R12 R18 K25 ["observeAnchorPosition"]
      228 SETTABLEKS                       R8 R18 K26 ["onStartDrag"]
      230 SETTABLEKS                       R9 R18 K27 ["onDragMoved"]
      232 SETTABLEKS                       R10 R18 K28 ["onDragEnded"]
      234 GETTABLEKS                       R19 R3 K15 ["set"]
      236 SETTABLEKS                       R19 R18 K29 ["setPendingNodePosition"]
      238 GETUPVAL                         R20 0
      239 GETTABLEKS                       R19 R20 K31 ["createElement"]
      241 GETUPVAL                         R21 8
      242 GETTABLEKS                       R20 R21 K32 ["Provider"]
      244 DUPTABLE                         R21 K34 [{"value"}]
      245 SETTABLEKS                       R18 R21 K33 ["value"]
      247 DUPTABLE                         R22 K36 [{"Children"}]
      248 GETUPVAL                         R24 0
      249 GETTABLEKS                       R23 R24 K31 ["createElement"]
      251 GETUPVAL                         R25 0
      252 GETTABLEKS                       R24 R25 K37 ["Fragment"]
      254 NEWTABLE                         R25 0 0
      256 GETTABLEKS                       R26 R0 K38 ["children"]
      258 CALL                             R23 3 1
      259 SETTABLEKS                       R23 R22 K35 ["Children"]
      261 CALL                             R19 3 -1
      262 RETURN                           R19 -1

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
       60 GETTABLEKS                       R10 R0 K11 ["Parent"]
       62 GETTABLEKS                       R9 R10 K16 ["Signals"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETIMPORT                        R15 K1 [script]
       69 GETTABLEKS                       R14 R15 K11 ["Parent"]
       71 GETTABLEKS                       R13 R14 K11 ["Parent"]
       73 GETTABLEKS                       R12 R13 K6 ["Util"]
       75 GETTABLEKS                       R11 R12 K16 ["Signals"]
       77 GETTABLEKS                       R10 R11 K17 ["SignalsInstanceUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R12 R0 K18 ["Hooks"]
       84 GETTABLEKS                       R11 R12 K19 ["useSignalDispatcher"]
       86 CALL                             R10 1 1
       87 DUPTABLE                         R11 K33 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "onStartDrag", "onDragMoved", "onDragEnded", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "setPendingNodePosition"}]
       88 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
       90 LOADK                            R13 K20 ["observeGlobalCurvePreviewInfo"]
       91 CALL                             R12 1 1
       92 SETTABLEKS                       R12 R11 K20 ["observeGlobalCurvePreviewInfo"]
       94 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
       96 LOADK                            R13 K21 ["observeCurvePreviewInfo"]
       97 CALL                             R12 1 1
       98 SETTABLEKS                       R12 R11 K21 ["observeCurvePreviewInfo"]
      100 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      102 LOADK                            R13 K22 ["pushAnchor"]
      103 CALL                             R12 1 1
      104 SETTABLEKS                       R12 R11 K22 ["pushAnchor"]
      106 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      108 LOADK                            R13 K23 ["observeNodePreviewData"]
      109 CALL                             R12 1 1
      110 SETTABLEKS                       R12 R11 K23 ["observeNodePreviewData"]
      112 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      114 LOADK                            R13 K24 ["observeAnchorPosition"]
      115 CALL                             R12 1 1
      116 SETTABLEKS                       R12 R11 K24 ["observeAnchorPosition"]
      118 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      120 LOADK                            R13 K25 ["observeNodePosition"]
      121 CALL                             R12 1 1
      122 SETTABLEKS                       R12 R11 K25 ["observeNodePosition"]
      124 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      126 LOADK                            R13 K26 ["onStartDrag"]
      127 CALL                             R12 1 1
      128 SETTABLEKS                       R12 R11 K26 ["onStartDrag"]
      130 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      132 LOADK                            R13 K27 ["onDragMoved"]
      133 CALL                             R12 1 1
      134 SETTABLEKS                       R12 R11 K27 ["onDragMoved"]
      136 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      138 LOADK                            R13 K28 ["onDragEnded"]
      139 CALL                             R12 1 1
      140 SETTABLEKS                       R12 R11 K28 ["onDragEnded"]
      142 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      144 LOADK                            R13 K29 ["onDragNodeStart"]
      145 CALL                             R12 1 1
      146 SETTABLEKS                       R12 R11 K29 ["onDragNodeStart"]
      148 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      150 LOADK                            R13 K30 ["onDragNodeMoved"]
      151 CALL                             R12 1 1
      152 SETTABLEKS                       R12 R11 K30 ["onDragNodeMoved"]
      154 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      156 LOADK                            R13 K31 ["onDragNodeEnded"]
      157 CALL                             R12 1 1
      158 SETTABLEKS                       R12 R11 K31 ["onDragNodeEnded"]
      160 GETTABLEKS                       R12 R7 K34 ["createUnimplemented"]
      162 LOADK                            R13 K32 ["setPendingNodePosition"]
      163 CALL                             R12 1 1
      164 SETTABLEKS                       R12 R11 K32 ["setPendingNodePosition"]
      166 GETTABLEKS                       R12 R6 K35 ["createContext"]
      168 MOVE                             R13 R11
      169 CALL                             R12 1 1
      170 DUPCLOSURE                       R13 K36 [PROTO_20]
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R12
      180 DUPTABLE                         R14 K39 [{"Context", "Provider"}]
      181 SETTABLEKS                       R12 R14 K37 ["Context"]
      183 SETTABLEKS                       R13 R14 K38 ["Provider"]
      185 RETURN                           R14 1
