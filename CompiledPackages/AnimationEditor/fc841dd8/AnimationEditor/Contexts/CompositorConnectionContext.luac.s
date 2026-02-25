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
        9 JUMPIF                           R2 ; [+3]
       10 GETTABLEKS                       R3 R1 K0 ["position"]
       12 RETURN                           R3 1
       13 GETTABLEKS                       R4 R1 K0 ["position"]
       15 GETTABLEKS                       R5 R2 K1 ["delta"]
       17 ADD                              R3 R4 R5
       18 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeGraphNodeById"]
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
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K0 ["pinPosition"]
        8 RETURN                           R2 1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["set"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K3 [{"origin", "delta"}]
        5 SETTABLEKS                       R1 R4 K1 ["origin"]
        7 GETIMPORT                        R5 K6 [Vector2.zero]
        9 SETTABLEKS                       R5 R4 K2 ["delta"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["set"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_14:
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
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R4
       26 CAPTURE                          UPVAL U4
       27 NEWTABLE                         R8 0 2
       29 GETTABLEKS                       R9 R4 K3 ["getMap"]
       31 GETTABLEKS                       R10 R5 K4 ["get"]
       33 SETLIST                          R8 R9 2 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K2 ["useCallback"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R5
       42 NEWTABLE                         R9 0 1
       44 GETTABLEKS                       R10 R5 K5 ["setMap"]
       46 SETLIST                          R9 R10 1 [1]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R8 R9 K2 ["useCallback"]
       52 NEWCLOSURE                       R9 P2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R6
       56 NEWTABLE                         R10 0 2
       58 MOVE                             R11 R6
       59 GETTABLEKS                       R12 R5 K5 ["setMap"]
       61 SETLIST                          R10 R11 2 [1]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R9 R10 K2 ["useCallback"]
       67 NEWCLOSURE                       R10 P3
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R1
       72 NEWTABLE                         R11 0 7
       74 GETTABLEKS                       R12 R5 K4 ["get"]
       76 GETTABLEKS                       R13 R5 K5 ["setMap"]
       78 MOVE                             R14 R6
       79 GETTABLEKS                       R15 R2 K6 ["setNodeConnectionAsync"]
       81 GETTABLEKS                       R16 R2 K7 ["removeNodeInputConnectionAsync"]
       83 GETTABLEKS                       R17 R2 K8 ["removeNodeOutputConnectionAsync"]
       85 GETTABLEKS                       R18 R1 K9 ["showMenu"]
       87 SETLIST                          R11 R12 7 [1]
       89 CALL                             R9 2 1
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R10 R11 K2 ["useCallback"]
       93 NEWCLOSURE                       R11 P4
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R3
       96 CAPTURE                          UPVAL U6
       97 NEWTABLE                         R12 0 2
       99 GETTABLEKS                       R13 R3 K10 ["observe"]
      101 GETTABLEKS                       R14 R2 K11 ["observeGraphNodeById"]
      103 SETLIST                          R12 R13 2 [1]
      105 CALL                             R10 2 1
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R11 R12 K2 ["useCallback"]
      109 NEWCLOSURE                       R12 P5
      110 CAPTURE                          VAL R4
      111 CAPTURE                          UPVAL U6
      112 NEWTABLE                         R13 0 1
      114 GETTABLEKS                       R14 R4 K4 ["get"]
      116 SETLIST                          R13 R14 1 [1]
      118 CALL                             R11 2 1
      119 GETUPVAL                         R13 0
      120 GETTABLEKS                       R12 R13 K2 ["useCallback"]
      122 NEWCLOSURE                       R13 P6
      123 CAPTURE                          VAL R4
      124 NEWTABLE                         R14 0 2
      126 GETTABLEKS                       R15 R4 K4 ["get"]
      128 GETTABLEKS                       R16 R4 K12 ["set"]
      130 SETLIST                          R14 R15 2 [1]
      132 CALL                             R12 2 1
      133 GETUPVAL                         R14 0
      134 GETTABLEKS                       R13 R14 K2 ["useCallback"]
      136 NEWCLOSURE                       R14 P7
      137 CAPTURE                          VAL R3
      138 NEWTABLE                         R15 0 1
      140 GETTABLEKS                       R16 R3 K12 ["set"]
      142 SETLIST                          R15 R16 1 [1]
      144 CALL                             R13 2 1
      145 GETUPVAL                         R15 0
      146 GETTABLEKS                       R14 R15 K2 ["useCallback"]
      148 NEWCLOSURE                       R15 P8
      149 CAPTURE                          VAL R3
      150 NEWTABLE                         R16 0 2
      152 GETTABLEKS                       R17 R3 K12 ["set"]
      154 GETTABLEKS                       R18 R3 K4 ["get"]
      156 SETLIST                          R16 R17 2 [1]
      158 CALL                             R14 2 1
      159 GETUPVAL                         R16 0
      160 GETTABLEKS                       R15 R16 K2 ["useCallback"]
      162 NEWCLOSURE                       R16 P9
      163 CAPTURE                          VAL R3
      164 NEWTABLE                         R17 0 1
      166 GETTABLEKS                       R18 R3 K12 ["set"]
      168 SETLIST                          R17 R18 1 [1]
      170 CALL                             R15 2 1
      171 DUPTABLE                         R16 K25 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "observeNodePreviewData", "observeNodePosition", "pushAnchor", "observeAnchorPosition", "onStartDrag", "onDragMoved", "onDragEnded"}]
      172 GETTABLEKS                       R17 R5 K10 ["observe"]
      174 LOADK                            R18 K26 ["global"]
      175 CALL                             R17 1 1
      176 SETTABLEKS                       R17 R16 K13 ["observeGlobalCurvePreviewInfo"]
      178 GETTABLEKS                       R17 R5 K10 ["observe"]
      180 SETTABLEKS                       R17 R16 K14 ["observeCurvePreviewInfo"]
      182 SETTABLEKS                       R13 R16 K15 ["onDragNodeStart"]
      184 SETTABLEKS                       R14 R16 K16 ["onDragNodeMoved"]
      186 SETTABLEKS                       R15 R16 K17 ["onDragNodeEnded"]
      188 GETTABLEKS                       R17 R3 K10 ["observe"]
      190 SETTABLEKS                       R17 R16 K18 ["observeNodePreviewData"]
      192 SETTABLEKS                       R10 R16 K19 ["observeNodePosition"]
      194 SETTABLEKS                       R12 R16 K20 ["pushAnchor"]
      196 SETTABLEKS                       R11 R16 K21 ["observeAnchorPosition"]
      198 SETTABLEKS                       R7 R16 K22 ["onStartDrag"]
      200 SETTABLEKS                       R8 R16 K23 ["onDragMoved"]
      202 SETTABLEKS                       R9 R16 K24 ["onDragEnded"]
      204 GETUPVAL                         R18 0
      205 GETTABLEKS                       R17 R18 K27 ["createElement"]
      207 GETUPVAL                         R19 7
      208 GETTABLEKS                       R18 R19 K28 ["Provider"]
      210 DUPTABLE                         R19 K30 [{"value"}]
      211 SETTABLEKS                       R16 R19 K29 ["value"]
      213 DUPTABLE                         R20 K32 [{"Children"}]
      214 GETUPVAL                         R22 0
      215 GETTABLEKS                       R21 R22 K27 ["createElement"]
      217 GETUPVAL                         R23 0
      218 GETTABLEKS                       R22 R23 K33 ["Fragment"]
      220 NEWTABLE                         R23 0 0
      222 GETTABLEKS                       R24 R0 K34 ["children"]
      224 CALL                             R21 3 1
      225 SETTABLEKS                       R21 R20 K31 ["Children"]
      227 CALL                             R17 3 -1
      228 RETURN                           R17 -1

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
       67 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       69 GETTABLEKS                       R10 R11 K18 ["useSignalDispatcher"]
       71 CALL                             R9 1 1
       72 DUPTABLE                         R10 K31 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "onStartDrag", "onDragMoved", "onDragEnded", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded"}]
       73 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
       75 LOADK                            R12 K19 ["observeGlobalCurvePreviewInfo"]
       76 CALL                             R11 1 1
       77 SETTABLEKS                       R11 R10 K19 ["observeGlobalCurvePreviewInfo"]
       79 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
       81 LOADK                            R12 K20 ["observeCurvePreviewInfo"]
       82 CALL                             R11 1 1
       83 SETTABLEKS                       R11 R10 K20 ["observeCurvePreviewInfo"]
       85 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
       87 LOADK                            R12 K21 ["pushAnchor"]
       88 CALL                             R11 1 1
       89 SETTABLEKS                       R11 R10 K21 ["pushAnchor"]
       91 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
       93 LOADK                            R12 K22 ["observeNodePreviewData"]
       94 CALL                             R11 1 1
       95 SETTABLEKS                       R11 R10 K22 ["observeNodePreviewData"]
       97 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
       99 LOADK                            R12 K23 ["observeAnchorPosition"]
      100 CALL                             R11 1 1
      101 SETTABLEKS                       R11 R10 K23 ["observeAnchorPosition"]
      103 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
      105 LOADK                            R12 K24 ["observeNodePosition"]
      106 CALL                             R11 1 1
      107 SETTABLEKS                       R11 R10 K24 ["observeNodePosition"]
      109 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
      111 LOADK                            R12 K25 ["onStartDrag"]
      112 CALL                             R11 1 1
      113 SETTABLEKS                       R11 R10 K25 ["onStartDrag"]
      115 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
      117 LOADK                            R12 K26 ["onDragMoved"]
      118 CALL                             R11 1 1
      119 SETTABLEKS                       R11 R10 K26 ["onDragMoved"]
      121 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
      123 LOADK                            R12 K27 ["onDragEnded"]
      124 CALL                             R11 1 1
      125 SETTABLEKS                       R11 R10 K27 ["onDragEnded"]
      127 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
      129 LOADK                            R12 K28 ["onDragNodeStart"]
      130 CALL                             R11 1 1
      131 SETTABLEKS                       R11 R10 K28 ["onDragNodeStart"]
      133 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
      135 LOADK                            R12 K29 ["onDragNodeMoved"]
      136 CALL                             R11 1 1
      137 SETTABLEKS                       R11 R10 K29 ["onDragNodeMoved"]
      139 GETTABLEKS                       R11 R7 K32 ["createUnimplemented"]
      141 LOADK                            R12 K30 ["onDragNodeEnded"]
      142 CALL                             R11 1 1
      143 SETTABLEKS                       R11 R10 K30 ["onDragNodeEnded"]
      145 GETTABLEKS                       R11 R6 K33 ["createContext"]
      147 MOVE                             R12 R10
      148 CALL                             R11 1 1
      149 DUPCLOSURE                       R12 K34 [PROTO_14]
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R11
      158 DUPTABLE                         R13 K37 [{"Context", "Provider"}]
      159 SETTABLEKS                       R11 R13 K35 ["Context"]
      161 SETTABLEKS                       R12 R13 K36 ["Provider"]
      163 RETURN                           R13 1
