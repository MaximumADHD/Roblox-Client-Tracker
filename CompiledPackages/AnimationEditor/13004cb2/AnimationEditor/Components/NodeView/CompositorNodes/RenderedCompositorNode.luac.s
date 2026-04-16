PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodePosition"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeDebugData"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodePreviewData"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["NODEVIEW_ZINDEX"]
        5 GETTABLEKS                       R0 R1 K1 ["Preview"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K2 ["isSelected"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K0 ["NODEVIEW_ZINDEX"]
       17 GETTABLEKS                       R0 R1 K3 ["Selected"]
       19 RETURN                           R0 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K0 ["NODEVIEW_ZINDEX"]
       23 GETTABLEKS                       R0 R1 K4 ["Nodes"]
       25 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectNodesAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["isShiftEnabled"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["node"]
        3 GETTABLEKS                       R1 R2 K1 ["id"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["onDragNodeStart"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 GETIMPORT                        R3 K5 [task.spawn]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U0
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onDragNodeMoved"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["node"]
        6 GETTABLEKS                       R2 R3 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setNodePositionsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onDragNodeEnded"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["node"]
        6 GETTABLEKS                       R2 R3 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 GETIMPORT                        R2 K5 [task.spawn]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["node"]
        3 GETTABLEKS                       R1 R2 K1 ["nodeType"]
        5 FASTCALL1                        TYPEOF R1 ; [+2]
        6 GETIMPORT                        R0 K3 [typeof]
        8 CALL                             R0 1 1
        9 JUMPIFEQKS                       R0 K4 ["EnumItem"] ; [+3]
       11 LOADNIL                          R0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["node"]
       17 GETTABLEKS                       R2 R3 K1 ["nodeType"]
       19 NAMECALL                         R0 R0 K5 ["GetAnimationNodeDefinition"]
       21 CALL                             R0 2 1
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R1 R2 K6 ["synthesizeDefinition"]
       25 MOVE                             R2 R0
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K0 ["node"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+56]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["Inputs"]
        7 JUMPIFNOT                        R1 ; [+52]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R1 R4 K0 ["Inputs"]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R8 R9 K1 ["node"]
       17 GETTABLEKS                       R7 R8 K2 ["inputPinToConnectionMap"]
       19 GETTABLEKS                       R8 R5 K3 ["InputName"]
       21 GETTABLE                         R6 R7 R8
       22 JUMPIFNOT                        R6 ; [+35]
       23 LOADK                            R8 K4 ["Connection_%*"]
       24 GETTABLEKS                       R10 R6 K5 ["wireId"]
       26 NAMECALL                         R8 R8 K6 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R8 R9 K7 ["createElement"]
       33 GETUPVAL                         R9 3
       34 DUPTABLE                         R10 K13 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
       35 GETTABLEKS                       R11 R6 K14 ["outputNodeId"]
       37 SETTABLEKS                       R11 R10 K8 ["outputPinNodeId"]
       39 LOADK                            R11 K15 ["Output"]
       40 SETTABLEKS                       R11 R10 K9 ["outputPinName"]
       42 GETUPVAL                         R13 1
       43 GETTABLEKS                       R12 R13 K1 ["node"]
       45 GETTABLEKS                       R11 R12 K16 ["id"]
       47 SETTABLEKS                       R11 R10 K10 ["inputPinNodeId"]
       49 GETTABLEKS                       R11 R5 K3 ["InputName"]
       51 SETTABLEKS                       R11 R10 K11 ["inputPinName"]
       53 LOADK                            R11 K17 ["Animation"]
       54 SETTABLEKS                       R11 R10 K12 ["pinDataType"]
       56 CALL                             R8 2 1
       57 SETTABLE                         R8 R0 R7
       58 FORGLOOP                         R1 2 ; [-45]
       60 GETUPVAL                         R1 0
       61 JUMPIFNOT                        R1 ; [+58]
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R1 R2 K18 ["Properties"]
       65 JUMPIFNOT                        R1 ; [+54]
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R1 R4 K18 ["Properties"]
       69 LOADNIL                          R2
       70 LOADNIL                          R3
       71 FORGPREP                         R1
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R8 R9 K1 ["node"]
       75 GETTABLEKS                       R7 R8 K2 ["inputPinToConnectionMap"]
       77 GETTABLEKS                       R8 R5 K19 ["Name"]
       79 GETTABLE                         R6 R7 R8
       80 JUMPIFNOT                        R6 ; [+37]
       81 LOADK                            R8 K20 ["Connection_%*_property_%*"]
       82 GETTABLEKS                       R10 R6 K5 ["wireId"]
       84 GETTABLEKS                       R11 R5 K19 ["Name"]
       86 NAMECALL                         R8 R8 K6 ["format"]
       88 CALL                             R8 3 1
       89 MOVE                             R7 R8
       90 GETUPVAL                         R9 2
       91 GETTABLEKS                       R8 R9 K7 ["createElement"]
       93 GETUPVAL                         R9 3
       94 DUPTABLE                         R10 K13 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
       95 GETTABLEKS                       R11 R6 K14 ["outputNodeId"]
       97 SETTABLEKS                       R11 R10 K8 ["outputPinNodeId"]
       99 LOADK                            R11 K15 ["Output"]
      100 SETTABLEKS                       R11 R10 K9 ["outputPinName"]
      102 GETUPVAL                         R13 1
      103 GETTABLEKS                       R12 R13 K1 ["node"]
      105 GETTABLEKS                       R11 R12 K16 ["id"]
      107 SETTABLEKS                       R11 R10 K10 ["inputPinNodeId"]
      109 GETTABLEKS                       R11 R5 K19 ["Name"]
      111 SETTABLEKS                       R11 R10 K11 ["inputPinName"]
      113 LOADK                            R11 K21 ["Parameter"]
      114 SETTABLEKS                       R11 R10 K12 ["pinDataType"]
      116 CALL                             R8 2 1
      117 SETTABLE                         R8 R0 R7
      118 FORGLOOP                         R1 2 ; [-47]
      120 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setNodePropertyAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["node"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETIMPORT                        R2 K3 [task.spawn]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["node"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["observeNodePropsById"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["node"]
       10 GETTABLEKS                       R1 R2 K2 ["id"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K3 ["of"]
       17 LOADNIL                          R1
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+28]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL1                        TYPE R5 ; [+3]
        9 MOVE                             R8 R5
       10 GETIMPORT                        R7 K1 [type]
       12 CALL                             R7 1 1
       13 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+7]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K3 ["matchParameterBinding"]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R6
       22 JUMPIFNOT                        R6 ; [+6]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R8 R9 K4 ["animationParameters"]
       26 GETTABLE                         R7 R8 R6
       27 SETTABLE                         R7 R0 R4
       28 JUMP                             ; [+1]
       29 SETTABLE                         R5 R0 R4
       30 FORGLOOP                         R1 2 ; [-23]
       32 GETUPVAL                         R1 3
       33 JUMPIFNOT                        R1 ; [+13]
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R1 R2 K5 ["props"]
       37 JUMPIFNOT                        R1 ; [+9]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R1 R4 K5 ["props"]
       41 LOADNIL                          R2
       42 LOADNIL                          R3
       43 FORGPREP                         R1
       44 SETTABLE                         R5 R0 R4
       45 FORGLOOP                         R1 2 ; [-2]
       47 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["state"]
        5 RETURN                           R0 1
        6 NEWTABLE                         R0 0 0
        8 RETURN                           R0 1

PROTO_17:
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
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["useContext"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R5 R6 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R6 5
       29 GETTABLEKS                       R5 R6 K2 ["useSignalState"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R8 0 2
       39 GETTABLEKS                       R10 R0 K4 ["node"]
       41 GETTABLEKS                       R9 R10 K5 ["id"]
       43 GETTABLEKS                       R10 R2 K6 ["observeNodePosition"]
       45 SETLIST                          R8 R9 2 [1]
       47 CALL                             R6 2 -1
       48 CALL                             R5 -1 1
       49 GETUPVAL                         R7 5
       50 GETTABLEKS                       R6 R7 K2 ["useSignalState"]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K3 ["useMemo"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R0
       58 NEWTABLE                         R9 0 2
       60 GETTABLEKS                       R11 R0 K4 ["node"]
       62 GETTABLEKS                       R10 R11 K5 ["id"]
       64 GETTABLEKS                       R11 R3 K7 ["observeDebugData"]
       66 SETLIST                          R9 R10 2 [1]
       68 CALL                             R7 2 -1
       69 CALL                             R6 -1 1
       70 GETUPVAL                         R8 5
       71 GETTABLEKS                       R7 R8 K2 ["useSignalState"]
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R8 R9 K3 ["useMemo"]
       76 NEWCLOSURE                       R9 P2
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R0
       79 NEWTABLE                         R10 0 2
       81 GETTABLEKS                       R12 R0 K4 ["node"]
       83 GETTABLEKS                       R11 R12 K5 ["id"]
       85 GETTABLEKS                       R12 R2 K8 ["observeNodePreviewData"]
       87 SETLIST                          R10 R11 2 [1]
       89 CALL                             R8 2 -1
       90 CALL                             R7 -1 1
       91 GETUPVAL                         R9 5
       92 GETTABLEKS                       R8 R9 K2 ["useSignalState"]
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R9 R10 K3 ["useMemo"]
       97 NEWCLOSURE                       R10 P3
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R0
      100 NEWTABLE                         R11 0 2
      102 GETTABLEKS                       R13 R0 K4 ["node"]
      104 GETTABLEKS                       R12 R13 K5 ["id"]
      106 GETTABLEKS                       R13 R1 K9 ["observeNodeRenderInfoById"]
      108 SETLIST                          R11 R12 2 [1]
      110 CALL                             R9 2 -1
      111 CALL                             R8 -1 1
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R9 R10 K3 ["useMemo"]
      115 NEWCLOSURE                       R10 P4
      116 CAPTURE                          VAL R7
      117 CAPTURE                          UPVAL U6
      118 CAPTURE                          VAL R8
      119 NEWTABLE                         R11 0 3
      121 MOVE                             R12 R7
      122 GETTABLEKS                       R14 R0 K4 ["node"]
      124 GETTABLEKS                       R13 R14 K5 ["id"]
      126 MOVE                             R14 R8
      127 JUMPIFNOT                        R14 ; [+2]
      128 GETTABLEKS                       R14 R8 K10 ["isSelected"]
      130 SETLIST                          R11 R12 3 [1]
      132 CALL                             R9 2 1
      133 GETUPVAL                         R11 0
      134 GETTABLEKS                       R10 R11 K11 ["useCallback"]
      136 NEWCLOSURE                       R11 P5
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R1
      140 NEWTABLE                         R12 0 3
      142 GETTABLEKS                       R13 R2 K12 ["onDragNodeStart"]
      144 GETTABLEKS                       R14 R1 K13 ["selectNodesAsync"]
      146 GETTABLEKS                       R15 R0 K14 ["isShiftEnabled"]
      148 SETLIST                          R12 R13 3 [1]
      150 CALL                             R10 2 1
      151 GETUPVAL                         R12 0
      152 GETTABLEKS                       R11 R12 K11 ["useCallback"]
      154 NEWCLOSURE                       R12 P6
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R0
      157 NEWTABLE                         R13 0 2
      159 GETTABLEKS                       R15 R0 K4 ["node"]
      161 GETTABLEKS                       R14 R15 K5 ["id"]
      163 GETTABLEKS                       R15 R2 K15 ["onDragNodeMoved"]
      165 SETLIST                          R13 R14 2 [1]
      167 CALL                             R11 2 1
      168 GETUPVAL                         R13 0
      169 GETTABLEKS                       R12 R13 K11 ["useCallback"]
      171 NEWCLOSURE                       R13 P7
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R0
      174 CAPTURE                          VAL R1
      175 NEWTABLE                         R14 0 4
      177 GETTABLEKS                       R15 R1 K16 ["setNodePositionsAsync"]
      179 GETTABLEKS                       R16 R2 K6 ["observeNodePosition"]
      181 GETTABLEKS                       R17 R2 K17 ["onDragNodeEnded"]
      183 GETTABLEKS                       R19 R0 K4 ["node"]
      185 GETTABLEKS                       R18 R19 K5 ["id"]
      187 SETLIST                          R14 R15 4 [1]
      189 CALL                             R12 2 1
      190 GETUPVAL                         R13 7
      191 GETTABLEKS                       R14 R0 K4 ["node"]
      193 CALL                             R13 1 1
      194 GETUPVAL                         R15 0
      195 GETTABLEKS                       R14 R15 K3 ["useMemo"]
      197 NEWCLOSURE                       R15 P8
      198 CAPTURE                          VAL R0
      199 CAPTURE                          UPVAL U8
      200 CAPTURE                          UPVAL U9
      201 NEWTABLE                         R16 0 2
      203 GETTABLEKS                       R18 R0 K4 ["node"]
      205 GETTABLEKS                       R17 R18 K18 ["nodeType"]
      207 GETTABLEKS                       R18 R0 K4 ["node"]
      209 SETLIST                          R16 R17 2 [1]
      211 CALL                             R14 2 1
      212 GETUPVAL                         R16 0
      213 GETTABLEKS                       R15 R16 K3 ["useMemo"]
      215 NEWCLOSURE                       R16 P9
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U0
      219 CAPTURE                          UPVAL U10
      220 NEWTABLE                         R17 0 3
      222 MOVE                             R18 R14
      223 GETTABLEKS                       R19 R0 K4 ["node"]
      225 GETTABLEKS                       R20 R1 K19 ["observeGraphNodeById"]
      227 SETLIST                          R17 R18 3 [1]
      229 CALL                             R15 2 1
      230 GETUPVAL                         R17 0
      231 GETTABLEKS                       R16 R17 K11 ["useCallback"]
      233 NEWCLOSURE                       R17 P10
      234 CAPTURE                          VAL R0
      235 CAPTURE                          VAL R1
      236 NEWTABLE                         R18 0 2
      238 GETTABLEKS                       R19 R1 K20 ["setNodePropertyAsync"]
      240 GETTABLEKS                       R21 R0 K4 ["node"]
      242 JUMPIFNOT                        R21 ; [+5]
      243 GETTABLEKS                       R21 R0 K4 ["node"]
      245 GETTABLEKS                       R20 R21 K5 ["id"]
      247 JUMPIF                           R20 ; [+1]
      248 LOADNIL                          R20
      249 SETLIST                          R18 R19 2 [1]
      251 CALL                             R16 2 1
      252 GETTABLEKS                       R17 R0 K4 ["node"]
      254 JUMPIFNOT                        R17 ; [+11]
      255 GETTABLEKS                       R19 R0 K4 ["node"]
      257 GETTABLEKS                       R18 R19 K21 ["className"]
      259 GETUPVAL                         R20 6
      260 GETTABLEKS                       R19 R20 K22 ["PARAMETER_NODE_CLASSNAME"]
      262 JUMPIFEQ                         R18 R19 ; [+2]
      264 LOADB                            R17 0 +1
      265 LOADB                            R17 1
      266 GETUPVAL                         R19 0
      267 GETTABLEKS                       R18 R19 K3 ["useMemo"]
      269 NEWCLOSURE                       R19 P11
      270 CAPTURE                          VAL R0
      271 CAPTURE                          VAL R1
      272 CAPTURE                          UPVAL U11
      273 NEWTABLE                         R20 0 1
      275 GETTABLEKS                       R22 R0 K4 ["node"]
      277 JUMPIFNOT                        R22 ; [+5]
      278 GETTABLEKS                       R22 R0 K4 ["node"]
      280 GETTABLEKS                       R21 R22 K5 ["id"]
      282 JUMPIF                           R21 ; [+1]
      283 LOADNIL                          R21
      284 SETLIST                          R20 R21 1 [1]
      286 CALL                             R18 2 1
      287 GETUPVAL                         R20 5
      288 GETTABLEKS                       R19 R20 K2 ["useSignalState"]
      290 MOVE                             R20 R18
      291 CALL                             R19 1 1
      292 GETUPVAL                         R21 0
      293 GETTABLEKS                       R20 R21 K3 ["useMemo"]
      295 NEWCLOSURE                       R21 P12
      296 CAPTURE                          VAL R19
      297 CAPTURE                          UPVAL U12
      298 CAPTURE                          VAL R4
      299 CAPTURE                          VAL R6
      300 NEWTABLE                         R22 0 3
      302 GETTABLEKS                       R23 R4 K23 ["animationParameters"]
      304 JUMPIFNOT                        R6 ; [+3]
      305 GETTABLEKS                       R24 R6 K24 ["props"]
      307 JUMP                             ; [+1]
      308 LOADNIL                          R24
      309 MOVE                             R25 R19
      310 SETLIST                          R22 R23 3 [1]
      312 CALL                             R20 2 1
      313 GETUPVAL                         R22 0
      314 GETTABLEKS                       R21 R22 K3 ["useMemo"]
      316 NEWCLOSURE                       R22 P13
      317 CAPTURE                          VAL R6
      318 NEWTABLE                         R23 0 1
      320 JUMPIFNOT                        R6 ; [+3]
      321 GETTABLEKS                       R24 R6 K25 ["state"]
      323 JUMP                             ; [+1]
      324 LOADNIL                          R24
      325 SETLIST                          R23 R24 1 [1]
      327 CALL                             R21 2 1
      328 DUPTABLE                         R22 K40 [{"text", "editName", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      329 GETTABLEKS                       R23 R13 K41 ["displayName"]
      331 SETTABLEKS                       R23 R22 K26 ["text"]
      333 GETTABLEKS                       R23 R13 K27 ["editName"]
      335 SETTABLEKS                       R23 R22 K27 ["editName"]
      337 GETTABLEKS                       R23 R0 K4 ["node"]
      339 SETTABLEKS                       R23 R22 K28 ["GraphPayload"]
      341 MOVE                             R23 R5
      342 JUMPIF                           R23 ; [+2]
      343 GETIMPORT                        R23 K44 [Vector2.zero]
      345 SETTABLEKS                       R23 R22 K29 ["Position"]
      347 JUMPIFNOT                        R8 ; [+6]
      348 GETTABLEKS                       R23 R8 K45 ["size"]
      350 JUMPIF                           R23 ; [+5]
      351 GETIMPORT                        R23 K44 [Vector2.zero]
      353 JUMP                             ; [+2]
      354 GETIMPORT                        R23 K44 [Vector2.zero]
      356 SETTABLEKS                       R23 R22 K30 ["Size"]
      358 JUMPIFNOT                        R8 ; [+3]
      359 GETTABLEKS                       R23 R8 K10 ["isSelected"]
      361 JUMP                             ; [+1]
      362 LOADB                            R23 0
      363 SETTABLEKS                       R23 R22 K31 ["Selected"]
      365 JUMPIFNOT                        R8 ; [+3]
      366 GETTABLEKS                       R23 R8 K46 ["isCollapsed"]
      368 JUMP                             ; [+1]
      369 LOADB                            R23 0
      370 SETTABLEKS                       R23 R22 K32 ["Collapsed"]
      372 SETTABLEKS                       R9 R22 K33 ["ZIndex"]
      374 SETTABLEKS                       R10 R22 K34 ["OnDragStart"]
      376 SETTABLEKS                       R11 R22 K35 ["OnDragMoved"]
      378 SETTABLEKS                       R12 R22 K36 ["OnDragEnded"]
      380 SETTABLEKS                       R16 R22 K37 ["OnPropertyChanged"]
      382 SETTABLEKS                       R20 R22 K38 ["PropertyLookup"]
      384 SETTABLEKS                       R21 R22 K39 ["StateLookup"]
      386 LOADNIL                          R23
      387 JUMPIFNOT                        R17 ; [+2]
      388 GETUPVAL                         R23 13
      389 JUMP                             ; [+37]
      390 GETUPVAL                         R24 14
      391 JUMPIFNOT                        R24 ; [+15]
      392 GETTABLEKS                       R25 R0 K4 ["node"]
      394 GETTABLEKS                       R24 R25 K18 ["nodeType"]
      396 JUMPIFNOT                        R24 ; [+10]
      397 GETUPVAL                         R26 15
      398 GETTABLEKS                       R28 R0 K4 ["node"]
      400 GETTABLEKS                       R27 R28 K18 ["nodeType"]
      402 GETTABLE                         R25 R26 R27
      403 JUMPIFEQKNIL                     R25 ; [+2]
      405 LOADB                            R24 0 +1
      406 LOADB                            R24 1
      407 SETTABLEKS                       R24 R22 K47 ["IsGeneric"]
      409 GETTABLEKS                       R26 R0 K4 ["node"]
      411 GETTABLEKS                       R25 R26 K18 ["nodeType"]
      413 JUMPIFNOT                        R25 ; [+7]
      414 GETUPVAL                         R25 15
      415 GETTABLEKS                       R27 R0 K4 ["node"]
      417 GETTABLEKS                       R26 R27 K18 ["nodeType"]
      419 GETTABLE                         R24 R25 R26
      420 JUMPIF                           R24 ; [+1]
      421 GETUPVAL                         R24 16
      422 MOVE                             R23 R24
      423 GETUPVAL                         R24 17
      424 CALL                             R24 0 1
      425 JUMPIFNOT                        R24 ; [+1]
      426 GETUPVAL                         R23 16
      427 GETUPVAL                         R25 0
      428 GETTABLEKS                       R24 R25 K48 ["createElement"]
      430 GETUPVAL                         R26 0
      431 GETTABLEKS                       R25 R26 K49 ["Fragment"]
      433 NEWTABLE                         R26 0 0
      435 GETUPVAL                         R28 0
      436 GETTABLEKS                       R27 R28 K48 ["createElement"]
      438 MOVE                             R28 R23
      439 MOVE                             R29 R22
      440 CALL                             R27 2 1
      441 MOVE                             R28 R15
      442 CALL                             R24 4 -1
      443 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationNodeWrapper"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["AnimationParameterContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["CompositorConnectionContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K11 ["Components"]
       32 GETTABLEKS                       R7 R8 K12 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K13 ["CompositorNodes"]
       36 GETTABLEKS                       R5 R6 K14 ["CompositorNode"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Util"]
       43 GETTABLEKS                       R6 R7 K15 ["Constants"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       50 GETTABLEKS                       R7 R8 K16 ["GraphDebugDataContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K8 ["Contexts"]
       57 GETTABLEKS                       R8 R9 K17 ["NativeGraphContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K8 ["Contexts"]
       64 GETTABLEKS                       R10 R11 K17 ["NativeGraphContext"]
       66 GETTABLEKS                       R9 R10 K18 ["NativeGraphUtils"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K6 ["Util"]
       73 GETTABLEKS                       R11 R12 K19 ["Nodes"]
       75 GETTABLEKS                       R10 R11 K20 ["NodeDefinitionUtils"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K21 ["NodeViewTypes"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R15 R0 K11 ["Components"]
       87 GETTABLEKS                       R14 R15 K12 ["NodeView"]
       89 GETTABLEKS                       R13 R14 K13 ["CompositorNodes"]
       91 GETTABLEKS                       R12 R13 K22 ["ParameterNode"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R14 R0 K23 ["Parent"]
       98 GETTABLEKS                       R13 R14 K24 ["React"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R17 R0 K11 ["Components"]
      105 GETTABLEKS                       R16 R17 K12 ["NodeView"]
      107 GETTABLEKS                       R15 R16 K13 ["CompositorNodes"]
      109 GETTABLEKS                       R14 R15 K25 ["RenderedCompositorCurve"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETIMPORT                        R22 K1 [script]
      116 GETTABLEKS                       R21 R22 K23 ["Parent"]
      118 GETTABLEKS                       R20 R21 K23 ["Parent"]
      120 GETTABLEKS                       R19 R20 K23 ["Parent"]
      122 GETTABLEKS                       R18 R19 K23 ["Parent"]
      124 GETTABLEKS                       R17 R18 K6 ["Util"]
      126 GETTABLEKS                       R16 R17 K26 ["Signals"]
      128 GETTABLEKS                       R15 R16 K27 ["SignalsInstanceUtils"]
      130 CALL                             R14 1 1
      131 GETIMPORT                        R15 K5 [require]
      133 GETTABLEKS                       R17 R0 K23 ["Parent"]
      135 GETTABLEKS                       R16 R17 K28 ["SignalsReact"]
      137 CALL                             R15 1 1
      138 GETIMPORT                        R16 K5 [require]
      140 GETTABLEKS                       R18 R0 K29 ["Flags"]
      142 GETTABLEKS                       R17 R18 K30 ["getFFlagDebugDisableCustomNodes"]
      144 CALL                             R16 1 1
      145 GETIMPORT                        R17 K5 [require]
      147 GETTABLEKS                       R21 R0 K11 ["Components"]
      149 GETTABLEKS                       R20 R21 K12 ["NodeView"]
      151 GETTABLEKS                       R19 R20 K13 ["CompositorNodes"]
      153 GETTABLEKS                       R18 R19 K31 ["useNodeNames"]
      155 CALL                             R17 1 1
      156 GETIMPORT                        R18 K33 [game]
      158 LOADK                            R20 K34 ["DebugAGEHighlightGenericNodes"]
      159 LOADB                            R21 0
      160 NAMECALL                         R18 R18 K35 ["DefineFastFlag"]
      162 CALL                             R18 3 1
      163 NEWTABLE                         R19 16 0
      165 GETIMPORT                        R20 K39 [Enum.AnimationNodeType.AddNode]
      167 GETIMPORT                        R21 K5 [require]
      169 GETTABLEKS                       R25 R0 K11 ["Components"]
      171 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      173 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      175 GETTABLEKS                       R22 R23 K38 ["AddNode"]
      177 CALL                             R21 1 1
      178 SETTABLE                         R21 R19 R20
      179 GETIMPORT                        R20 K41 [Enum.AnimationNodeType.Blend1DNode]
      181 GETIMPORT                        R21 K5 [require]
      183 GETTABLEKS                       R25 R0 K11 ["Components"]
      185 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      187 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      189 GETTABLEKS                       R22 R23 K40 ["Blend1DNode"]
      191 CALL                             R21 1 1
      192 SETTABLE                         R21 R19 R20
      193 GETIMPORT                        R20 K43 [Enum.AnimationNodeType.Blend2DNode]
      195 GETIMPORT                        R21 K5 [require]
      197 GETTABLEKS                       R25 R0 K11 ["Components"]
      199 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      201 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      203 GETTABLEKS                       R22 R23 K42 ["Blend2DNode"]
      205 CALL                             R21 1 1
      206 SETTABLE                         R21 R19 R20
      207 GETIMPORT                        R20 K45 [Enum.AnimationNodeType.ClipNode]
      209 GETIMPORT                        R21 K5 [require]
      211 GETTABLEKS                       R25 R0 K11 ["Components"]
      213 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      215 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      217 GETTABLEKS                       R22 R23 K44 ["ClipNode"]
      219 CALL                             R21 1 1
      220 SETTABLE                         R21 R19 R20
      221 GETIMPORT                        R20 K47 [Enum.AnimationNodeType.GraphOutput]
      223 GETIMPORT                        R21 K5 [require]
      225 GETTABLEKS                       R25 R0 K11 ["Components"]
      227 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      229 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      231 GETTABLEKS                       R22 R23 K46 ["GraphOutput"]
      233 CALL                             R21 1 1
      234 SETTABLE                         R21 R19 R20
      235 GETIMPORT                        R20 K49 [Enum.AnimationNodeType.OverNode]
      237 GETIMPORT                        R21 K5 [require]
      239 GETTABLEKS                       R25 R0 K11 ["Components"]
      241 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      243 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      245 GETTABLEKS                       R22 R23 K48 ["OverNode"]
      247 CALL                             R21 1 1
      248 SETTABLE                         R21 R19 R20
      249 GETIMPORT                        R20 K51 [Enum.AnimationNodeType.PrioritySelectNode]
      251 GETIMPORT                        R21 K5 [require]
      253 GETTABLEKS                       R25 R0 K11 ["Components"]
      255 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      257 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      259 GETTABLEKS                       R22 R23 K50 ["PrioritySelectNode"]
      261 CALL                             R21 1 1
      262 SETTABLE                         R21 R19 R20
      263 GETIMPORT                        R20 K53 [Enum.AnimationNodeType.RandomSequenceNode]
      265 GETIMPORT                        R21 K5 [require]
      267 GETTABLEKS                       R25 R0 K11 ["Components"]
      269 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      271 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      273 GETTABLEKS                       R22 R23 K52 ["RandomSequenceNode"]
      275 CALL                             R21 1 1
      276 SETTABLE                         R21 R19 R20
      277 GETIMPORT                        R20 K55 [Enum.AnimationNodeType.SelectNode]
      279 GETIMPORT                        R21 K5 [require]
      281 GETTABLEKS                       R25 R0 K11 ["Components"]
      283 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      285 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      287 GETTABLEKS                       R22 R23 K54 ["SelectNode"]
      289 CALL                             R21 1 1
      290 SETTABLE                         R21 R19 R20
      291 GETIMPORT                        R20 K57 [Enum.AnimationNodeType.SequenceNode]
      293 GETIMPORT                        R21 K5 [require]
      295 GETTABLEKS                       R25 R0 K11 ["Components"]
      297 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      299 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      301 GETTABLEKS                       R22 R23 K56 ["SequenceNode"]
      303 CALL                             R21 1 1
      304 SETTABLE                         R21 R19 R20
      305 GETIMPORT                        R20 K59 [Enum.AnimationNodeType.SpeedNode]
      307 GETIMPORT                        R21 K5 [require]
      309 GETTABLEKS                       R25 R0 K11 ["Components"]
      311 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      313 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      315 GETTABLEKS                       R22 R23 K58 ["SpeedNode"]
      317 CALL                             R21 1 1
      318 SETTABLE                         R21 R19 R20
      319 GETIMPORT                        R20 K61 [Enum.AnimationNodeType.SubtractNode]
      321 GETIMPORT                        R21 K5 [require]
      323 GETTABLEKS                       R25 R0 K11 ["Components"]
      325 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      327 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      329 GETTABLEKS                       R22 R23 K60 ["SubtractNode"]
      331 CALL                             R21 1 1
      332 SETTABLE                         R21 R19 R20
      333 GETIMPORT                        R20 K63 [Enum.AnimationNodeType.MaskNode]
      335 GETIMPORT                        R21 K5 [require]
      337 GETTABLEKS                       R25 R0 K11 ["Components"]
      339 GETTABLEKS                       R24 R25 K12 ["NodeView"]
      341 GETTABLEKS                       R23 R24 K13 ["CompositorNodes"]
      343 GETTABLEKS                       R22 R23 K62 ["MaskNode"]
      345 CALL                             R21 1 1
      346 SETTABLE                         R21 R19 R20
      347 DUPCLOSURE                       R20 K64 [PROTO_17]
      348 CAPTURE                          VAL R12
      349 CAPTURE                          VAL R7
      350 CAPTURE                          VAL R3
      351 CAPTURE                          VAL R6
      352 CAPTURE                          VAL R2
      353 CAPTURE                          VAL R15
      354 CAPTURE                          VAL R5
      355 CAPTURE                          VAL R17
      356 CAPTURE                          VAL R1
      357 CAPTURE                          VAL R9
      358 CAPTURE                          VAL R13
      359 CAPTURE                          VAL R14
      360 CAPTURE                          VAL R8
      361 CAPTURE                          VAL R11
      362 CAPTURE                          VAL R18
      363 CAPTURE                          VAL R19
      364 CAPTURE                          VAL R4
      365 CAPTURE                          VAL R16
      366 GETTABLEKS                       R21 R12 K65 ["memo"]
      368 MOVE                             R22 R20
      369 CALL                             R21 1 -1
      370 RETURN                           R21 -1
