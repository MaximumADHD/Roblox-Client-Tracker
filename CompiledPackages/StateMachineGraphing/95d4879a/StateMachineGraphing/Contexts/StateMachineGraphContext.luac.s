PROTO_0:
        0 DUPTABLE                         R5 K9 [{"id", "name", "nodeType", "className", "inputPinIds", "inputPinToConnectionMap", "outputPinToConnectionMap", "inputLabelPinToConnectionMap", "renderInPaneOnly"}]
        1 SETTABLEKS                       R0 R5 K0 ["id"]
        3 SETTABLEKS                       R1 R5 K1 ["name"]
        5 SETTABLEKS                       R2 R5 K2 ["nodeType"]
        7 SETTABLEKS                       R3 R5 K3 ["className"]
        9 NEWTABLE                         R6 0 0
       11 SETTABLEKS                       R6 R5 K4 ["inputPinIds"]
       13 NEWTABLE                         R6 0 0
       15 SETTABLEKS                       R6 R5 K5 ["inputPinToConnectionMap"]
       17 NEWTABLE                         R6 0 0
       19 SETTABLEKS                       R6 R5 K6 ["outputPinToConnectionMap"]
       21 NEWTABLE                         R6 0 0
       23 SETTABLEKS                       R6 R5 K7 ["inputLabelPinToConnectionMap"]
       25 SETTABLEKS                       R4 R5 K8 ["renderInPaneOnly"]
       27 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 DUPTABLE                         R2 K4 [{["size"], ["isSelected"] = False}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K1 ["size"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["current"]
       13 SETTABLE                         R2 R3 R0
       14 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["data"]
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 NEWTABLE                         R4 0 0
       11 GETTABLEKS                       R5 R0 K1 ["states"]
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R10 R9 K2 ["id"]
       18 LOADB                            R11 1
       19 SETTABLE                         R11 R4 R10
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R11 R9 K2 ["id"]
       23 CALL                             R10 1 1
       24 GETTABLEKS                       R11 R9 K2 ["id"]
       26 GETUPVAL                         R12 2
       27 GETTABLEKS                       R13 R9 K2 ["id"]
       29 GETTABLEKS                       R14 R9 K3 ["name"]
       31 GETUPVAL                         R15 3
       32 GETTABLEKS                       R15 R15 K4 ["STATE_NODE_TYPE"]
       34 GETUPVAL                         R16 3
       35 GETTABLEKS                       R16 R16 K4 ["STATE_NODE_TYPE"]
       37 CALL                             R12 4 1
       38 SETTABLE                         R12 R1 R11
       39 GETTABLEKS                       R11 R9 K2 ["id"]
       41 DUPTABLE                         R12 K13 [{["nodeId"], ["position"], ["size"], ["zIndex"] = 0, ["isCollapsed"] = False, ["isSelected"]}]
       42 GETTABLEKS                       R13 R9 K2 ["id"]
       44 SETTABLEKS                       R13 R12 K5 ["nodeId"]
       46 GETIMPORT                        R13 K16 [Vector2.new]
       48 GETTABLEKS                       R15 R9 K6 ["position"]
       50 GETTABLEKS                       R15 R15 K17 ["x"]
       52 GETTABLEKS                       R17 R10 K7 ["size"]
       54 GETTABLEKS                       R17 R17 K19 ["X"]
       56 DIVK                             R16 R17 K18 [2]
       57 SUB                              R14 R15 R16
       58 GETTABLEKS                       R16 R9 K6 ["position"]
       60 GETTABLEKS                       R16 R16 K20 ["y"]
       62 GETTABLEKS                       R18 R10 K7 ["size"]
       64 GETTABLEKS                       R18 R18 K21 ["Y"]
       66 DIVK                             R17 R18 K18 [2]
       67 ADD                              R15 R16 R17
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R12 K6 ["position"]
       71 GETTABLEKS                       R13 R10 K7 ["size"]
       73 SETTABLEKS                       R13 R12 K7 ["size"]
       75 GETTABLEKS                       R13 R10 K12 ["isSelected"]
       77 SETTABLEKS                       R13 R12 K12 ["isSelected"]
       79 SETTABLE                         R12 R2 R11
       80 GETTABLEKS                       R11 R9 K2 ["id"]
       82 DUPTABLE                         R12 K26 [{"Name", "isStart", "isAny", "canStartTransition"}]
       83 GETTABLEKS                       R13 R9 K3 ["name"]
       85 SETTABLEKS                       R13 R12 K22 ["Name"]
       87 GETTABLEKS                       R13 R9 K23 ["isStart"]
       89 SETTABLEKS                       R13 R12 K23 ["isStart"]
       91 GETTABLEKS                       R13 R9 K24 ["isAny"]
       93 SETTABLEKS                       R13 R12 K24 ["isAny"]
       95 GETTABLEKS                       R14 R9 K23 ["isStart"]
       97 JUMPIFNOT                        R14 ; [+7]
       98 GETUPVAL                         R14 4
       99 GETTABLEKS                       R14 R14 K27 ["hasOutgoingTransition"]
      101 MOVE                             R15 R0
      102 GETTABLEKS                       R16 R9 K2 ["id"]
      104 CALL                             R14 2 1
      105 NOT                              R13 R14
      106 SETTABLEKS                       R13 R12 K25 ["canStartTransition"]
      108 SETTABLE                         R12 R3 R11
      109 FORGLOOP                         R5 2 ; [-94]
      111 GETUPVAL                         R5 5
      112 GETTABLEKS                       R5 R5 K28 ["current"]
      114 LOADNIL                          R6
      115 LOADNIL                          R7
      116 FORGPREP                         R5
      117 GETTABLE                         R10 R4 R8
      118 JUMPIF                           R10 ; [+5]
      119 GETUPVAL                         R10 5
      120 GETTABLEKS                       R10 R10 K28 ["current"]
      122 LOADNIL                          R11
      123 SETTABLE                         R11 R10 R8
      124 FORGLOOP                         R5 1 ; [-8]
      126 GETUPVAL                         R5 0
      127 GETTABLEKS                       R5 R5 K29 ["parameters"]
      129 JUMPIF                           R5 ; [+2]
      130 NEWTABLE                         R5 0 0
      132 MOVE                             R6 R5
      133 LOADNIL                          R7
      134 LOADNIL                          R8
      135 FORGPREP                         R6
      136 GETTABLEKS                       R12 R10 K2 ["id"]
      138 GETTABLE                         R11 R1 R12
      139 JUMPIF                           R11 ; [+14]
      140 GETTABLEKS                       R11 R10 K2 ["id"]
      142 GETUPVAL                         R12 2
      143 GETTABLEKS                       R13 R10 K2 ["id"]
      145 GETTABLEKS                       R14 R10 K3 ["name"]
      147 GETTABLEKS                       R15 R10 K30 ["nodeType"]
      149 GETTABLEKS                       R16 R10 K31 ["className"]
      151 LOADB                            R17 1
      152 CALL                             R12 5 1
      153 SETTABLE                         R12 R1 R11
      154 FORGLOOP                         R6 2 ; [-19]
      156 GETUPVAL                         R6 6
      157 GETTABLEKS                       R6 R6 K32 ["setMap"]
      159 MOVE                             R7 R1
      160 CALL                             R6 1 0
      161 GETUPVAL                         R6 7
      162 GETTABLEKS                       R6 R6 K32 ["setMap"]
      164 MOVE                             R7 R2
      165 CALL                             R6 1 0
      166 GETUPVAL                         R6 8
      167 GETTABLEKS                       R6 R6 K32 ["setMap"]
      169 MOVE                             R7 R3
      170 CALL                             R6 1 0
      171 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETIMPORT                        R4 K3 [table.clone]
       12 MOVE                             R5 R2
       13 CALL                             R4 1 1
       14 MOVE                             R5 R1
       15 MOVE                             R6 R4
       16 MOVE                             R7 R3
       17 CALL                             R5 2 0
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K4 ["set"]
       21 MOVE                             R6 R0
       22 MOVE                             R7 R4
       23 CALL                             R5 2 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 1
        8 MOVE                             R8 R5
        9 CALL                             R7 1 1
       10 GETTABLEKS                       R7 R7 K1 ["size"]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R8 R8 K2 ["moveState"]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R5
       17 DUPTABLE                         R11 K5 [{"x", "y"}]
       18 GETTABLEKS                       R13 R6 K6 ["X"]
       20 GETTABLEKS                       R15 R7 K6 ["X"]
       22 DIVK                             R14 R15 K7 [2]
       23 ADD                              R12 R13 R14
       24 SETTABLEKS                       R12 R11 K3 ["x"]
       26 GETTABLEKS                       R13 R6 K8 ["Y"]
       28 GETTABLEKS                       R15 R7 K8 ["Y"]
       30 DIVK                             R14 R15 K7 [2]
       31 SUB                              R12 R13 R14
       32 SETTABLEKS                       R12 R11 K4 ["y"]
       34 CALL                             R8 3 1
       35 MOVE                             R1 R8
       36 FORGLOOP                         R2 2 ; [-30]
       38 MOVE                             R2 R1
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R3 R3 K0 ["current"]
       42 MOVE                             R4 R2
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R2 R1 K0 ["size"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K0 ["size"]
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R1 K0 ["isSelected"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K0 ["isSelected"]
        6 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R1 K0 ["isSelected"]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R0 K0 ["isSelected"]
        6 RETURN                           R0 0

PROTO_11:
        0 JUMPIF                           R1 ; [+15]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["observeMap"]
        4 LOADB                            R3 0
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["isSelected"]
        9 JUMPIFNOT                        R7 ; [+4]
       10 GETUPVAL                         R7 1
       11 MOVE                             R8 R5
       12 DUPCLOSURE                       R9 K2 [PROTO_9]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 MOVE                             R2 R0
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETUPVAL                         R7 1
       21 MOVE                             R8 R5
       22 DUPCLOSURE                       R9 K3 [PROTO_10]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 1 ; [-5]
       26 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["renameState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["current"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["current"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["addTransition"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["current"]
        6 MOVE                             R6 R2
        7 MOVE                             R7 R0
        8 CALL                             R4 3 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K1 ["current"]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 1
        6 RETURN                           R0 1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_26:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_29:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
        0 RETURN                           R0 0

PROTO_32:
        0 RETURN                           R0 0

PROTO_33:
        0 RETURN                           R0 0

PROTO_34:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 NEWCLOSURE                       R1 P1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 DUPTABLE                         R2 K34 [{[1] = False, ["parametersReadonly"] = True, ["nodePayloadDispatcher"], ["nodeRenderInfoDispatcher"], ["createNode"], ["setNodePositions"], ["setNodeSize"], ["selectNodes"], ["renameNode"], ["removeNodes"], ["deleteNodeInstance"], ["setNodeConnection"], ["observeNodePropsById"], ["observeNodeStateById"], ["observeFadeByNodeId"], ["DEPRECATED_observeIsDisabledByNodeId"], ["observeNodeInputBindings"], ["setCollapsed"], ["setZIndex"], ["setNodeProperty"], ["setInputPinNodeProperty"], ["deleteNodeInput"], ["removeNodeInputConnectionAsync"], ["removeNodeOutputConnectionAsync"], ["reorderPins"], ["createParameter"], ["createExistingParameterAsync"], ["createConnectedParameterAsync"], ["selectAllParameterNodesWithName"], ["removeParameter"], ["renameParameter"], ["setParameterNodeType"]}]
        6 GETUPVAL                         R3 3
        7 SETTABLEKS                       R3 R2 K4 ["nodePayloadDispatcher"]
        9 GETUPVAL                         R3 1
       10 SETTABLEKS                       R3 R2 K5 ["nodeRenderInfoDispatcher"]
       12 NEWCLOSURE                       R3 P2
       13 CAPTURE                          UPVAL U4
       14 SETTABLEKS                       R3 R2 K6 ["createNode"]
       16 NEWCLOSURE                       R3 P3
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R3 R2 K7 ["setNodePositions"]
       23 NEWCLOSURE                       R3 P4
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K8 ["setNodeSize"]
       27 NEWCLOSURE                       R3 P5
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R3 R2 K9 ["selectNodes"]
       32 NEWCLOSURE                       R3 P6
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R3 R2 K10 ["renameNode"]
       38 NEWCLOSURE                       R3 P7
       39 CAPTURE                          UPVAL U7
       40 SETTABLEKS                       R3 R2 K11 ["removeNodes"]
       42 NEWCLOSURE                       R3 P8
       43 CAPTURE                          UPVAL U7
       44 SETTABLEKS                       R3 R2 K12 ["deleteNodeInstance"]
       46 NEWCLOSURE                       R3 P9
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U0
       50 SETTABLEKS                       R3 R2 K13 ["setNodeConnection"]
       52 GETUPVAL                         R3 8
       53 GETTABLEKS                       R3 R3 K35 ["observe"]
       55 SETTABLEKS                       R3 R2 K14 ["observeNodePropsById"]
       57 DUPCLOSURE                       R3 K36 [PROTO_16]
       58 CAPTURE                          UPVAL U9
       59 SETTABLEKS                       R3 R2 K15 ["observeNodeStateById"]
       61 DUPCLOSURE                       R3 K37 [PROTO_17]
       62 CAPTURE                          UPVAL U9
       63 SETTABLEKS                       R3 R2 K16 ["observeFadeByNodeId"]
       65 DUPCLOSURE                       R3 K38 [PROTO_18]
       66 CAPTURE                          UPVAL U9
       67 SETTABLEKS                       R3 R2 K17 ["DEPRECATED_observeIsDisabledByNodeId"]
       69 DUPCLOSURE                       R3 K39 [PROTO_19]
       70 CAPTURE                          UPVAL U9
       71 SETTABLEKS                       R3 R2 K18 ["observeNodeInputBindings"]
       73 DUPCLOSURE                       R3 K40 [PROTO_20]
       74 SETTABLEKS                       R3 R2 K19 ["setCollapsed"]
       76 DUPCLOSURE                       R3 K41 [PROTO_21]
       77 SETTABLEKS                       R3 R2 K20 ["setZIndex"]
       79 DUPCLOSURE                       R3 K42 [PROTO_22]
       80 SETTABLEKS                       R3 R2 K21 ["setNodeProperty"]
       82 DUPCLOSURE                       R3 K43 [PROTO_23]
       83 SETTABLEKS                       R3 R2 K22 ["setInputPinNodeProperty"]
       85 DUPCLOSURE                       R3 K44 [PROTO_24]
       86 SETTABLEKS                       R3 R2 K23 ["deleteNodeInput"]
       88 DUPCLOSURE                       R3 K45 [PROTO_25]
       89 SETTABLEKS                       R3 R2 K24 ["removeNodeInputConnectionAsync"]
       91 DUPCLOSURE                       R3 K46 [PROTO_26]
       92 SETTABLEKS                       R3 R2 K25 ["removeNodeOutputConnectionAsync"]
       94 GETUPVAL                         R3 10
       95 GETTABLEKS                       R3 R3 K47 ["createUnimplemented"]
       97 LOADK                            R4 K26 ["reorderPins"]
       98 CALL                             R3 1 1
       99 SETTABLEKS                       R3 R2 K26 ["reorderPins"]
      101 DUPCLOSURE                       R3 K48 [PROTO_27]
      102 SETTABLEKS                       R3 R2 K27 ["createParameter"]
      104 DUPCLOSURE                       R3 K49 [PROTO_28]
      105 SETTABLEKS                       R3 R2 K28 ["createExistingParameterAsync"]
      107 DUPCLOSURE                       R3 K50 [PROTO_29]
      108 SETTABLEKS                       R3 R2 K29 ["createConnectedParameterAsync"]
      110 DUPCLOSURE                       R3 K51 [PROTO_30]
      111 SETTABLEKS                       R3 R2 K30 ["selectAllParameterNodesWithName"]
      113 DUPCLOSURE                       R3 K52 [PROTO_31]
      114 SETTABLEKS                       R3 R2 K31 ["removeParameter"]
      116 DUPCLOSURE                       R3 K53 [PROTO_32]
      117 SETTABLEKS                       R3 R2 K32 ["renameParameter"]
      119 DUPCLOSURE                       R3 K54 [PROTO_33]
      120 SETTABLEKS                       R3 R2 K33 ["setParameterNodeType"]
      122 RETURN                           R2 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["useRef"]
        9 GETTABLEKS                       R5 R0 K1 ["data"]
       11 CALL                             R4 1 1
       12 GETTABLEKS                       R5 R0 K1 ["data"]
       14 SETTABLEKS                       R5 R4 K2 ["current"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K0 ["useRef"]
       19 GETTABLEKS                       R6 R0 K3 ["onDataChanged"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R6 R0 K3 ["onDataChanged"]
       24 SETTABLEKS                       R6 R5 K2 ["current"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K0 ["useRef"]
       29 GETTABLEKS                       R7 R0 K4 ["onCreateState"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R7 R0 K4 ["onCreateState"]
       34 SETTABLEKS                       R7 R6 K2 ["current"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K0 ["useRef"]
       39 GETTABLEKS                       R8 R0 K5 ["onDeleteStates"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R0 K5 ["onDeleteStates"]
       44 SETTABLEKS                       R8 R7 K2 ["current"]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K0 ["useRef"]
       49 NEWTABLE                         R9 0 0
       51 CALL                             R8 1 1
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       55 NEWCLOSURE                       R10 P0
       56 CAPTURE                          VAL R8
       57 CAPTURE                          UPVAL U2
       58 NEWTABLE                         R11 0 0
       60 CALL                             R9 2 1
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R10 R10 K7 ["useEffect"]
       64 NEWCLOSURE                       R11 P1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R9
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 NEWTABLE                         R12 0 6
       76 GETTABLEKS                       R13 R0 K1 ["data"]
       78 GETTABLEKS                       R14 R0 K8 ["parameters"]
       80 MOVE                             R15 R9
       81 MOVE                             R16 R1
       82 MOVE                             R17 R2
       83 MOVE                             R18 R3
       84 SETLIST                          R12 R13 6 [1]
       86 CALL                             R10 2 0
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       90 NEWCLOSURE                       R11 P2
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R4
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R3
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          UPVAL U7
      102 NEWTABLE                         R12 0 4
      104 MOVE                             R13 R1
      105 MOVE                             R14 R2
      106 MOVE                             R15 R3
      107 MOVE                             R16 R9
      108 SETLIST                          R12 R13 4 [1]
      110 CALL                             R10 2 1
      111 GETUPVAL                         R11 1
      112 GETTABLEKS                       R11 R11 K10 ["createElement"]
      114 GETUPVAL                         R12 8
      115 GETTABLEKS                       R12 R12 K11 ["Provider"]
      117 DUPTABLE                         R13 K13 [{"value"}]
      118 SETTABLEKS                       R10 R13 K12 ["value"]
      120 GETTABLEKS                       R14 R0 K14 ["children"]
      122 CALL                             R11 3 -1
      123 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["Signals"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Data"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineData"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K14 ["StateMachineNodeLibrary"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Data"]
       53 GETTABLEKS                       R8 R8 K15 ["StateMachineTypes"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R1 K16 ["GraphContext"]
       58 GETTABLEKS                       R9 R1 K17 ["useSignalDispatcher"]
       60 GETIMPORT                        R10 K20 [Vector2.new]
       62 LOADN                            R11 120
       63 LOADN                            R12 40
       64 CALL                             R10 2 1
       65 DUPCLOSURE                       R11 K21 [PROTO_0]
       66 DUPCLOSURE                       R12 K22 [PROTO_35]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R8
       76 RETURN                           R12 1
