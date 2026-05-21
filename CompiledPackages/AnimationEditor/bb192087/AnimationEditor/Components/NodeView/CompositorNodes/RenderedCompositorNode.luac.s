PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePosition"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeDebugData"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePreviewData"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["NODEVIEW_ZINDEX"]
        5 GETTABLEKS                       R0 R0 K1 ["Preview"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K2 ["isSelected"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K0 ["NODEVIEW_ZINDEX"]
       17 GETTABLEKS                       R0 R0 K3 ["Selected"]
       19 RETURN                           R0 1
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K0 ["NODEVIEW_ZINDEX"]
       23 GETTABLEKS                       R0 R0 K4 ["Nodes"]
       25 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+20]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["selectionNodeId"]
        7 JUMPIFEQ                         R0 R1 ; [+5]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K1 ["clearSelection"]
       12 CALL                             R0 0 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["selectNodesAsync"]
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 5
       18 GETTABLEKS                       R2 R2 K3 ["isShiftPressed"]
       20 CALL                             R2 0 -1
       21 CALL                             R0 -1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R0 3
       24 GETTABLEKS                       R0 R0 K2 ["selectNodesAsync"]
       26 GETUPVAL                         R1 4
       27 GETUPVAL                         R2 6
       28 GETTABLEKS                       R2 R2 K4 ["isShiftEnabled"]
       30 CALL                             R0 2 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 GETTABLEKS                       R1 R1 K1 ["id"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["onDragNodeStart"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 GETIMPORT                        R3 K5 [task.spawn]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U0
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onDragNodeMoved"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["node"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setNodePositionsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onDragNodeEnded"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["node"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 GETIMPORT                        R2 K5 [task.spawn]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 GETTABLEKS                       R1 R1 K1 ["nodeType"]
        5 FASTCALL1                        TYPEOF R1 ; [+2]
        6 GETIMPORT                        R0 K3 [typeof]
        8 CALL                             R0 1 1
        9 JUMPIFEQKS                       R0 K4 ["EnumItem"] ; [+3]
       11 LOADNIL                          R0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["node"]
       17 GETTABLEKS                       R2 R2 K1 ["nodeType"]
       19 NAMECALL                         R0 R0 K5 ["GetAnimationNodeDefinition"]
       21 CALL                             R0 2 1
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K6 ["synthesizeDefinition"]
       25 MOVE                             R2 R0
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["node"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+183]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Inputs"]
        7 JUMPIFNOT                        R1 ; [+179]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["Inputs"]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K1 ["node"]
       17 GETTABLEKS                       R7 R7 K2 ["inputPinToConnectionMap"]
       19 GETTABLEKS                       R8 R5 K3 ["InputName"]
       21 GETTABLE                         R6 R7 R8
       22 GETUPVAL                         R7 2
       23 CALL                             R7 0 1
       24 JUMPIFNOT                        R7 ; [+124]
       25 JUMPIFNOT                        R6 ; [+57]
       26 GETUPVAL                         R8 3
       27 JUMPIFNOT                        R8 ; [+5]
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R9 R6 K4 ["outputNodeId"]
       31 GETTABLE                         R7 R8 R9
       32 JUMP                             ; [+1]
       33 LOADNIL                          R7
       34 MOVE                             R8 R7
       35 JUMPIFNOT                        R8 ; [+9]
       36 GETTABLEKS                       R9 R7 K5 ["className"]
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R10 R10 K6 ["PARAMETER_NODE_CLASSNAME"]
       41 JUMPIFEQ                         R9 R10 ; [+2]
       43 LOADB                            R8 0 +1
       44 LOADB                            R8 1
       45 LOADK                            R10 K7 ["Connection_%*"]
       46 GETTABLEKS                       R12 R6 K8 ["wireId"]
       48 NAMECALL                         R10 R10 K9 ["format"]
       50 CALL                             R10 2 1
       51 MOVE                             R9 R10
       52 GETUPVAL                         R10 5
       53 GETTABLEKS                       R10 R10 K10 ["createElement"]
       55 GETUPVAL                         R11 6
       56 DUPTABLE                         R12 K16 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
       57 GETTABLEKS                       R13 R6 K4 ["outputNodeId"]
       59 SETTABLEKS                       R13 R12 K11 ["outputPinNodeId"]
       61 LOADK                            R13 K17 ["Output"]
       62 SETTABLEKS                       R13 R12 K12 ["outputPinName"]
       64 GETUPVAL                         R13 1
       65 GETTABLEKS                       R13 R13 K1 ["node"]
       67 GETTABLEKS                       R13 R13 K18 ["id"]
       69 SETTABLEKS                       R13 R12 K13 ["inputPinNodeId"]
       71 GETTABLEKS                       R13 R5 K3 ["InputName"]
       73 SETTABLEKS                       R13 R12 K14 ["inputPinName"]
       75 JUMPIFNOT                        R8 ; [+2]
       76 LOADK                            R13 K19 ["Parameter"]
       77 JUMP                             ; [+1]
       78 LOADK                            R13 K20 ["Animation"]
       79 SETTABLEKS                       R13 R12 K15 ["pinDataType"]
       81 CALL                             R10 2 1
       82 SETTABLE                         R10 R0 R9
       83 GETTABLEKS                       R7 R5 K21 ["Properties"]
       85 JUMPIFNOT                        R7 ; [+99]
       86 GETTABLEKS                       R7 R5 K21 ["Properties"]
       88 LOADNIL                          R8
       89 LOADNIL                          R9
       90 FORGPREP                         R7
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R13 R13 K1 ["node"]
       94 GETTABLEKS                       R13 R13 K22 ["inputLabelPinToConnectionMap"]
       96 GETTABLEKS                       R14 R11 K23 ["Name"]
       98 GETTABLE                         R12 R13 R14
       99 MOVE                             R13 R12
      100 JUMPIFNOT                        R13 ; [+3]
      101 GETTABLEKS                       R14 R5 K3 ["InputName"]
      103 GETTABLE                         R13 R12 R14
      104 JUMPIFNOT                        R13 ; [+41]
      105 LOADK                            R15 K24 ["Connection_%*_inputProperty_%*"]
      106 GETTABLEKS                       R17 R13 K8 ["wireId"]
      108 GETTABLEKS                       R18 R11 K23 ["Name"]
      110 NAMECALL                         R15 R15 K9 ["format"]
      112 CALL                             R15 3 1
      113 MOVE                             R14 R15
      114 GETUPVAL                         R15 5
      115 GETTABLEKS                       R15 R15 K10 ["createElement"]
      117 GETUPVAL                         R16 6
      118 DUPTABLE                         R17 K26 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinDynamicIndex", "pinDataType"}]
      119 GETTABLEKS                       R18 R13 K4 ["outputNodeId"]
      121 SETTABLEKS                       R18 R17 K11 ["outputPinNodeId"]
      123 LOADK                            R18 K17 ["Output"]
      124 SETTABLEKS                       R18 R17 K12 ["outputPinName"]
      126 GETUPVAL                         R18 1
      127 GETTABLEKS                       R18 R18 K1 ["node"]
      129 GETTABLEKS                       R18 R18 K18 ["id"]
      131 SETTABLEKS                       R18 R17 K13 ["inputPinNodeId"]
      133 GETTABLEKS                       R18 R11 K23 ["Name"]
      135 SETTABLEKS                       R18 R17 K14 ["inputPinName"]
      137 GETTABLEKS                       R18 R5 K27 ["InputIndex"]
      139 SETTABLEKS                       R18 R17 K25 ["inputPinDynamicIndex"]
      141 LOADK                            R18 K19 ["Parameter"]
      142 SETTABLEKS                       R18 R17 K15 ["pinDataType"]
      144 CALL                             R15 2 1
      145 SETTABLE                         R15 R0 R14
      146 FORGLOOP                         R7 2 ; [-56]
      148 JUMP                             ; [+36]
      149 JUMPIFNOT                        R6 ; [+35]
      150 LOADK                            R8 K7 ["Connection_%*"]
      151 GETTABLEKS                       R10 R6 K8 ["wireId"]
      153 NAMECALL                         R8 R8 K9 ["format"]
      155 CALL                             R8 2 1
      156 MOVE                             R7 R8
      157 GETUPVAL                         R8 5
      158 GETTABLEKS                       R8 R8 K10 ["createElement"]
      160 GETUPVAL                         R9 6
      161 DUPTABLE                         R10 K16 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
      162 GETTABLEKS                       R11 R6 K4 ["outputNodeId"]
      164 SETTABLEKS                       R11 R10 K11 ["outputPinNodeId"]
      166 LOADK                            R11 K17 ["Output"]
      167 SETTABLEKS                       R11 R10 K12 ["outputPinName"]
      169 GETUPVAL                         R11 1
      170 GETTABLEKS                       R11 R11 K1 ["node"]
      172 GETTABLEKS                       R11 R11 K18 ["id"]
      174 SETTABLEKS                       R11 R10 K13 ["inputPinNodeId"]
      176 GETTABLEKS                       R11 R5 K3 ["InputName"]
      178 SETTABLEKS                       R11 R10 K14 ["inputPinName"]
      180 LOADK                            R11 K20 ["Animation"]
      181 SETTABLEKS                       R11 R10 K15 ["pinDataType"]
      183 CALL                             R8 2 1
      184 SETTABLE                         R8 R0 R7
      185 FORGLOOP                         R1 2 ; [-172]
      187 GETUPVAL                         R1 0
      188 JUMPIFNOT                        R1 ; [+58]
      189 GETUPVAL                         R1 0
      190 GETTABLEKS                       R1 R1 K21 ["Properties"]
      192 JUMPIFNOT                        R1 ; [+54]
      193 GETUPVAL                         R1 0
      194 GETTABLEKS                       R1 R1 K21 ["Properties"]
      196 LOADNIL                          R2
      197 LOADNIL                          R3
      198 FORGPREP                         R1
      199 GETUPVAL                         R7 1
      200 GETTABLEKS                       R7 R7 K1 ["node"]
      202 GETTABLEKS                       R7 R7 K2 ["inputPinToConnectionMap"]
      204 GETTABLEKS                       R8 R5 K23 ["Name"]
      206 GETTABLE                         R6 R7 R8
      207 JUMPIFNOT                        R6 ; [+37]
      208 LOADK                            R8 K28 ["Connection_%*_property_%*"]
      209 GETTABLEKS                       R10 R6 K8 ["wireId"]
      211 GETTABLEKS                       R11 R5 K23 ["Name"]
      213 NAMECALL                         R8 R8 K9 ["format"]
      215 CALL                             R8 3 1
      216 MOVE                             R7 R8
      217 GETUPVAL                         R8 5
      218 GETTABLEKS                       R8 R8 K10 ["createElement"]
      220 GETUPVAL                         R9 6
      221 DUPTABLE                         R10 K16 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
      222 GETTABLEKS                       R11 R6 K4 ["outputNodeId"]
      224 SETTABLEKS                       R11 R10 K11 ["outputPinNodeId"]
      226 LOADK                            R11 K17 ["Output"]
      227 SETTABLEKS                       R11 R10 K12 ["outputPinName"]
      229 GETUPVAL                         R11 1
      230 GETTABLEKS                       R11 R11 K1 ["node"]
      232 GETTABLEKS                       R11 R11 K18 ["id"]
      234 SETTABLEKS                       R11 R10 K13 ["inputPinNodeId"]
      236 GETTABLEKS                       R11 R5 K23 ["Name"]
      238 SETTABLEKS                       R11 R10 K14 ["inputPinName"]
      240 LOADK                            R11 K19 ["Parameter"]
      241 SETTABLEKS                       R11 R10 K15 ["pinDataType"]
      243 CALL                             R8 2 1
      244 SETTABLE                         R8 R0 R7
      245 FORGLOOP                         R1 2 ; [-47]
      247 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setNodePropertyAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["node"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["node"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["observeNodePropsById"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["node"]
       10 GETTABLEKS                       R1 R1 K2 ["id"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K3 ["of"]
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
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K3 ["matchParameterBinding"]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R6
       22 JUMPIFNOT                        R6 ; [+6]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K4 ["animationParameters"]
       26 GETTABLE                         R7 R8 R6
       27 SETTABLE                         R7 R0 R4
       28 JUMP                             ; [+1]
       29 SETTABLE                         R5 R0 R4
       30 FORGLOOP                         R1 2 ; [-23]
       32 GETUPVAL                         R1 3
       33 JUMPIFNOT                        R1 ; [+13]
       34 GETUPVAL                         R1 3
       35 GETTABLEKS                       R1 R1 K5 ["props"]
       37 JUMPIFNOT                        R1 ; [+9]
       38 GETUPVAL                         R1 3
       39 GETTABLEKS                       R1 R1 K5 ["props"]
       41 LOADNIL                          R2
       42 LOADNIL                          R3
       43 FORGPREP                         R1
       44 SETTABLE                         R5 R0 R4
       45 FORGLOOP                         R1 2 ; [-2]
       47 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 RETURN                           R0 1
        6 NEWTABLE                         R0 0 0
        8 RETURN                           R0 1

PROTO_17:
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
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K0 ["useContext"]
       38 GETUPVAL                         R7 6
       39 GETTABLEKS                       R7 R7 K1 ["Context"]
       41 CALL                             R6 1 1
       42 GETUPVAL                         R7 7
       43 GETTABLEKS                       R7 R7 K2 ["useSignalState"]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K3 ["useMemo"]
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R10 0 2
       53 GETTABLEKS                       R11 R0 K4 ["node"]
       55 GETTABLEKS                       R11 R11 K5 ["id"]
       57 GETTABLEKS                       R12 R2 K6 ["observeNodePosition"]
       59 SETLIST                          R10 R11 2 [1]
       61 CALL                             R8 2 -1
       62 CALL                             R7 -1 1
       63 GETUPVAL                         R8 7
       64 GETTABLEKS                       R8 R8 K2 ["useSignalState"]
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K3 ["useMemo"]
       69 NEWCLOSURE                       R10 P1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R0
       72 NEWTABLE                         R11 0 2
       74 GETTABLEKS                       R12 R0 K4 ["node"]
       76 GETTABLEKS                       R12 R12 K5 ["id"]
       78 GETTABLEKS                       R13 R3 K7 ["observeDebugData"]
       80 SETLIST                          R11 R12 2 [1]
       82 CALL                             R9 2 -1
       83 CALL                             R8 -1 1
       84 GETUPVAL                         R9 7
       85 GETTABLEKS                       R9 R9 K2 ["useSignalState"]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K3 ["useMemo"]
       90 NEWCLOSURE                       R11 P2
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R0
       93 NEWTABLE                         R12 0 2
       95 GETTABLEKS                       R13 R0 K4 ["node"]
       97 GETTABLEKS                       R13 R13 K5 ["id"]
       99 GETTABLEKS                       R14 R2 K8 ["observeNodePreviewData"]
      101 SETLIST                          R12 R13 2 [1]
      103 CALL                             R10 2 -1
      104 CALL                             R9 -1 1
      105 GETUPVAL                         R10 7
      106 GETTABLEKS                       R10 R10 K2 ["useSignalState"]
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R11 R11 K3 ["useMemo"]
      111 NEWCLOSURE                       R12 P3
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R0
      114 NEWTABLE                         R13 0 2
      116 GETTABLEKS                       R14 R0 K4 ["node"]
      118 GETTABLEKS                       R14 R14 K5 ["id"]
      120 GETTABLEKS                       R15 R1 K9 ["observeNodeRenderInfoById"]
      122 SETLIST                          R13 R14 2 [1]
      124 CALL                             R11 2 -1
      125 CALL                             R10 -1 1
      126 GETUPVAL                         R11 0
      127 GETTABLEKS                       R11 R11 K3 ["useMemo"]
      129 NEWCLOSURE                       R12 P4
      130 CAPTURE                          VAL R9
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          VAL R10
      133 NEWTABLE                         R13 0 3
      135 MOVE                             R14 R9
      136 GETTABLEKS                       R15 R0 K4 ["node"]
      138 GETTABLEKS                       R15 R15 K5 ["id"]
      140 MOVE                             R16 R10
      141 JUMPIFNOT                        R16 ; [+2]
      142 GETTABLEKS                       R16 R10 K10 ["isSelected"]
      144 SETLIST                          R13 R14 3 [1]
      146 CALL                             R11 2 1
      147 GETUPVAL                         R12 0
      148 GETTABLEKS                       R12 R12 K11 ["useCallback"]
      150 NEWCLOSURE                       R13 P5
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R2
      153 CAPTURE                          UPVAL U9
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R5
      157 NEWTABLE                         R14 0 7
      159 GETTABLEKS                       R15 R2 K12 ["onDragNodeStart"]
      161 GETTABLEKS                       R16 R1 K13 ["selectNodesAsync"]
      163 GETTABLEKS                       R17 R0 K14 ["isShiftEnabled"]
      165 GETUPVAL                         R18 9
      166 CALL                             R18 0 1
      167 GETTABLEKS                       R19 R5 K15 ["isShiftPressed"]
      169 GETTABLEKS                       R20 R6 K16 ["clearSelection"]
      171 GETTABLEKS                       R21 R6 K17 ["selectionNodeId"]
      173 SETLIST                          R14 R15 7 [1]
      175 CALL                             R12 2 1
      176 GETUPVAL                         R13 0
      177 GETTABLEKS                       R13 R13 K11 ["useCallback"]
      179 NEWCLOSURE                       R14 P6
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R0
      182 NEWTABLE                         R15 0 2
      184 GETTABLEKS                       R16 R0 K4 ["node"]
      186 GETTABLEKS                       R16 R16 K5 ["id"]
      188 GETTABLEKS                       R17 R2 K18 ["onDragNodeMoved"]
      190 SETLIST                          R15 R16 2 [1]
      192 CALL                             R13 2 1
      193 GETUPVAL                         R14 0
      194 GETTABLEKS                       R14 R14 K11 ["useCallback"]
      196 NEWCLOSURE                       R15 P7
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R1
      200 NEWTABLE                         R16 0 4
      202 GETTABLEKS                       R17 R1 K19 ["setNodePositionsAsync"]
      204 GETTABLEKS                       R18 R2 K6 ["observeNodePosition"]
      206 GETTABLEKS                       R19 R2 K20 ["onDragNodeEnded"]
      208 GETTABLEKS                       R20 R0 K4 ["node"]
      210 GETTABLEKS                       R20 R20 K5 ["id"]
      212 SETLIST                          R16 R17 4 [1]
      214 CALL                             R14 2 1
      215 GETUPVAL                         R15 10
      216 GETTABLEKS                       R16 R0 K4 ["node"]
      218 CALL                             R15 1 1
      219 GETUPVAL                         R16 7
      220 GETTABLEKS                       R16 R16 K2 ["useSignalState"]
      222 GETTABLEKS                       R17 R1 K21 ["observeGraphNodeMap"]
      224 CALL                             R16 1 1
      225 GETUPVAL                         R17 0
      226 GETTABLEKS                       R17 R17 K3 ["useMemo"]
      228 NEWCLOSURE                       R18 P8
      229 CAPTURE                          VAL R0
      230 CAPTURE                          UPVAL U11
      231 CAPTURE                          UPVAL U12
      232 NEWTABLE                         R19 0 2
      234 GETTABLEKS                       R20 R0 K4 ["node"]
      236 GETTABLEKS                       R20 R20 K22 ["nodeType"]
      238 GETTABLEKS                       R21 R0 K4 ["node"]
      240 SETLIST                          R19 R20 2 [1]
      242 CALL                             R17 2 1
      243 GETUPVAL                         R18 0
      244 GETTABLEKS                       R18 R18 K3 ["useMemo"]
      246 NEWCLOSURE                       R19 P9
      247 CAPTURE                          VAL R17
      248 CAPTURE                          VAL R0
      249 CAPTURE                          UPVAL U13
      250 CAPTURE                          VAL R16
      251 CAPTURE                          UPVAL U8
      252 CAPTURE                          UPVAL U0
      253 CAPTURE                          UPVAL U14
      254 NEWTABLE                         R20 0 3
      256 MOVE                             R21 R17
      257 GETTABLEKS                       R22 R0 K4 ["node"]
      259 MOVE                             R23 R16
      260 SETLIST                          R20 R21 3 [1]
      262 CALL                             R18 2 1
      263 GETUPVAL                         R19 0
      264 GETTABLEKS                       R19 R19 K11 ["useCallback"]
      266 NEWCLOSURE                       R20 P10
      267 CAPTURE                          VAL R0
      268 CAPTURE                          VAL R1
      269 NEWTABLE                         R21 0 2
      271 GETTABLEKS                       R22 R1 K23 ["setNodePropertyAsync"]
      273 GETTABLEKS                       R24 R0 K4 ["node"]
      275 JUMPIFNOT                        R24 ; [+5]
      276 GETTABLEKS                       R23 R0 K4 ["node"]
      278 GETTABLEKS                       R23 R23 K5 ["id"]
      280 JUMPIF                           R23 ; [+1]
      281 LOADNIL                          R23
      282 SETLIST                          R21 R22 2 [1]
      284 CALL                             R19 2 1
      285 GETTABLEKS                       R20 R0 K4 ["node"]
      287 JUMPIFNOT                        R20 ; [+11]
      288 GETTABLEKS                       R21 R0 K4 ["node"]
      290 GETTABLEKS                       R21 R21 K24 ["className"]
      292 GETUPVAL                         R22 8
      293 GETTABLEKS                       R22 R22 K25 ["PARAMETER_NODE_CLASSNAME"]
      295 JUMPIFEQ                         R21 R22 ; [+2]
      297 LOADB                            R20 0 +1
      298 LOADB                            R20 1
      299 GETUPVAL                         R21 0
      300 GETTABLEKS                       R21 R21 K3 ["useMemo"]
      302 NEWCLOSURE                       R22 P11
      303 CAPTURE                          VAL R0
      304 CAPTURE                          VAL R1
      305 CAPTURE                          UPVAL U15
      306 NEWTABLE                         R23 0 1
      308 GETTABLEKS                       R25 R0 K4 ["node"]
      310 JUMPIFNOT                        R25 ; [+5]
      311 GETTABLEKS                       R24 R0 K4 ["node"]
      313 GETTABLEKS                       R24 R24 K5 ["id"]
      315 JUMPIF                           R24 ; [+1]
      316 LOADNIL                          R24
      317 SETLIST                          R23 R24 1 [1]
      319 CALL                             R21 2 1
      320 GETUPVAL                         R22 7
      321 GETTABLEKS                       R22 R22 K2 ["useSignalState"]
      323 MOVE                             R23 R21
      324 CALL                             R22 1 1
      325 GETUPVAL                         R23 0
      326 GETTABLEKS                       R23 R23 K3 ["useMemo"]
      328 NEWCLOSURE                       R24 P12
      329 CAPTURE                          VAL R22
      330 CAPTURE                          UPVAL U16
      331 CAPTURE                          VAL R4
      332 CAPTURE                          VAL R8
      333 NEWTABLE                         R25 0 3
      335 GETTABLEKS                       R26 R4 K26 ["animationParameters"]
      337 JUMPIFNOT                        R8 ; [+3]
      338 GETTABLEKS                       R27 R8 K27 ["props"]
      340 JUMP                             ; [+1]
      341 LOADNIL                          R27
      342 MOVE                             R28 R22
      343 SETLIST                          R25 R26 3 [1]
      345 CALL                             R23 2 1
      346 GETUPVAL                         R24 0
      347 GETTABLEKS                       R24 R24 K3 ["useMemo"]
      349 NEWCLOSURE                       R25 P13
      350 CAPTURE                          VAL R8
      351 NEWTABLE                         R26 0 1
      353 JUMPIFNOT                        R8 ; [+3]
      354 GETTABLEKS                       R27 R8 K28 ["state"]
      356 JUMP                             ; [+1]
      357 LOADNIL                          R27
      358 SETLIST                          R26 R27 1 [1]
      360 CALL                             R24 2 1
      361 DUPTABLE                         R25 K43 [{"text", "editName", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      362 GETTABLEKS                       R26 R15 K44 ["displayName"]
      364 SETTABLEKS                       R26 R25 K29 ["text"]
      366 GETTABLEKS                       R26 R15 K30 ["editName"]
      368 SETTABLEKS                       R26 R25 K30 ["editName"]
      370 GETTABLEKS                       R26 R0 K4 ["node"]
      372 SETTABLEKS                       R26 R25 K31 ["GraphPayload"]
      374 MOVE                             R26 R7
      375 JUMPIF                           R26 ; [+2]
      376 GETIMPORT                        R26 K47 [Vector2.zero]
      378 SETTABLEKS                       R26 R25 K32 ["Position"]
      380 JUMPIFNOT                        R10 ; [+6]
      381 GETTABLEKS                       R26 R10 K48 ["size"]
      383 JUMPIF                           R26 ; [+5]
      384 GETIMPORT                        R26 K47 [Vector2.zero]
      386 JUMP                             ; [+2]
      387 GETIMPORT                        R26 K47 [Vector2.zero]
      389 SETTABLEKS                       R26 R25 K33 ["Size"]
      391 JUMPIFNOT                        R10 ; [+3]
      392 GETTABLEKS                       R26 R10 K10 ["isSelected"]
      394 JUMP                             ; [+1]
      395 LOADB                            R26 0
      396 SETTABLEKS                       R26 R25 K34 ["Selected"]
      398 JUMPIFNOT                        R10 ; [+3]
      399 GETTABLEKS                       R26 R10 K49 ["isCollapsed"]
      401 JUMP                             ; [+1]
      402 LOADB                            R26 0
      403 SETTABLEKS                       R26 R25 K35 ["Collapsed"]
      405 SETTABLEKS                       R11 R25 K36 ["ZIndex"]
      407 SETTABLEKS                       R12 R25 K37 ["OnDragStart"]
      409 SETTABLEKS                       R13 R25 K38 ["OnDragMoved"]
      411 SETTABLEKS                       R14 R25 K39 ["OnDragEnded"]
      413 SETTABLEKS                       R19 R25 K40 ["OnPropertyChanged"]
      415 SETTABLEKS                       R23 R25 K41 ["PropertyLookup"]
      417 SETTABLEKS                       R24 R25 K42 ["StateLookup"]
      419 LOADNIL                          R26
      420 JUMPIFNOT                        R20 ; [+2]
      421 GETUPVAL                         R26 17
      422 JUMP                             ; [+37]
      423 GETUPVAL                         R27 18
      424 JUMPIFNOT                        R27 ; [+15]
      425 GETTABLEKS                       R27 R0 K4 ["node"]
      427 GETTABLEKS                       R27 R27 K22 ["nodeType"]
      429 JUMPIFNOT                        R27 ; [+10]
      430 GETUPVAL                         R29 19
      431 GETTABLEKS                       R30 R0 K4 ["node"]
      433 GETTABLEKS                       R30 R30 K22 ["nodeType"]
      435 GETTABLE                         R28 R29 R30
      436 JUMPIFEQKNIL                     R28 ; [+2]
      438 LOADB                            R27 0 +1
      439 LOADB                            R27 1
      440 SETTABLEKS                       R27 R25 K50 ["IsGeneric"]
      442 GETTABLEKS                       R28 R0 K4 ["node"]
      444 GETTABLEKS                       R28 R28 K22 ["nodeType"]
      446 JUMPIFNOT                        R28 ; [+7]
      447 GETUPVAL                         R28 19
      448 GETTABLEKS                       R29 R0 K4 ["node"]
      450 GETTABLEKS                       R29 R29 K22 ["nodeType"]
      452 GETTABLE                         R27 R28 R29
      453 JUMPIF                           R27 ; [+1]
      454 GETUPVAL                         R27 20
      455 MOVE                             R26 R27
      456 GETUPVAL                         R27 21
      457 CALL                             R27 0 1
      458 JUMPIFNOT                        R27 ; [+1]
      459 GETUPVAL                         R26 20
      460 GETUPVAL                         R27 0
      461 GETTABLEKS                       R27 R27 K51 ["createElement"]
      463 GETUPVAL                         R28 0
      464 GETTABLEKS                       R28 R28 K52 ["Fragment"]
      466 NEWTABLE                         R29 0 0
      468 GETUPVAL                         R30 0
      469 GETTABLEKS                       R30 R30 K51 ["createElement"]
      471 MOVE                             R31 R26
      472 MOVE                             R32 R25
      473 CALL                             R30 2 1
      474 MOVE                             R31 R18
      475 CALL                             R27 4 -1
      476 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationNodeWrapper"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["AnimationParameterContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["CompositorConnectionContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodes"]
       36 GETTABLEKS                       R5 R5 K14 ["CompositorNode"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Util"]
       43 GETTABLEKS                       R6 R6 K15 ["Constants"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K16 ["GraphDebugDataContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K17 ["InputSelectionContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K8 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K18 ["ModifierKeysContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K8 ["Contexts"]
       71 GETTABLEKS                       R10 R10 K19 ["NativeGraphContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K8 ["Contexts"]
       78 GETTABLEKS                       R11 R11 K19 ["NativeGraphContext"]
       80 GETTABLEKS                       R11 R11 K20 ["NativeGraphUtils"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K6 ["Util"]
       87 GETTABLEKS                       R12 R12 K21 ["Nodes"]
       89 GETTABLEKS                       R12 R12 K22 ["NodeDefinitionUtils"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K23 ["NodeViewTypes"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K11 ["Components"]
      101 GETTABLEKS                       R14 R14 K12 ["NodeView"]
      103 GETTABLEKS                       R14 R14 K13 ["CompositorNodes"]
      105 GETTABLEKS                       R14 R14 K24 ["ParameterNode"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K25 ["Parent"]
      112 GETTABLEKS                       R15 R15 K26 ["React"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K11 ["Components"]
      119 GETTABLEKS                       R16 R16 K12 ["NodeView"]
      121 GETTABLEKS                       R16 R16 K13 ["CompositorNodes"]
      123 GETTABLEKS                       R16 R16 K27 ["RenderedCompositorCurve"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETIMPORT                        R17 K1 [script]
      130 GETTABLEKS                       R17 R17 K25 ["Parent"]
      132 GETTABLEKS                       R17 R17 K25 ["Parent"]
      134 GETTABLEKS                       R17 R17 K25 ["Parent"]
      136 GETTABLEKS                       R17 R17 K25 ["Parent"]
      138 GETTABLEKS                       R17 R17 K6 ["Util"]
      140 GETTABLEKS                       R17 R17 K28 ["Signals"]
      142 GETTABLEKS                       R17 R17 K29 ["SignalsInstanceUtils"]
      144 CALL                             R16 1 1
      145 GETIMPORT                        R17 K5 [require]
      147 GETTABLEKS                       R18 R0 K25 ["Parent"]
      149 GETTABLEKS                       R18 R18 K30 ["SignalsReact"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K31 ["Flags"]
      156 GETTABLEKS                       R19 R19 K32 ["getFFlagDebugDisableCustomNodes"]
      158 CALL                             R18 1 1
      159 GETIMPORT                        R19 K5 [require]
      161 GETTABLEKS                       R20 R0 K11 ["Components"]
      163 GETTABLEKS                       R20 R20 K12 ["NodeView"]
      165 GETTABLEKS                       R20 R20 K13 ["CompositorNodes"]
      167 GETTABLEKS                       R20 R20 K33 ["useNodeNames"]
      169 CALL                             R19 1 1
      170 GETIMPORT                        R20 K35 [game]
      172 LOADK                            R22 K36 ["DebugAGEHighlightGenericNodes"]
      173 LOADB                            R23 0
      174 NAMECALL                         R20 R20 K37 ["DefineFastFlag"]
      176 CALL                             R20 3 1
      177 GETIMPORT                        R21 K5 [require]
      179 GETTABLEKS                       R22 R0 K31 ["Flags"]
      181 GETTABLEKS                       R22 R22 K38 ["getFFlagAnimGraphUIInputSelection"]
      183 CALL                             R21 1 1
      184 GETIMPORT                        R22 K5 [require]
      186 GETTABLEKS                       R23 R0 K31 ["Flags"]
      188 GETTABLEKS                       R23 R23 K39 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      190 CALL                             R22 1 1
      191 NEWTABLE                         R23 16 0
      193 GETIMPORT                        R24 K43 [Enum.AnimationNodeType.AddNode]
      195 GETIMPORT                        R25 K5 [require]
      197 GETTABLEKS                       R26 R0 K11 ["Components"]
      199 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      201 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      203 GETTABLEKS                       R26 R26 K42 ["AddNode"]
      205 CALL                             R25 1 1
      206 SETTABLE                         R25 R23 R24
      207 GETIMPORT                        R24 K45 [Enum.AnimationNodeType.Blend1DNode]
      209 GETIMPORT                        R25 K5 [require]
      211 GETTABLEKS                       R26 R0 K11 ["Components"]
      213 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      215 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      217 GETTABLEKS                       R26 R26 K44 ["Blend1DNode"]
      219 CALL                             R25 1 1
      220 SETTABLE                         R25 R23 R24
      221 GETIMPORT                        R24 K47 [Enum.AnimationNodeType.Blend2DNode]
      223 GETIMPORT                        R25 K5 [require]
      225 GETTABLEKS                       R26 R0 K11 ["Components"]
      227 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      229 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      231 GETTABLEKS                       R26 R26 K46 ["Blend2DNode"]
      233 CALL                             R25 1 1
      234 SETTABLE                         R25 R23 R24
      235 GETIMPORT                        R24 K49 [Enum.AnimationNodeType.ClipNode]
      237 GETIMPORT                        R25 K5 [require]
      239 GETTABLEKS                       R26 R0 K11 ["Components"]
      241 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      243 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      245 GETTABLEKS                       R26 R26 K48 ["ClipNode"]
      247 CALL                             R25 1 1
      248 SETTABLE                         R25 R23 R24
      249 GETIMPORT                        R24 K51 [Enum.AnimationNodeType.GraphOutput]
      251 GETIMPORT                        R25 K5 [require]
      253 GETTABLEKS                       R26 R0 K11 ["Components"]
      255 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      257 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      259 GETTABLEKS                       R26 R26 K50 ["GraphOutput"]
      261 CALL                             R25 1 1
      262 SETTABLE                         R25 R23 R24
      263 GETIMPORT                        R24 K53 [Enum.AnimationNodeType.OverNode]
      265 GETIMPORT                        R25 K5 [require]
      267 GETTABLEKS                       R26 R0 K11 ["Components"]
      269 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      271 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      273 GETTABLEKS                       R26 R26 K52 ["OverNode"]
      275 CALL                             R25 1 1
      276 SETTABLE                         R25 R23 R24
      277 GETIMPORT                        R24 K55 [Enum.AnimationNodeType.PrioritySelectNode]
      279 GETIMPORT                        R25 K5 [require]
      281 GETTABLEKS                       R26 R0 K11 ["Components"]
      283 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      285 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      287 GETTABLEKS                       R26 R26 K54 ["PrioritySelectNode"]
      289 CALL                             R25 1 1
      290 SETTABLE                         R25 R23 R24
      291 GETIMPORT                        R24 K57 [Enum.AnimationNodeType.RandomSequenceNode]
      293 GETIMPORT                        R25 K5 [require]
      295 GETTABLEKS                       R26 R0 K11 ["Components"]
      297 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      299 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      301 GETTABLEKS                       R26 R26 K56 ["RandomSequenceNode"]
      303 CALL                             R25 1 1
      304 SETTABLE                         R25 R23 R24
      305 GETIMPORT                        R24 K59 [Enum.AnimationNodeType.SelectNode]
      307 GETIMPORT                        R25 K5 [require]
      309 GETTABLEKS                       R26 R0 K11 ["Components"]
      311 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      313 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      315 GETTABLEKS                       R26 R26 K58 ["SelectNode"]
      317 CALL                             R25 1 1
      318 SETTABLE                         R25 R23 R24
      319 GETIMPORT                        R24 K61 [Enum.AnimationNodeType.SequenceNode]
      321 GETIMPORT                        R25 K5 [require]
      323 GETTABLEKS                       R26 R0 K11 ["Components"]
      325 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      327 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      329 GETTABLEKS                       R26 R26 K60 ["SequenceNode"]
      331 CALL                             R25 1 1
      332 SETTABLE                         R25 R23 R24
      333 GETIMPORT                        R24 K63 [Enum.AnimationNodeType.SpeedNode]
      335 GETIMPORT                        R25 K5 [require]
      337 GETTABLEKS                       R26 R0 K11 ["Components"]
      339 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      341 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      343 GETTABLEKS                       R26 R26 K62 ["SpeedNode"]
      345 CALL                             R25 1 1
      346 SETTABLE                         R25 R23 R24
      347 GETIMPORT                        R24 K65 [Enum.AnimationNodeType.SubtractNode]
      349 GETIMPORT                        R25 K5 [require]
      351 GETTABLEKS                       R26 R0 K11 ["Components"]
      353 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      355 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      357 GETTABLEKS                       R26 R26 K64 ["SubtractNode"]
      359 CALL                             R25 1 1
      360 SETTABLE                         R25 R23 R24
      361 GETIMPORT                        R24 K67 [Enum.AnimationNodeType.MaskNode]
      363 GETIMPORT                        R25 K5 [require]
      365 GETTABLEKS                       R26 R0 K11 ["Components"]
      367 GETTABLEKS                       R26 R26 K12 ["NodeView"]
      369 GETTABLEKS                       R26 R26 K13 ["CompositorNodes"]
      371 GETTABLEKS                       R26 R26 K66 ["MaskNode"]
      373 CALL                             R25 1 1
      374 SETTABLE                         R25 R23 R24
      375 DUPCLOSURE                       R24 K68 [PROTO_17]
      376 CAPTURE                          VAL R14
      377 CAPTURE                          VAL R9
      378 CAPTURE                          VAL R3
      379 CAPTURE                          VAL R6
      380 CAPTURE                          VAL R2
      381 CAPTURE                          VAL R8
      382 CAPTURE                          VAL R7
      383 CAPTURE                          VAL R17
      384 CAPTURE                          VAL R5
      385 CAPTURE                          VAL R21
      386 CAPTURE                          VAL R19
      387 CAPTURE                          VAL R1
      388 CAPTURE                          VAL R11
      389 CAPTURE                          VAL R22
      390 CAPTURE                          VAL R15
      391 CAPTURE                          VAL R16
      392 CAPTURE                          VAL R10
      393 CAPTURE                          VAL R13
      394 CAPTURE                          VAL R20
      395 CAPTURE                          VAL R23
      396 CAPTURE                          VAL R4
      397 CAPTURE                          VAL R18
      398 GETTABLEKS                       R25 R14 K69 ["memo"]
      400 MOVE                             R26 R24
      401 CALL                             R25 1 -1
      402 RETURN                           R25 -1
